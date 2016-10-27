LetRec xor.2627 x.2628 y.2629 
	Let Ti2625.6343
		Int:0
		IfEq x.2628 Ti2625.6343
			Var y.2629
			Let Ti2626.6344
				Int:0
				IfEq y.2629 Ti2626.6344
					Int:1
					Int:0
	LetRec sgn.2630 x.2631 
		Let Tb2621.6339
			ExtFunApp fiszero x.2631,
			Let Ti2622.6340
				Int:0
				IfEq Tb2621.6339 Ti2622.6340
					Let Tb2623.6341
						ExtFunApp fispos x.2631,
						Let Ti2624.6342
							Int:0
							IfEq Tb2623.6341 Ti2624.6342
								Float:-1.000000
								Float:1.000000
					Float:0.000000
		LetRec fneg_cond.2632 cond.2633 x.2634 
			Let Ti2620.6338
				Int:0
				IfEq cond.2633 Ti2620.6338
					ExtFunApp fneg x.2634,
					Var x.2634
			LetRec add_mod5.2635 x.2636 y.2637 
				Let sum.6335
					Add x.2636 y.2637
					Let Ti2618.6336
						Int:5
						IfLE Ti2618.6336 sum.6335
							Let Ti2619.6337
								Int:5
								Sub sum.6335 Ti2619.6337
							Var sum.6335
				LetRec vecset.2638 v.2639 x.2640 y.2641 z.2642 
					Let Tu2.6330
						Let Ti2615.6334
							Int:0
							Put v.2639 Ti2615.6334 x.2640
						Let Tu1.6331
							Let Ti2616.6333
								Int:1
								Put v.2639 Ti2616.6333 y.2641
							Let Ti2617.6332
								Int:2
								Put v.2639 Ti2617.6332 z.2642
					LetRec vecfill.2643 v.2644 elem.2645 
						Let Tu4.6325
							Let Ti2612.6329
								Int:0
								Put v.2644 Ti2612.6329 elem.2645
							Let Tu3.6326
								Let Ti2613.6328
									Int:1
									Put v.2644 Ti2613.6328 elem.2645
								Let Ti2614.6327
									Int:2
									Put v.2644 Ti2614.6327 elem.2645
						LetRec vecbzero.2646 v.2647 
							Let Td2611.6324
								Float:0.000000
								App vecfill.2643v.2647 Td2611.6324 
							LetRec veccpy.2648 dest.2649 src.2650 
								Let Tu6.6313
									Let Ti2602.6321
										Int:0
										Let Td2604.6322
											Let Ti2603.6323
												Int:0
												Get src.2650 Ti2603.6323
											Put dest.2649 Ti2602.6321 Td2604.6322
									Let Tu5.6314
										Let Ti2605.6318
											Int:1
											Let Td2607.6319
												Let Ti2606.6320
													Int:1
													Get src.2650 Ti2606.6320
												Put dest.2649 Ti2605.6318 Td2607.6319
										Let Ti2608.6315
											Int:2
											Let Td2610.6316
												Let Ti2609.6317
													Int:2
													Get src.2650 Ti2609.6317
												Put dest.2649 Ti2608.6315 Td2610.6316
								LetRec vecdist2.2651 p.2652 q.2653 
									Let Td2595.6294
										Let Td2588.6301
											Let Td2587.6308
												Let Td2584.6309
													Let Ti2583.6312
														Int:0
														Get p.2652 Ti2583.6312
													Let Td2586.6310
														Let Ti2585.6311
															Int:0
															Get q.2653 Ti2585.6311
														FSub Td2584.6309 Td2586.6310
												ExtFunApp fsqr Td2587.6308,
											Let Td2594.6302
												Let Td2593.6303
													Let Td2590.6304
														Let Ti2589.6307
															Int:1
															Get p.2652 Ti2589.6307
														Let Td2592.6305
															Let Ti2591.6306
																Int:1
																Get q.2653 Ti2591.6306
															FSub Td2590.6304 Td2592.6305
													ExtFunApp fsqr Td2593.6303,
												FAdd Td2588.6301 Td2594.6302
										Let Td2601.6295
											Let Td2600.6296
												Let Td2597.6297
													Let Ti2596.6300
														Int:2
														Get p.2652 Ti2596.6300
													Let Td2599.6298
														Let Ti2598.6299
															Int:2
															Get q.2653 Ti2598.6299
														FSub Td2597.6297 Td2599.6298
												ExtFunApp fsqr Td2600.6296,
											FAdd Td2595.6294 Td2601.6295
									LetRec vecunit.2654 v.2655 
										Let il.6265
											Let Td2557.6280
												Float:1.000000
												Let Td2569.6281
													Let Td2568.6283
														Let Td2564.6284
															Let Td2560.6288
																Let Td2559.6292
																	Let Ti2558.6293
																		Int:0
																		Get v.2655 Ti2558.6293
																	ExtFunApp fsqr Td2559.6292,
																Let Td2563.6289
																	Let Td2562.6290
																		Let Ti2561.6291
																			Int:1
																			Get v.2655 Ti2561.6291
																		ExtFunApp fsqr Td2562.6290,
																	FAdd Td2560.6288 Td2563.6289
															Let Td2567.6285
																Let Td2566.6286
																	Let Ti2565.6287
																		Int:2
																		Get v.2655 Ti2565.6287
																	ExtFunApp fsqr Td2566.6286,
																FAdd Td2564.6284 Td2567.6285
														ExtFunApp sqrt Td2568.6283,
													Let Td2570.6282
														FReciprocal Td2569.6281
														FMul Td2557.6280 Td2570.6282
											Let Tu8.6266
												Let Ti2571.6276
													Int:0
													Let Td2574.6277
														Let Td2573.6278
															Let Ti2572.6279
																Int:0
																Get v.2655 Ti2572.6279
															FMul Td2573.6278 il.6265
														Put v.2655 Ti2571.6276 Td2574.6277
												Let Tu7.6267
													Let Ti2575.6272
														Int:1
														Let Td2578.6273
															Let Td2577.6274
																Let Ti2576.6275
																	Int:1
																	Get v.2655 Ti2576.6275
																FMul Td2577.6274 il.6265
															Put v.2655 Ti2575.6272 Td2578.6273
													Let Ti2579.6268
														Int:2
														Let Td2582.6269
															Let Td2581.6270
																Let Ti2580.6271
																	Int:2
																	Get v.2655 Ti2580.6271
																FMul Td2581.6270 il.6265
															Put v.2655 Ti2579.6268 Td2582.6269
										LetRec vecunit_sgn.2656 v.2657 inv.2658 
											Let l.6231
												Let Td2537.6254
													Let Td2533.6255
														Let Td2529.6259
															Let Td2528.6263
																Let Ti2527.6264
																	Int:0
																	Get v.2657 Ti2527.6264
																ExtFunApp fsqr Td2528.6263,
															Let Td2532.6260
																Let Td2531.6261
																	Let Ti2530.6262
																		Int:1
																		Get v.2657 Ti2530.6262
																	ExtFunApp fsqr Td2531.6261,
																FAdd Td2529.6259 Td2532.6260
														Let Td2536.6256
															Let Td2535.6257
																Let Ti2534.6258
																	Int:2
																	Get v.2657 Ti2534.6258
																ExtFunApp fsqr Td2535.6257,
															FAdd Td2533.6255 Td2536.6256
													ExtFunApp sqrt Td2537.6254,
												Let il.6232
													Let Tb2538.6247
														ExtFunApp fiszero l.6231,
														Let Ti2539.6248
															Int:0
															IfEq Tb2538.6247 Ti2539.6248
																Let Ti2540.6249
																	Int:0
																	IfEq inv.2658 Ti2540.6249
																		Let Td2541.6252
																			Float:1.000000
																			Let Td2542.6253
																				FReciprocal l.6231
																				FMul Td2541.6252 Td2542.6253
																		Let Td2543.6250
																			Float:-1.000000
																			Let Td2544.6251
																				FReciprocal l.6231
																				FMul Td2543.6250 Td2544.6251
																Float:1.000000
													Let Tu10.6233
														Let Ti2545.6243
															Int:0
															Let Td2548.6244
																Let Td2547.6245
																	Let Ti2546.6246
																		Int:0
																		Get v.2657 Ti2546.6246
																	FMul Td2547.6245 il.6232
																Put v.2657 Ti2545.6243 Td2548.6244
														Let Tu9.6234
															Let Ti2549.6239
																Int:1
																Let Td2552.6240
																	Let Td2551.6241
																		Let Ti2550.6242
																			Int:1
																			Get v.2657 Ti2550.6242
																		FMul Td2551.6241 il.6232
																	Put v.2657 Ti2549.6239 Td2552.6240
															Let Ti2553.6235
																Int:2
																Let Td2556.6236
																	Let Td2555.6237
																		Let Ti2554.6238
																			Int:2
																			Get v.2657 Ti2554.6238
																		FMul Td2555.6237 il.6232
																	Put v.2657 Ti2553.6235 Td2556.6236
											LetRec veciprod.2659 v.2660 w.2661 
												Let Td2521.6215
													Let Td2515.6221
														Let Td2512.6227
															Let Ti2511.6230
																Int:0
																Get v.2660 Ti2511.6230
															Let Td2514.6228
																Let Ti2513.6229
																	Int:0
																	Get w.2661 Ti2513.6229
																FMul Td2512.6227 Td2514.6228
														Let Td2520.6222
															Let Td2517.6223
																Let Ti2516.6226
																	Int:1
																	Get v.2660 Ti2516.6226
																Let Td2519.6224
																	Let Ti2518.6225
																		Int:1
																		Get w.2661 Ti2518.6225
																	FMul Td2517.6223 Td2519.6224
															FAdd Td2515.6221 Td2520.6222
													Let Td2526.6216
														Let Td2523.6217
															Let Ti2522.6220
																Int:2
																Get v.2660 Ti2522.6220
															Let Td2525.6218
																Let Ti2524.6219
																	Int:2
																	Get w.2661 Ti2524.6219
																FMul Td2523.6217 Td2525.6218
														FAdd Td2521.6215 Td2526.6216
												LetRec veciprod2.2662 v.2663 w0.2664 w1.2665 w2.2666 
													Let Td2507.6205
														Let Td2503.6209
															Let Td2502.6213
																Let Ti2501.6214
																	Int:0
																	Get v.2663 Ti2501.6214
																FMul Td2502.6213 w0.2664
															Let Td2506.6210
																Let Td2505.6211
																	Let Ti2504.6212
																		Int:1
																		Get v.2663 Ti2504.6212
																	FMul Td2505.6211 w1.2665
																FAdd Td2503.6209 Td2506.6210
														Let Td2510.6206
															Let Td2509.6207
																Let Ti2508.6208
																	Int:2
																	Get v.2663 Ti2508.6208
																FMul Td2509.6207 w2.2666
															FAdd Td2507.6205 Td2510.6206
													LetRec vecaccum.2667 dest.2668 scale.2669 v.2670 
														Let Tu12.6182
															Let Ti2480.6198
																Int:0
																Let Td2486.6199
																	Let Td2482.6200
																		Let Ti2481.6204
																			Int:0
																			Get dest.2668 Ti2481.6204
																		Let Td2485.6201
																			Let Td2484.6202
																				Let Ti2483.6203
																					Int:0
																					Get v.2670 Ti2483.6203
																				FMul scale.2669 Td2484.6202
																			FAdd Td2482.6200 Td2485.6201
																	Put dest.2668 Ti2480.6198 Td2486.6199
															Let Tu11.6183
																Let Ti2487.6191
																	Int:1
																	Let Td2493.6192
																		Let Td2489.6193
																			Let Ti2488.6197
																				Int:1
																				Get dest.2668 Ti2488.6197
																			Let Td2492.6194
																				Let Td2491.6195
																					Let Ti2490.6196
																						Int:1
																						Get v.2670 Ti2490.6196
																					FMul scale.2669 Td2491.6195
																				FAdd Td2489.6193 Td2492.6194
																		Put dest.2668 Ti2487.6191 Td2493.6192
																Let Ti2494.6184
																	Int:2
																	Let Td2500.6185
																		Let Td2496.6186
																			Let Ti2495.6190
																				Int:2
																				Get dest.2668 Ti2495.6190
																			Let Td2499.6187
																				Let Td2498.6188
																					Let Ti2497.6189
																						Int:2
																						Get v.2670 Ti2497.6189
																					FMul scale.2669 Td2498.6188
																				FAdd Td2496.6186 Td2499.6187
																		Put dest.2668 Ti2494.6184 Td2500.6185
														LetRec vecadd.2671 dest.2672 v.2673 
															Let Tu14.6162
																Let Ti2462.6176
																	Int:0
																	Let Td2467.6177
																		Let Td2464.6178
																			Let Ti2463.6181
																				Int:0
																				Get dest.2672 Ti2463.6181
																			Let Td2466.6179
																				Let Ti2465.6180
																					Int:0
																					Get v.2673 Ti2465.6180
																				FAdd Td2464.6178 Td2466.6179
																		Put dest.2672 Ti2462.6176 Td2467.6177
																Let Tu13.6163
																	Let Ti2468.6170
																		Int:1
																		Let Td2473.6171
																			Let Td2470.6172
																				Let Ti2469.6175
																					Int:1
																					Get dest.2672 Ti2469.6175
																				Let Td2472.6173
																					Let Ti2471.6174
																						Int:1
																						Get v.2673 Ti2471.6174
																					FAdd Td2470.6172 Td2472.6173
																			Put dest.2672 Ti2468.6170 Td2473.6171
																	Let Ti2474.6164
																		Int:2
																		Let Td2479.6165
																			Let Td2476.6166
																				Let Ti2475.6169
																					Int:2
																					Get dest.2672 Ti2475.6169
																				Let Td2478.6167
																					Let Ti2477.6168
																						Int:2
																						Get v.2673 Ti2477.6168
																					FAdd Td2476.6166 Td2478.6167
																			Put dest.2672 Ti2474.6164 Td2479.6165
															LetRec vecmul.2674 dest.2675 v.2676 
																Let Tu16.6142
																	Let Ti2444.6156
																		Int:0
																		Let Td2449.6157
																			Let Td2446.6158
																				Let Ti2445.6161
																					Int:0
																					Get dest.2675 Ti2445.6161
																				Let Td2448.6159
																					Let Ti2447.6160
																						Int:0
																						Get v.2676 Ti2447.6160
																					FMul Td2446.6158 Td2448.6159
																			Put dest.2675 Ti2444.6156 Td2449.6157
																	Let Tu15.6143
																		Let Ti2450.6150
																			Int:1
																			Let Td2455.6151
																				Let Td2452.6152
																					Let Ti2451.6155
																						Int:1
																						Get dest.2675 Ti2451.6155
																					Let Td2454.6153
																						Let Ti2453.6154
																							Int:1
																							Get v.2676 Ti2453.6154
																						FMul Td2452.6152 Td2454.6153
																				Put dest.2675 Ti2450.6150 Td2455.6151
																		Let Ti2456.6144
																			Int:2
																			Let Td2461.6145
																				Let Td2458.6146
																					Let Ti2457.6149
																						Int:2
																						Get dest.2675 Ti2457.6149
																					Let Td2460.6147
																						Let Ti2459.6148
																							Int:2
																							Get v.2676 Ti2459.6148
																						FMul Td2458.6146 Td2460.6147
																				Put dest.2675 Ti2456.6144 Td2461.6145
																LetRec vecscale.2677 dest.2678 scale.2679 
																	Let Tu18.6128
																		Let Ti2432.6138
																			Int:0
																			Let Td2435.6139
																				Let Td2434.6140
																					Let Ti2433.6141
																						Int:0
																						Get dest.2678 Ti2433.6141
																					FMul Td2434.6140 scale.2679
																				Put dest.2678 Ti2432.6138 Td2435.6139
																		Let Tu17.6129
																			Let Ti2436.6134
																				Int:1
																				Let Td2439.6135
																					Let Td2438.6136
																						Let Ti2437.6137
																							Int:1
																							Get dest.2678 Ti2437.6137
																						FMul Td2438.6136 scale.2679
																					Put dest.2678 Ti2436.6134 Td2439.6135
																			Let Ti2440.6130
																				Int:2
																				Let Td2443.6131
																					Let Td2442.6132
																						Let Ti2441.6133
																							Int:2
																							Get dest.2678 Ti2441.6133
																						FMul Td2442.6132 scale.2679
																					Put dest.2678 Ti2440.6130 Td2443.6131
																	LetRec vecaccumv.2680 dest.2681 v.2682 w.2683 
																		Let Tu20.6099
																			Let Ti2405.6119
																				Int:0
																				Let Td2413.6120
																					Let Td2407.6121
																						Let Ti2406.6127
																							Int:0
																							Get dest.2681 Ti2406.6127
																						Let Td2412.6122
																							Let Td2409.6123
																								Let Ti2408.6126
																									Int:0
																									Get v.2682 Ti2408.6126
																								Let Td2411.6124
																									Let Ti2410.6125
																										Int:0
																										Get w.2683 Ti2410.6125
																									FMul Td2409.6123 Td2411.6124
																							FAdd Td2407.6121 Td2412.6122
																					Put dest.2681 Ti2405.6119 Td2413.6120
																			Let Tu19.6100
																				Let Ti2414.6110
																					Int:1
																					Let Td2422.6111
																						Let Td2416.6112
																							Let Ti2415.6118
																								Int:1
																								Get dest.2681 Ti2415.6118
																							Let Td2421.6113
																								Let Td2418.6114
																									Let Ti2417.6117
																										Int:1
																										Get v.2682 Ti2417.6117
																									Let Td2420.6115
																										Let Ti2419.6116
																											Int:1
																											Get w.2683 Ti2419.6116
																										FMul Td2418.6114 Td2420.6115
																								FAdd Td2416.6112 Td2421.6113
																						Put dest.2681 Ti2414.6110 Td2422.6111
																				Let Ti2423.6101
																					Int:2
																					Let Td2431.6102
																						Let Td2425.6103
																							Let Ti2424.6109
																								Int:2
																								Get dest.2681 Ti2424.6109
																							Let Td2430.6104
																								Let Td2427.6105
																									Let Ti2426.6108
																										Int:2
																										Get v.2682 Ti2426.6108
																									Let Td2429.6106
																										Let Ti2428.6107
																											Int:2
																											Get w.2683 Ti2428.6107
																										FMul Td2427.6105 Td2429.6106
																								FAdd Td2425.6103 Td2430.6104
																						Put dest.2681 Ti2423.6101 Td2431.6102
																		LetRec o_texturetype.2684 m.2685 
																			LetTuple (m_tex.6088,xm_shape.6089,xm_surface.6090,xm_isrot.6091,xm_abc.6092,xm_xyz.6093,xm_invert.6094,xm_surfparams.6095,xm_color.6096,xm_rot123.6097,xm_ctbl.6098,)
 m.2685
																				Var m_tex.6088
																			LetRec o_form.2686 m.2687 
																				LetTuple (xm_tex.6077,m_shape.6078,xm_surface.6079,xm_isrot.6080,xm_abc.6081,xm_xyz.6082,xm_invert.6083,xm_surfparams.6084,xm_color.6085,xm_rot123.6086,xm_ctbl.6087,)
 m.2687
																					Var m_shape.6078
																				LetRec o_reflectiontype.2688 m.2689 
																					LetTuple (xm_tex.6066,xm_shape.6067,m_surface.6068,xm_isrot.6069,xm_abc.6070,xm_xyz.6071,xm_invert.6072,xm_surfparams.6073,xm_color.6074,xm_rot123.6075,xm_ctbl.6076,)
 m.2689
																						Var m_surface.6068
																					LetRec o_isinvert.2690 m.2691 
																						LetTuple (xm_tex.6055,xm_shape.6056,xm_surface.6057,xm_isrot.6058,xm_abc.6059,xm_xyz.6060,m_invert.6061,xm_surfparams.6062,xm_color.6063,xm_rot123.6064,xm_ctbl.6065,)
 m.2691
																							Var m_invert.6061
																						LetRec o_isrot.2692 m.2693 
																							LetTuple (xm_tex.6044,xm_shape.6045,xm_surface.6046,m_isrot.6047,xm_abc.6048,xm_xyz.6049,xm_invert.6050,xm_surfparams.6051,xm_color.6052,xm_rot123.6053,xm_ctbl.6054,)
 m.2693
																								Var m_isrot.6047
																							LetRec o_param_a.2694 m.2695 
																								LetTuple (xm_tex.6032,xm_shape.6033,xm_surface.6034,xm_isrot.6035,m_abc.6036,xm_xyz.6037,xm_invert.6038,xm_surfparams.6039,xm_color.6040,xm_rot123.6041,xm_ctbl.6042,)
 m.2695
																									Let Ti2404.6043
																										Int:0
																										Get m_abc.6036 Ti2404.6043
																								LetRec o_param_b.2696 m.2697 
																									LetTuple (xm_tex.6020,xm_shape.6021,xm_surface.6022,xm_isrot.6023,m_abc.6024,xm_xyz.6025,xm_invert.6026,xm_surfparams.6027,xm_color.6028,xm_rot123.6029,xm_ctbl.6030,)
 m.2697
																										Let Ti2403.6031
																											Int:1
																											Get m_abc.6024 Ti2403.6031
																									LetRec o_param_c.2698 m.2699 
																										LetTuple (xm_tex.6008,xm_shape.6009,xm_surface.6010,xm_isrot.6011,m_abc.6012,xm_xyz.6013,xm_invert.6014,xm_surfparams.6015,xm_color.6016,xm_rot123.6017,xm_ctbl.6018,)
 m.2699
																											Let Ti2402.6019
																												Int:2
																												Get m_abc.6012 Ti2402.6019
																										LetRec o_param_abc.2700 m.2701 
																											LetTuple (xm_tex.5997,xm_shape.5998,xm_surface.5999,xm_isrot.6000,m_abc.6001,xm_xyz.6002,xm_invert.6003,xm_surfparams.6004,xm_color.6005,xm_rot123.6006,xm_ctbl.6007,)
 m.2701
																												Var m_abc.6001
																											LetRec o_param_x.2702 m.2703 
																												LetTuple (xm_tex.5985,xm_shape.5986,xm_surface.5987,xm_isrot.5988,xm_abc.5989,m_xyz.5990,xm_invert.5991,xm_surfparams.5992,xm_color.5993,xm_rot123.5994,xm_ctbl.5995,)
 m.2703
																													Let Ti2401.5996
																														Int:0
																														Get m_xyz.5990 Ti2401.5996
																												LetRec o_param_y.2704 m.2705 
																													LetTuple (xm_tex.5973,xm_shape.5974,xm_surface.5975,xm_isrot.5976,xm_abc.5977,m_xyz.5978,xm_invert.5979,xm_surfparams.5980,xm_color.5981,xm_rot123.5982,xm_ctbl.5983,)
 m.2705
																														Let Ti2400.5984
																															Int:1
																															Get m_xyz.5978 Ti2400.5984
																													LetRec o_param_z.2706 m.2707 
																														LetTuple (xm_tex.5961,xm_shape.5962,xm_surface.5963,xm_isrot.5964,xm_abc.5965,m_xyz.5966,xm_invert.5967,xm_surfparams.5968,xm_color.5969,xm_rot123.5970,xm_ctbl.5971,)
 m.2707
																															Let Ti2399.5972
																																Int:2
																																Get m_xyz.5966 Ti2399.5972
																														LetRec o_diffuse.2708 m.2709 
																															LetTuple (xm_tex.5949,xm_shape.5950,xm_surface.5951,xm_isrot.5952,xm_abc.5953,xm_xyz.5954,xm_invert.5955,m_surfparams.5956,xm_color.5957,xm_rot123.5958,xm_ctbl.5959,)
 m.2709
																																Let Ti2398.5960
																																	Int:0
																																	Get m_surfparams.5956 Ti2398.5960
																															LetRec o_hilight.2710 m.2711 
																																LetTuple (xm_tex.5937,xm_shape.5938,xm_surface.5939,xm_isrot.5940,xm_abc.5941,xm_xyz.5942,xm_invert.5943,m_surfparams.5944,xm_color.5945,xm_rot123.5946,xm_ctbl.5947,)
 m.2711
																																	Let Ti2397.5948
																																		Int:1
																																		Get m_surfparams.5944 Ti2397.5948
																																LetRec o_color_red.2712 m.2713 
																																	LetTuple (xm_tex.5925,xm_shape.5926,m_surface.5927,xm_isrot.5928,xm_abc.5929,xm_xyz.5930,xm_invert.5931,xm_surfparams.5932,m_color.5933,xm_rot123.5934,xm_ctbl.5935,)
 m.2713
																																		Let Ti2396.5936
																																			Int:0
																																			Get m_color.5933 Ti2396.5936
																																	LetRec o_color_green.2714 m.2715 
																																		LetTuple (xm_tex.5913,xm_shape.5914,m_surface.5915,xm_isrot.5916,xm_abc.5917,xm_xyz.5918,xm_invert.5919,xm_surfparams.5920,m_color.5921,xm_rot123.5922,xm_ctbl.5923,)
 m.2715
																																			Let Ti2395.5924
																																				Int:1
																																				Get m_color.5921 Ti2395.5924
																																		LetRec o_color_blue.2716 m.2717 
																																			LetTuple (xm_tex.5901,xm_shape.5902,m_surface.5903,xm_isrot.5904,xm_abc.5905,xm_xyz.5906,xm_invert.5907,xm_surfparams.5908,m_color.5909,xm_rot123.5910,xm_ctbl.5911,)
 m.2717
																																				Let Ti2394.5912
																																					Int:2
																																					Get m_color.5909 Ti2394.5912
																																			LetRec o_param_r1.2718 m.2719 
																																				LetTuple (xm_tex.5889,xm_shape.5890,xm_surface.5891,xm_isrot.5892,xm_abc.5893,xm_xyz.5894,xm_invert.5895,xm_surfparams.5896,xm_color.5897,m_rot123.5898,xm_ctbl.5899,)
 m.2719
																																					Let Ti2393.5900
																																						Int:0
																																						Get m_rot123.5898 Ti2393.5900
																																				LetRec o_param_r2.2720 m.2721 
																																					LetTuple (xm_tex.5877,xm_shape.5878,xm_surface.5879,xm_isrot.5880,xm_abc.5881,xm_xyz.5882,xm_invert.5883,xm_surfparams.5884,xm_color.5885,m_rot123.5886,xm_ctbl.5887,)
 m.2721
																																						Let Ti2392.5888
																																							Int:1
																																							Get m_rot123.5886 Ti2392.5888
																																					LetRec o_param_r3.2722 m.2723 
																																						LetTuple (xm_tex.5865,xm_shape.5866,xm_surface.5867,xm_isrot.5868,xm_abc.5869,xm_xyz.5870,xm_invert.5871,xm_surfparams.5872,xm_color.5873,m_rot123.5874,xm_ctbl.5875,)
 m.2723
																																							Let Ti2391.5876
																																								Int:2
																																								Get m_rot123.5874 Ti2391.5876
																																						LetRec o_param_ctbl.2724 m.2725 
																																							LetTuple (xm_tex.5854,xm_shape.5855,xm_surface.5856,xm_isrot.5857,xm_abc.5858,xm_xyz.5859,xm_invert.5860,xm_surfparams.5861,xm_color.5862,xm_rot123.5863,m_ctbl.5864,)
 m.2725
																																								Var m_ctbl.5864
																																							LetRec p_rgb.2726 pixel.2727 
																																								LetTuple (m_rgb.5846,xm_isect_ps.5847,xm_sids.5848,xm_cdif.5849,xm_engy.5850,xm_r20p.5851,xm_gid.5852,xm_nvectors.5853,)
 pixel.2727
																																									Var m_rgb.5846
																																								LetRec p_intersection_points.2728 pixel.2729 
																																									LetTuple (xm_rgb.5838,m_isect_ps.5839,xm_sids.5840,xm_cdif.5841,xm_engy.5842,xm_r20p.5843,xm_gid.5844,xm_nvectors.5845,)
 pixel.2729
																																										Var m_isect_ps.5839
																																									LetRec p_surface_ids.2730 pixel.2731 
																																										LetTuple (xm_rgb.5830,xm_isect_ps.5831,m_sids.5832,xm_cdif.5833,xm_engy.5834,xm_r20p.5835,xm_gid.5836,xm_nvectors.5837,)
 pixel.2731
																																											Var m_sids.5832
																																										LetRec p_calc_diffuse.2732 pixel.2733 
																																											LetTuple (xm_rgb.5822,xm_isect_ps.5823,xm_sids.5824,m_cdif.5825,xm_engy.5826,xm_r20p.5827,xm_gid.5828,xm_nvectors.5829,)
 pixel.2733
																																												Var m_cdif.5825
																																											LetRec p_energy.2734 pixel.2735 
																																												LetTuple (xm_rgb.5814,xm_isect_ps.5815,xm_sids.5816,xm_cdif.5817,m_engy.5818,xm_r20p.5819,xm_gid.5820,xm_nvectors.5821,)
 pixel.2735
																																													Var m_engy.5818
																																												LetRec p_received_ray_20percent.2736 pixel.2737 
																																													LetTuple (xm_rgb.5806,xm_isect_ps.5807,xm_sids.5808,xm_cdif.5809,xm_engy.5810,m_r20p.5811,xm_gid.5812,xm_nvectors.5813,)
 pixel.2737
																																														Var m_r20p.5811
																																													LetRec p_group_id.2738 pixel.2739 
																																														LetTuple (xm_rgb.5797,xm_isect_ps.5798,xm_sids.5799,xm_cdif.5800,xm_engy.5801,xm_r20p.5802,m_gid.5803,xm_nvectors.5804,)
 pixel.2739
																																															Let Ti2390.5805
																																																Int:0
																																																Get m_gid.5803 Ti2390.5805
																																														LetRec p_set_group_id.2740 pixel.2741 id.2742 
																																															LetTuple (xm_rgb.5788,xm_isect_ps.5789,xm_sids.5790,xm_cdif.5791,xm_engy.5792,xm_r20p.5793,m_gid.5794,xm_nvectors.5795,)
 pixel.2741
																																																Let Ti2389.5796
																																																	Int:0
																																																	Put m_gid.5794 Ti2389.5796 id.2742
																																															LetRec p_nvectors.2743 pixel.2744 
																																																LetTuple (xm_rgb.5780,xm_isect_ps.5781,xm_sids.5782,xm_cdif.5783,xm_engy.5784,xm_r20p.5785,xm_gid.5786,m_nvectors.5787,)
 pixel.2744
																																																	Var m_nvectors.5787
																																																LetRec d_vec.2745 d.2746 
																																																	LetTuple (m_vec.5778,xm_const.5779,)
 d.2746
																																																		Var m_vec.5778
																																																	LetRec d_const.2747 d.2748 
																																																		LetTuple (dm_vec.5776,m_const.5777,)
 d.2748
																																																			Var m_const.5777
																																																		LetRec r_surface_id.2749 r.2750 
																																																			LetTuple (m_sid.5773,xm_dvec.5774,xm_br.5775,)
 r.2750
																																																				Var m_sid.5773
																																																			LetRec r_dvec.2751 r.2752 
																																																				LetTuple (xm_sid.5770,m_dvec.5771,xm_br.5772,)
 r.2752
																																																					Var m_dvec.5771
																																																				LetRec r_bright.2753 r.2754 
																																																					LetTuple (xm_sid.5767,xm_dvec.5768,m_br.5769,)
 r.2754
																																																						Var m_br.5769
																																																					LetRec rad.2755 x.2756 
																																																						Let Td2388.5766
																																																							Float:0.017453
																																																							FMul x.2756 Td2388.5766
																																																						LetRec read_screen_settings.2757 Tu21.2758 
																																																							Let Tu35.5670
																																																								Let Ta2312.5762
																																																									ExtArray screen
																																																									Let Ti2313.5763
																																																										Int:0
																																																										Let Td2315.5764
																																																											Let Tu2314.5765
																																																												Unit
																																																												ExtFunApp read_float Tu2314.5765,
																																																											Put Ta2312.5762 Ti2313.5763 Td2315.5764
																																																								Let Tu34.5671
																																																									Let Ta2316.5758
																																																										ExtArray screen
																																																										Let Ti2317.5759
																																																											Int:1
																																																											Let Td2319.5760
																																																												Let Tu2318.5761
																																																													Unit
																																																													ExtFunApp read_float Tu2318.5761,
																																																												Put Ta2316.5758 Ti2317.5759 Td2319.5760
																																																									Let Tu33.5672
																																																										Let Ta2320.5754
																																																											ExtArray screen
																																																											Let Ti2321.5755
																																																												Int:2
																																																												Let Td2323.5756
																																																													Let Tu2322.5757
																																																														Unit
																																																														ExtFunApp read_float Tu2322.5757,
																																																													Put Ta2320.5754 Ti2321.5755 Td2323.5756
																																																										Let v1.5673
																																																											Let Td2325.5752
																																																												Let Tu2324.5753
																																																													Unit
																																																													ExtFunApp read_float Tu2324.5753,
																																																												App rad.2755Td2325.5752 
																																																											Let cos_v1.5674
																																																												ExtFunApp cos v1.5673,
																																																												Let sin_v1.5675
																																																													ExtFunApp sin v1.5673,
																																																													Let v2.5676
																																																														Let Td2327.5750
																																																															Let Tu2326.5751
																																																																Unit
																																																																ExtFunApp read_float Tu2326.5751,
																																																															App rad.2755Td2327.5750 
																																																														Let cos_v2.5677
																																																															ExtFunApp cos v2.5676,
																																																															Let sin_v2.5678
																																																																ExtFunApp sin v2.5676,
																																																																Let Tu32.5679
																																																																	Let Ta2328.5745
																																																																		ExtArray screenz_dir
																																																																		Let Ti2329.5746
																																																																			Int:0
																																																																			Let Td2332.5747
																																																																				Let Td2330.5748
																																																																					FMul cos_v1.5674 sin_v2.5678
																																																																					Let Td2331.5749
																																																																						Float:200.000000
																																																																						FMul Td2330.5748 Td2331.5749
																																																																				Put Ta2328.5745 Ti2329.5746 Td2332.5747
																																																																	Let Tu31.5680
																																																																		Let Ta2333.5741
																																																																			ExtArray screenz_dir
																																																																			Let Ti2334.5742
																																																																				Int:1
																																																																				Let Td2336.5743
																																																																					Let Td2335.5744
																																																																						Float:-200.000000
																																																																						FMul sin_v1.5675 Td2335.5744
																																																																					Put Ta2333.5741 Ti2334.5742 Td2336.5743
																																																																		Let Tu30.5681
																																																																			Let Ta2337.5736
																																																																				ExtArray screenz_dir
																																																																				Let Ti2338.5737
																																																																					Int:2
																																																																					Let Td2341.5738
																																																																						Let Td2339.5739
																																																																							FMul cos_v1.5674 cos_v2.5677
																																																																							Let Td2340.5740
																																																																								Float:200.000000
																																																																								FMul Td2339.5739 Td2340.5740
																																																																						Put Ta2337.5736 Ti2338.5737 Td2341.5738
																																																																			Let Tu29.5682
																																																																				Let Ta2342.5734
																																																																					ExtArray screenx_dir
																																																																					Let Ti2343.5735
																																																																						Int:0
																																																																						Put Ta2342.5734 Ti2343.5735 cos_v2.5677
																																																																				Let Tu28.5683
																																																																					Let Ta2344.5731
																																																																						ExtArray screenx_dir
																																																																						Let Ti2345.5732
																																																																							Int:1
																																																																							Let Td2346.5733
																																																																								Float:0.000000
																																																																								Put Ta2344.5731 Ti2345.5732 Td2346.5733
																																																																					Let Tu27.5684
																																																																						Let Ta2347.5728
																																																																							ExtArray screenx_dir
																																																																							Let Ti2348.5729
																																																																								Int:2
																																																																								Let Td2349.5730
																																																																									ExtFunApp fneg sin_v2.5678,
																																																																									Put Ta2347.5728 Ti2348.5729 Td2349.5730
																																																																						Let Tu26.5685
																																																																							Let Ta2350.5724
																																																																								ExtArray screeny_dir
																																																																								Let Ti2351.5725
																																																																									Int:0
																																																																									Let Td2353.5726
																																																																										Let Td2352.5727
																																																																											ExtFunApp fneg sin_v1.5675,
																																																																											FMul Td2352.5727 sin_v2.5678
																																																																										Put Ta2350.5724 Ti2351.5725 Td2353.5726
																																																																							Let Tu25.5686
																																																																								Let Ta2354.5721
																																																																									ExtArray screeny_dir
																																																																									Let Ti2355.5722
																																																																										Int:1
																																																																										Let Td2356.5723
																																																																											ExtFunApp fneg cos_v1.5674,
																																																																											Put Ta2354.5721 Ti2355.5722 Td2356.5723
																																																																								Let Tu24.5687
																																																																									Let Ta2357.5717
																																																																										ExtArray screeny_dir
																																																																										Let Ti2358.5718
																																																																											Int:2
																																																																											Let Td2360.5719
																																																																												Let Td2359.5720
																																																																													ExtFunApp fneg sin_v1.5675,
																																																																													FMul Td2359.5720 cos_v2.5677
																																																																												Put Ta2357.5717 Ti2358.5718 Td2360.5719
																																																																									Let Tu23.5688
																																																																										Let Ta2361.5708
																																																																											ExtArray viewpoint
																																																																											Let Ti2362.5709
																																																																												Int:0
																																																																												Let Td2369.5710
																																																																													Let Td2365.5711
																																																																														Let Ta2363.5715
																																																																															ExtArray screen
																																																																															Let Ti2364.5716
																																																																																Int:0
																																																																																Get Ta2363.5715 Ti2364.5716
																																																																														Let Td2368.5712
																																																																															Let Ta2366.5713
																																																																																ExtArray screenz_dir
																																																																																Let Ti2367.5714
																																																																																	Int:0
																																																																																	Get Ta2366.5713 Ti2367.5714
																																																																															FSub Td2365.5711 Td2368.5712
																																																																													Put Ta2361.5708 Ti2362.5709 Td2369.5710
																																																																										Let Tu22.5689
																																																																											Let Ta2370.5699
																																																																												ExtArray viewpoint
																																																																												Let Ti2371.5700
																																																																													Int:1
																																																																													Let Td2378.5701
																																																																														Let Td2374.5702
																																																																															Let Ta2372.5706
																																																																																ExtArray screen
																																																																																Let Ti2373.5707
																																																																																	Int:1
																																																																																	Get Ta2372.5706 Ti2373.5707
																																																																															Let Td2377.5703
																																																																																Let Ta2375.5704
																																																																																	ExtArray screenz_dir
																																																																																	Let Ti2376.5705
																																																																																		Int:1
																																																																																		Get Ta2375.5704 Ti2376.5705
																																																																																FSub Td2374.5702 Td2377.5703
																																																																														Put Ta2370.5699 Ti2371.5700 Td2378.5701
																																																																											Let Ta2379.5690
																																																																												ExtArray viewpoint
																																																																												Let Ti2380.5691
																																																																													Int:2
																																																																													Let Td2387.5692
																																																																														Let Td2383.5693
																																																																															Let Ta2381.5697
																																																																																ExtArray screen
																																																																																Let Ti2382.5698
																																																																																	Int:2
																																																																																	Get Ta2381.5697 Ti2382.5698
																																																																															Let Td2386.5694
																																																																																Let Ta2384.5695
																																																																																	ExtArray screenz_dir
																																																																																	Let Ti2385.5696
																																																																																		Int:2
																																																																																		Get Ta2384.5695 Ti2385.5696
																																																																																FSub Td2383.5693 Td2386.5694
																																																																														Put Ta2379.5690 Ti2380.5691 Td2387.5692
																																																							LetRec read_light.2759 Tu36.2760 
																																																								Let nl.5642
																																																									Let Tu2294.5669
																																																										Unit
																																																										ExtFunApp read_int Tu2294.5669,
																																																									Let l1.5643
																																																										Let Td2296.5667
																																																											Let Tu2295.5668
																																																												Unit
																																																												ExtFunApp read_float Tu2295.5668,
																																																											App rad.2755Td2296.5667 
																																																										Let sl1.5644
																																																											ExtFunApp sin l1.5643,
																																																											Let Tu39.5645
																																																												Let Ta2297.5664
																																																													ExtArray light
																																																													Let Ti2298.5665
																																																														Int:1
																																																														Let Td2299.5666
																																																															ExtFunApp fneg sl1.5644,
																																																															Put Ta2297.5664 Ti2298.5665 Td2299.5666
																																																												Let l2.5646
																																																													Let Td2301.5662
																																																														Let Tu2300.5663
																																																															Unit
																																																															ExtFunApp read_float Tu2300.5663,
																																																														App rad.2755Td2301.5662 
																																																													Let cl1.5647
																																																														ExtFunApp cos l1.5643,
																																																														Let sl2.5648
																																																															ExtFunApp sin l2.5646,
																																																															Let Tu38.5649
																																																																Let Ta2302.5659
																																																																	ExtArray light
																																																																	Let Ti2303.5660
																																																																		Int:0
																																																																		Let Td2304.5661
																																																																			FMul cl1.5647 sl2.5648
																																																																			Put Ta2302.5659 Ti2303.5660 Td2304.5661
																																																																Let cl2.5650
																																																																	ExtFunApp cos l2.5646,
																																																																	Let Tu37.5651
																																																																		Let Ta2305.5656
																																																																			ExtArray light
																																																																			Let Ti2306.5657
																																																																				Int:2
																																																																				Let Td2307.5658
																																																																					FMul cl1.5647 cl2.5650
																																																																					Put Ta2305.5656 Ti2306.5657 Td2307.5658
																																																																		Let Ta2308.5652
																																																																			ExtArray beam
																																																																			Let Ti2309.5653
																																																																				Int:0
																																																																				Let Td2311.5654
																																																																					Let Tu2310.5655
																																																																						Unit
																																																																						ExtFunApp read_float Tu2310.5655,
																																																																					Put Ta2308.5652 Ti2309.5653 Td2311.5654
																																																								LetRec rotate_quadratic_matrix.2761 abc.2762 rot.2763 
																																																									Let cos_x.5532
																																																										Let Td2208.5640
																																																											Let Ti2207.5641
																																																												Int:0
																																																												Get rot.2763 Ti2207.5641
																																																											ExtFunApp cos Td2208.5640,
																																																										Let sin_x.5533
																																																											Let Td2210.5638
																																																												Let Ti2209.5639
																																																													Int:0
																																																													Get rot.2763 Ti2209.5639
																																																												ExtFunApp sin Td2210.5638,
																																																											Let cos_y.5534
																																																												Let Td2212.5636
																																																													Let Ti2211.5637
																																																														Int:1
																																																														Get rot.2763 Ti2211.5637
																																																													ExtFunApp cos Td2212.5636,
																																																												Let sin_y.5535
																																																													Let Td2214.5634
																																																														Let Ti2213.5635
																																																															Int:1
																																																															Get rot.2763 Ti2213.5635
																																																														ExtFunApp sin Td2214.5634,
																																																													Let cos_z.5536
																																																														Let Td2216.5632
																																																															Let Ti2215.5633
																																																																Int:2
																																																																Get rot.2763 Ti2215.5633
																																																															ExtFunApp cos Td2216.5632,
																																																														Let sin_z.5537
																																																															Let Td2218.5630
																																																																Let Ti2217.5631
																																																																	Int:2
																																																																	Get rot.2763 Ti2217.5631
																																																																ExtFunApp sin Td2218.5630,
																																																															Let m00.5538
																																																																FMul cos_y.5534 cos_z.5536
																																																																Let m01.5539
																																																																	Let Td2220.5627
																																																																		Let Td2219.5629
																																																																			FMul sin_x.5533 sin_y.5535
																																																																			FMul Td2219.5629 cos_z.5536
																																																																		Let Td2221.5628
																																																																			FMul cos_x.5532 sin_z.5537
																																																																			FSub Td2220.5627 Td2221.5628
																																																																	Let m02.5540
																																																																		Let Td2223.5624
																																																																			Let Td2222.5626
																																																																				FMul cos_x.5532 sin_y.5535
																																																																				FMul Td2222.5626 cos_z.5536
																																																																			Let Td2224.5625
																																																																				FMul sin_x.5533 sin_z.5537
																																																																				FAdd Td2223.5624 Td2224.5625
																																																																		Let m10.5541
																																																																			FMul cos_y.5534 sin_z.5537
																																																																			Let m11.5542
																																																																				Let Td2226.5621
																																																																					Let Td2225.5623
																																																																						FMul sin_x.5533 sin_y.5535
																																																																						FMul Td2225.5623 sin_z.5537
																																																																					Let Td2227.5622
																																																																						FMul cos_x.5532 cos_z.5536
																																																																						FAdd Td2226.5621 Td2227.5622
																																																																				Let m12.5543
																																																																					Let Td2229.5618
																																																																						Let Td2228.5620
																																																																							FMul cos_x.5532 sin_y.5535
																																																																							FMul Td2228.5620 sin_z.5537
																																																																						Let Td2230.5619
																																																																							FMul sin_x.5533 cos_z.5536
																																																																							FSub Td2229.5618 Td2230.5619
																																																																					Let m20.5544
																																																																						ExtFunApp fneg sin_y.5535,
																																																																						Let m21.5545
																																																																							FMul sin_x.5533 cos_y.5534
																																																																							Let m22.5546
																																																																								FMul cos_x.5532 cos_y.5534
																																																																								Let ao.5547
																																																																									Let Ti2231.5617
																																																																										Int:0
																																																																										Get abc.2762 Ti2231.5617
																																																																									Let bo.5548
																																																																										Let Ti2232.5616
																																																																											Int:1
																																																																											Get abc.2762 Ti2232.5616
																																																																										Let co.5549
																																																																											Let Ti2233.5615
																																																																												Int:2
																																																																												Get abc.2762 Ti2233.5615
																																																																											Let Tu44.5550
																																																																												Let Ti2234.5606
																																																																													Int:0
																																																																													Let Td2242.5607
																																																																														Let Td2239.5608
																																																																															Let Td2236.5611
																																																																																Let Td2235.5614
																																																																																	ExtFunApp fsqr m00.5538,
																																																																																	FMul ao.5547 Td2235.5614
																																																																																Let Td2238.5612
																																																																																	Let Td2237.5613
																																																																																		ExtFunApp fsqr m10.5541,
																																																																																		FMul bo.5548 Td2237.5613
																																																																																	FAdd Td2236.5611 Td2238.5612
																																																																															Let Td2241.5609
																																																																																Let Td2240.5610
																																																																																	ExtFunApp fsqr m20.5544,
																																																																																	FMul co.5549 Td2240.5610
																																																																																FAdd Td2239.5608 Td2241.5609
																																																																														Put abc.2762 Ti2234.5606 Td2242.5607
																																																																												Let Tu43.5551
																																																																													Let Ti2243.5597
																																																																														Int:1
																																																																														Let Td2251.5598
																																																																															Let Td2248.5599
																																																																																Let Td2245.5602
																																																																																	Let Td2244.5605
																																																																																		ExtFunApp fsqr m01.5539,
																																																																																		FMul ao.5547 Td2244.5605
																																																																																	Let Td2247.5603
																																																																																		Let Td2246.5604
																																																																																			ExtFunApp fsqr m11.5542,
																																																																																			FMul bo.5548 Td2246.5604
																																																																																		FAdd Td2245.5602 Td2247.5603
																																																																																Let Td2250.5600
																																																																																	Let Td2249.5601
																																																																																		ExtFunApp fsqr m21.5545,
																																																																																		FMul co.5549 Td2249.5601
																																																																																	FAdd Td2248.5599 Td2250.5600
																																																																															Put abc.2762 Ti2243.5597 Td2251.5598
																																																																													Let Tu42.5552
																																																																														Let Ti2252.5588
																																																																															Int:2
																																																																															Let Td2260.5589
																																																																																Let Td2257.5590
																																																																																	Let Td2254.5593
																																																																																		Let Td2253.5596
																																																																																			ExtFunApp fsqr m02.5540,
																																																																																			FMul ao.5547 Td2253.5596
																																																																																		Let Td2256.5594
																																																																																			Let Td2255.5595
																																																																																				ExtFunApp fsqr m12.5543,
																																																																																				FMul bo.5548 Td2255.5595
																																																																																			FAdd Td2254.5593 Td2256.5594
																																																																																	Let Td2259.5591
																																																																																		Let Td2258.5592
																																																																																			ExtFunApp fsqr m22.5546,
																																																																																			FMul co.5549 Td2258.5592
																																																																																		FAdd Td2257.5590 Td2259.5591
																																																																																Put abc.2762 Ti2252.5588 Td2260.5589
																																																																														Let Tu41.5553
																																																																															Let Ti2261.5577
																																																																																Int:0
																																																																																Let Td2271.5578
																																																																																	Let Td2262.5579
																																																																																		Float:2.000000
																																																																																		Let Td2270.5580
																																																																																			Let Td2267.5581
																																																																																				Let Td2264.5584
																																																																																					Let Td2263.5587
																																																																																						FMul ao.5547 m01.5539
																																																																																						FMul Td2263.5587 m02.5540
																																																																																					Let Td2266.5585
																																																																																						Let Td2265.5586
																																																																																							FMul bo.5548 m11.5542
																																																																																							FMul Td2265.5586 m12.5543
																																																																																						FAdd Td2264.5584 Td2266.5585
																																																																																				Let Td2269.5582
																																																																																					Let Td2268.5583
																																																																																						FMul co.5549 m21.5545
																																																																																						FMul Td2268.5583 m22.5546
																																																																																					FAdd Td2267.5581 Td2269.5582
																																																																																			FMul Td2262.5579 Td2270.5580
																																																																																	Put rot.2763 Ti2261.5577 Td2271.5578
																																																																															Let Tu40.5554
																																																																																Let Ti2272.5566
																																																																																	Int:1
																																																																																	Let Td2282.5567
																																																																																		Let Td2273.5568
																																																																																			Float:2.000000
																																																																																			Let Td2281.5569
																																																																																				Let Td2278.5570
																																																																																					Let Td2275.5573
																																																																																						Let Td2274.5576
																																																																																							FMul ao.5547 m00.5538
																																																																																							FMul Td2274.5576 m02.5540
																																																																																						Let Td2277.5574
																																																																																							Let Td2276.5575
																																																																																								FMul bo.5548 m10.5541
																																																																																								FMul Td2276.5575 m12.5543
																																																																																							FAdd Td2275.5573 Td2277.5574
																																																																																					Let Td2280.5571
																																																																																						Let Td2279.5572
																																																																																							FMul co.5549 m20.5544
																																																																																							FMul Td2279.5572 m22.5546
																																																																																						FAdd Td2278.5570 Td2280.5571
																																																																																				FMul Td2273.5568 Td2281.5569
																																																																																		Put rot.2763 Ti2272.5566 Td2282.5567
																																																																																Let Ti2283.5555
																																																																																	Int:2
																																																																																	Let Td2293.5556
																																																																																		Let Td2284.5557
																																																																																			Float:2.000000
																																																																																			Let Td2292.5558
																																																																																				Let Td2289.5559
																																																																																					Let Td2286.5562
																																																																																						Let Td2285.5565
																																																																																							FMul ao.5547 m00.5538
																																																																																							FMul Td2285.5565 m01.5539
																																																																																						Let Td2288.5563
																																																																																							Let Td2287.5564
																																																																																								FMul bo.5548 m10.5541
																																																																																								FMul Td2287.5564 m11.5542
																																																																																							FAdd Td2286.5562 Td2288.5563
																																																																																					Let Td2291.5560
																																																																																						Let Td2290.5561
																																																																																							FMul co.5549 m20.5544
																																																																																							FMul Td2290.5561 m21.5545
																																																																																						FAdd Td2289.5559 Td2291.5560
																																																																																				FMul Td2284.5557 Td2292.5558
																																																																																		Put rot.2763 Ti2283.5555 Td2293.5556
																																																									LetRec read_nth_object.2764 n.2765 
																																																										Let texture.5400
																																																											Let Tu2110.5531
																																																												Unit
																																																												ExtFunApp read_int Tu2110.5531,
																																																											Let Ti2112.5401
																																																												Let Ti2111.5530
																																																													Int:1
																																																													Neg Ti2111.5530
																																																												IfEq texture.5400 Ti2112.5401
																																																													Int:0
																																																													Let form.5402
																																																														Let Tu2113.5529
																																																															Unit
																																																															ExtFunApp read_int Tu2113.5529,
																																																														Let refltype.5403
																																																															Let Tu2114.5528
																																																																Unit
																																																																ExtFunApp read_int Tu2114.5528,
																																																															Let isrot_p.5404
																																																																Let Tu2115.5527
																																																																	Unit
																																																																	ExtFunApp read_int Tu2115.5527,
																																																																Let abc.5405
																																																																	Let Ti2116.5525
																																																																		Int:3
																																																																		Let Td2117.5526
																																																																			Float:0.000000
																																																																			ExtFunApp create_float_array Ti2116.5525,Td2117.5526,
																																																																	Let Tu63.5406
																																																																		Let Ti2118.5522
																																																																			Int:0
																																																																			Let Td2120.5523
																																																																				Let Tu2119.5524
																																																																					Unit
																																																																					ExtFunApp read_float Tu2119.5524,
																																																																				Put abc.5405 Ti2118.5522 Td2120.5523
																																																																		Let Tu62.5407
																																																																			Let Ti2121.5519
																																																																				Int:1
																																																																				Let Td2123.5520
																																																																					Let Tu2122.5521
																																																																						Unit
																																																																						ExtFunApp read_float Tu2122.5521,
																																																																					Put abc.5405 Ti2121.5519 Td2123.5520
																																																																			Let Tu61.5408
																																																																				Let Ti2124.5516
																																																																					Int:2
																																																																					Let Td2126.5517
																																																																						Let Tu2125.5518
																																																																							Unit
																																																																							ExtFunApp read_float Tu2125.5518,
																																																																						Put abc.5405 Ti2124.5516 Td2126.5517
																																																																				Let xyz.5409
																																																																					Let Ti2127.5514
																																																																						Int:3
																																																																						Let Td2128.5515
																																																																							Float:0.000000
																																																																							ExtFunApp create_float_array Ti2127.5514,Td2128.5515,
																																																																					Let Tu60.5410
																																																																						Let Ti2129.5511
																																																																							Int:0
																																																																							Let Td2131.5512
																																																																								Let Tu2130.5513
																																																																									Unit
																																																																									ExtFunApp read_float Tu2130.5513,
																																																																								Put xyz.5409 Ti2129.5511 Td2131.5512
																																																																						Let Tu59.5411
																																																																							Let Ti2132.5508
																																																																								Int:1
																																																																								Let Td2134.5509
																																																																									Let Tu2133.5510
																																																																										Unit
																																																																										ExtFunApp read_float Tu2133.5510,
																																																																									Put xyz.5409 Ti2132.5508 Td2134.5509
																																																																							Let Tu58.5412
																																																																								Let Ti2135.5505
																																																																									Int:2
																																																																									Let Td2137.5506
																																																																										Let Tu2136.5507
																																																																											Unit
																																																																											ExtFunApp read_float Tu2136.5507,
																																																																										Put xyz.5409 Ti2135.5505 Td2137.5506
																																																																								Let m_invert.5413
																																																																									Let Td2139.5503
																																																																										Let Tu2138.5504
																																																																											Unit
																																																																											ExtFunApp read_float Tu2138.5504,
																																																																										ExtFunApp fisneg Td2139.5503,
																																																																									Let reflparam.5414
																																																																										Let Ti2140.5501
																																																																											Int:2
																																																																											Let Td2141.5502
																																																																												Float:0.000000
																																																																												ExtFunApp create_float_array Ti2140.5501,Td2141.5502,
																																																																										Let Tu57.5415
																																																																											Let Ti2142.5498
																																																																												Int:0
																																																																												Let Td2144.5499
																																																																													Let Tu2143.5500
																																																																														Unit
																																																																														ExtFunApp read_float Tu2143.5500,
																																																																													Put reflparam.5414 Ti2142.5498 Td2144.5499
																																																																											Let Tu56.5416
																																																																												Let Ti2145.5495
																																																																													Int:1
																																																																													Let Td2147.5496
																																																																														Let Tu2146.5497
																																																																															Unit
																																																																															ExtFunApp read_float Tu2146.5497,
																																																																														Put reflparam.5414 Ti2145.5495 Td2147.5496
																																																																												Let color.5417
																																																																													Let Ti2148.5493
																																																																														Int:3
																																																																														Let Td2149.5494
																																																																															Float:0.000000
																																																																															ExtFunApp create_float_array Ti2148.5493,Td2149.5494,
																																																																													Let Tu55.5418
																																																																														Let Ti2150.5490
																																																																															Int:0
																																																																															Let Td2152.5491
																																																																																Let Tu2151.5492
																																																																																	Unit
																																																																																	ExtFunApp read_float Tu2151.5492,
																																																																																Put color.5417 Ti2150.5490 Td2152.5491
																																																																														Let Tu54.5419
																																																																															Let Ti2153.5487
																																																																																Int:1
																																																																																Let Td2155.5488
																																																																																	Let Tu2154.5489
																																																																																		Unit
																																																																																		ExtFunApp read_float Tu2154.5489,
																																																																																	Put color.5417 Ti2153.5487 Td2155.5488
																																																																															Let Tu53.5420
																																																																																Let Ti2156.5484
																																																																																	Int:2
																																																																																	Let Td2158.5485
																																																																																		Let Tu2157.5486
																																																																																			Unit
																																																																																			ExtFunApp read_float Tu2157.5486,
																																																																																		Put color.5417 Ti2156.5484 Td2158.5485
																																																																																Let rotation.5421
																																																																																	Let Ti2159.5482
																																																																																		Int:3
																																																																																		Let Td2160.5483
																																																																																			Float:0.000000
																																																																																			ExtFunApp create_float_array Ti2159.5482,Td2160.5483,
																																																																																	Let Tu52.5422
																																																																																		Let Ti2161.5467
																																																																																			Int:0
																																																																																			IfEq isrot_p.5404 Ti2161.5467
																																																																																				Unit
																																																																																				Let Tu46.5468
																																																																																					Let Ti2162.5478
																																																																																						Int:0
																																																																																						Let Td2165.5479
																																																																																							Let Td2164.5480
																																																																																								Let Tu2163.5481
																																																																																									Unit
																																																																																									ExtFunApp read_float Tu2163.5481,
																																																																																								App rad.2755Td2164.5480 
																																																																																							Put rotation.5421 Ti2162.5478 Td2165.5479
																																																																																					Let Tu45.5469
																																																																																						Let Ti2166.5474
																																																																																							Int:1
																																																																																							Let Td2169.5475
																																																																																								Let Td2168.5476
																																																																																									Let Tu2167.5477
																																																																																										Unit
																																																																																										ExtFunApp read_float Tu2167.5477,
																																																																																									App rad.2755Td2168.5476 
																																																																																								Put rotation.5421 Ti2166.5474 Td2169.5475
																																																																																						Let Ti2170.5470
																																																																																							Int:2
																																																																																							Let Td2173.5471
																																																																																								Let Td2172.5472
																																																																																									Let Tu2171.5473
																																																																																										Unit
																																																																																										ExtFunApp read_float Tu2171.5473,
																																																																																									App rad.2755Td2172.5472 
																																																																																								Put rotation.5421 Ti2170.5470 Td2173.5471
																																																																																		Let m_invert2.5423
																																																																																			Let Ti2174.5466
																																																																																				Int:2
																																																																																				IfEq form.5402 Ti2174.5466
																																																																																					Int:1
																																																																																					Var m_invert.5413
																																																																																			Let ctbl.5424
																																																																																				Let Ti2175.5464
																																																																																					Int:4
																																																																																					Let Td2176.5465
																																																																																						Float:0.000000
																																																																																						ExtFunApp create_float_array Ti2175.5464,Td2176.5465,
																																																																																				Let obj.5425
																																																																																					Tuple (texture.5400,form.5402,refltype.5403,isrot_p.5404,abc.5405,xyz.5409,m_invert2.5423,reflparam.5414,color.5417,rotation.5421,ctbl.5424,)
																																																																																					Let Tu51.5426
																																																																																						Let Ta2177.5463
																																																																																							ExtArray objects
																																																																																							Put Ta2177.5463 n.2765 obj.5425
																																																																																						Let Tu50.5427
																																																																																							Let Ti2178.5430
																																																																																								Int:3
																																																																																								IfEq form.5402 Ti2178.5430
																																																																																									Let a.5434
																																																																																										Let Ti2179.5462
																																																																																											Int:0
																																																																																											Get abc.5405 Ti2179.5462
																																																																																										Let Tu48.5435
																																																																																											Let Ti2180.5455
																																																																																												Int:0
																																																																																												Let Td2186.5456
																																																																																													Let Tb2181.5457
																																																																																														ExtFunApp fiszero a.5434,
																																																																																														Let Ti2182.5458
																																																																																															Int:0
																																																																																															IfEq Tb2181.5457 Ti2182.5458
																																																																																																Let Td2183.5459
																																																																																																	App sgn.2630a.5434 
																																																																																																	Let Td2184.5460
																																																																																																		ExtFunApp fsqr a.5434,
																																																																																																		Let Td2185.5461
																																																																																																			FReciprocal Td2184.5460
																																																																																																			FMul Td2183.5459 Td2185.5461
																																																																																																Float:0.000000
																																																																																													Put abc.5405 Ti2180.5455 Td2186.5456
																																																																																											Let b.5436
																																																																																												Let Ti2187.5454
																																																																																													Int:1
																																																																																													Get abc.5405 Ti2187.5454
																																																																																												Let Tu47.5437
																																																																																													Let Ti2188.5447
																																																																																														Int:1
																																																																																														Let Td2194.5448
																																																																																															Let Tb2189.5449
																																																																																																ExtFunApp fiszero b.5436,
																																																																																																Let Ti2190.5450
																																																																																																	Int:0
																																																																																																	IfEq Tb2189.5449 Ti2190.5450
																																																																																																		Let Td2191.5451
																																																																																																			App sgn.2630b.5436 
																																																																																																			Let Td2192.5452
																																																																																																				ExtFunApp fsqr b.5436,
																																																																																																				Let Td2193.5453
																																																																																																					FReciprocal Td2192.5452
																																																																																																					FMul Td2191.5451 Td2193.5453
																																																																																																		Float:0.000000
																																																																																															Put abc.5405 Ti2188.5447 Td2194.5448
																																																																																													Let c.5438
																																																																																														Let Ti2195.5446
																																																																																															Int:2
																																																																																															Get abc.5405 Ti2195.5446
																																																																																														Let Ti2196.5439
																																																																																															Int:2
																																																																																															Let Td2202.5440
																																																																																																Let Tb2197.5441
																																																																																																	ExtFunApp fiszero c.5438,
																																																																																																	Let Ti2198.5442
																																																																																																		Int:0
																																																																																																		IfEq Tb2197.5441 Ti2198.5442
																																																																																																			Let Td2199.5443
																																																																																																				App sgn.2630c.5438 
																																																																																																				Let Td2200.5444
																																																																																																					ExtFunApp fsqr c.5438,
																																																																																																					Let Td2201.5445
																																																																																																						FReciprocal Td2200.5444
																																																																																																						FMul Td2199.5443 Td2201.5445
																																																																																																			Float:0.000000
																																																																																																Put abc.5405 Ti2196.5439 Td2202.5440
																																																																																									Let Ti2203.5431
																																																																																										Int:2
																																																																																										IfEq form.5402 Ti2203.5431
																																																																																											Let Ti2205.5432
																																																																																												Let Ti2204.5433
																																																																																													Int:0
																																																																																													IfEq m_invert.5413 Ti2204.5433
																																																																																														Int:1
																																																																																														Int:0
																																																																																												App vecunit_sgn.2656abc.5405 Ti2205.5432 
																																																																																											Unit
																																																																																							Let Tu49.5428
																																																																																								Let Ti2206.5429
																																																																																									Int:0
																																																																																									IfEq isrot_p.5404 Ti2206.5429
																																																																																										Unit
																																																																																										App rotate_quadratic_matrix.2761abc.5405 rotation.5421 
																																																																																								Int:1
																																																										LetRec read_object.2766 n.2767 
																																																											Let Ti2103.5393
																																																												Int:60
																																																												IfLE Ti2103.5393 n.2767
																																																													Unit
																																																													Let Tb2104.5394
																																																														App read_nth_object.2764n.2767 
																																																														Let Ti2105.5395
																																																															Int:0
																																																															IfEq Tb2104.5394 Ti2105.5395
																																																																Let Ta2106.5398
																																																																	ExtArray n_objects
																																																																	Let Ti2107.5399
																																																																		Int:0
																																																																		Put Ta2106.5398 Ti2107.5399 n.2767
																																																																Let Ti2109.5396
																																																																	Let Ti2108.5397
																																																																		Int:1
																																																																		Add n.2767 Ti2108.5397
																																																																	App read_object.2766Ti2109.5396 
																																																											LetRec read_all_object.2768 Tu64.2769 
																																																												Let Ti2102.5392
																																																													Int:0
																																																													App read_object.2766Ti2102.5392 
																																																												LetRec read_net_item.2770 length.2771 
																																																													Let item.5380
																																																														Let Tu2093.5391
																																																															Unit
																																																															ExtFunApp read_int Tu2093.5391,
																																																														Let Ti2095.5381
																																																															Let Ti2094.5390
																																																																Int:1
																																																																Neg Ti2094.5390
																																																															IfEq item.5380 Ti2095.5381
																																																																Let Ti2097.5386
																																																																	Let Ti2096.5389
																																																																		Int:1
																																																																		Add length.2771 Ti2096.5389
																																																																	Let Ti2099.5387
																																																																		Let Ti2098.5388
																																																																			Int:1
																																																																			Neg Ti2098.5388
																																																																		ExtFunApp create_array Ti2097.5386,Ti2099.5387,
																																																																Let v.5382
																																																																	Let Ti2101.5384
																																																																		Let Ti2100.5385
																																																																			Int:1
																																																																			Add length.2771 Ti2100.5385
																																																																		App read_net_item.2770Ti2101.5384 
																																																																	Let Tu65.5383
																																																																		Put v.5382 length.2771 item.5380
																																																																		Var v.5382
																																																													LetRec read_or_network.2772 length.2773 
																																																														Let net.5368
																																																															Let Ti2084.5379
																																																																Int:0
																																																																App read_net_item.2770Ti2084.5379 
																																																															Let Ti2086.5369
																																																																Let Ti2085.5378
																																																																	Int:0
																																																																	Get net.5368 Ti2085.5378
																																																																Let Ti2088.5370
																																																																	Let Ti2087.5377
																																																																		Int:1
																																																																		Neg Ti2087.5377
																																																																	IfEq Ti2086.5369 Ti2088.5370
																																																																		Let Ti2090.5375
																																																																			Let Ti2089.5376
																																																																				Int:1
																																																																				Add length.2773 Ti2089.5376
																																																																			ExtFunApp create_array Ti2090.5375,net.5368,
																																																																		Let v.5371
																																																																			Let Ti2092.5373
																																																																				Let Ti2091.5374
																																																																					Int:1
																																																																					Add length.2773 Ti2091.5374
																																																																				App read_or_network.2772Ti2092.5373 
																																																																			Let Tu66.5372
																																																																				Put v.5371 length.2773 net.5368
																																																																				Var v.5371
																																																														LetRec read_and_network.2774 n.2775 
																																																															Let net.5358
																																																																Let Ti2076.5367
																																																																	Int:0
																																																																	App read_net_item.2770Ti2076.5367 
																																																																Let Ti2078.5359
																																																																	Let Ti2077.5366
																																																																		Int:0
																																																																		Get net.5358 Ti2077.5366
																																																																	Let Ti2080.5360
																																																																		Let Ti2079.5365
																																																																			Int:1
																																																																			Neg Ti2079.5365
																																																																		IfEq Ti2078.5359 Ti2080.5360
																																																																			Unit
																																																																			Let Tu67.5361
																																																																				Let Ta2081.5364
																																																																					ExtArray and_net
																																																																					Put Ta2081.5364 n.2775 net.5358
																																																																				Let Ti2083.5362
																																																																					Let Ti2082.5363
																																																																						Int:1
																																																																						Add n.2775 Ti2082.5363
																																																																					App read_and_network.2774Ti2083.5362 
																																																															LetRec read_parameter.2776 Tu68.2777 
																																																																Let Tu72.5346
																																																																	Let Tu2068.5357
																																																																		Unit
																																																																		App read_screen_settings.2757Tu2068.5357 
																																																																	Let Tu71.5347
																																																																		Let Tu2069.5356
																																																																			Unit
																																																																			App read_light.2759Tu2069.5356 
																																																																		Let Tu70.5348
																																																																			Let Tu2070.5355
																																																																				Unit
																																																																				App read_all_object.2768Tu2070.5355 
																																																																			Let Tu69.5349
																																																																				Let Ti2071.5354
																																																																					Int:0
																																																																					App read_and_network.2774Ti2071.5354 
																																																																				Let Ta2072.5350
																																																																					ExtArray or_net
																																																																					Let Ti2073.5351
																																																																						Int:0
																																																																						Let Ta2075.5352
																																																																							Let Ti2074.5353
																																																																								Int:0
																																																																								App read_or_network.2772Ti2074.5353 
																																																																							Put Ta2072.5350 Ti2073.5351 Ta2075.5352
																																																																LetRec solver_rect_surface.2778 m.2779 dirvec.2780 b0.2781 b1.2782 b2.2783 i0.2784 i1.2785 i2.2786 
																																																																	Let Tb2042.5315
																																																																		Let Td2041.5345
																																																																			Get dirvec.2780 i0.2784
																																																																			ExtFunApp fiszero Td2041.5345,
																																																																		Let Ti2043.5316
																																																																			Int:0
																																																																			IfEq Tb2042.5315 Ti2043.5316
																																																																				Let abc.5317
																																																																					App o_param_abc.2700m.2779 
																																																																					Let d.5318
																																																																						Let Tb2047.5340
																																																																							Let Tb2044.5342
																																																																								App o_isinvert.2690m.2779 
																																																																								Let Tb2046.5343
																																																																									Let Td2045.5344
																																																																										Get dirvec.2780 i0.2784
																																																																										ExtFunApp fisneg Td2045.5344,
																																																																									App xor.2627Tb2044.5342 Tb2046.5343 
																																																																							Let Td2048.5341
																																																																								Get abc.5317 i0.2784
																																																																								App fneg_cond.2632Tb2047.5340 Td2048.5341 
																																																																						Let d2.5319
																																																																							Let Td2049.5337
																																																																								FSub d.5318 b0.2781
																																																																								Let Td2050.5338
																																																																									Get dirvec.2780 i0.2784
																																																																									Let Td2051.5339
																																																																										FReciprocal Td2050.5338
																																																																										FMul Td2049.5337 Td2051.5339
																																																																							Let Tb2057.5320
																																																																								Let Td2055.5332
																																																																									Let Td2054.5334
																																																																										Let Td2053.5335
																																																																											Let Td2052.5336
																																																																												Get dirvec.2780 i1.2785
																																																																												FMul d2.5319 Td2052.5336
																																																																											FAdd Td2053.5335 b1.2782
																																																																										ExtFunApp fabs Td2054.5334,
																																																																									Let Td2056.5333
																																																																										Get abc.5317 i1.2785
																																																																										ExtFunApp fless Td2055.5332,Td2056.5333,
																																																																								Let Ti2058.5321
																																																																									Int:0
																																																																									IfEq Tb2057.5320 Ti2058.5321
																																																																										Int:0
																																																																										Let Tb2064.5322
																																																																											Let Td2062.5327
																																																																												Let Td2061.5329
																																																																													Let Td2060.5330
																																																																														Let Td2059.5331
																																																																															Get dirvec.2780 i2.2786
																																																																															FMul d2.5319 Td2059.5331
																																																																														FAdd Td2060.5330 b2.2783
																																																																													ExtFunApp fabs Td2061.5329,
																																																																												Let Td2063.5328
																																																																													Get abc.5317 i2.2786
																																																																													ExtFunApp fless Td2062.5327,Td2063.5328,
																																																																											Let Ti2065.5323
																																																																												Int:0
																																																																												IfEq Tb2064.5322 Ti2065.5323
																																																																													Int:0
																																																																													Let Tu73.5324
																																																																														Let Ta2066.5325
																																																																															ExtArray solver_dist
																																																																															Let Ti2067.5326
																																																																																Int:0
																																																																																Put Ta2066.5325 Ti2067.5326 d2.5319
																																																																														Int:1
																																																																				Int:0
																																																																	LetRec solver_rect.2787 m.2788 dirvec.2789 b0.2790 b1.2791 b2.2792 
																																																																		Let Tb2029.5300
																																																																			Let Ti2026.5312
																																																																				Int:0
																																																																				Let Ti2027.5313
																																																																					Int:1
																																																																					Let Ti2028.5314
																																																																						Int:2
																																																																						App solver_rect_surface.2778m.2788 dirvec.2789 b0.2790 b1.2791 b2.2792 Ti2026.5312 Ti2027.5313 Ti2028.5314 
																																																																			Let Ti2030.5301
																																																																				Int:0
																																																																				IfEq Tb2029.5300 Ti2030.5301
																																																																					Let Tb2034.5302
																																																																						Let Ti2031.5309
																																																																							Int:1
																																																																							Let Ti2032.5310
																																																																								Int:2
																																																																								Let Ti2033.5311
																																																																									Int:0
																																																																									App solver_rect_surface.2778m.2788 dirvec.2789 b1.2791 b2.2792 b0.2790 Ti2031.5309 Ti2032.5310 Ti2033.5311 
																																																																						Let Ti2035.5303
																																																																							Int:0
																																																																							IfEq Tb2034.5302 Ti2035.5303
																																																																								Let Tb2039.5304
																																																																									Let Ti2036.5306
																																																																										Int:2
																																																																										Let Ti2037.5307
																																																																											Int:0
																																																																											Let Ti2038.5308
																																																																												Int:1
																																																																												App solver_rect_surface.2778m.2788 dirvec.2789 b2.2792 b0.2790 b1.2791 Ti2036.5306 Ti2037.5307 Ti2038.5308 
																																																																									Let Ti2040.5305
																																																																										Int:0
																																																																										IfEq Tb2039.5304 Ti2040.5305
																																																																											Int:0
																																																																											Int:3
																																																																								Int:2
																																																																					Int:1
																																																																		LetRec solver_surface.2793 m.2794 dirvec.2795 b0.2796 b1.2797 b2.2798 
																																																																			Let abc.5289
																																																																				App o_param_abc.2700m.2794 
																																																																				Let d.5290
																																																																					App veciprod.2659dirvec.2795 abc.5289 
																																																																					Let Tb2018.5291
																																																																						ExtFunApp fispos d.5290,
																																																																						Let Ti2019.5292
																																																																							Int:0
																																																																							IfEq Tb2018.5291 Ti2019.5292
																																																																								Int:0
																																																																								Let Tu74.5293
																																																																									Let Ta2020.5294
																																																																										ExtArray solver_dist
																																																																										Let Ti2021.5295
																																																																											Int:0
																																																																											Let Td2025.5296
																																																																												Let Td2023.5297
																																																																													Let Td2022.5299
																																																																														App veciprod2.2662abc.5289 b0.2796 b1.2797 b2.2798 
																																																																														ExtFunApp fneg Td2022.5299,
																																																																													Let Td2024.5298
																																																																														FReciprocal d.5290
																																																																														FMul Td2023.5297 Td2024.5298
																																																																												Put Ta2020.5294 Ti2021.5295 Td2025.5296
																																																																									Int:1
																																																																			LetRec quadratic.2799 m.2800 v0.2801 v1.2802 v2.2803 
																																																																				Let diag_part.5265
																																																																					Let Td2001.5279
																																																																						Let Td1997.5283
																																																																							Let Td1995.5287
																																																																								ExtFunApp fsqr v0.2801,
																																																																								Let Td1996.5288
																																																																									App o_param_a.2694m.2800 
																																																																									FMul Td1995.5287 Td1996.5288
																																																																							Let Td2000.5284
																																																																								Let Td1998.5285
																																																																									ExtFunApp fsqr v1.2802,
																																																																									Let Td1999.5286
																																																																										App o_param_b.2696m.2800 
																																																																										FMul Td1998.5285 Td1999.5286
																																																																								FAdd Td1997.5283 Td2000.5284
																																																																						Let Td2004.5280
																																																																							Let Td2002.5281
																																																																								ExtFunApp fsqr v2.2803,
																																																																								Let Td2003.5282
																																																																									App o_param_c.2698m.2800 
																																																																									FMul Td2002.5281 Td2003.5282
																																																																							FAdd Td2001.5279 Td2004.5280
																																																																					Let Ti2005.5266
																																																																						App o_isrot.2692m.2800 
																																																																						Let Ti2006.5267
																																																																							Int:0
																																																																							IfEq Ti2005.5266 Ti2006.5267
																																																																								Var diag_part.5265
																																																																								Let Td2014.5268
																																																																									Let Td2010.5272
																																																																										Let Td2009.5276
																																																																											Let Td2007.5277
																																																																												FMul v1.2802 v2.2803
																																																																												Let Td2008.5278
																																																																													App o_param_r1.2718m.2800 
																																																																													FMul Td2007.5277 Td2008.5278
																																																																											FAdd diag_part.5265 Td2009.5276
																																																																										Let Td2013.5273
																																																																											Let Td2011.5274
																																																																												FMul v2.2803 v0.2801
																																																																												Let Td2012.5275
																																																																													App o_param_r2.2720m.2800 
																																																																													FMul Td2011.5274 Td2012.5275
																																																																											FAdd Td2010.5272 Td2013.5273
																																																																									Let Td2017.5269
																																																																										Let Td2015.5270
																																																																											FMul v0.2801 v1.2802
																																																																											Let Td2016.5271
																																																																												App o_param_r3.2722m.2800 
																																																																												FMul Td2015.5270 Td2016.5271
																																																																										FAdd Td2014.5268 Td2017.5269
																																																																				LetRec bilinear.2804 m.2805 v0.2806 v1.2807 v2.2808 w0.2809 w1.2810 w2.2811 
																																																																					Let diag_part.5234
																																																																						Let Td1971.5255
																																																																							Let Td1967.5259
																																																																								Let Td1965.5263
																																																																									FMul v0.2806 w0.2809
																																																																									Let Td1966.5264
																																																																										App o_param_a.2694m.2805 
																																																																										FMul Td1965.5263 Td1966.5264
																																																																								Let Td1970.5260
																																																																									Let Td1968.5261
																																																																										FMul v1.2807 w1.2810
																																																																										Let Td1969.5262
																																																																											App o_param_b.2696m.2805 
																																																																											FMul Td1968.5261 Td1969.5262
																																																																									FAdd Td1967.5259 Td1970.5260
																																																																							Let Td1974.5256
																																																																								Let Td1972.5257
																																																																									FMul v2.2808 w2.2811
																																																																									Let Td1973.5258
																																																																										App o_param_c.2698m.2805 
																																																																										FMul Td1972.5257 Td1973.5258
																																																																								FAdd Td1971.5255 Td1974.5256
																																																																						Let Ti1975.5235
																																																																							App o_isrot.2692m.2805 
																																																																							Let Ti1976.5236
																																																																								Int:0
																																																																								IfEq Ti1975.5235 Ti1976.5236
																																																																									Var diag_part.5234
																																																																									Let Td1994.5237
																																																																										Let Td1993.5238
																																																																											Let Td1987.5239
																																																																												Let Td1981.5245
																																																																													Let Td1979.5251
																																																																														Let Td1977.5253
																																																																															FMul v2.2808 w1.2810
																																																																															Let Td1978.5254
																																																																																FMul v1.2807 w2.2811
																																																																																FAdd Td1977.5253 Td1978.5254
																																																																														Let Td1980.5252
																																																																															App o_param_r1.2718m.2805 
																																																																															FMul Td1979.5251 Td1980.5252
																																																																													Let Td1986.5246
																																																																														Let Td1984.5247
																																																																															Let Td1982.5249
																																																																																FMul v0.2806 w2.2811
																																																																																Let Td1983.5250
																																																																																	FMul v2.2808 w0.2809
																																																																																	FAdd Td1982.5249 Td1983.5250
																																																																															Let Td1985.5248
																																																																																App o_param_r2.2720m.2805 
																																																																																FMul Td1984.5247 Td1985.5248
																																																																														FAdd Td1981.5245 Td1986.5246
																																																																												Let Td1992.5240
																																																																													Let Td1990.5241
																																																																														Let Td1988.5243
																																																																															FMul v0.2806 w1.2810
																																																																															Let Td1989.5244
																																																																																FMul v1.2807 w0.2809
																																																																																FAdd Td1988.5243 Td1989.5244
																																																																														Let Td1991.5242
																																																																															App o_param_r3.2722m.2805 
																																																																															FMul Td1990.5241 Td1991.5242
																																																																													FAdd Td1987.5239 Td1992.5240
																																																																											ExtFunApp fhalf Td1993.5238,
																																																																										FAdd diag_part.5234 Td1994.5237
																																																																					LetRec solver_second.2812 m.2813 dirvec.2814 b0.2815 b1.2816 b2.2817 
																																																																						Let aa.5198
																																																																							Let Td1938.5228
																																																																								Let Ti1937.5233
																																																																									Int:0
																																																																									Get dirvec.2814 Ti1937.5233
																																																																								Let Td1940.5229
																																																																									Let Ti1939.5232
																																																																										Int:1
																																																																										Get dirvec.2814 Ti1939.5232
																																																																									Let Td1942.5230
																																																																										Let Ti1941.5231
																																																																											Int:2
																																																																											Get dirvec.2814 Ti1941.5231
																																																																										App quadratic.2799m.2813 Td1938.5228 Td1940.5229 Td1942.5230 
																																																																							Let Tb1943.5199
																																																																								ExtFunApp fiszero aa.5198,
																																																																								Let Ti1944.5200
																																																																									Int:0
																																																																									IfEq Tb1943.5199 Ti1944.5200
																																																																										Let bb.5201
																																																																											Let Td1946.5222
																																																																												Let Ti1945.5227
																																																																													Int:0
																																																																													Get dirvec.2814 Ti1945.5227
																																																																												Let Td1948.5223
																																																																													Let Ti1947.5226
																																																																														Int:1
																																																																														Get dirvec.2814 Ti1947.5226
																																																																													Let Td1950.5224
																																																																														Let Ti1949.5225
																																																																															Int:2
																																																																															Get dirvec.2814 Ti1949.5225
																																																																														App bilinear.2804m.2813 Td1946.5222 Td1948.5223 Td1950.5224 b0.2815 b1.2816 b2.2817 
																																																																											Let cc0.5202
																																																																												App quadratic.2799m.2813 b0.2815 b1.2816 b2.2817 
																																																																												Let cc.5203
																																																																													Let Ti1951.5219
																																																																														App o_form.2686m.2813 
																																																																														Let Ti1952.5220
																																																																															Int:3
																																																																															IfEq Ti1951.5219 Ti1952.5220
																																																																																Let Td1953.5221
																																																																																	Float:1.000000
																																																																																	FSub cc0.5202 Td1953.5221
																																																																																Var cc0.5202
																																																																													Let d.5204
																																																																														Let Td1954.5217
																																																																															ExtFunApp fsqr bb.5201,
																																																																															Let Td1955.5218
																																																																																FMul aa.5198 cc.5203
																																																																																FSub Td1954.5217 Td1955.5218
																																																																														Let Tb1956.5205
																																																																															ExtFunApp fispos d.5204,
																																																																															Let Ti1957.5206
																																																																																Int:0
																																																																																IfEq Tb1956.5205 Ti1957.5206
																																																																																	Int:0
																																																																																	Let sd.5207
																																																																																		ExtFunApp sqrt d.5204,
																																																																																		Let t1.5208
																																																																																			Let Tb1958.5215
																																																																																				App o_isinvert.2690m.2813 
																																																																																				Let Ti1959.5216
																																																																																					Int:0
																																																																																					IfEq Tb1958.5215 Ti1959.5216
																																																																																						ExtFunApp fneg sd.5207,
																																																																																						Var sd.5207
																																																																																			Let Tu75.5209
																																																																																				Let Ta1960.5210
																																																																																					ExtArray solver_dist
																																																																																					Let Ti1961.5211
																																																																																						Int:0
																																																																																						Let Td1964.5212
																																																																																							Let Td1962.5213
																																																																																								FSub t1.5208 bb.5201
																																																																																								Let Td1963.5214
																																																																																									FReciprocal aa.5198
																																																																																									FMul Td1962.5213 Td1963.5214
																																																																																							Put Ta1960.5210 Ti1961.5211 Td1964.5212
																																																																																				Int:1
																																																																										Int:0
																																																																						LetRec solver.2818 index.2819 dirvec.2820 org.2821 
																																																																							Let m.5181
																																																																								Let Ta1925.5197
																																																																									ExtArray objects
																																																																									Get Ta1925.5197 index.2819
																																																																								Let b0.5182
																																																																									Let Td1927.5194
																																																																										Let Ti1926.5196
																																																																											Int:0
																																																																											Get org.2821 Ti1926.5196
																																																																										Let Td1928.5195
																																																																											App o_param_x.2702m.5181 
																																																																											FSub Td1927.5194 Td1928.5195
																																																																									Let b1.5183
																																																																										Let Td1930.5191
																																																																											Let Ti1929.5193
																																																																												Int:1
																																																																												Get org.2821 Ti1929.5193
																																																																											Let Td1931.5192
																																																																												App o_param_y.2704m.5181 
																																																																												FSub Td1930.5191 Td1931.5192
																																																																										Let b2.5184
																																																																											Let Td1933.5188
																																																																												Let Ti1932.5190
																																																																													Int:2
																																																																													Get org.2821 Ti1932.5190
																																																																												Let Td1934.5189
																																																																													App o_param_z.2706m.5181 
																																																																													FSub Td1933.5188 Td1934.5189
																																																																											Let m_shape.5185
																																																																												App o_form.2686m.5181 
																																																																												Let Ti1935.5186
																																																																													Int:1
																																																																													IfEq m_shape.5185 Ti1935.5186
																																																																														App solver_rect.2787m.5181 dirvec.2820 b0.5182 b1.5183 b2.5184 
																																																																														Let Ti1936.5187
																																																																															Int:2
																																																																															IfEq m_shape.5185 Ti1936.5187
																																																																																App solver_surface.2793m.5181 dirvec.2820 b0.5182 b1.5183 b2.5184 
																																																																																App solver_second.2812m.5181 dirvec.2820 b0.5182 b1.5183 b2.5184 
																																																																							LetRec solver_rect_fast.2822 m.2823 v.2824 dconst.2825 b0.2826 b1.2827 b2.2828 
																																																																								Let d0.5088
																																																																									Let Td1840.5176
																																																																										Let Td1839.5179
																																																																											Let Ti1838.5180
																																																																												Int:0
																																																																												Get dconst.2825 Ti1838.5180
																																																																											FSub Td1839.5179 b0.2826
																																																																										Let Td1842.5177
																																																																											Let Ti1841.5178
																																																																												Int:1
																																																																												Get dconst.2825 Ti1841.5178
																																																																											FMul Td1840.5176 Td1842.5177
																																																																									Let Ti1863.5089
																																																																										Let Tb1849.5156
																																																																											Let Td1847.5170
																																																																												Let Td1846.5172
																																																																													Let Td1845.5173
																																																																														Let Td1844.5174
																																																																															Let Ti1843.5175
																																																																																Int:1
																																																																																Get v.2824 Ti1843.5175
																																																																															FMul d0.5088 Td1844.5174
																																																																														FAdd Td1845.5173 b1.2827
																																																																													ExtFunApp fabs Td1846.5172,
																																																																												Let Td1848.5171
																																																																													App o_param_b.2696m.2823 
																																																																													ExtFunApp fless Td1847.5170,Td1848.5171,
																																																																											Let Ti1850.5157
																																																																												Int:0
																																																																												IfEq Tb1849.5156 Ti1850.5157
																																																																													Int:0
																																																																													Let Tb1857.5158
																																																																														Let Td1855.5164
																																																																															Let Td1854.5166
																																																																																Let Td1853.5167
																																																																																	Let Td1852.5168
																																																																																		Let Ti1851.5169
																																																																																			Int:2
																																																																																			Get v.2824 Ti1851.5169
																																																																																		FMul d0.5088 Td1852.5168
																																																																																	FAdd Td1853.5167 b2.2828
																																																																																ExtFunApp fabs Td1854.5166,
																																																																															Let Td1856.5165
																																																																																App o_param_c.2698m.2823 
																																																																																ExtFunApp fless Td1855.5164,Td1856.5165,
																																																																														Let Ti1858.5159
																																																																															Int:0
																																																																															IfEq Tb1857.5158 Ti1858.5159
																																																																																Int:0
																																																																																Let Tb1861.5160
																																																																																	Let Td1860.5162
																																																																																		Let Ti1859.5163
																																																																																			Int:1
																																																																																			Get dconst.2825 Ti1859.5163
																																																																																		ExtFunApp fiszero Td1860.5162,
																																																																																	Let Ti1862.5161
																																																																																		Int:0
																																																																																		IfEq Tb1861.5160 Ti1862.5161
																																																																																			Int:1
																																																																																			Int:0
																																																																										Let Ti1864.5090
																																																																											Int:0
																																																																											IfEq Ti1863.5089 Ti1864.5090
																																																																												Let d1.5094
																																																																													Let Td1867.5151
																																																																														Let Td1866.5154
																																																																															Let Ti1865.5155
																																																																																Int:2
																																																																																Get dconst.2825 Ti1865.5155
																																																																															FSub Td1866.5154 b1.2827
																																																																														Let Td1869.5152
																																																																															Let Ti1868.5153
																																																																																Int:3
																																																																																Get dconst.2825 Ti1868.5153
																																																																															FMul Td1867.5151 Td1869.5152
																																																																													Let Ti1890.5095
																																																																														Let Tb1876.5131
																																																																															Let Td1874.5145
																																																																																Let Td1873.5147
																																																																																	Let Td1872.5148
																																																																																		Let Td1871.5149
																																																																																			Let Ti1870.5150
																																																																																				Int:0
																																																																																				Get v.2824 Ti1870.5150
																																																																																			FMul d1.5094 Td1871.5149
																																																																																		FAdd Td1872.5148 b0.2826
																																																																																	ExtFunApp fabs Td1873.5147,
																																																																																Let Td1875.5146
																																																																																	App o_param_a.2694m.2823 
																																																																																	ExtFunApp fless Td1874.5145,Td1875.5146,
																																																																															Let Ti1877.5132
																																																																																Int:0
																																																																																IfEq Tb1876.5131 Ti1877.5132
																																																																																	Int:0
																																																																																	Let Tb1884.5133
																																																																																		Let Td1882.5139
																																																																																			Let Td1881.5141
																																																																																				Let Td1880.5142
																																																																																					Let Td1879.5143
																																																																																						Let Ti1878.5144
																																																																																							Int:2
																																																																																							Get v.2824 Ti1878.5144
																																																																																						FMul d1.5094 Td1879.5143
																																																																																					FAdd Td1880.5142 b2.2828
																																																																																				ExtFunApp fabs Td1881.5141,
																																																																																			Let Td1883.5140
																																																																																				App o_param_c.2698m.2823 
																																																																																				ExtFunApp fless Td1882.5139,Td1883.5140,
																																																																																		Let Ti1885.5134
																																																																																			Int:0
																																																																																			IfEq Tb1884.5133 Ti1885.5134
																																																																																				Int:0
																																																																																				Let Tb1888.5135
																																																																																					Let Td1887.5137
																																																																																						Let Ti1886.5138
																																																																																							Int:3
																																																																																							Get dconst.2825 Ti1886.5138
																																																																																						ExtFunApp fiszero Td1887.5137,
																																																																																					Let Ti1889.5136
																																																																																						Int:0
																																																																																						IfEq Tb1888.5135 Ti1889.5136
																																																																																							Int:1
																																																																																							Int:0
																																																																														Let Ti1891.5096
																																																																															Int:0
																																																																															IfEq Ti1890.5095 Ti1891.5096
																																																																																Let d2.5100
																																																																																	Let Td1894.5126
																																																																																		Let Td1893.5129
																																																																																			Let Ti1892.5130
																																																																																				Int:4
																																																																																				Get dconst.2825 Ti1892.5130
																																																																																			FSub Td1893.5129 b2.2828
																																																																																		Let Td1896.5127
																																																																																			Let Ti1895.5128
																																																																																				Int:5
																																																																																				Get dconst.2825 Ti1895.5128
																																																																																			FMul Td1894.5126 Td1896.5127
																																																																																	Let Ti1917.5101
																																																																																		Let Tb1903.5106
																																																																																			Let Td1901.5120
																																																																																				Let Td1900.5122
																																																																																					Let Td1899.5123
																																																																																						Let Td1898.5124
																																																																																							Let Ti1897.5125
																																																																																								Int:0
																																																																																								Get v.2824 Ti1897.5125
																																																																																							FMul d2.5100 Td1898.5124
																																																																																						FAdd Td1899.5123 b0.2826
																																																																																					ExtFunApp fabs Td1900.5122,
																																																																																				Let Td1902.5121
																																																																																					App o_param_a.2694m.2823 
																																																																																					ExtFunApp fless Td1901.5120,Td1902.5121,
																																																																																			Let Ti1904.5107
																																																																																				Int:0
																																																																																				IfEq Tb1903.5106 Ti1904.5107
																																																																																					Int:0
																																																																																					Let Tb1911.5108
																																																																																						Let Td1909.5114
																																																																																							Let Td1908.5116
																																																																																								Let Td1907.5117
																																																																																									Let Td1906.5118
																																																																																										Let Ti1905.5119
																																																																																											Int:1
																																																																																											Get v.2824 Ti1905.5119
																																																																																										FMul d2.5100 Td1906.5118
																																																																																									FAdd Td1907.5117 b1.2827
																																																																																								ExtFunApp fabs Td1908.5116,
																																																																																							Let Td1910.5115
																																																																																								App o_param_b.2696m.2823 
																																																																																								ExtFunApp fless Td1909.5114,Td1910.5115,
																																																																																						Let Ti1912.5109
																																																																																							Int:0
																																																																																							IfEq Tb1911.5108 Ti1912.5109
																																																																																								Int:0
																																																																																								Let Tb1915.5110
																																																																																									Let Td1914.5112
																																																																																										Let Ti1913.5113
																																																																																											Int:5
																																																																																											Get dconst.2825 Ti1913.5113
																																																																																										ExtFunApp fiszero Td1914.5112,
																																																																																									Let Ti1916.5111
																																																																																										Int:0
																																																																																										IfEq Tb1915.5110 Ti1916.5111
																																																																																											Int:1
																																																																																											Int:0
																																																																																		Let Ti1918.5102
																																																																																			Int:0
																																																																																			IfEq Ti1917.5101 Ti1918.5102
																																																																																				Int:0
																																																																																				Let Tu78.5103
																																																																																					Let Ta1919.5104
																																																																																						ExtArray solver_dist
																																																																																						Let Ti1920.5105
																																																																																							Int:0
																																																																																							Put Ta1919.5104 Ti1920.5105 d2.5100
																																																																																					Int:3
																																																																																Let Tu77.5097
																																																																																	Let Ta1921.5098
																																																																																		ExtArray solver_dist
																																																																																		Let Ti1922.5099
																																																																																			Int:0
																																																																																			Put Ta1921.5098 Ti1922.5099 d1.5094
																																																																																	Int:2
																																																																												Let Tu76.5091
																																																																													Let Ta1923.5092
																																																																														ExtArray solver_dist
																																																																														Let Ti1924.5093
																																																																															Int:0
																																																																															Put Ta1923.5092 Ti1924.5093 d0.5088
																																																																													Int:1
																																																																								LetRec solver_surface_fast.2829 m.2830 dconst.2831 b0.2832 b1.2833 b2.2834 
																																																																									Let Tb1823.5070
																																																																										Let Td1822.5086
																																																																											Let Ti1821.5087
																																																																												Int:0
																																																																												Get dconst.2831 Ti1821.5087
																																																																											ExtFunApp fisneg Td1822.5086,
																																																																										Let Ti1824.5071
																																																																											Int:0
																																																																											IfEq Tb1823.5070 Ti1824.5071
																																																																												Int:0
																																																																												Let Tu79.5072
																																																																													Let Ta1825.5073
																																																																														ExtArray solver_dist
																																																																														Let Ti1826.5074
																																																																															Int:0
																																																																															Let Td1837.5075
																																																																																Let Td1833.5076
																																																																																	Let Td1829.5080
																																																																																		Let Td1828.5084
																																																																																			Let Ti1827.5085
																																																																																				Int:1
																																																																																				Get dconst.2831 Ti1827.5085
																																																																																			FMul Td1828.5084 b0.2832
																																																																																		Let Td1832.5081
																																																																																			Let Td1831.5082
																																																																																				Let Ti1830.5083
																																																																																					Int:2
																																																																																					Get dconst.2831 Ti1830.5083
																																																																																				FMul Td1831.5082 b1.2833
																																																																																			FAdd Td1829.5080 Td1832.5081
																																																																																	Let Td1836.5077
																																																																																		Let Td1835.5078
																																																																																			Let Ti1834.5079
																																																																																				Int:3
																																																																																				Get dconst.2831 Ti1834.5079
																																																																																			FMul Td1835.5078 b2.2834
																																																																																		FAdd Td1833.5076 Td1836.5077
																																																																																Put Ta1825.5073 Ti1826.5074 Td1837.5075
																																																																													Int:1
																																																																									LetRec solver_second_fast.2835 m.2836 dconst.2837 b0.2838 b1.2839 b2.2840 
																																																																										Let aa.5028
																																																																											Let Ti1785.5069
																																																																												Int:0
																																																																												Get dconst.2837 Ti1785.5069
																																																																											Let Tb1786.5029
																																																																												ExtFunApp fiszero aa.5028,
																																																																												Let Ti1787.5030
																																																																													Int:0
																																																																													IfEq Tb1786.5029 Ti1787.5030
																																																																														Let neg_bb.5031
																																																																															Let Td1794.5059
																																																																																Let Td1790.5063
																																																																																	Let Td1789.5067
																																																																																		Let Ti1788.5068
																																																																																			Int:1
																																																																																			Get dconst.2837 Ti1788.5068
																																																																																		FMul Td1789.5067 b0.2838
																																																																																	Let Td1793.5064
																																																																																		Let Td1792.5065
																																																																																			Let Ti1791.5066
																																																																																				Int:2
																																																																																				Get dconst.2837 Ti1791.5066
																																																																																			FMul Td1792.5065 b1.2839
																																																																																		FAdd Td1790.5063 Td1793.5064
																																																																																Let Td1797.5060
																																																																																	Let Td1796.5061
																																																																																		Let Ti1795.5062
																																																																																			Int:3
																																																																																			Get dconst.2837 Ti1795.5062
																																																																																		FMul Td1796.5061 b2.2840
																																																																																	FAdd Td1794.5059 Td1797.5060
																																																																															Let cc0.5032
																																																																																App quadratic.2799m.2836 b0.2838 b1.2839 b2.2840 
																																																																																Let cc.5033
																																																																																	Let Ti1798.5056
																																																																																		App o_form.2686m.2836 
																																																																																		Let Ti1799.5057
																																																																																			Int:3
																																																																																			IfEq Ti1798.5056 Ti1799.5057
																																																																																				Let Td1800.5058
																																																																																					Float:1.000000
																																																																																					FSub cc0.5032 Td1800.5058
																																																																																				Var cc0.5032
																																																																																	Let d.5034
																																																																																		Let Td1801.5054
																																																																																			ExtFunApp fsqr neg_bb.5031,
																																																																																			Let Td1802.5055
																																																																																				FMul aa.5028 cc.5033
																																																																																				FSub Td1801.5054 Td1802.5055
																																																																																		Let Tb1803.5035
																																																																																			ExtFunApp fispos d.5034,
																																																																																			Let Ti1804.5036
																																																																																				Int:0
																																																																																				IfEq Tb1803.5035 Ti1804.5036
																																																																																					Int:0
																																																																																					Let Tu80.5037
																																																																																						Let Tb1805.5038
																																																																																							App o_isinvert.2690m.2836 
																																																																																							Let Ti1806.5039
																																																																																								Int:0
																																																																																								IfEq Tb1805.5038 Ti1806.5039
																																																																																									Let Ta1807.5047
																																																																																										ExtArray solver_dist
																																																																																										Let Ti1808.5048
																																																																																											Int:0
																																																																																											Let Td1813.5049
																																																																																												Let Td1810.5050
																																																																																													Let Td1809.5053
																																																																																														ExtFunApp sqrt d.5034,
																																																																																														FSub neg_bb.5031 Td1809.5053
																																																																																													Let Td1812.5051
																																																																																														Let Ti1811.5052
																																																																																															Int:4
																																																																																															Get dconst.2837 Ti1811.5052
																																																																																														FMul Td1810.5050 Td1812.5051
																																																																																												Put Ta1807.5047 Ti1808.5048 Td1813.5049
																																																																																									Let Ta1814.5040
																																																																																										ExtArray solver_dist
																																																																																										Let Ti1815.5041
																																																																																											Int:0
																																																																																											Let Td1820.5042
																																																																																												Let Td1817.5043
																																																																																													Let Td1816.5046
																																																																																														ExtFunApp sqrt d.5034,
																																																																																														FAdd neg_bb.5031 Td1816.5046
																																																																																													Let Td1819.5044
																																																																																														Let Ti1818.5045
																																																																																															Int:4
																																																																																															Get dconst.2837 Ti1818.5045
																																																																																														FMul Td1817.5043 Td1819.5044
																																																																																												Put Ta1814.5040 Ti1815.5041 Td1820.5042
																																																																																						Int:1
																																																																														Int:0
																																																																										LetRec solver_fast.2841 index.2842 dirvec.2843 org.2844 
																																																																											Let m.5008
																																																																												Let Ta1772.5027
																																																																													ExtArray objects
																																																																													Get Ta1772.5027 index.2842
																																																																												Let b0.5009
																																																																													Let Td1774.5024
																																																																														Let Ti1773.5026
																																																																															Int:0
																																																																															Get org.2844 Ti1773.5026
																																																																														Let Td1775.5025
																																																																															App o_param_x.2702m.5008 
																																																																															FSub Td1774.5024 Td1775.5025
																																																																													Let b1.5010
																																																																														Let Td1777.5021
																																																																															Let Ti1776.5023
																																																																																Int:1
																																																																																Get org.2844 Ti1776.5023
																																																																															Let Td1778.5022
																																																																																App o_param_y.2704m.5008 
																																																																																FSub Td1777.5021 Td1778.5022
																																																																														Let b2.5011
																																																																															Let Td1780.5018
																																																																																Let Ti1779.5020
																																																																																	Int:2
																																																																																	Get org.2844 Ti1779.5020
																																																																																Let Td1781.5019
																																																																																	App o_param_z.2706m.5008 
																																																																																	FSub Td1780.5018 Td1781.5019
																																																																															Let dconsts.5012
																																																																																App d_const.2747dirvec.2843 
																																																																																Let dconst.5013
																																																																																	Get dconsts.5012 index.2842
																																																																																	Let m_shape.5014
																																																																																		App o_form.2686m.5008 
																																																																																		Let Ti1782.5015
																																																																																			Int:1
																																																																																			IfEq m_shape.5014 Ti1782.5015
																																																																																				Let Ta1783.5017
																																																																																					App d_vec.2745dirvec.2843 
																																																																																					App solver_rect_fast.2822m.5008 Ta1783.5017 dconst.5013 b0.5009 b1.5010 b2.5011 
																																																																																				Let Ti1784.5016
																																																																																					Int:2
																																																																																					IfEq m_shape.5014 Ti1784.5016
																																																																																						App solver_surface_fast.2829m.5008 dconst.5013 b0.5009 b1.5010 b2.5011 
																																																																																						App solver_second_fast.2835m.5008 dconst.5013 b0.5009 b1.5010 b2.5011 
																																																																											LetRec solver_surface_fast2.2845 m.2846 dconst.2847 sconst.2848 b0.2849 b1.2850 b2.2851 
																																																																												Let Tb1763.4996
																																																																													Let Td1762.5006
																																																																														Let Ti1761.5007
																																																																															Int:0
																																																																															Get dconst.2847 Ti1761.5007
																																																																														ExtFunApp fisneg Td1762.5006,
																																																																													Let Ti1764.4997
																																																																														Int:0
																																																																														IfEq Tb1763.4996 Ti1764.4997
																																																																															Int:0
																																																																															Let Tu81.4998
																																																																																Let Ta1765.4999
																																																																																	ExtArray solver_dist
																																																																																	Let Ti1766.5000
																																																																																		Int:0
																																																																																		Let Td1771.5001
																																																																																			Let Td1768.5002
																																																																																				Let Ti1767.5005
																																																																																					Int:0
																																																																																					Get dconst.2847 Ti1767.5005
																																																																																				Let Td1770.5003
																																																																																					Let Ti1769.5004
																																																																																						Int:3
																																																																																						Get sconst.2848 Ti1769.5004
																																																																																					FMul Td1768.5002 Td1770.5003
																																																																																			Put Ta1765.4999 Ti1766.5000 Td1771.5001
																																																																																Int:1
																																																																												LetRec solver_second_fast2.2852 m.2853 dconst.2854 sconst.2855 b0.2856 b1.2857 b2.2858 
																																																																													Let aa.4957
																																																																														Let Ti1727.4995
																																																																															Int:0
																																																																															Get dconst.2854 Ti1727.4995
																																																																														Let Tb1728.4958
																																																																															ExtFunApp fiszero aa.4957,
																																																																															Let Ti1729.4959
																																																																																Int:0
																																																																																IfEq Tb1728.4958 Ti1729.4959
																																																																																	Let neg_bb.4960
																																																																																		Let Td1736.4985
																																																																																			Let Td1732.4989
																																																																																				Let Td1731.4993
																																																																																					Let Ti1730.4994
																																																																																						Int:1
																																																																																						Get dconst.2854 Ti1730.4994
																																																																																					FMul Td1731.4993 b0.2856
																																																																																				Let Td1735.4990
																																																																																					Let Td1734.4991
																																																																																						Let Ti1733.4992
																																																																																							Int:2
																																																																																							Get dconst.2854 Ti1733.4992
																																																																																						FMul Td1734.4991 b1.2857
																																																																																					FAdd Td1732.4989 Td1735.4990
																																																																																			Let Td1739.4986
																																																																																				Let Td1738.4987
																																																																																					Let Ti1737.4988
																																																																																						Int:3
																																																																																						Get dconst.2854 Ti1737.4988
																																																																																					FMul Td1738.4987 b2.2858
																																																																																				FAdd Td1736.4985 Td1739.4986
																																																																																		Let cc.4961
																																																																																			Let Ti1740.4984
																																																																																				Int:3
																																																																																				Get sconst.2855 Ti1740.4984
																																																																																			Let d.4962
																																																																																				Let Td1741.4982
																																																																																					ExtFunApp fsqr neg_bb.4960,
																																																																																					Let Td1742.4983
																																																																																						FMul aa.4957 cc.4961
																																																																																						FSub Td1741.4982 Td1742.4983
																																																																																				Let Tb1743.4963
																																																																																					ExtFunApp fispos d.4962,
																																																																																					Let Ti1744.4964
																																																																																						Int:0
																																																																																						IfEq Tb1743.4963 Ti1744.4964
																																																																																							Int:0
																																																																																							Let Tu82.4965
																																																																																								Let Tb1745.4966
																																																																																									App o_isinvert.2690m.2853 
																																																																																									Let Ti1746.4967
																																																																																										Int:0
																																																																																										IfEq Tb1745.4966 Ti1746.4967
																																																																																											Let Ta1747.4975
																																																																																												ExtArray solver_dist
																																																																																												Let Ti1748.4976
																																																																																													Int:0
																																																																																													Let Td1753.4977
																																																																																														Let Td1750.4978
																																																																																															Let Td1749.4981
																																																																																																ExtFunApp sqrt d.4962,
																																																																																																FSub neg_bb.4960 Td1749.4981
																																																																																															Let Td1752.4979
																																																																																																Let Ti1751.4980
																																																																																																	Int:4
																																																																																																	Get dconst.2854 Ti1751.4980
																																																																																																FMul Td1750.4978 Td1752.4979
																																																																																														Put Ta1747.4975 Ti1748.4976 Td1753.4977
																																																																																											Let Ta1754.4968
																																																																																												ExtArray solver_dist
																																																																																												Let Ti1755.4969
																																																																																													Int:0
																																																																																													Let Td1760.4970
																																																																																														Let Td1757.4971
																																																																																															Let Td1756.4974
																																																																																																ExtFunApp sqrt d.4962,
																																																																																																FAdd neg_bb.4960 Td1756.4974
																																																																																															Let Td1759.4972
																																																																																																Let Ti1758.4973
																																																																																																	Int:4
																																																																																																	Get dconst.2854 Ti1758.4973
																																																																																																FMul Td1757.4971 Td1759.4972
																																																																																														Put Ta1754.4968 Ti1755.4969 Td1760.4970
																																																																																								Int:1
																																																																																	Int:0
																																																																													LetRec solver_fast2.2859 index.2860 dirvec.2861 
																																																																														Let m.4942
																																																																															Let Ta1720.4956
																																																																																ExtArray objects
																																																																																Get Ta1720.4956 index.2860
																																																																															Let sconst.4943
																																																																																App o_param_ctbl.2724m.4942 
																																																																																Let b0.4944
																																																																																	Let Ti1721.4955
																																																																																		Int:0
																																																																																		Get sconst.4943 Ti1721.4955
																																																																																	Let b1.4945
																																																																																		Let Ti1722.4954
																																																																																			Int:1
																																																																																			Get sconst.4943 Ti1722.4954
																																																																																		Let b2.4946
																																																																																			Let Ti1723.4953
																																																																																				Int:2
																																																																																				Get sconst.4943 Ti1723.4953
																																																																																			Let dconsts.4947
																																																																																				App d_const.2747dirvec.2861 
																																																																																				Let dconst.4948
																																																																																					Get dconsts.4947 index.2860
																																																																																					Let m_shape.4949
																																																																																						App o_form.2686m.4942 
																																																																																						Let Ti1724.4950
																																																																																							Int:1
																																																																																							IfEq m_shape.4949 Ti1724.4950
																																																																																								Let Ta1725.4952
																																																																																									App d_vec.2745dirvec.2861 
																																																																																									App solver_rect_fast.2822m.4942 Ta1725.4952 dconst.4948 b0.4944 b1.4945 b2.4946 
																																																																																								Let Ti1726.4951
																																																																																									Int:2
																																																																																									IfEq m_shape.4949 Ti1726.4951
																																																																																										App solver_surface_fast2.2845m.4942 dconst.4948 sconst.4943 b0.4944 b1.4945 b2.4946 
																																																																																										App solver_second_fast2.2852m.4942 dconst.4948 sconst.4943 b0.4944 b1.4945 b2.4946 
																																																																														LetRec setup_rect_table.2862 vec.2863 m.2864 
																																																																															Let const.4873
																																																																																Let Ti1658.4940
																																																																																	Int:6
																																																																																	Let Td1659.4941
																																																																																		Float:0.000000
																																																																																		ExtFunApp create_float_array Ti1658.4940,Td1659.4941,
																																																																																Let Tu88.4874
																																																																																	Let Tb1662.4919
																																																																																		Let Td1661.4938
																																																																																			Let Ti1660.4939
																																																																																				Int:0
																																																																																				Get vec.2863 Ti1660.4939
																																																																																			ExtFunApp fiszero Td1661.4938,
																																																																																		Let Ti1663.4920
																																																																																			Int:0
																																																																																			IfEq Tb1662.4919 Ti1663.4920
																																																																																				Let Tu83.4923
																																																																																					Let Ti1664.4930
																																																																																						Int:0
																																																																																						Let Td1671.4931
																																																																																							Let Tb1669.4932
																																																																																								Let Tb1665.4934
																																																																																									App o_isinvert.2690m.2864 
																																																																																									Let Tb1668.4935
																																																																																										Let Td1667.4936
																																																																																											Let Ti1666.4937
																																																																																												Int:0
																																																																																												Get vec.2863 Ti1666.4937
																																																																																											ExtFunApp fisneg Td1667.4936,
																																																																																										App xor.2627Tb1665.4934 Tb1668.4935 
																																																																																								Let Td1670.4933
																																																																																									App o_param_a.2694m.2864 
																																																																																									App fneg_cond.2632Tb1669.4932 Td1670.4933 
																																																																																							Put const.4873 Ti1664.4930 Td1671.4931
																																																																																					Let Ti1672.4924
																																																																																						Int:1
																																																																																						Let Td1677.4925
																																																																																							Let Td1673.4926
																																																																																								Float:1.000000
																																																																																								Let Td1675.4927
																																																																																									Let Ti1674.4929
																																																																																										Int:0
																																																																																										Get vec.2863 Ti1674.4929
																																																																																									Let Td1676.4928
																																																																																										FReciprocal Td1675.4927
																																																																																										FMul Td1673.4926 Td1676.4928
																																																																																							Put const.4873 Ti1672.4924 Td1677.4925
																																																																																				Let Ti1678.4921
																																																																																					Int:1
																																																																																					Let Td1679.4922
																																																																																						Float:0.000000
																																																																																						Put const.4873 Ti1678.4921 Td1679.4922
																																																																																	Let Tu87.4875
																																																																																		Let Tb1682.4898
																																																																																			Let Td1681.4917
																																																																																				Let Ti1680.4918
																																																																																					Int:1
																																																																																					Get vec.2863 Ti1680.4918
																																																																																				ExtFunApp fiszero Td1681.4917,
																																																																																			Let Ti1683.4899
																																																																																				Int:0
																																																																																				IfEq Tb1682.4898 Ti1683.4899
																																																																																					Let Tu84.4902
																																																																																						Let Ti1684.4909
																																																																																							Int:2
																																																																																							Let Td1691.4910
																																																																																								Let Tb1689.4911
																																																																																									Let Tb1685.4913
																																																																																										App o_isinvert.2690m.2864 
																																																																																										Let Tb1688.4914
																																																																																											Let Td1687.4915
																																																																																												Let Ti1686.4916
																																																																																													Int:1
																																																																																													Get vec.2863 Ti1686.4916
																																																																																												ExtFunApp fisneg Td1687.4915,
																																																																																											App xor.2627Tb1685.4913 Tb1688.4914 
																																																																																									Let Td1690.4912
																																																																																										App o_param_b.2696m.2864 
																																																																																										App fneg_cond.2632Tb1689.4911 Td1690.4912 
																																																																																								Put const.4873 Ti1684.4909 Td1691.4910
																																																																																						Let Ti1692.4903
																																																																																							Int:3
																																																																																							Let Td1697.4904
																																																																																								Let Td1693.4905
																																																																																									Float:1.000000
																																																																																									Let Td1695.4906
																																																																																										Let Ti1694.4908
																																																																																											Int:1
																																																																																											Get vec.2863 Ti1694.4908
																																																																																										Let Td1696.4907
																																																																																											FReciprocal Td1695.4906
																																																																																											FMul Td1693.4905 Td1696.4907
																																																																																								Put const.4873 Ti1692.4903 Td1697.4904
																																																																																					Let Ti1698.4900
																																																																																						Int:3
																																																																																						Let Td1699.4901
																																																																																							Float:0.000000
																																																																																							Put const.4873 Ti1698.4900 Td1699.4901
																																																																																		Let Tu86.4876
																																																																																			Let Tb1702.4877
																																																																																				Let Td1701.4896
																																																																																					Let Ti1700.4897
																																																																																						Int:2
																																																																																						Get vec.2863 Ti1700.4897
																																																																																					ExtFunApp fiszero Td1701.4896,
																																																																																				Let Ti1703.4878
																																																																																					Int:0
																																																																																					IfEq Tb1702.4877 Ti1703.4878
																																																																																						Let Tu85.4881
																																																																																							Let Ti1704.4888
																																																																																								Int:4
																																																																																								Let Td1711.4889
																																																																																									Let Tb1709.4890
																																																																																										Let Tb1705.4892
																																																																																											App o_isinvert.2690m.2864 
																																																																																											Let Tb1708.4893
																																																																																												Let Td1707.4894
																																																																																													Let Ti1706.4895
																																																																																														Int:2
																																																																																														Get vec.2863 Ti1706.4895
																																																																																													ExtFunApp fisneg Td1707.4894,
																																																																																												App xor.2627Tb1705.4892 Tb1708.4893 
																																																																																										Let Td1710.4891
																																																																																											App o_param_c.2698m.2864 
																																																																																											App fneg_cond.2632Tb1709.4890 Td1710.4891 
																																																																																									Put const.4873 Ti1704.4888 Td1711.4889
																																																																																							Let Ti1712.4882
																																																																																								Int:5
																																																																																								Let Td1717.4883
																																																																																									Let Td1713.4884
																																																																																										Float:1.000000
																																																																																										Let Td1715.4885
																																																																																											Let Ti1714.4887
																																																																																												Int:2
																																																																																												Get vec.2863 Ti1714.4887
																																																																																											Let Td1716.4886
																																																																																												FReciprocal Td1715.4885
																																																																																												FMul Td1713.4884 Td1716.4886
																																																																																									Put const.4873 Ti1712.4882 Td1717.4883
																																																																																						Let Ti1718.4879
																																																																																							Int:5
																																																																																							Let Td1719.4880
																																																																																								Float:0.000000
																																																																																								Put const.4873 Ti1718.4879 Td1719.4880
																																																																																			Var const.4873
																																																																															LetRec setup_surface_table.2865 vec.2866 m.2867 
																																																																																Let const.4829
																																																																																	Let Ti1620.4871
																																																																																		Int:4
																																																																																		Let Td1621.4872
																																																																																			Float:0.000000
																																																																																			ExtFunApp create_float_array Ti1620.4871,Td1621.4872,
																																																																																	Let d.4830
																																																																																		Let Td1630.4858
																																																																																			Let Td1625.4863
																																																																																				Let Td1623.4868
																																																																																					Let Ti1622.4870
																																																																																						Int:0
																																																																																						Get vec.2866 Ti1622.4870
																																																																																					Let Td1624.4869
																																																																																						App o_param_a.2694m.2867 
																																																																																						FMul Td1623.4868 Td1624.4869
																																																																																				Let Td1629.4864
																																																																																					Let Td1627.4865
																																																																																						Let Ti1626.4867
																																																																																							Int:1
																																																																																							Get vec.2866 Ti1626.4867
																																																																																						Let Td1628.4866
																																																																																							App o_param_b.2696m.2867 
																																																																																							FMul Td1627.4865 Td1628.4866
																																																																																					FAdd Td1625.4863 Td1629.4864
																																																																																			Let Td1634.4859
																																																																																				Let Td1632.4860
																																																																																					Let Ti1631.4862
																																																																																						Int:2
																																																																																						Get vec.2866 Ti1631.4862
																																																																																					Let Td1633.4861
																																																																																						App o_param_c.2698m.2867 
																																																																																						FMul Td1632.4860 Td1633.4861
																																																																																				FAdd Td1630.4858 Td1634.4859
																																																																																		Let Tu92.4831
																																																																																			Let Tb1635.4832
																																																																																				ExtFunApp fispos d.4830,
																																																																																				Let Ti1636.4833
																																																																																					Int:0
																																																																																					IfEq Tb1635.4832 Ti1636.4833
																																																																																						Let Ti1637.4856
																																																																																							Int:0
																																																																																							Let Td1638.4857
																																																																																								Float:0.000000
																																																																																								Put const.4829 Ti1637.4856 Td1638.4857
																																																																																						Let Tu91.4834
																																																																																							Let Ti1639.4852
																																																																																								Int:0
																																																																																								Let Td1642.4853
																																																																																									Let Td1640.4854
																																																																																										Float:-1.000000
																																																																																										Let Td1641.4855
																																																																																											FReciprocal d.4830
																																																																																											FMul Td1640.4854 Td1641.4855
																																																																																									Put const.4829 Ti1639.4852 Td1642.4853
																																																																																							Let Tu90.4835
																																																																																								Let Ti1643.4847
																																																																																									Int:1
																																																																																									Let Td1647.4848
																																																																																										Let Td1646.4849
																																																																																											Let Td1644.4850
																																																																																												App o_param_a.2694m.2867 
																																																																																												Let Td1645.4851
																																																																																													FReciprocal d.4830
																																																																																													FMul Td1644.4850 Td1645.4851
																																																																																											ExtFunApp fneg Td1646.4849,
																																																																																										Put const.4829 Ti1643.4847 Td1647.4848
																																																																																								Let Tu89.4836
																																																																																									Let Ti1648.4842
																																																																																										Int:2
																																																																																										Let Td1652.4843
																																																																																											Let Td1651.4844
																																																																																												Let Td1649.4845
																																																																																													App o_param_b.2696m.2867 
																																																																																													Let Td1650.4846
																																																																																														FReciprocal d.4830
																																																																																														FMul Td1649.4845 Td1650.4846
																																																																																												ExtFunApp fneg Td1651.4844,
																																																																																											Put const.4829 Ti1648.4842 Td1652.4843
																																																																																									Let Ti1653.4837
																																																																																										Int:3
																																																																																										Let Td1657.4838
																																																																																											Let Td1656.4839
																																																																																												Let Td1654.4840
																																																																																													App o_param_c.2698m.2867 
																																																																																													Let Td1655.4841
																																																																																														FReciprocal d.4830
																																																																																														FMul Td1654.4840 Td1655.4841
																																																																																												ExtFunApp fneg Td1656.4839,
																																																																																											Put const.4829 Ti1653.4837 Td1657.4838
																																																																																			Var const.4829
																																																																																LetRec setup_second_table.2868 v.2869 m.2870 
																																																																																	Let const.4749
																																																																																		Let Ti1552.4827
																																																																																			Int:5
																																																																																			Let Td1553.4828
																																																																																				Float:0.000000
																																																																																				ExtFunApp create_float_array Ti1552.4827,Td1553.4828,
																																																																																		Let aa.4750
																																																																																			Let Td1555.4821
																																																																																				Let Ti1554.4826
																																																																																					Int:0
																																																																																					Get v.2869 Ti1554.4826
																																																																																				Let Td1557.4822
																																																																																					Let Ti1556.4825
																																																																																						Int:1
																																																																																						Get v.2869 Ti1556.4825
																																																																																					Let Td1559.4823
																																																																																						Let Ti1558.4824
																																																																																							Int:2
																																																																																							Get v.2869 Ti1558.4824
																																																																																						App quadratic.2799m.2870 Td1555.4821 Td1557.4822 Td1559.4823 
																																																																																			Let c1.4751
																																																																																				Let Td1563.4817
																																																																																					Let Td1561.4818
																																																																																						Let Ti1560.4820
																																																																																							Int:0
																																																																																							Get v.2869 Ti1560.4820
																																																																																						Let Td1562.4819
																																																																																							App o_param_a.2694m.2870 
																																																																																							FMul Td1561.4818 Td1562.4819
																																																																																					ExtFunApp fneg Td1563.4817,
																																																																																				Let c2.4752
																																																																																					Let Td1567.4813
																																																																																						Let Td1565.4814
																																																																																							Let Ti1564.4816
																																																																																								Int:1
																																																																																								Get v.2869 Ti1564.4816
																																																																																							Let Td1566.4815
																																																																																								App o_param_b.2696m.2870 
																																																																																								FMul Td1565.4814 Td1566.4815
																																																																																						ExtFunApp fneg Td1567.4813,
																																																																																					Let c3.4753
																																																																																						Let Td1571.4809
																																																																																							Let Td1569.4810
																																																																																								Let Ti1568.4812
																																																																																									Int:2
																																																																																									Get v.2869 Ti1568.4812
																																																																																								Let Td1570.4811
																																																																																									App o_param_c.2698m.2870 
																																																																																									FMul Td1569.4810 Td1570.4811
																																																																																							ExtFunApp fneg Td1571.4809,
																																																																																						Let Tu99.4754
																																																																																							Let Ti1572.4808
																																																																																								Int:0
																																																																																								Put const.4749 Ti1572.4808 aa.4750
																																																																																							Let Tu98.4755
																																																																																								Let Ti1573.4763
																																																																																									App o_isrot.2692m.2870 
																																																																																									Let Ti1574.4764
																																																																																										Int:0
																																																																																										IfEq Ti1573.4763 Ti1574.4764
																																																																																											Let Tu96.4803
																																																																																												Let Ti1575.4807
																																																																																													Int:1
																																																																																													Put const.4749 Ti1575.4807 c1.4751
																																																																																												Let Tu95.4804
																																																																																													Let Ti1576.4806
																																																																																														Int:2
																																																																																														Put const.4749 Ti1576.4806 c2.4752
																																																																																													Let Ti1577.4805
																																																																																														Int:3
																																																																																														Put const.4749 Ti1577.4805 c3.4753
																																																																																											Let Tu94.4765
																																																																																												Let Ti1578.4791
																																																																																													Int:1
																																																																																													Let Td1589.4792
																																																																																														Let Td1588.4793
																																																																																															Let Td1587.4794
																																																																																																Let Td1582.4795
																																																																																																	Let Td1580.4800
																																																																																																		Let Ti1579.4802
																																																																																																			Int:2
																																																																																																			Get v.2869 Ti1579.4802
																																																																																																		Let Td1581.4801
																																																																																																			App o_param_r2.2720m.2870 
																																																																																																			FMul Td1580.4800 Td1581.4801
																																																																																																	Let Td1586.4796
																																																																																																		Let Td1584.4797
																																																																																																			Let Ti1583.4799
																																																																																																				Int:1
																																																																																																				Get v.2869 Ti1583.4799
																																																																																																			Let Td1585.4798
																																																																																																				App o_param_r3.2722m.2870 
																																																																																																				FMul Td1584.4797 Td1585.4798
																																																																																																		FAdd Td1582.4795 Td1586.4796
																																																																																																ExtFunApp fhalf Td1587.4794,
																																																																																															FSub c1.4751 Td1588.4793
																																																																																														Put const.4749 Ti1578.4791 Td1589.4792
																																																																																												Let Tu93.4766
																																																																																													Let Ti1590.4779
																																																																																														Int:2
																																																																																														Let Td1601.4780
																																																																																															Let Td1600.4781
																																																																																																Let Td1599.4782
																																																																																																	Let Td1594.4783
																																																																																																		Let Td1592.4788
																																																																																																			Let Ti1591.4790
																																																																																																				Int:2
																																																																																																				Get v.2869 Ti1591.4790
																																																																																																			Let Td1593.4789
																																																																																																				App o_param_r1.2718m.2870 
																																																																																																				FMul Td1592.4788 Td1593.4789
																																																																																																		Let Td1598.4784
																																																																																																			Let Td1596.4785
																																																																																																				Let Ti1595.4787
																																																																																																					Int:0
																																																																																																					Get v.2869 Ti1595.4787
																																																																																																				Let Td1597.4786
																																																																																																					App o_param_r3.2722m.2870 
																																																																																																					FMul Td1596.4785 Td1597.4786
																																																																																																			FAdd Td1594.4783 Td1598.4784
																																																																																																	ExtFunApp fhalf Td1599.4782,
																																																																																																FSub c2.4752 Td1600.4781
																																																																																															Put const.4749 Ti1590.4779 Td1601.4780
																																																																																													Let Ti1602.4767
																																																																																														Int:3
																																																																																														Let Td1613.4768
																																																																																															Let Td1612.4769
																																																																																																Let Td1611.4770
																																																																																																	Let Td1606.4771
																																																																																																		Let Td1604.4776
																																																																																																			Let Ti1603.4778
																																																																																																				Int:1
																																																																																																				Get v.2869 Ti1603.4778
																																																																																																			Let Td1605.4777
																																																																																																				App o_param_r1.2718m.2870 
																																																																																																				FMul Td1604.4776 Td1605.4777
																																																																																																		Let Td1610.4772
																																																																																																			Let Td1608.4773
																																																																																																				Let Ti1607.4775
																																																																																																					Int:0
																																																																																																					Get v.2869 Ti1607.4775
																																																																																																				Let Td1609.4774
																																																																																																					App o_param_r2.2720m.2870 
																																																																																																					FMul Td1608.4773 Td1609.4774
																																																																																																			FAdd Td1606.4771 Td1610.4772
																																																																																																	ExtFunApp fhalf Td1611.4770,
																																																																																																FSub c3.4753 Td1612.4769
																																																																																															Put const.4749 Ti1602.4767 Td1613.4768
																																																																																								Let Tu97.4756
																																																																																									Let Tb1614.4757
																																																																																										ExtFunApp fiszero aa.4750,
																																																																																										Let Ti1615.4758
																																																																																											Int:0
																																																																																											IfEq Tb1614.4757 Ti1615.4758
																																																																																												Let Ti1616.4759
																																																																																													Int:4
																																																																																													Let Td1619.4760
																																																																																														Let Td1617.4761
																																																																																															Float:1.000000
																																																																																															Let Td1618.4762
																																																																																																FReciprocal aa.4750
																																																																																																FMul Td1617.4761 Td1618.4762
																																																																																														Put const.4749 Ti1616.4759 Td1619.4760
																																																																																												Unit
																																																																																									Var const.4749
																																																																																	LetRec iter_setup_dirvec_constants.2871 dirvec.2872 index.2873 
																																																																																		Let Ti1543.4735
																																																																																			Int:0
																																																																																			IfLE Ti1543.4735 index.2873
																																																																																				Let m.4736
																																																																																					Let Ta1544.4748
																																																																																						ExtArray objects
																																																																																						Get Ta1544.4748 index.2873
																																																																																					Let dconst.4737
																																																																																						App d_const.2747dirvec.2872 
																																																																																						Let v.4738
																																																																																							App d_vec.2745dirvec.2872 
																																																																																							Let m_shape.4739
																																																																																								App o_form.2686m.4736 
																																																																																								Let Tu100.4740
																																																																																									Let Ti1545.4743
																																																																																										Int:1
																																																																																										IfEq m_shape.4739 Ti1545.4743
																																																																																											Let Ta1546.4747
																																																																																												App setup_rect_table.2862v.4738 m.4736 
																																																																																												Put dconst.4737 index.2873 Ta1546.4747
																																																																																											Let Ti1547.4744
																																																																																												Int:2
																																																																																												IfEq m_shape.4739 Ti1547.4744
																																																																																													Let Ta1548.4746
																																																																																														App setup_surface_table.2865v.4738 m.4736 
																																																																																														Put dconst.4737 index.2873 Ta1548.4746
																																																																																													Let Ta1549.4745
																																																																																														App setup_second_table.2868v.4738 m.4736 
																																																																																														Put dconst.4737 index.2873 Ta1549.4745
																																																																																									Let Ti1551.4741
																																																																																										Let Ti1550.4742
																																																																																											Int:1
																																																																																											Sub index.2873 Ti1550.4742
																																																																																										App iter_setup_dirvec_constants.2871dirvec.2872 Ti1551.4741 
																																																																																				Unit
																																																																																		LetRec setup_dirvec_constants.2874 dirvec.2875 
																																																																																			Let Ti1542.4730
																																																																																				Let Ti1540.4731
																																																																																					Let Ta1538.4733
																																																																																						ExtArray n_objects
																																																																																						Let Ti1539.4734
																																																																																							Int:0
																																																																																							Get Ta1538.4733 Ti1539.4734
																																																																																					Let Ti1541.4732
																																																																																						Int:1
																																																																																						Sub Ti1540.4731 Ti1541.4732
																																																																																				App iter_setup_dirvec_constants.2871dirvec.2875 Ti1542.4730 
																																																																																			LetRec setup_startp_constants.2876 p.2877 index.2878 
																																																																																				Let Ti1498.4682
																																																																																					Int:0
																																																																																					IfLE Ti1498.4682 index.2878
																																																																																						Let obj.4683
																																																																																							Let Ta1499.4729
																																																																																								ExtArray objects
																																																																																								Get Ta1499.4729 index.2878
																																																																																							Let sconst.4684
																																																																																								App o_param_ctbl.2724obj.4683 
																																																																																								Let m_shape.4685
																																																																																									App o_form.2686obj.4683 
																																																																																									Let Tu104.4686
																																																																																										Let Ti1500.4724
																																																																																											Int:0
																																																																																											Let Td1504.4725
																																																																																												Let Td1502.4726
																																																																																													Let Ti1501.4728
																																																																																														Int:0
																																																																																														Get p.2877 Ti1501.4728
																																																																																													Let Td1503.4727
																																																																																														App o_param_x.2702obj.4683 
																																																																																														FSub Td1502.4726 Td1503.4727
																																																																																												Put sconst.4684 Ti1500.4724 Td1504.4725
																																																																																										Let Tu103.4687
																																																																																											Let Ti1505.4719
																																																																																												Int:1
																																																																																												Let Td1509.4720
																																																																																													Let Td1507.4721
																																																																																														Let Ti1506.4723
																																																																																															Int:1
																																																																																															Get p.2877 Ti1506.4723
																																																																																														Let Td1508.4722
																																																																																															App o_param_y.2704obj.4683 
																																																																																															FSub Td1507.4721 Td1508.4722
																																																																																													Put sconst.4684 Ti1505.4719 Td1509.4720
																																																																																											Let Tu102.4688
																																																																																												Let Ti1510.4714
																																																																																													Int:2
																																																																																													Let Td1514.4715
																																																																																														Let Td1512.4716
																																																																																															Let Ti1511.4718
																																																																																																Int:2
																																																																																																Get p.2877 Ti1511.4718
																																																																																															Let Td1513.4717
																																																																																																App o_param_z.2706obj.4683 
																																																																																																FSub Td1512.4716 Td1513.4717
																																																																																														Put sconst.4684 Ti1510.4714 Td1514.4715
																																																																																												Let Tu101.4689
																																																																																													Let Ti1515.4692
																																																																																														Int:2
																																																																																														IfEq m_shape.4685 Ti1515.4692
																																																																																															Let Ti1516.4705
																																																																																																Int:3
																																																																																																Let Td1524.4706
																																																																																																	Let Ta1517.4707
																																																																																																		App o_param_abc.2700obj.4683 
																																																																																																		Let Td1519.4708
																																																																																																			Let Ti1518.4713
																																																																																																				Int:0
																																																																																																				Get sconst.4684 Ti1518.4713
																																																																																																			Let Td1521.4709
																																																																																																				Let Ti1520.4712
																																																																																																					Int:1
																																																																																																					Get sconst.4684 Ti1520.4712
																																																																																																				Let Td1523.4710
																																																																																																					Let Ti1522.4711
																																																																																																						Int:2
																																																																																																						Get sconst.4684 Ti1522.4711
																																																																																																					App veciprod2.2662Ta1517.4707 Td1519.4708 Td1521.4709 Td1523.4710 
																																																																																																	Put sconst.4684 Ti1516.4705 Td1524.4706
																																																																																															Let Ti1525.4693
																																																																																																Int:2
																																																																																																IfLE m_shape.4685 Ti1525.4693
																																																																																																	Unit
																																																																																																	Let cc0.4694
																																																																																																		Let Td1527.4699
																																																																																																			Let Ti1526.4704
																																																																																																				Int:0
																																																																																																				Get sconst.4684 Ti1526.4704
																																																																																																			Let Td1529.4700
																																																																																																				Let Ti1528.4703
																																																																																																					Int:1
																																																																																																					Get sconst.4684 Ti1528.4703
																																																																																																				Let Td1531.4701
																																																																																																					Let Ti1530.4702
																																																																																																						Int:2
																																																																																																						Get sconst.4684 Ti1530.4702
																																																																																																					App quadratic.2799obj.4683 Td1527.4699 Td1529.4700 Td1531.4701 
																																																																																																		Let Ti1532.4695
																																																																																																			Int:3
																																																																																																			Let Td1535.4696
																																																																																																				Let Ti1533.4697
																																																																																																					Int:3
																																																																																																					IfEq m_shape.4685 Ti1533.4697
																																																																																																						Let Td1534.4698
																																																																																																							Float:1.000000
																																																																																																							FSub cc0.4694 Td1534.4698
																																																																																																						Var cc0.4694
																																																																																																				Put sconst.4684 Ti1532.4695 Td1535.4696
																																																																																													Let Ti1537.4690
																																																																																														Let Ti1536.4691
																																																																																															Int:1
																																																																																															Sub index.2878 Ti1536.4691
																																																																																														App setup_startp_constants.2876p.2877 Ti1537.4690 
																																																																																						Unit
																																																																																				LetRec setup_startp.2879 p.2880 
																																																																																					Let Tu105.4675
																																																																																						Let Ta1492.4681
																																																																																							ExtArray startp_fast
																																																																																							App veccpy.2648Ta1492.4681 p.2880 
																																																																																						Let Ti1497.4676
																																																																																							Let Ti1495.4677
																																																																																								Let Ta1493.4679
																																																																																									ExtArray n_objects
																																																																																									Let Ti1494.4680
																																																																																										Int:0
																																																																																										Get Ta1493.4679 Ti1494.4680
																																																																																								Let Ti1496.4678
																																																																																									Int:1
																																																																																									Sub Ti1495.4677 Ti1496.4678
																																																																																							App setup_startp_constants.2876p.2880 Ti1497.4676 
																																																																																					LetRec is_rect_outside.2881 m.2882 p0.2883 p1.2884 p2.2885 
																																																																																						Let Ti1488.4661
																																																																																							Let Tb1480.4665
																																																																																								Let Td1478.4673
																																																																																									ExtFunApp fabs p0.2883,
																																																																																									Let Td1479.4674
																																																																																										App o_param_a.2694m.2882 
																																																																																										ExtFunApp fless Td1478.4673,Td1479.4674,
																																																																																								Let Ti1481.4666
																																																																																									Int:0
																																																																																									IfEq Tb1480.4665 Ti1481.4666
																																																																																										Int:0
																																																																																										Let Tb1484.4667
																																																																																											Let Td1482.4671
																																																																																												ExtFunApp fabs p1.2884,
																																																																																												Let Td1483.4672
																																																																																													App o_param_b.2696m.2882 
																																																																																													ExtFunApp fless Td1482.4671,Td1483.4672,
																																																																																											Let Ti1485.4668
																																																																																												Int:0
																																																																																												IfEq Tb1484.4667 Ti1485.4668
																																																																																													Int:0
																																																																																													Let Td1486.4669
																																																																																														ExtFunApp fabs p2.2885,
																																																																																														Let Td1487.4670
																																																																																															App o_param_c.2698m.2882 
																																																																																															ExtFunApp fless Td1486.4669,Td1487.4670,
																																																																																							Let Ti1489.4662
																																																																																								Int:0
																																																																																								IfEq Ti1488.4661 Ti1489.4662
																																																																																									Let Tb1490.4663
																																																																																										App o_isinvert.2690m.2882 
																																																																																										Let Ti1491.4664
																																																																																											Int:0
																																																																																											IfEq Tb1490.4663 Ti1491.4664
																																																																																												Int:1
																																																																																												Int:0
																																																																																									App o_isinvert.2690m.2882 
																																																																																						LetRec is_plane_outside.2886 m.2887 p0.2888 p1.2889 p2.2890 
																																																																																							Let w.4655
																																																																																								Let Ta1473.4660
																																																																																									App o_param_abc.2700m.2887 
																																																																																									App veciprod2.2662Ta1473.4660 p0.2888 p1.2889 p2.2890 
																																																																																								Let Tb1476.4656
																																																																																									Let Tb1474.4658
																																																																																										App o_isinvert.2690m.2887 
																																																																																										Let Tb1475.4659
																																																																																											ExtFunApp fisneg w.4655,
																																																																																											App xor.2627Tb1474.4658 Tb1475.4659 
																																																																																									Let Ti1477.4657
																																																																																										Int:0
																																																																																										IfEq Tb1476.4656 Ti1477.4657
																																																																																											Int:1
																																																																																											Int:0
																																																																																							LetRec is_second_outside.2891 m.2892 p0.2893 p1.2894 p2.2895 
																																																																																								Let w.4646
																																																																																									App quadratic.2799m.2892 p0.2893 p1.2894 p2.2895 
																																																																																									Let w2.4647
																																																																																										Let Ti1466.4652
																																																																																											App o_form.2686m.2892 
																																																																																											Let Ti1467.4653
																																																																																												Int:3
																																																																																												IfEq Ti1466.4652 Ti1467.4653
																																																																																													Let Td1468.4654
																																																																																														Float:1.000000
																																																																																														FSub w.4646 Td1468.4654
																																																																																													Var w.4646
																																																																																										Let Tb1471.4648
																																																																																											Let Tb1469.4650
																																																																																												App o_isinvert.2690m.2892 
																																																																																												Let Tb1470.4651
																																																																																													ExtFunApp fisneg w2.4647,
																																																																																													App xor.2627Tb1469.4650 Tb1470.4651 
																																																																																											Let Ti1472.4649
																																																																																												Int:0
																																																																																												IfEq Tb1471.4648 Ti1472.4649
																																																																																													Int:1
																																																																																													Int:0
																																																																																								LetRec is_outside.2896 m.2897 q0.2898 q1.2899 q2.2900 
																																																																																									Let p0.4637
																																																																																										Let Td1461.4645
																																																																																											App o_param_x.2702m.2897 
																																																																																											FSub q0.2898 Td1461.4645
																																																																																										Let p1.4638
																																																																																											Let Td1462.4644
																																																																																												App o_param_y.2704m.2897 
																																																																																												FSub q1.2899 Td1462.4644
																																																																																											Let p2.4639
																																																																																												Let Td1463.4643
																																																																																													App o_param_z.2706m.2897 
																																																																																													FSub q2.2900 Td1463.4643
																																																																																												Let m_shape.4640
																																																																																													App o_form.2686m.2897 
																																																																																													Let Ti1464.4641
																																																																																														Int:1
																																																																																														IfEq m_shape.4640 Ti1464.4641
																																																																																															App is_rect_outside.2881m.2897 p0.4637 p1.4638 p2.4639 
																																																																																															Let Ti1465.4642
																																																																																																Int:2
																																																																																																IfEq m_shape.4640 Ti1465.4642
																																																																																																	App is_plane_outside.2886m.2897 p0.4637 p1.4638 p2.4639 
																																																																																																	App is_second_outside.2891m.2897 p0.4637 p1.4638 p2.4639 
																																																																																									LetRec check_all_inside.2901 ofs.2902 iand.2903 q0.2904 q1.2905 q2.2906 
																																																																																										Let head.4628
																																																																																											Get iand.2903 ofs.2902
																																																																																											Let Ti1454.4629
																																																																																												Let Ti1453.4636
																																																																																													Int:1
																																																																																													Neg Ti1453.4636
																																																																																												IfEq head.4628 Ti1454.4629
																																																																																													Int:1
																																																																																													Let Tb1457.4630
																																																																																														Let Tt1456.4634
																																																																																															Let Ta1455.4635
																																																																																																ExtArray objects
																																																																																																Get Ta1455.4635 head.4628
																																																																																															App is_outside.2896Tt1456.4634 q0.2904 q1.2905 q2.2906 
																																																																																														Let Ti1458.4631
																																																																																															Int:0
																																																																																															IfEq Tb1457.4630 Ti1458.4631
																																																																																																Let Ti1460.4632
																																																																																																	Let Ti1459.4633
																																																																																																		Int:1
																																																																																																		Add ofs.2902 Ti1459.4633
																																																																																																	App check_all_inside.2901Ti1460.4632 iand.2903 q0.2904 q1.2905 q2.2906 
																																																																																																Int:0
																																																																																										LetRec shadow_check_and_group.2907 iand_ofs.2908 and_group.2909 
																																																																																											Let Ti1409.4577
																																																																																												Get and_group.2909 iand_ofs.2908
																																																																																												Let Ti1411.4578
																																																																																													Let Ti1410.4627
																																																																																														Int:1
																																																																																														Neg Ti1410.4627
																																																																																													IfEq Ti1409.4577 Ti1411.4578
																																																																																														Int:0
																																																																																														Let obj.4579
																																																																																															Get and_group.2909 iand_ofs.2908
																																																																																															Let t0.4580
																																																																																																Let Tt1412.4625
																																																																																																	ExtTuple light_dirvec
																																																																																																	Let Ta1413.4626
																																																																																																		ExtArray intersection_point
																																																																																																		App solver_fast.2841obj.4579 Tt1412.4625 Ta1413.4626 
																																																																																																Let t0p.4581
																																																																																																	Let Ta1414.4623
																																																																																																		ExtArray solver_dist
																																																																																																		Let Ti1415.4624
																																																																																																			Int:0
																																																																																																			Get Ta1414.4623 Ti1415.4624
																																																																																																	Let Ti1418.4582
																																																																																																		Let Ti1416.4621
																																																																																																			Int:0
																																																																																																			IfEq t0.4580 Ti1416.4621
																																																																																																				Int:0
																																																																																																				Let Td1417.4622
																																																																																																					Float:-0.200000
																																																																																																					ExtFunApp fless t0p.4581,Td1417.4622,
																																																																																																		Let Ti1419.4583
																																																																																																			Int:0
																																																																																																			IfEq Ti1418.4582 Ti1419.4583
																																																																																																				Let Tb1422.4615
																																																																																																					Let Tt1421.4619
																																																																																																						Let Ta1420.4620
																																																																																																							ExtArray objects
																																																																																																							Get Ta1420.4620 obj.4579
																																																																																																						App o_isinvert.2690Tt1421.4619 
																																																																																																					Let Ti1423.4616
																																																																																																						Int:0
																																																																																																						IfEq Tb1422.4615 Ti1423.4616
																																																																																																							Int:0
																																																																																																							Let Ti1425.4617
																																																																																																								Let Ti1424.4618
																																																																																																									Int:1
																																																																																																									Add iand_ofs.2908 Ti1424.4618
																																																																																																								App shadow_check_and_group.2907Ti1425.4617 and_group.2909 
																																																																																																				Let t.4584
																																																																																																					Let Td1426.4614
																																																																																																						Float:0.010000
																																																																																																						FAdd t0p.4581 Td1426.4614
																																																																																																					Let q0.4585
																																																																																																						Let Td1430.4607
																																																																																																							Let Td1429.4611
																																																																																																								Let Ta1427.4612
																																																																																																									ExtArray light
																																																																																																									Let Ti1428.4613
																																																																																																										Int:0
																																																																																																										Get Ta1427.4612 Ti1428.4613
																																																																																																								FMul Td1429.4611 t.4584
																																																																																																							Let Td1433.4608
																																																																																																								Let Ta1431.4609
																																																																																																									ExtArray intersection_point
																																																																																																									Let Ti1432.4610
																																																																																																										Int:0
																																																																																																										Get Ta1431.4609 Ti1432.4610
																																																																																																								FAdd Td1430.4607 Td1433.4608
																																																																																																						Let q1.4586
																																																																																																							Let Td1437.4600
																																																																																																								Let Td1436.4604
																																																																																																									Let Ta1434.4605
																																																																																																										ExtArray light
																																																																																																										Let Ti1435.4606
																																																																																																											Int:1
																																																																																																											Get Ta1434.4605 Ti1435.4606
																																																																																																									FMul Td1436.4604 t.4584
																																																																																																								Let Td1440.4601
																																																																																																									Let Ta1438.4602
																																																																																																										ExtArray intersection_point
																																																																																																										Let Ti1439.4603
																																																																																																											Int:1
																																																																																																											Get Ta1438.4602 Ti1439.4603
																																																																																																									FAdd Td1437.4600 Td1440.4601
																																																																																																							Let q2.4587
																																																																																																								Let Td1444.4593
																																																																																																									Let Td1443.4597
																																																																																																										Let Ta1441.4598
																																																																																																											ExtArray light
																																																																																																											Let Ti1442.4599
																																																																																																												Int:2
																																																																																																												Get Ta1441.4598 Ti1442.4599
																																																																																																										FMul Td1443.4597 t.4584
																																																																																																									Let Td1447.4594
																																																																																																										Let Ta1445.4595
																																																																																																											ExtArray intersection_point
																																																																																																											Let Ti1446.4596
																																																																																																												Int:2
																																																																																																												Get Ta1445.4595 Ti1446.4596
																																																																																																										FAdd Td1444.4593 Td1447.4594
																																																																																																								Let Tb1449.4588
																																																																																																									Let Ti1448.4592
																																																																																																										Int:0
																																																																																																										App check_all_inside.2901Ti1448.4592 and_group.2909 q0.4585 q1.4586 q2.4587 
																																																																																																									Let Ti1450.4589
																																																																																																										Int:0
																																																																																																										IfEq Tb1449.4588 Ti1450.4589
																																																																																																											Let Ti1452.4590
																																																																																																												Let Ti1451.4591
																																																																																																													Int:1
																																																																																																													Add iand_ofs.2908 Ti1451.4591
																																																																																																												App shadow_check_and_group.2907Ti1452.4590 and_group.2909 
																																																																																																											Int:1
																																																																																											LetRec shadow_check_one_or_group.2910 ofs.2911 or_group.2912 
																																																																																												Let head.4567
																																																																																													Get or_group.2912 ofs.2911
																																																																																													Let Ti1403.4568
																																																																																														Let Ti1402.4576
																																																																																															Int:1
																																																																																															Neg Ti1402.4576
																																																																																														IfEq head.4567 Ti1403.4568
																																																																																															Int:0
																																																																																															Let and_group.4569
																																																																																																Let Ta1404.4575
																																																																																																	ExtArray and_net
																																																																																																	Get Ta1404.4575 head.4567
																																																																																																Let shadow_p.4570
																																																																																																	Let Ti1405.4574
																																																																																																		Int:0
																																																																																																		App shadow_check_and_group.2907Ti1405.4574 and_group.4569 
																																																																																																	Let Ti1406.4571
																																																																																																		Int:0
																																																																																																		IfEq shadow_p.4570 Ti1406.4571
																																																																																																			Let Ti1408.4572
																																																																																																				Let Ti1407.4573
																																																																																																					Int:1
																																																																																																					Add ofs.2911 Ti1407.4573
																																																																																																				App shadow_check_one_or_group.2910Ti1408.4572 or_group.2912 
																																																																																																			Int:1
																																																																																												LetRec shadow_check_one_or_matrix.2913 ofs.2914 or_matrix.2915 
																																																																																													Let head.4539
																																																																																														Get or_matrix.2915 ofs.2914
																																																																																														Let range_primitive.4540
																																																																																															Let Ti1377.4566
																																																																																																Int:0
																																																																																																Get head.4539 Ti1377.4566
																																																																																															Let Ti1379.4541
																																																																																																Let Ti1378.4565
																																																																																																	Int:1
																																																																																																	Neg Ti1378.4565
																																																																																																IfEq range_primitive.4540 Ti1379.4541
																																																																																																	Int:0
																																																																																																	Let Ti1393.4542
																																																																																																		Let Ti1380.4551
																																																																																																			Int:99
																																																																																																			IfEq range_primitive.4540 Ti1380.4551
																																																																																																				Int:1
																																																																																																				Let t.4552
																																																																																																					Let Tt1381.4563
																																																																																																						ExtTuple light_dirvec
																																																																																																						Let Ta1382.4564
																																																																																																							ExtArray intersection_point
																																																																																																							App solver_fast.2841range_primitive.4540 Tt1381.4563 Ta1382.4564 
																																																																																																					Let Ti1383.4553
																																																																																																						Int:0
																																																																																																						IfEq t.4552 Ti1383.4553
																																																																																																							Int:0
																																																																																																							Let Tb1388.4554
																																																																																																								Let Td1386.4559
																																																																																																									Let Ta1384.4561
																																																																																																										ExtArray solver_dist
																																																																																																										Let Ti1385.4562
																																																																																																											Int:0
																																																																																																											Get Ta1384.4561 Ti1385.4562
																																																																																																									Let Td1387.4560
																																																																																																										Float:-0.100000
																																																																																																										ExtFunApp fless Td1386.4559,Td1387.4560,
																																																																																																								Let Ti1389.4555
																																																																																																									Int:0
																																																																																																									IfEq Tb1388.4554 Ti1389.4555
																																																																																																										Int:0
																																																																																																										Let Tb1391.4556
																																																																																																											Let Ti1390.4558
																																																																																																												Int:1
																																																																																																												App shadow_check_one_or_group.2910Ti1390.4558 head.4539 
																																																																																																											Let Ti1392.4557
																																																																																																												Int:0
																																																																																																												IfEq Tb1391.4556 Ti1392.4557
																																																																																																													Int:0
																																																																																																													Int:1
																																																																																																		Let Ti1394.4543
																																																																																																			Int:0
																																																																																																			IfEq Ti1393.4542 Ti1394.4543
																																																																																																				Let Ti1396.4549
																																																																																																					Let Ti1395.4550
																																																																																																						Int:1
																																																																																																						Add ofs.2914 Ti1395.4550
																																																																																																					App shadow_check_one_or_matrix.2913Ti1396.4549 or_matrix.2915 
																																																																																																				Let Tb1398.4544
																																																																																																					Let Ti1397.4548
																																																																																																						Int:1
																																																																																																						App shadow_check_one_or_group.2910Ti1397.4548 head.4539 
																																																																																																					Let Ti1399.4545
																																																																																																						Int:0
																																																																																																						IfEq Tb1398.4544 Ti1399.4545
																																																																																																							Let Ti1401.4546
																																																																																																								Let Ti1400.4547
																																																																																																									Int:1
																																																																																																									Add ofs.2914 Ti1400.4547
																																																																																																								App shadow_check_one_or_matrix.2913Ti1401.4546 or_matrix.2915 
																																																																																																							Int:1
																																																																																													LetRec solve_each_element.2916 iand_ofs.2917 and_group.2918 dirvec.2919 
																																																																																														Let iobj.4477
																																																																																															Get and_group.2918 iand_ofs.2917
																																																																																															Let Ti1327.4478
																																																																																																Let Ti1326.4538
																																																																																																	Int:1
																																																																																																	Neg Ti1326.4538
																																																																																																IfEq iobj.4477 Ti1327.4478
																																																																																																	Unit
																																																																																																	Let t0.4479
																																																																																																		Let Ta1328.4537
																																																																																																			ExtArray startp
																																																																																																			App solver.2818iobj.4477 dirvec.2919 Ta1328.4537 
																																																																																																		Let Ti1329.4480
																																																																																																			Int:0
																																																																																																			IfEq t0.4479 Ti1329.4480
																																																																																																				Let Tb1332.4531
																																																																																																					Let Tt1331.4535
																																																																																																						Let Ta1330.4536
																																																																																																							ExtArray objects
																																																																																																							Get Ta1330.4536 iobj.4477
																																																																																																						App o_isinvert.2690Tt1331.4535 
																																																																																																					Let Ti1333.4532
																																																																																																						Int:0
																																																																																																						IfEq Tb1332.4531 Ti1333.4532
																																																																																																							Unit
																																																																																																							Let Ti1335.4533
																																																																																																								Let Ti1334.4534
																																																																																																									Int:1
																																																																																																									Add iand_ofs.2917 Ti1334.4534
																																																																																																								App solve_each_element.2916Ti1335.4533 and_group.2918 dirvec.2919 
																																																																																																				Let t0p.4481
																																																																																																					Let Ta1336.4529
																																																																																																						ExtArray solver_dist
																																																																																																						Let Ti1337.4530
																																																																																																							Int:0
																																																																																																							Get Ta1336.4529 Ti1337.4530
																																																																																																					Let Tu109.4482
																																																																																																						Let Tb1339.4485
																																																																																																							Let Td1338.4528
																																																																																																								Float:0.000000
																																																																																																								ExtFunApp fless Td1338.4528,t0p.4481,
																																																																																																							Let Ti1340.4486
																																																																																																								Int:0
																																																																																																								IfEq Tb1339.4485 Ti1340.4486
																																																																																																									Unit
																																																																																																									Let Tb1344.4487
																																																																																																										Let Td1343.4525
																																																																																																											Let Ta1341.4526
																																																																																																												ExtArray tmin
																																																																																																												Let Ti1342.4527
																																																																																																													Int:0
																																																																																																													Get Ta1341.4526 Ti1342.4527
																																																																																																											ExtFunApp fless t0p.4481,Td1343.4525,
																																																																																																										Let Ti1345.4488
																																																																																																											Int:0
																																																																																																											IfEq Tb1344.4487 Ti1345.4488
																																																																																																												Unit
																																																																																																												Let t.4489
																																																																																																													Let Td1346.4524
																																																																																																														Float:0.010000
																																																																																																														FAdd t0p.4481 Td1346.4524
																																																																																																													Let q0.4490
																																																																																																														Let Td1349.4518
																																																																																																															Let Td1348.4522
																																																																																																																Let Ti1347.4523
																																																																																																																	Int:0
																																																																																																																	Get dirvec.2919 Ti1347.4523
																																																																																																																FMul Td1348.4522 t.4489
																																																																																																															Let Td1352.4519
																																																																																																																Let Ta1350.4520
																																																																																																																	ExtArray startp
																																																																																																																	Let Ti1351.4521
																																																																																																																		Int:0
																																																																																																																		Get Ta1350.4520 Ti1351.4521
																																																																																																																FAdd Td1349.4518 Td1352.4519
																																																																																																														Let q1.4491
																																																																																																															Let Td1355.4512
																																																																																																																Let Td1354.4516
																																																																																																																	Let Ti1353.4517
																																																																																																																		Int:1
																																																																																																																		Get dirvec.2919 Ti1353.4517
																																																																																																																	FMul Td1354.4516 t.4489
																																																																																																																Let Td1358.4513
																																																																																																																	Let Ta1356.4514
																																																																																																																		ExtArray startp
																																																																																																																		Let Ti1357.4515
																																																																																																																			Int:1
																																																																																																																			Get Ta1356.4514 Ti1357.4515
																																																																																																																	FAdd Td1355.4512 Td1358.4513
																																																																																																															Let q2.4492
																																																																																																																Let Td1361.4506
																																																																																																																	Let Td1360.4510
																																																																																																																		Let Ti1359.4511
																																																																																																																			Int:2
																																																																																																																			Get dirvec.2919 Ti1359.4511
																																																																																																																		FMul Td1360.4510 t.4489
																																																																																																																	Let Td1364.4507
																																																																																																																		Let Ta1362.4508
																																																																																																																			ExtArray startp
																																																																																																																			Let Ti1363.4509
																																																																																																																				Int:2
																																																																																																																				Get Ta1362.4508 Ti1363.4509
																																																																																																																		FAdd Td1361.4506 Td1364.4507
																																																																																																																Let Tb1366.4493
																																																																																																																	Let Ti1365.4505
																																																																																																																		Int:0
																																																																																																																		App check_all_inside.2901Ti1365.4505 and_group.2918 q0.4490 q1.4491 q2.4492 
																																																																																																																	Let Ti1367.4494
																																																																																																																		Int:0
																																																																																																																		IfEq Tb1366.4493 Ti1367.4494
																																																																																																																			Unit
																																																																																																																			Let Tu108.4495
																																																																																																																				Let Ta1368.4503
																																																																																																																					ExtArray tmin
																																																																																																																					Let Ti1369.4504
																																																																																																																						Int:0
																																																																																																																						Put Ta1368.4503 Ti1369.4504 t.4489
																																																																																																																				Let Tu107.4496
																																																																																																																					Let Ta1370.4502
																																																																																																																						ExtArray intersection_point
																																																																																																																						App vecset.2638Ta1370.4502 q0.4490 q1.4491 q2.4492 
																																																																																																																					Let Tu106.4497
																																																																																																																						Let Ta1371.4500
																																																																																																																							ExtArray intersected_object_id
																																																																																																																							Let Ti1372.4501
																																																																																																																								Int:0
																																																																																																																								Put Ta1371.4500 Ti1372.4501 iobj.4477
																																																																																																																						Let Ta1373.4498
																																																																																																																							ExtArray intsec_rectside
																																																																																																																							Let Ti1374.4499
																																																																																																																								Int:0
																																																																																																																								Put Ta1373.4498 Ti1374.4499 t0.4479
																																																																																																						Let Ti1376.4483
																																																																																																							Let Ti1375.4484
																																																																																																								Int:1
																																																																																																								Add iand_ofs.2917 Ti1375.4484
																																																																																																							App solve_each_element.2916Ti1376.4483 and_group.2918 dirvec.2919 
																																																																																														LetRec solve_one_or_network.2920 ofs.2921 or_group.2922 dirvec.2923 
																																																																																															Let head.4468
																																																																																																Get or_group.2922 ofs.2921
																																																																																																Let Ti1321.4469
																																																																																																	Let Ti1320.4476
																																																																																																		Int:1
																																																																																																		Neg Ti1320.4476
																																																																																																	IfEq head.4468 Ti1321.4469
																																																																																																		Unit
																																																																																																		Let and_group.4470
																																																																																																			Let Ta1322.4475
																																																																																																				ExtArray and_net
																																																																																																				Get Ta1322.4475 head.4468
																																																																																																			Let Tu110.4471
																																																																																																				Let Ti1323.4474
																																																																																																					Int:0
																																																																																																					App solve_each_element.2916Ti1323.4474 and_group.4470 dirvec.2923 
																																																																																																				Let Ti1325.4472
																																																																																																					Let Ti1324.4473
																																																																																																						Int:1
																																																																																																						Add ofs.2921 Ti1324.4473
																																																																																																					App solve_one_or_network.2920Ti1325.4472 or_group.2922 dirvec.2923 
																																																																																															LetRec trace_or_matrix.2924 ofs.2925 or_network.2926 dirvec.2927 
																																																																																																Let head.4446
																																																																																																	Get or_network.2926 ofs.2925
																																																																																																	Let range_primitive.4447
																																																																																																		Let Ti1303.4467
																																																																																																			Int:0
																																																																																																			Get head.4446 Ti1303.4467
																																																																																																		Let Ti1305.4448
																																																																																																			Let Ti1304.4466
																																																																																																				Int:1
																																																																																																				Neg Ti1304.4466
																																																																																																			IfEq range_primitive.4447 Ti1305.4448
																																																																																																				Unit
																																																																																																				Let Tu111.4449
																																																																																																					Let Ti1306.4452
																																																																																																						Int:99
																																																																																																						IfEq range_primitive.4447 Ti1306.4452
																																																																																																							Let Ti1307.4465
																																																																																																								Int:1
																																																																																																								App solve_one_or_network.2920Ti1307.4465 head.4446 dirvec.2927 
																																																																																																							Let t.4453
																																																																																																								Let Ta1308.4464
																																																																																																									ExtArray startp
																																																																																																									App solver.2818range_primitive.4447 dirvec.2927 Ta1308.4464 
																																																																																																								Let Ti1309.4454
																																																																																																									Int:0
																																																																																																									IfEq t.4453 Ti1309.4454
																																																																																																										Unit
																																																																																																										Let tp.4455
																																																																																																											Let Ta1310.4462
																																																																																																												ExtArray solver_dist
																																																																																																												Let Ti1311.4463
																																																																																																													Int:0
																																																																																																													Get Ta1310.4462 Ti1311.4463
																																																																																																											Let Tb1315.4456
																																																																																																												Let Td1314.4459
																																																																																																													Let Ta1312.4460
																																																																																																														ExtArray tmin
																																																																																																														Let Ti1313.4461
																																																																																																															Int:0
																																																																																																															Get Ta1312.4460 Ti1313.4461
																																																																																																													ExtFunApp fless tp.4455,Td1314.4459,
																																																																																																												Let Ti1316.4457
																																																																																																													Int:0
																																																																																																													IfEq Tb1315.4456 Ti1316.4457
																																																																																																														Unit
																																																																																																														Let Ti1317.4458
																																																																																																															Int:1
																																																																																																															App solve_one_or_network.2920Ti1317.4458 head.4446 dirvec.2927 
																																																																																																					Let Ti1319.4450
																																																																																																						Let Ti1318.4451
																																																																																																							Int:1
																																																																																																							Add ofs.2925 Ti1318.4451
																																																																																																						App trace_or_matrix.2924Ti1319.4450 or_network.2926 dirvec.2927 
																																																																																																LetRec judge_intersection.2928 dirvec.2929 
																																																																																																	Let Tu113.4430
																																																																																																		Let Ta1290.4443
																																																																																																			ExtArray tmin
																																																																																																			Let Ti1291.4444
																																																																																																				Int:0
																																																																																																				Let Td1292.4445
																																																																																																					Float:1000000000.000000
																																																																																																					Put Ta1290.4443 Ti1291.4444 Td1292.4445
																																																																																																		Let Tu112.4431
																																																																																																			Let Ti1293.4439
																																																																																																				Int:0
																																																																																																				Let Ta1296.4440
																																																																																																					Let Ta1294.4441
																																																																																																						ExtArray or_net
																																																																																																						Let Ti1295.4442
																																																																																																							Int:0
																																																																																																							Get Ta1294.4441 Ti1295.4442
																																																																																																					App trace_or_matrix.2924Ti1293.4439 Ta1296.4440 dirvec.2929 
																																																																																																			Let t.4432
																																																																																																				Let Ta1297.4437
																																																																																																					ExtArray tmin
																																																																																																					Let Ti1298.4438
																																																																																																						Int:0
																																																																																																						Get Ta1297.4437 Ti1298.4438
																																																																																																				Let Tb1300.4433
																																																																																																					Let Td1299.4436
																																																																																																						Float:-0.100000
																																																																																																						ExtFunApp fless Td1299.4436,t.4432,
																																																																																																					Let Ti1301.4434
																																																																																																						Int:0
																																																																																																						IfEq Tb1300.4433 Ti1301.4434
																																																																																																							Int:0
																																																																																																							Let Td1302.4435
																																																																																																								Float:100000000.000000
																																																																																																								ExtFunApp fless t.4432,Td1302.4435,
																																																																																																	LetRec solve_each_element_fast.2930 iand_ofs.2931 and_group.2932 dirvec.2933 
																																																																																																		Let vec.4368
																																																																																																			App d_vec.2745dirvec.2933 
																																																																																																			Let iobj.4369
																																																																																																				Get and_group.2932 iand_ofs.2931
																																																																																																				Let Ti1241.4370
																																																																																																					Let Ti1240.4429
																																																																																																						Int:1
																																																																																																						Neg Ti1240.4429
																																																																																																					IfEq iobj.4369 Ti1241.4370
																																																																																																						Unit
																																																																																																						Let t0.4371
																																																																																																							App solver_fast2.2859iobj.4369 dirvec.2933 
																																																																																																							Let Ti1242.4372
																																																																																																								Int:0
																																																																																																								IfEq t0.4371 Ti1242.4372
																																																																																																									Let Tb1245.4423
																																																																																																										Let Tt1244.4427
																																																																																																											Let Ta1243.4428
																																																																																																												ExtArray objects
																																																																																																												Get Ta1243.4428 iobj.4369
																																																																																																											App o_isinvert.2690Tt1244.4427 
																																																																																																										Let Ti1246.4424
																																																																																																											Int:0
																																																																																																											IfEq Tb1245.4423 Ti1246.4424
																																																																																																												Unit
																																																																																																												Let Ti1248.4425
																																																																																																													Let Ti1247.4426
																																																																																																														Int:1
																																																																																																														Add iand_ofs.2931 Ti1247.4426
																																																																																																													App solve_each_element_fast.2930Ti1248.4425 and_group.2932 dirvec.2933 
																																																																																																									Let t0p.4373
																																																																																																										Let Ta1249.4421
																																																																																																											ExtArray solver_dist
																																																																																																											Let Ti1250.4422
																																																																																																												Int:0
																																																																																																												Get Ta1249.4421 Ti1250.4422
																																																																																																										Let Tu117.4374
																																																																																																											Let Tb1252.4377
																																																																																																												Let Td1251.4420
																																																																																																													Float:0.000000
																																																																																																													ExtFunApp fless Td1251.4420,t0p.4373,
																																																																																																												Let Ti1253.4378
																																																																																																													Int:0
																																																																																																													IfEq Tb1252.4377 Ti1253.4378
																																																																																																														Unit
																																																																																																														Let Tb1257.4379
																																																																																																															Let Td1256.4417
																																																																																																																Let Ta1254.4418
																																																																																																																	ExtArray tmin
																																																																																																																	Let Ti1255.4419
																																																																																																																		Int:0
																																																																																																																		Get Ta1254.4418 Ti1255.4419
																																																																																																																ExtFunApp fless t0p.4373,Td1256.4417,
																																																																																																															Let Ti1258.4380
																																																																																																																Int:0
																																																																																																																IfEq Tb1257.4379 Ti1258.4380
																																																																																																																	Unit
																																																																																																																	Let t.4381
																																																																																																																		Let Td1259.4416
																																																																																																																			Float:0.010000
																																																																																																																			FAdd t0p.4373 Td1259.4416
																																																																																																																		Let q0.4382
																																																																																																																			Let Td1262.4410
																																																																																																																				Let Td1261.4414
																																																																																																																					Let Ti1260.4415
																																																																																																																						Int:0
																																																																																																																						Get vec.4368 Ti1260.4415
																																																																																																																					FMul Td1261.4414 t.4381
																																																																																																																				Let Td1265.4411
																																																																																																																					Let Ta1263.4412
																																																																																																																						ExtArray startp_fast
																																																																																																																						Let Ti1264.4413
																																																																																																																							Int:0
																																																																																																																							Get Ta1263.4412 Ti1264.4413
																																																																																																																					FAdd Td1262.4410 Td1265.4411
																																																																																																																			Let q1.4383
																																																																																																																				Let Td1268.4404
																																																																																																																					Let Td1267.4408
																																																																																																																						Let Ti1266.4409
																																																																																																																							Int:1
																																																																																																																							Get vec.4368 Ti1266.4409
																																																																																																																						FMul Td1267.4408 t.4381
																																																																																																																					Let Td1271.4405
																																																																																																																						Let Ta1269.4406
																																																																																																																							ExtArray startp_fast
																																																																																																																							Let Ti1270.4407
																																																																																																																								Int:1
																																																																																																																								Get Ta1269.4406 Ti1270.4407
																																																																																																																						FAdd Td1268.4404 Td1271.4405
																																																																																																																				Let q2.4384
																																																																																																																					Let Td1274.4398
																																																																																																																						Let Td1273.4402
																																																																																																																							Let Ti1272.4403
																																																																																																																								Int:2
																																																																																																																								Get vec.4368 Ti1272.4403
																																																																																																																							FMul Td1273.4402 t.4381
																																																																																																																						Let Td1277.4399
																																																																																																																							Let Ta1275.4400
																																																																																																																								ExtArray startp_fast
																																																																																																																								Let Ti1276.4401
																																																																																																																									Int:2
																																																																																																																									Get Ta1275.4400 Ti1276.4401
																																																																																																																							FAdd Td1274.4398 Td1277.4399
																																																																																																																					Let Tb1279.4385
																																																																																																																						Let Ti1278.4397
																																																																																																																							Int:0
																																																																																																																							App check_all_inside.2901Ti1278.4397 and_group.2932 q0.4382 q1.4383 q2.4384 
																																																																																																																						Let Ti1280.4386
																																																																																																																							Int:0
																																																																																																																							IfEq Tb1279.4385 Ti1280.4386
																																																																																																																								Unit
																																																																																																																								Let Tu116.4387
																																																																																																																									Let Ta1281.4395
																																																																																																																										ExtArray tmin
																																																																																																																										Let Ti1282.4396
																																																																																																																											Int:0
																																																																																																																											Put Ta1281.4395 Ti1282.4396 t.4381
																																																																																																																									Let Tu115.4388
																																																																																																																										Let Ta1283.4394
																																																																																																																											ExtArray intersection_point
																																																																																																																											App vecset.2638Ta1283.4394 q0.4382 q1.4383 q2.4384 
																																																																																																																										Let Tu114.4389
																																																																																																																											Let Ta1284.4392
																																																																																																																												ExtArray intersected_object_id
																																																																																																																												Let Ti1285.4393
																																																																																																																													Int:0
																																																																																																																													Put Ta1284.4392 Ti1285.4393 iobj.4369
																																																																																																																											Let Ta1286.4390
																																																																																																																												ExtArray intsec_rectside
																																																																																																																												Let Ti1287.4391
																																																																																																																													Int:0
																																																																																																																													Put Ta1286.4390 Ti1287.4391 t0.4371
																																																																																																											Let Ti1289.4375
																																																																																																												Let Ti1288.4376
																																																																																																													Int:1
																																																																																																													Add iand_ofs.2931 Ti1288.4376
																																																																																																												App solve_each_element_fast.2930Ti1289.4375 and_group.2932 dirvec.2933 
																																																																																																		LetRec solve_one_or_network_fast.2934 ofs.2935 or_group.2936 dirvec.2937 
																																																																																																			Let head.4359
																																																																																																				Get or_group.2936 ofs.2935
																																																																																																				Let Ti1235.4360
																																																																																																					Let Ti1234.4367
																																																																																																						Int:1
																																																																																																						Neg Ti1234.4367
																																																																																																					IfEq head.4359 Ti1235.4360
																																																																																																						Unit
																																																																																																						Let and_group.4361
																																																																																																							Let Ta1236.4366
																																																																																																								ExtArray and_net
																																																																																																								Get Ta1236.4366 head.4359
																																																																																																							Let Tu118.4362
																																																																																																								Let Ti1237.4365
																																																																																																									Int:0
																																																																																																									App solve_each_element_fast.2930Ti1237.4365 and_group.4361 dirvec.2937 
																																																																																																								Let Ti1239.4363
																																																																																																									Let Ti1238.4364
																																																																																																										Int:1
																																																																																																										Add ofs.2935 Ti1238.4364
																																																																																																									App solve_one_or_network_fast.2934Ti1239.4363 or_group.2936 dirvec.2937 
																																																																																																			LetRec trace_or_matrix_fast.2938 ofs.2939 or_network.2940 dirvec.2941 
																																																																																																				Let head.4338
																																																																																																					Get or_network.2940 ofs.2939
																																																																																																					Let range_primitive.4339
																																																																																																						Let Ti1218.4358
																																																																																																							Int:0
																																																																																																							Get head.4338 Ti1218.4358
																																																																																																						Let Ti1220.4340
																																																																																																							Let Ti1219.4357
																																																																																																								Int:1
																																																																																																								Neg Ti1219.4357
																																																																																																							IfEq range_primitive.4339 Ti1220.4340
																																																																																																								Unit
																																																																																																								Let Tu119.4341
																																																																																																									Let Ti1221.4344
																																																																																																										Int:99
																																																																																																										IfEq range_primitive.4339 Ti1221.4344
																																																																																																											Let Ti1222.4356
																																																																																																												Int:1
																																																																																																												App solve_one_or_network_fast.2934Ti1222.4356 head.4338 dirvec.2941 
																																																																																																											Let t.4345
																																																																																																												App solver_fast2.2859range_primitive.4339 dirvec.2941 
																																																																																																												Let Ti1223.4346
																																																																																																													Int:0
																																																																																																													IfEq t.4345 Ti1223.4346
																																																																																																														Unit
																																																																																																														Let tp.4347
																																																																																																															Let Ta1224.4354
																																																																																																																ExtArray solver_dist
																																																																																																																Let Ti1225.4355
																																																																																																																	Int:0
																																																																																																																	Get Ta1224.4354 Ti1225.4355
																																																																																																															Let Tb1229.4348
																																																																																																																Let Td1228.4351
																																																																																																																	Let Ta1226.4352
																																																																																																																		ExtArray tmin
																																																																																																																		Let Ti1227.4353
																																																																																																																			Int:0
																																																																																																																			Get Ta1226.4352 Ti1227.4353
																																																																																																																	ExtFunApp fless tp.4347,Td1228.4351,
																																																																																																																Let Ti1230.4349
																																																																																																																	Int:0
																																																																																																																	IfEq Tb1229.4348 Ti1230.4349
																																																																																																																		Unit
																																																																																																																		Let Ti1231.4350
																																																																																																																			Int:1
																																																																																																																			App solve_one_or_network_fast.2934Ti1231.4350 head.4338 dirvec.2941 
																																																																																																									Let Ti1233.4342
																																																																																																										Let Ti1232.4343
																																																																																																											Int:1
																																																																																																											Add ofs.2939 Ti1232.4343
																																																																																																										App trace_or_matrix_fast.2938Ti1233.4342 or_network.2940 dirvec.2941 
																																																																																																				LetRec judge_intersection_fast.2942 dirvec.2943 
																																																																																																					Let Tu121.4322
																																																																																																						Let Ta1205.4335
																																																																																																							ExtArray tmin
																																																																																																							Let Ti1206.4336
																																																																																																								Int:0
																																																																																																								Let Td1207.4337
																																																																																																									Float:1000000000.000000
																																																																																																									Put Ta1205.4335 Ti1206.4336 Td1207.4337
																																																																																																						Let Tu120.4323
																																																																																																							Let Ti1208.4331
																																																																																																								Int:0
																																																																																																								Let Ta1211.4332
																																																																																																									Let Ta1209.4333
																																																																																																										ExtArray or_net
																																																																																																										Let Ti1210.4334
																																																																																																											Int:0
																																																																																																											Get Ta1209.4333 Ti1210.4334
																																																																																																									App trace_or_matrix_fast.2938Ti1208.4331 Ta1211.4332 dirvec.2943 
																																																																																																							Let t.4324
																																																																																																								Let Ta1212.4329
																																																																																																									ExtArray tmin
																																																																																																									Let Ti1213.4330
																																																																																																										Int:0
																																																																																																										Get Ta1212.4329 Ti1213.4330
																																																																																																								Let Tb1215.4325
																																																																																																									Let Td1214.4328
																																																																																																										Float:-0.100000
																																																																																																										ExtFunApp fless Td1214.4328,t.4324,
																																																																																																									Let Ti1216.4326
																																																																																																										Int:0
																																																																																																										IfEq Tb1215.4325 Ti1216.4326
																																																																																																											Int:0
																																																																																																											Let Td1217.4327
																																																																																																												Float:100000000.000000
																																																																																																												ExtFunApp fless t.4324,Td1217.4327,
																																																																																																					LetRec get_nvector_rect.2944 dirvec.2945 
																																																																																																						Let rectside.4309
																																																																																																							Let Ta1194.4320
																																																																																																								ExtArray intsec_rectside
																																																																																																								Let Ti1195.4321
																																																																																																									Int:0
																																																																																																									Get Ta1194.4320 Ti1195.4321
																																																																																																							Let Tu122.4310
																																																																																																								Let Ta1196.4319
																																																																																																									ExtArray nvector
																																																																																																									App vecbzero.2646Ta1196.4319 
																																																																																																								Let Ta1197.4311
																																																																																																									ExtArray nvector
																																																																																																									Let Ti1199.4312
																																																																																																										Let Ti1198.4318
																																																																																																											Int:1
																																																																																																											Sub rectside.4309 Ti1198.4318
																																																																																																										Let Td1204.4313
																																																																																																											Let Td1203.4314
																																																																																																												Let Td1202.4315
																																																																																																													Let Ti1201.4316
																																																																																																														Let Ti1200.4317
																																																																																																															Int:1
																																																																																																															Sub rectside.4309 Ti1200.4317
																																																																																																														Get dirvec.2945 Ti1201.4316
																																																																																																													App sgn.2630Td1202.4315 
																																																																																																												ExtFunApp fneg Td1203.4314,
																																																																																																											Put Ta1197.4311 Ti1199.4312 Td1204.4313
																																																																																																						LetRec get_nvector_plane.2946 m.2947 
																																																																																																							Let Tu124.4295
																																																																																																								Let Ta1182.4305
																																																																																																									ExtArray nvector
																																																																																																									Let Ti1183.4306
																																																																																																										Int:0
																																																																																																										Let Td1185.4307
																																																																																																											Let Td1184.4308
																																																																																																												App o_param_a.2694m.2947 
																																																																																																												ExtFunApp fneg Td1184.4308,
																																																																																																											Put Ta1182.4305 Ti1183.4306 Td1185.4307
																																																																																																								Let Tu123.4296
																																																																																																									Let Ta1186.4301
																																																																																																										ExtArray nvector
																																																																																																										Let Ti1187.4302
																																																																																																											Int:1
																																																																																																											Let Td1189.4303
																																																																																																												Let Td1188.4304
																																																																																																													App o_param_b.2696m.2947 
																																																																																																													ExtFunApp fneg Td1188.4304,
																																																																																																												Put Ta1186.4301 Ti1187.4302 Td1189.4303
																																																																																																									Let Ta1190.4297
																																																																																																										ExtArray nvector
																																																																																																										Let Ti1191.4298
																																																																																																											Int:2
																																																																																																											Let Td1193.4299
																																																																																																												Let Td1192.4300
																																																																																																													App o_param_c.2698m.2947 
																																																																																																													ExtFunApp fneg Td1192.4300,
																																																																																																												Put Ta1190.4297 Ti1191.4298 Td1193.4299
																																																																																																							LetRec get_nvector_second.2948 m.2949 
																																																																																																								Let p0.4232
																																																																																																									Let Td1132.4291
																																																																																																										Let Ta1130.4293
																																																																																																											ExtArray intersection_point
																																																																																																											Let Ti1131.4294
																																																																																																												Int:0
																																																																																																												Get Ta1130.4293 Ti1131.4294
																																																																																																										Let Td1133.4292
																																																																																																											App o_param_x.2702m.2949 
																																																																																																											FSub Td1132.4291 Td1133.4292
																																																																																																									Let p1.4233
																																																																																																										Let Td1136.4287
																																																																																																											Let Ta1134.4289
																																																																																																												ExtArray intersection_point
																																																																																																												Let Ti1135.4290
																																																																																																													Int:1
																																																																																																													Get Ta1134.4289 Ti1135.4290
																																																																																																											Let Td1137.4288
																																																																																																												App o_param_y.2704m.2949 
																																																																																																												FSub Td1136.4287 Td1137.4288
																																																																																																										Let p2.4234
																																																																																																											Let Td1140.4283
																																																																																																												Let Ta1138.4285
																																																																																																													ExtArray intersection_point
																																																																																																													Let Ti1139.4286
																																																																																																														Int:2
																																																																																																														Get Ta1138.4285 Ti1139.4286
																																																																																																												Let Td1141.4284
																																																																																																													App o_param_z.2706m.2949 
																																																																																																													FSub Td1140.4283 Td1141.4284
																																																																																																											Let d0.4235
																																																																																																												Let Td1142.4282
																																																																																																													App o_param_a.2694m.2949 
																																																																																																													FMul p0.4232 Td1142.4282
																																																																																																												Let d1.4236
																																																																																																													Let Td1143.4281
																																																																																																														App o_param_b.2696m.2949 
																																																																																																														FMul p1.4233 Td1143.4281
																																																																																																													Let d2.4237
																																																																																																														Let Td1144.4280
																																																																																																															App o_param_c.2698m.2949 
																																																																																																															FMul p2.4234 Td1144.4280
																																																																																																														Let Tu129.4238
																																																																																																															Let Ti1145.4241
																																																																																																																App o_isrot.2692m.2949 
																																																																																																																Let Ti1146.4242
																																																																																																																	Int:0
																																																																																																																	IfEq Ti1145.4241 Ti1146.4242
																																																																																																																		Let Tu126.4272
																																																																																																																			Let Ta1147.4278
																																																																																																																				ExtArray nvector
																																																																																																																				Let Ti1148.4279
																																																																																																																					Int:0
																																																																																																																					Put Ta1147.4278 Ti1148.4279 d0.4235
																																																																																																																			Let Tu125.4273
																																																																																																																				Let Ta1149.4276
																																																																																																																					ExtArray nvector
																																																																																																																					Let Ti1150.4277
																																																																																																																						Int:1
																																																																																																																						Put Ta1149.4276 Ti1150.4277 d1.4236
																																																																																																																				Let Ta1151.4274
																																																																																																																					ExtArray nvector
																																																																																																																					Let Ti1152.4275
																																																																																																																						Int:2
																																																																																																																						Put Ta1151.4274 Ti1152.4275 d2.4237
																																																																																																																		Let Tu128.4243
																																																																																																																			Let Ta1153.4263
																																																																																																																				ExtArray nvector
																																																																																																																				Let Ti1154.4264
																																																																																																																					Int:0
																																																																																																																					Let Td1161.4265
																																																																																																																						Let Td1160.4266
																																																																																																																							Let Td1159.4267
																																																																																																																								Let Td1156.4268
																																																																																																																									Let Td1155.4271
																																																																																																																										App o_param_r3.2722m.2949 
																																																																																																																										FMul p1.4233 Td1155.4271
																																																																																																																									Let Td1158.4269
																																																																																																																										Let Td1157.4270
																																																																																																																											App o_param_r2.2720m.2949 
																																																																																																																											FMul p2.4234 Td1157.4270
																																																																																																																										FAdd Td1156.4268 Td1158.4269
																																																																																																																								ExtFunApp fhalf Td1159.4267,
																																																																																																																							FAdd d0.4235 Td1160.4266
																																																																																																																						Put Ta1153.4263 Ti1154.4264 Td1161.4265
																																																																																																																			Let Tu127.4244
																																																																																																																				Let Ta1162.4254
																																																																																																																					ExtArray nvector
																																																																																																																					Let Ti1163.4255
																																																																																																																						Int:1
																																																																																																																						Let Td1170.4256
																																																																																																																							Let Td1169.4257
																																																																																																																								Let Td1168.4258
																																																																																																																									Let Td1165.4259
																																																																																																																										Let Td1164.4262
																																																																																																																											App o_param_r3.2722m.2949 
																																																																																																																											FMul p0.4232 Td1164.4262
																																																																																																																										Let Td1167.4260
																																																																																																																											Let Td1166.4261
																																																																																																																												App o_param_r1.2718m.2949 
																																																																																																																												FMul p2.4234 Td1166.4261
																																																																																																																											FAdd Td1165.4259 Td1167.4260
																																																																																																																									ExtFunApp fhalf Td1168.4258,
																																																																																																																								FAdd d1.4236 Td1169.4257
																																																																																																																							Put Ta1162.4254 Ti1163.4255 Td1170.4256
																																																																																																																				Let Ta1171.4245
																																																																																																																					ExtArray nvector
																																																																																																																					Let Ti1172.4246
																																																																																																																						Int:2
																																																																																																																						Let Td1179.4247
																																																																																																																							Let Td1178.4248
																																																																																																																								Let Td1177.4249
																																																																																																																									Let Td1174.4250
																																																																																																																										Let Td1173.4253
																																																																																																																											App o_param_r2.2720m.2949 
																																																																																																																											FMul p0.4232 Td1173.4253
																																																																																																																										Let Td1176.4251
																																																																																																																											Let Td1175.4252
																																																																																																																												App o_param_r1.2718m.2949 
																																																																																																																												FMul p1.4233 Td1175.4252
																																																																																																																											FAdd Td1174.4250 Td1176.4251
																																																																																																																									ExtFunApp fhalf Td1177.4249,
																																																																																																																								FAdd d2.4237 Td1178.4248
																																																																																																																							Put Ta1171.4245 Ti1172.4246 Td1179.4247
																																																																																																															Let Ta1180.4239
																																																																																																																ExtArray nvector
																																																																																																																Let Tb1181.4240
																																																																																																																	App o_isinvert.2690m.2949 
																																																																																																																	App vecunit_sgn.2656Ta1180.4239 Tb1181.4240 
																																																																																																								LetRec get_nvector.2950 m.2951 dirvec.2952 
																																																																																																									Let m_shape.4229
																																																																																																										App o_form.2686m.2951 
																																																																																																										Let Ti1128.4230
																																																																																																											Int:1
																																																																																																											IfEq m_shape.4229 Ti1128.4230
																																																																																																												App get_nvector_rect.2944dirvec.2952 
																																																																																																												Let Ti1129.4231
																																																																																																													Int:2
																																																																																																													IfEq m_shape.4229 Ti1129.4231
																																																																																																														App get_nvector_plane.2946m.2951 
																																																																																																														App get_nvector_second.2948m.2951 
																																																																																																									LetRec utexture.2953 m.2954 p.2955 
																																																																																																										Let m_tex.4060
																																																																																																											App o_texturetype.2684m.2954 
																																																																																																											Let Tu134.4061
																																																																																																												Let Ta989.4226
																																																																																																													ExtArray texture_color
																																																																																																													Let Ti990.4227
																																																																																																														Int:0
																																																																																																														Let Td991.4228
																																																																																																															App o_color_red.2712m.2954 
																																																																																																															Put Ta989.4226 Ti990.4227 Td991.4228
																																																																																																												Let Tu133.4062
																																																																																																													Let Ta992.4223
																																																																																																														ExtArray texture_color
																																																																																																														Let Ti993.4224
																																																																																																															Int:1
																																																																																																															Let Td994.4225
																																																																																																																App o_color_green.2714m.2954 
																																																																																																																Put Ta992.4223 Ti993.4224 Td994.4225
																																																																																																													Let Tu132.4063
																																																																																																														Let Ta995.4220
																																																																																																															ExtArray texture_color
																																																																																																															Let Ti996.4221
																																																																																																																Int:2
																																																																																																																Let Td997.4222
																																																																																																																	App o_color_blue.2716m.2954 
																																																																																																																	Put Ta995.4220 Ti996.4221 Td997.4222
																																																																																																														Let Ti998.4064
																																																																																																															Int:1
																																																																																																															IfEq m_tex.4060 Ti998.4064
																																																																																																																Let w1.4190
																																																																																																																	Let Td1000.4217
																																																																																																																		Let Ti999.4219
																																																																																																																			Int:0
																																																																																																																			Get p.2955 Ti999.4219
																																																																																																																		Let Td1001.4218
																																																																																																																			App o_param_x.2702m.2954 
																																																																																																																			FSub Td1000.4217 Td1001.4218
																																																																																																																	Let flag1.4191
																																																																																																																		Let d1.4210
																																																																																																																			Let Td1004.4213
																																																																																																																				Let Td1003.4215
																																																																																																																					Let Td1002.4216
																																																																																																																						Float:0.050000
																																																																																																																						FMul w1.4190 Td1002.4216
																																																																																																																					ExtFunApp floor Td1003.4215,
																																																																																																																				Let Td1005.4214
																																																																																																																					Float:20.000000
																																																																																																																					FMul Td1004.4213 Td1005.4214
																																																																																																																			Let Td1006.4211
																																																																																																																				FSub w1.4190 d1.4210
																																																																																																																				Let Td1007.4212
																																																																																																																					Float:10.000000
																																																																																																																					ExtFunApp fless Td1006.4211,Td1007.4212,
																																																																																																																		Let w3.4192
																																																																																																																			Let Td1009.4207
																																																																																																																				Let Ti1008.4209
																																																																																																																					Int:2
																																																																																																																					Get p.2955 Ti1008.4209
																																																																																																																				Let Td1010.4208
																																																																																																																					App o_param_z.2706m.2954 
																																																																																																																					FSub Td1009.4207 Td1010.4208
																																																																																																																			Let flag2.4193
																																																																																																																				Let d2.4200
																																																																																																																					Let Td1013.4203
																																																																																																																						Let Td1012.4205
																																																																																																																							Let Td1011.4206
																																																																																																																								Float:0.050000
																																																																																																																								FMul w3.4192 Td1011.4206
																																																																																																																							ExtFunApp floor Td1012.4205,
																																																																																																																						Let Td1014.4204
																																																																																																																							Float:20.000000
																																																																																																																							FMul Td1013.4203 Td1014.4204
																																																																																																																					Let Td1015.4201
																																																																																																																						FSub w3.4192 d2.4200
																																																																																																																						Let Td1016.4202
																																																																																																																							Float:10.000000
																																																																																																																							ExtFunApp fless Td1015.4201,Td1016.4202,
																																																																																																																				Let Ta1017.4194
																																																																																																																					ExtArray texture_color
																																																																																																																					Let Ti1018.4195
																																																																																																																						Int:1
																																																																																																																						Let Td1022.4196
																																																																																																																							Let Ti1019.4197
																																																																																																																								Int:0
																																																																																																																								IfEq flag1.4191 Ti1019.4197
																																																																																																																									Let Ti1020.4199
																																																																																																																										Int:0
																																																																																																																										IfEq flag2.4193 Ti1020.4199
																																																																																																																											Float:255.000000
																																																																																																																											Float:0.000000
																																																																																																																									Let Ti1021.4198
																																																																																																																										Int:0
																																																																																																																										IfEq flag2.4193 Ti1021.4198
																																																																																																																											Float:0.000000
																																																																																																																											Float:255.000000
																																																																																																																							Put Ta1017.4194 Ti1018.4195 Td1022.4196
																																																																																																																Let Ti1023.4065
																																																																																																																	Int:2
																																																																																																																	IfEq m_tex.4060 Ti1023.4065
																																																																																																																		Let w2.4173
																																																																																																																			Let Td1028.4185
																																																																																																																				Let Td1027.4186
																																																																																																																					Let Td1025.4187
																																																																																																																						Let Ti1024.4189
																																																																																																																							Int:1
																																																																																																																							Get p.2955 Ti1024.4189
																																																																																																																						Let Td1026.4188
																																																																																																																							Float:0.250000
																																																																																																																							FMul Td1025.4187 Td1026.4188
																																																																																																																					ExtFunApp sin Td1027.4186,
																																																																																																																				ExtFunApp fsqr Td1028.4185,
																																																																																																																			Let Tu130.4174
																																																																																																																				Let Ta1029.4181
																																																																																																																					ExtArray texture_color
																																																																																																																					Let Ti1030.4182
																																																																																																																						Int:0
																																																																																																																						Let Td1032.4183
																																																																																																																							Let Td1031.4184
																																																																																																																								Float:255.000000
																																																																																																																								FMul Td1031.4184 w2.4173
																																																																																																																							Put Ta1029.4181 Ti1030.4182 Td1032.4183
																																																																																																																				Let Ta1033.4175
																																																																																																																					ExtArray texture_color
																																																																																																																					Let Ti1034.4176
																																																																																																																						Int:1
																																																																																																																						Let Td1038.4177
																																																																																																																							Let Td1035.4178
																																																																																																																								Float:255.000000
																																																																																																																								Let Td1037.4179
																																																																																																																									Let Td1036.4180
																																																																																																																										Float:1.000000
																																																																																																																										FSub Td1036.4180 w2.4173
																																																																																																																									FMul Td1035.4178 Td1037.4179
																																																																																																																							Put Ta1033.4175 Ti1034.4176 Td1038.4177
																																																																																																																		Let Ti1039.4066
																																																																																																																			Int:3
																																																																																																																			IfEq m_tex.4060 Ti1039.4066
																																																																																																																				Let w1.4141
																																																																																																																					Let Td1041.4170
																																																																																																																						Let Ti1040.4172
																																																																																																																							Int:0
																																																																																																																							Get p.2955 Ti1040.4172
																																																																																																																						Let Td1042.4171
																																																																																																																							App o_param_x.2702m.2954 
																																																																																																																							FSub Td1041.4170 Td1042.4171
																																																																																																																					Let w3.4142
																																																																																																																						Let Td1044.4167
																																																																																																																							Let Ti1043.4169
																																																																																																																								Int:2
																																																																																																																								Get p.2955 Ti1043.4169
																																																																																																																							Let Td1045.4168
																																																																																																																								App o_param_z.2706m.2954 
																																																																																																																								FSub Td1044.4167 Td1045.4168
																																																																																																																						Let w2.4143
																																																																																																																							Let Td1049.4161
																																																																																																																								Let Td1048.4164
																																																																																																																									Let Td1046.4165
																																																																																																																										ExtFunApp fsqr w1.4141,
																																																																																																																										Let Td1047.4166
																																																																																																																											ExtFunApp fsqr w3.4142,
																																																																																																																											FAdd Td1046.4165 Td1047.4166
																																																																																																																									ExtFunApp sqrt Td1048.4164,
																																																																																																																								Let Td1050.4162
																																																																																																																									Float:10.000000
																																																																																																																									Let Td1051.4163
																																																																																																																										FReciprocal Td1050.4162
																																																																																																																										FMul Td1049.4161 Td1051.4163
																																																																																																																							Let w4.4144
																																																																																																																								Let Td1053.4158
																																																																																																																									Let Td1052.4160
																																																																																																																										ExtFunApp floor w2.4143,
																																																																																																																										FSub w2.4143 Td1052.4160
																																																																																																																									Let Td1054.4159
																																																																																																																										Float:3.141593
																																																																																																																										FMul Td1053.4158 Td1054.4159
																																																																																																																								Let cws.4145
																																																																																																																									Let Td1055.4157
																																																																																																																										ExtFunApp cos w4.4144,
																																																																																																																										ExtFunApp fsqr Td1055.4157,
																																																																																																																									Let Tu131.4146
																																																																																																																										Let Ta1056.4153
																																																																																																																											ExtArray texture_color
																																																																																																																											Let Ti1057.4154
																																																																																																																												Int:1
																																																																																																																												Let Td1059.4155
																																																																																																																													Let Td1058.4156
																																																																																																																														Float:255.000000
																																																																																																																														FMul cws.4145 Td1058.4156
																																																																																																																													Put Ta1056.4153 Ti1057.4154 Td1059.4155
																																																																																																																										Let Ta1060.4147
																																																																																																																											ExtArray texture_color
																																																																																																																											Let Ti1061.4148
																																																																																																																												Int:2
																																																																																																																												Let Td1065.4149
																																																																																																																													Let Td1063.4150
																																																																																																																														Let Td1062.4152
																																																																																																																															Float:1.000000
																																																																																																																															FSub Td1062.4152 cws.4145
																																																																																																																														Let Td1064.4151
																																																																																																																															Float:255.000000
																																																																																																																															FMul Td1063.4150 Td1064.4151
																																																																																																																													Put Ta1060.4147 Ti1061.4148 Td1065.4149
																																																																																																																				Let Ti1066.4067
																																																																																																																					Int:4
																																																																																																																					IfEq m_tex.4060 Ti1066.4067
																																																																																																																						Let w1.4068
																																																																																																																							Let Td1070.4135
																																																																																																																								Let Td1068.4138
																																																																																																																									Let Ti1067.4140
																																																																																																																										Int:0
																																																																																																																										Get p.2955 Ti1067.4140
																																																																																																																									Let Td1069.4139
																																																																																																																										App o_param_x.2702m.2954 
																																																																																																																										FSub Td1068.4138 Td1069.4139
																																																																																																																								Let Td1072.4136
																																																																																																																									Let Td1071.4137
																																																																																																																										App o_param_a.2694m.2954 
																																																																																																																										ExtFunApp sqrt Td1071.4137,
																																																																																																																									FMul Td1070.4135 Td1072.4136
																																																																																																																							Let w3.4069
																																																																																																																								Let Td1076.4129
																																																																																																																									Let Td1074.4132
																																																																																																																										Let Ti1073.4134
																																																																																																																											Int:2
																																																																																																																											Get p.2955 Ti1073.4134
																																																																																																																										Let Td1075.4133
																																																																																																																											App o_param_z.2706m.2954 
																																																																																																																											FSub Td1074.4132 Td1075.4133
																																																																																																																									Let Td1078.4130
																																																																																																																										Let Td1077.4131
																																																																																																																											App o_param_c.2698m.2954 
																																																																																																																											ExtFunApp sqrt Td1077.4131,
																																																																																																																										FMul Td1076.4129 Td1078.4130
																																																																																																																								Let w4.4070
																																																																																																																									Let Td1079.4127
																																																																																																																										ExtFunApp fsqr w1.4068,
																																																																																																																										Let Td1080.4128
																																																																																																																											ExtFunApp fsqr w3.4069,
																																																																																																																											FAdd Td1079.4127 Td1080.4128
																																																																																																																									Let w7.4071
																																																																																																																										Let Tb1083.4115
																																																																																																																											Let Td1081.4125
																																																																																																																												ExtFunApp fabs w1.4068,
																																																																																																																												Let Td1082.4126
																																																																																																																													Float:0.000100
																																																																																																																													ExtFunApp fless Td1081.4125,Td1082.4126,
																																																																																																																											Let Ti1084.4116
																																																																																																																												Int:0
																																																																																																																												IfEq Tb1083.4115 Ti1084.4116
																																																																																																																													Let w5.4117
																																																																																																																														Let Td1086.4123
																																																																																																																															Let Td1085.4124
																																																																																																																																FReciprocal w1.4068
																																																																																																																																FMul w3.4069 Td1085.4124
																																																																																																																															ExtFunApp fabs Td1086.4123,
																																																																																																																														Let Td1089.4118
																																																																																																																															Let Td1087.4121
																																																																																																																																ExtFunApp atan w5.4117,
																																																																																																																																Let Td1088.4122
																																																																																																																																	Float:30.000000
																																																																																																																																	FMul Td1087.4121 Td1088.4122
																																																																																																																															Let Td1090.4119
																																																																																																																																Float:3.141593
																																																																																																																																Let Td1091.4120
																																																																																																																																	FReciprocal Td1090.4119
																																																																																																																																	FMul Td1089.4118 Td1091.4120
																																																																																																																													Float:15.000000
																																																																																																																										Let w9.4072
																																																																																																																											Let Td1092.4114
																																																																																																																												ExtFunApp floor w7.4071,
																																																																																																																												FSub w7.4071 Td1092.4114
																																																																																																																											Let w2.4073
																																																																																																																												Let Td1096.4108
																																																																																																																													Let Td1094.4111
																																																																																																																														Let Ti1093.4113
																																																																																																																															Int:1
																																																																																																																															Get p.2955 Ti1093.4113
																																																																																																																														Let Td1095.4112
																																																																																																																															App o_param_y.2704m.2954 
																																																																																																																															FSub Td1094.4111 Td1095.4112
																																																																																																																													Let Td1098.4109
																																																																																																																														Let Td1097.4110
																																																																																																																															App o_param_b.2696m.2954 
																																																																																																																															ExtFunApp sqrt Td1097.4110,
																																																																																																																														FMul Td1096.4108 Td1098.4109
																																																																																																																												Let w8.4074
																																																																																																																													Let Tb1101.4096
																																																																																																																														Let Td1099.4106
																																																																																																																															ExtFunApp fabs w4.4070,
																																																																																																																															Let Td1100.4107
																																																																																																																																Float:0.000100
																																																																																																																																ExtFunApp fless Td1099.4106,Td1100.4107,
																																																																																																																														Let Ti1102.4097
																																																																																																																															Int:0
																																																																																																																															IfEq Tb1101.4096 Ti1102.4097
																																																																																																																																Let w6.4098
																																																																																																																																	Let Td1104.4104
																																																																																																																																		Let Td1103.4105
																																																																																																																																			FReciprocal w4.4070
																																																																																																																																			FMul w2.4073 Td1103.4105
																																																																																																																																		ExtFunApp fabs Td1104.4104,
																																																																																																																																	Let Td1107.4099
																																																																																																																																		Let Td1105.4102
																																																																																																																																			ExtFunApp atan w6.4098,
																																																																																																																																			Let Td1106.4103
																																																																																																																																				Float:30.000000
																																																																																																																																				FMul Td1105.4102 Td1106.4103
																																																																																																																																		Let Td1108.4100
																																																																																																																																			Float:3.141593
																																																																																																																																			Let Td1109.4101
																																																																																																																																				FReciprocal Td1108.4100
																																																																																																																																				FMul Td1107.4099 Td1109.4101
																																																																																																																																Float:15.000000
																																																																																																																													Let w10.4075
																																																																																																																														Let Td1110.4095
																																																																																																																															ExtFunApp floor w8.4074,
																																																																																																																															FSub w8.4074 Td1110.4095
																																																																																																																														Let w11.4076
																																																																																																																															Let Td1115.4087
																																																																																																																																Let Td1111.4091
																																																																																																																																	Float:0.150000
																																																																																																																																	Let Td1114.4092
																																																																																																																																		Let Td1113.4093
																																																																																																																																			Let Td1112.4094
																																																																																																																																				Float:0.500000
																																																																																																																																				FSub Td1112.4094 w9.4072
																																																																																																																																			ExtFunApp fsqr Td1113.4093,
																																																																																																																																		FSub Td1111.4091 Td1114.4092
																																																																																																																																Let Td1118.4088
																																																																																																																																	Let Td1117.4089
																																																																																																																																		Let Td1116.4090
																																																																																																																																			Float:0.500000
																																																																																																																																			FSub Td1116.4090 w10.4075
																																																																																																																																		ExtFunApp fsqr Td1117.4089,
																																																																																																																																	FSub Td1115.4087 Td1118.4088
																																																																																																																															Let w12.4077
																																																																																																																																Let Tb1119.4085
																																																																																																																																	ExtFunApp fisneg w11.4076,
																																																																																																																																	Let Ti1120.4086
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb1119.4085 Ti1120.4086
																																																																																																																																			Var w11.4076
																																																																																																																																			Float:0.000000
																																																																																																																																Let Ta1121.4078
																																																																																																																																	ExtArray texture_color
																																																																																																																																	Let Ti1122.4079
																																																																																																																																		Int:2
																																																																																																																																		Let Td1127.4080
																																																																																																																																			Let Td1124.4081
																																																																																																																																				Let Td1123.4084
																																																																																																																																					Float:255.000000
																																																																																																																																					FMul Td1123.4084 w12.4077
																																																																																																																																				Let Td1125.4082
																																																																																																																																					Float:0.300000
																																																																																																																																					Let Td1126.4083
																																																																																																																																						FReciprocal Td1125.4082
																																																																																																																																						FMul Td1124.4081 Td1126.4083
																																																																																																																																			Put Ta1121.4078 Ti1122.4079 Td1127.4080
																																																																																																																						Unit
																																																																																																										LetRec add_light.2956 bright.2957 hilight.2958 hilight_scale.2959 
																																																																																																											Let Tu137.4030
																																																																																																												Let Tb963.4056
																																																																																																													ExtFunApp fispos bright.2957,
																																																																																																													Let Ti964.4057
																																																																																																														Int:0
																																																																																																														IfEq Tb963.4056 Ti964.4057
																																																																																																															Unit
																																																																																																															Let Ta965.4058
																																																																																																																ExtArray rgb
																																																																																																																Let Ta966.4059
																																																																																																																	ExtArray texture_color
																																																																																																																	App vecaccum.2667Ta965.4058 bright.2957 Ta966.4059 
																																																																																																												Let Tb967.4031
																																																																																																													ExtFunApp fispos hilight.2958,
																																																																																																													Let Ti968.4032
																																																																																																														Int:0
																																																																																																														IfEq Tb967.4031 Ti968.4032
																																																																																																															Unit
																																																																																																															Let ihl.4033
																																																																																																																Let Td970.4054
																																																																																																																	Let Td969.4055
																																																																																																																		ExtFunApp fsqr hilight.2958,
																																																																																																																		ExtFunApp fsqr Td969.4055,
																																																																																																																	FMul Td970.4054 hilight_scale.2959
																																																																																																																Let Tu136.4034
																																																																																																																	Let Ta971.4048
																																																																																																																		ExtArray rgb
																																																																																																																		Let Ti972.4049
																																																																																																																			Int:0
																																																																																																																			Let Td976.4050
																																																																																																																				Let Td975.4051
																																																																																																																					Let Ta973.4052
																																																																																																																						ExtArray rgb
																																																																																																																						Let Ti974.4053
																																																																																																																							Int:0
																																																																																																																							Get Ta973.4052 Ti974.4053
																																																																																																																					FAdd Td975.4051 ihl.4033
																																																																																																																				Put Ta971.4048 Ti972.4049 Td976.4050
																																																																																																																	Let Tu135.4035
																																																																																																																		Let Ta977.4042
																																																																																																																			ExtArray rgb
																																																																																																																			Let Ti978.4043
																																																																																																																				Int:1
																																																																																																																				Let Td982.4044
																																																																																																																					Let Td981.4045
																																																																																																																						Let Ta979.4046
																																																																																																																							ExtArray rgb
																																																																																																																							Let Ti980.4047
																																																																																																																								Int:1
																																																																																																																								Get Ta979.4046 Ti980.4047
																																																																																																																						FAdd Td981.4045 ihl.4033
																																																																																																																					Put Ta977.4042 Ti978.4043 Td982.4044
																																																																																																																		Let Ta983.4036
																																																																																																																			ExtArray rgb
																																																																																																																			Let Ti984.4037
																																																																																																																				Int:2
																																																																																																																				Let Td988.4038
																																																																																																																					Let Td987.4039
																																																																																																																						Let Ta985.4040
																																																																																																																							ExtArray rgb
																																																																																																																							Let Ti986.4041
																																																																																																																								Int:2
																																																																																																																								Get Ta985.4040 Ti986.4041
																																																																																																																						FAdd Td987.4039 ihl.4033
																																																																																																																					Put Ta983.4036 Ti984.4037 Td988.4038
																																																																																																											LetRec trace_reflections.2960 index.2961 diffuse.2962 hilight_scale.2963 dirvec.2964 
																																																																																																												Let Ti938.3997
																																																																																																													Int:0
																																																																																																													IfLE Ti938.3997 index.2961
																																																																																																														Let rinfo.3998
																																																																																																															Let Ta939.4029
																																																																																																																ExtArray reflections
																																																																																																																Get Ta939.4029 index.2961
																																																																																																															Let dvec.3999
																																																																																																																App r_dvec.2751rinfo.3998 
																																																																																																																Let Tu138.4000
																																																																																																																	Let Tb940.4003
																																																																																																																		App judge_intersection_fast.2942dvec.3999 
																																																																																																																		Let Ti941.4004
																																																																																																																			Int:0
																																																																																																																			IfEq Tb940.4003 Ti941.4004
																																																																																																																				Unit
																																																																																																																				Let surface_id.4005
																																																																																																																					Let Ti945.4022
																																																																																																																						Let Ti944.4026
																																																																																																																							Let Ta942.4027
																																																																																																																								ExtArray intersected_object_id
																																																																																																																								Let Ti943.4028
																																																																																																																									Int:0
																																																																																																																									Get Ta942.4027 Ti943.4028
																																																																																																																							ShiftL2 Ti944.4026
																																																																																																																						Let Ti948.4023
																																																																																																																							Let Ta946.4024
																																																																																																																								ExtArray intsec_rectside
																																																																																																																								Let Ti947.4025
																																																																																																																									Int:0
																																																																																																																									Get Ta946.4024 Ti947.4025
																																																																																																																							Add Ti945.4022 Ti948.4023
																																																																																																																					Let Ti949.4006
																																																																																																																						App r_surface_id.2749rinfo.3998 
																																																																																																																						IfEq surface_id.4005 Ti949.4006
																																																																																																																							Let Tb954.4007
																																																																																																																								Let Ti950.4018
																																																																																																																									Int:0
																																																																																																																									Let Ta953.4019
																																																																																																																										Let Ta951.4020
																																																																																																																											ExtArray or_net
																																																																																																																											Let Ti952.4021
																																																																																																																												Int:0
																																																																																																																												Get Ta951.4020 Ti952.4021
																																																																																																																										App shadow_check_one_or_matrix.2913Ti950.4018 Ta953.4019 
																																																																																																																								Let Ti955.4008
																																																																																																																									Int:0
																																																																																																																									IfEq Tb954.4007 Ti955.4008
																																																																																																																										Let p.4009
																																																																																																																											Let Ta956.4016
																																																																																																																												ExtArray nvector
																																																																																																																												Let Ta957.4017
																																																																																																																													App d_vec.2745dvec.3999 
																																																																																																																													App veciprod.2659Ta956.4016 Ta957.4017 
																																																																																																																											Let scale.4010
																																																																																																																												App r_bright.2753rinfo.3998 
																																																																																																																												Let bright.4011
																																																																																																																													Let Td958.4015
																																																																																																																														FMul scale.4010 diffuse.2962
																																																																																																																														FMul Td958.4015 p.4009
																																																																																																																													Let hilight.4012
																																																																																																																														Let Td960.4013
																																																																																																																															Let Ta959.4014
																																																																																																																																App d_vec.2745dvec.3999 
																																																																																																																																App veciprod.2659dirvec.2964 Ta959.4014 
																																																																																																																															FMul scale.4010 Td960.4013
																																																																																																																														App add_light.2956bright.4011 hilight.4012 hilight_scale.2963 
																																																																																																																										Unit
																																																																																																																							Unit
																																																																																																																	Let Ti962.4001
																																																																																																																		Let Ti961.4002
																																																																																																																			Int:1
																																																																																																																			Sub index.2961 Ti961.4002
																																																																																																																		App trace_reflections.2960Ti962.4001 diffuse.2962 hilight_scale.2963 dirvec.2964 
																																																																																																														Unit
																																																																																																												LetRec trace_ray.2965 nref.2966 energy.2967 dirvec.2968 pixel.2969 dist.2970 
																																																																																																													Let Ti833.3859
																																																																																																														Int:4
																																																																																																														IfLE nref.2966 Ti833.3859
																																																																																																															Let surface_ids.3860
																																																																																																																App p_surface_ids.2730pixel.2969 
																																																																																																																Let Tb834.3861
																																																																																																																	App judge_intersection.2928dirvec.2968 
																																																																																																																	Let Ti835.3862
																																																																																																																		Int:0
																																																																																																																		IfEq Tb834.3861 Ti835.3862
																																																																																																																			Let Tu155.3961
																																																																																																																				Let Ti837.3995
																																																																																																																					Let Ti836.3996
																																																																																																																						Int:1
																																																																																																																						Neg Ti836.3996
																																																																																																																					Put surface_ids.3860 nref.2966 Ti837.3995
																																																																																																																				Let Ti838.3962
																																																																																																																					Int:0
																																																																																																																					IfEq nref.2966 Ti838.3962
																																																																																																																						Unit
																																																																																																																						Let hl.3963
																																																																																																																							Let Td840.3993
																																																																																																																								Let Ta839.3994
																																																																																																																									ExtArray light
																																																																																																																									App veciprod.2659dirvec.2968 Ta839.3994 
																																																																																																																								ExtFunApp fneg Td840.3993,
																																																																																																																							Let Tb841.3964
																																																																																																																								ExtFunApp fispos hl.3963,
																																																																																																																								Let Ti842.3965
																																																																																																																									Int:0
																																																																																																																									IfEq Tb841.3964 Ti842.3965
																																																																																																																										Unit
																																																																																																																										Let ihl.3966
																																																																																																																											Let Td845.3987
																																																																																																																												Let Td844.3991
																																																																																																																													Let Td843.3992
																																																																																																																														ExtFunApp fsqr hl.3963,
																																																																																																																														FMul Td843.3992 hl.3963
																																																																																																																													FMul Td844.3991 energy.2967
																																																																																																																												Let Td848.3988
																																																																																																																													Let Ta846.3989
																																																																																																																														ExtArray beam
																																																																																																																														Let Ti847.3990
																																																																																																																															Int:0
																																																																																																																															Get Ta846.3989 Ti847.3990
																																																																																																																													FMul Td845.3987 Td848.3988
																																																																																																																											Let Tu154.3967
																																																																																																																												Let Ta849.3981
																																																																																																																													ExtArray rgb
																																																																																																																													Let Ti850.3982
																																																																																																																														Int:0
																																																																																																																														Let Td854.3983
																																																																																																																															Let Td853.3984
																																																																																																																																Let Ta851.3985
																																																																																																																																	ExtArray rgb
																																																																																																																																	Let Ti852.3986
																																																																																																																																		Int:0
																																																																																																																																		Get Ta851.3985 Ti852.3986
																																																																																																																																FAdd Td853.3984 ihl.3966
																																																																																																																															Put Ta849.3981 Ti850.3982 Td854.3983
																																																																																																																												Let Tu153.3968
																																																																																																																													Let Ta855.3975
																																																																																																																														ExtArray rgb
																																																																																																																														Let Ti856.3976
																																																																																																																															Int:1
																																																																																																																															Let Td860.3977
																																																																																																																																Let Td859.3978
																																																																																																																																	Let Ta857.3979
																																																																																																																																		ExtArray rgb
																																																																																																																																		Let Ti858.3980
																																																																																																																																			Int:1
																																																																																																																																			Get Ta857.3979 Ti858.3980
																																																																																																																																	FAdd Td859.3978 ihl.3966
																																																																																																																																Put Ta855.3975 Ti856.3976 Td860.3977
																																																																																																																													Let Ta861.3969
																																																																																																																														ExtArray rgb
																																																																																																																														Let Ti862.3970
																																																																																																																															Int:2
																																																																																																																															Let Td866.3971
																																																																																																																																Let Td865.3972
																																																																																																																																	Let Ta863.3973
																																																																																																																																		ExtArray rgb
																																																																																																																																		Let Ti864.3974
																																																																																																																																			Int:2
																																																																																																																																			Get Ta863.3973 Ti864.3974
																																																																																																																																	FAdd Td865.3972 ihl.3966
																																																																																																																																Put Ta861.3969 Ti862.3970 Td866.3971
																																																																																																																			Let obj_id.3863
																																																																																																																				Let Ta867.3959
																																																																																																																					ExtArray intersected_object_id
																																																																																																																					Let Ti868.3960
																																																																																																																						Int:0
																																																																																																																						Get Ta867.3959 Ti868.3960
																																																																																																																				Let obj.3864
																																																																																																																					Let Ta869.3958
																																																																																																																						ExtArray objects
																																																																																																																						Get Ta869.3958 obj_id.3863
																																																																																																																					Let m_surface.3865
																																																																																																																						App o_reflectiontype.2688obj.3864 
																																																																																																																						Let diffuse.3866
																																																																																																																							Let Td870.3957
																																																																																																																								App o_diffuse.2708obj.3864 
																																																																																																																								FMul Td870.3957 energy.2967
																																																																																																																							Let Tu152.3867
																																																																																																																								App get_nvector.2950obj.3864 dirvec.2968 
																																																																																																																								Let Tu151.3868
																																																																																																																									Let Ta871.3955
																																																																																																																										ExtArray startp
																																																																																																																										Let Ta872.3956
																																																																																																																											ExtArray intersection_point
																																																																																																																											App veccpy.2648Ta871.3955 Ta872.3956 
																																																																																																																									Let Tu150.3869
																																																																																																																										Let Ta873.3954
																																																																																																																											ExtArray intersection_point
																																																																																																																											App utexture.2953obj.3864 Ta873.3954 
																																																																																																																										Let Tu149.3870
																																																																																																																											Let Ti878.3949
																																																																																																																												Let Ti874.3950
																																																																																																																													ShiftL2 obj_id.3863
																																																																																																																													Let Ti877.3951
																																																																																																																														Let Ta875.3952
																																																																																																																															ExtArray intsec_rectside
																																																																																																																															Let Ti876.3953
																																																																																																																																Int:0
																																																																																																																																Get Ta875.3952 Ti876.3953
																																																																																																																														Add Ti874.3950 Ti877.3951
																																																																																																																												Put surface_ids.3860 nref.2966 Ti878.3949
																																																																																																																											Let intersection_points.3871
																																																																																																																												App p_intersection_points.2728pixel.2969 
																																																																																																																												Let Tu148.3872
																																																																																																																													Let Ta879.3947
																																																																																																																														Get intersection_points.3871 nref.2966
																																																																																																																														Let Ta880.3948
																																																																																																																															ExtArray intersection_point
																																																																																																																															App veccpy.2648Ta879.3947 Ta880.3948 
																																																																																																																													Let calc_diffuse.3873
																																																																																																																														App p_calc_diffuse.2732pixel.2969 
																																																																																																																														Let Tu147.3874
																																																																																																																															Let Tb883.3926
																																																																																																																																Let Td881.3945
																																																																																																																																	App o_diffuse.2708obj.3864 
																																																																																																																																	Let Td882.3946
																																																																																																																																		Float:0.500000
																																																																																																																																		ExtFunApp fless Td881.3945,Td882.3946,
																																																																																																																																Let Ti884.3927
																																																																																																																																	Int:0
																																																																																																																																	IfEq Tb883.3926 Ti884.3927
																																																																																																																																		Let Tu141.3929
																																																																																																																																			Let Ti885.3944
																																																																																																																																				Int:1
																																																																																																																																				Put calc_diffuse.3873 nref.2966 Ti885.3944
																																																																																																																																			Let energya.3930
																																																																																																																																				App p_energy.2734pixel.2969 
																																																																																																																																				Let Tu140.3931
																																																																																																																																					Let Ta886.3942
																																																																																																																																						Get energya.3930 nref.2966
																																																																																																																																						Let Ta887.3943
																																																																																																																																							ExtArray texture_color
																																																																																																																																							App veccpy.2648Ta886.3942 Ta887.3943 
																																																																																																																																					Let Tu139.3932
																																																																																																																																						Let Ta888.3936
																																																																																																																																							Get energya.3930 nref.2966
																																																																																																																																							Let Td893.3937
																																																																																																																																								Let Td892.3938
																																																																																																																																									Let Td889.3939
																																																																																																																																										Float:1.000000
																																																																																																																																										Let Td890.3940
																																																																																																																																											Float:256.000000
																																																																																																																																											Let Td891.3941
																																																																																																																																												FReciprocal Td890.3940
																																																																																																																																												FMul Td889.3939 Td891.3941
																																																																																																																																									FMul Td892.3938 diffuse.3866
																																																																																																																																								App vecscale.2677Ta888.3936 Td893.3937 
																																																																																																																																						Let nvectors.3933
																																																																																																																																							App p_nvectors.2743pixel.2969 
																																																																																																																																							Let Ta894.3934
																																																																																																																																								Get nvectors.3933 nref.2966
																																																																																																																																								Let Ta895.3935
																																																																																																																																									ExtArray nvector
																																																																																																																																									App veccpy.2648Ta894.3934 Ta895.3935 
																																																																																																																																		Let Ti896.3928
																																																																																																																																			Int:0
																																																																																																																																			Put calc_diffuse.3873 nref.2966 Ti896.3928
																																																																																																																															Let w.3875
																																																																																																																																Let Td897.3923
																																																																																																																																	Float:-2.000000
																																																																																																																																	Let Td899.3924
																																																																																																																																		Let Ta898.3925
																																																																																																																																			ExtArray nvector
																																																																																																																																			App veciprod.2659dirvec.2968 Ta898.3925 
																																																																																																																																		FMul Td897.3923 Td899.3924
																																																																																																																																Let Tu146.3876
																																																																																																																																	Let Ta900.3922
																																																																																																																																		ExtArray nvector
																																																																																																																																		App vecaccum.2667dirvec.2968 w.3875 Ta900.3922 
																																																																																																																																	Let hilight_scale.3877
																																																																																																																																		Let Td901.3921
																																																																																																																																			App o_hilight.2710obj.3864 
																																																																																																																																			FMul energy.2967 Td901.3921
																																																																																																																																		Let Tu145.3878
																																																																																																																																			Let Tb906.3907
																																																																																																																																				Let Ti902.3917
																																																																																																																																					Int:0
																																																																																																																																					Let Ta905.3918
																																																																																																																																						Let Ta903.3919
																																																																																																																																							ExtArray or_net
																																																																																																																																							Let Ti904.3920
																																																																																																																																								Int:0
																																																																																																																																								Get Ta903.3919 Ti904.3920
																																																																																																																																						App shadow_check_one_or_matrix.2913Ti902.3917 Ta905.3918 
																																																																																																																																				Let Ti907.3908
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb906.3907 Ti907.3908
																																																																																																																																						Let bright.3909
																																																																																																																																							Let Td911.3913
																																																																																																																																								Let Td910.3914
																																																																																																																																									Let Ta908.3915
																																																																																																																																										ExtArray nvector
																																																																																																																																										Let Ta909.3916
																																																																																																																																											ExtArray light
																																																																																																																																											App veciprod.2659Ta908.3915 Ta909.3916 
																																																																																																																																									ExtFunApp fneg Td910.3914,
																																																																																																																																								FMul Td911.3913 diffuse.3866
																																																																																																																																							Let hilight.3910
																																																																																																																																								Let Td913.3911
																																																																																																																																									Let Ta912.3912
																																																																																																																																										ExtArray light
																																																																																																																																										App veciprod.2659dirvec.2968 Ta912.3912 
																																																																																																																																									ExtFunApp fneg Td913.3911,
																																																																																																																																								App add_light.2956bright.3909 hilight.3910 hilight_scale.3877 
																																																																																																																																						Unit
																																																																																																																																			Let Tu144.3879
																																																																																																																																				Let Ta914.3906
																																																																																																																																					ExtArray intersection_point
																																																																																																																																					App setup_startp.2879Ta914.3906 
																																																																																																																																				Let Tu143.3880
																																																																																																																																					Let Ti919.3901
																																																																																																																																						Let Ti917.3902
																																																																																																																																							Let Ta915.3904
																																																																																																																																								ExtArray n_reflections
																																																																																																																																								Let Ti916.3905
																																																																																																																																									Int:0
																																																																																																																																									Get Ta915.3904 Ti916.3905
																																																																																																																																							Let Ti918.3903
																																																																																																																																								Int:1
																																																																																																																																								Sub Ti917.3902 Ti918.3903
																																																																																																																																						App trace_reflections.2960Ti919.3901 diffuse.3866 hilight_scale.3877 dirvec.2968 
																																																																																																																																					Let Tb921.3881
																																																																																																																																						Let Td920.3900
																																																																																																																																							Float:0.100000
																																																																																																																																							ExtFunApp fless Td920.3900,energy.2967,
																																																																																																																																						Let Ti922.3882
																																																																																																																																							Int:0
																																																																																																																																							IfEq Tb921.3881 Ti922.3882
																																																																																																																																								Unit
																																																																																																																																								Let Tu142.3883
																																																																																																																																									Let Ti923.3895
																																																																																																																																										Int:4
																																																																																																																																										IfLE Ti923.3895 nref.2966
																																																																																																																																											Unit
																																																																																																																																											Let Ti925.3896
																																																																																																																																												Let Ti924.3899
																																																																																																																																													Int:1
																																																																																																																																													Add nref.2966 Ti924.3899
																																																																																																																																												Let Ti927.3897
																																																																																																																																													Let Ti926.3898
																																																																																																																																														Int:1
																																																																																																																																														Neg Ti926.3898
																																																																																																																																													Put surface_ids.3860 Ti925.3896 Ti927.3897
																																																																																																																																									Let Ti928.3884
																																																																																																																																										Int:2
																																																																																																																																										IfEq m_surface.3865 Ti928.3884
																																																																																																																																											Let energy2.3885
																																																																																																																																												Let Td931.3892
																																																																																																																																													Let Td929.3893
																																																																																																																																														Float:1.000000
																																																																																																																																														Let Td930.3894
																																																																																																																																															App o_diffuse.2708obj.3864 
																																																																																																																																															FSub Td929.3893 Td930.3894
																																																																																																																																													FMul energy.2967 Td931.3892
																																																																																																																																												Let Ti933.3886
																																																																																																																																													Let Ti932.3891
																																																																																																																																														Int:1
																																																																																																																																														Add nref.2966 Ti932.3891
																																																																																																																																													Let Td937.3887
																																																																																																																																														Let Td936.3888
																																																																																																																																															Let Ta934.3889
																																																																																																																																																ExtArray tmin
																																																																																																																																																Let Ti935.3890
																																																																																																																																																	Int:0
																																																																																																																																																	Get Ta934.3889 Ti935.3890
																																																																																																																																															FAdd dist.2970 Td936.3888
																																																																																																																																														App trace_ray.2965Ti933.3886 energy2.3885 dirvec.2968 pixel.2969 Td937.3887 
																																																																																																																																											Unit
																																																																																																															Unit
																																																																																																													LetRec trace_diffuse_ray.2971 dirvec.2972 energy.2973 
																																																																																																														Let Tb809.3830
																																																																																																															App judge_intersection_fast.2942dirvec.2972 
																																																																																																															Let Ti810.3831
																																																																																																																Int:0
																																																																																																																IfEq Tb809.3830 Ti810.3831
																																																																																																																	Unit
																																																																																																																	Let obj.3832
																																																																																																																		Let Ta811.3855
																																																																																																																			ExtArray objects
																																																																																																																			Let Ti814.3856
																																																																																																																				Let Ta812.3857
																																																																																																																					ExtArray intersected_object_id
																																																																																																																					Let Ti813.3858
																																																																																																																						Int:0
																																																																																																																						Get Ta812.3857 Ti813.3858
																																																																																																																				Get Ta811.3855 Ti814.3856
																																																																																																																		Let Tu157.3833
																																																																																																																			Let Ta815.3854
																																																																																																																				App d_vec.2745dirvec.2972 
																																																																																																																				App get_nvector.2950obj.3832 Ta815.3854 
																																																																																																																			Let Tu156.3834
																																																																																																																				Let Ta816.3853
																																																																																																																					ExtArray intersection_point
																																																																																																																					App utexture.2953obj.3832 Ta816.3853 
																																																																																																																				Let Tb821.3835
																																																																																																																					Let Ti817.3849
																																																																																																																						Int:0
																																																																																																																						Let Ta820.3850
																																																																																																																							Let Ta818.3851
																																																																																																																								ExtArray or_net
																																																																																																																								Let Ti819.3852
																																																																																																																									Int:0
																																																																																																																									Get Ta818.3851 Ti819.3852
																																																																																																																							App shadow_check_one_or_matrix.2913Ti817.3849 Ta820.3850 
																																																																																																																					Let Ti822.3836
																																																																																																																						Int:0
																																																																																																																						IfEq Tb821.3835 Ti822.3836
																																																																																																																							Let br.3837
																																																																																																																								Let Td825.3846
																																																																																																																									Let Ta823.3847
																																																																																																																										ExtArray nvector
																																																																																																																										Let Ta824.3848
																																																																																																																											ExtArray light
																																																																																																																											App veciprod.2659Ta823.3847 Ta824.3848 
																																																																																																																									ExtFunApp fneg Td825.3846,
																																																																																																																								Let bright.3838
																																																																																																																									Let Tb826.3844
																																																																																																																										ExtFunApp fispos br.3837,
																																																																																																																										Let Ti827.3845
																																																																																																																											Int:0
																																																																																																																											IfEq Tb826.3844 Ti827.3845
																																																																																																																												Float:0.000000
																																																																																																																												Var br.3837
																																																																																																																									Let Ta828.3839
																																																																																																																										ExtArray diffuse_ray
																																																																																																																										Let Td831.3840
																																																																																																																											Let Td829.3842
																																																																																																																												FMul energy.2973 bright.3838
																																																																																																																												Let Td830.3843
																																																																																																																													App o_diffuse.2708obj.3832 
																																																																																																																													FMul Td829.3842 Td830.3843
																																																																																																																											Let Ta832.3841
																																																																																																																												ExtArray texture_color
																																																																																																																												App vecaccum.2667Ta828.3839 Td831.3840 Ta832.3841 
																																																																																																																							Unit
																																																																																																														LetRec iter_trace_diffuse_rays.2974 dirvec_group.2975 nvector.2976 org.2977 index.2978 
																																																																																																															Let Ti792.3811
																																																																																																																Int:0
																																																																																																																IfLE Ti792.3811 index.2978
																																																																																																																	Let p.3812
																																																																																																																		Let Ta794.3828
																																																																																																																			Let Tt793.3829
																																																																																																																				Get dirvec_group.2975 index.2978
																																																																																																																				App d_vec.2745Tt793.3829 
																																																																																																																			App veciprod.2659Ta794.3828 nvector.2976 
																																																																																																																		Let Tu158.3813
																																																																																																																			Let Tb795.3816
																																																																																																																				ExtFunApp fisneg p.3812,
																																																																																																																				Let Ti796.3817
																																																																																																																					Int:0
																																																																																																																					IfEq Tb795.3816 Ti796.3817
																																																																																																																						Let Tt797.3824
																																																																																																																							Get dirvec_group.2975 index.2978
																																																																																																																							Let Td800.3825
																																																																																																																								Let Td798.3826
																																																																																																																									Float:150.000000
																																																																																																																									Let Td799.3827
																																																																																																																										FReciprocal Td798.3826
																																																																																																																										FMul p.3812 Td799.3827
																																																																																																																								App trace_diffuse_ray.2971Tt797.3824 Td800.3825 
																																																																																																																						Let Tt803.3818
																																																																																																																							Let Ti802.3822
																																																																																																																								Let Ti801.3823
																																																																																																																									Int:1
																																																																																																																									Add index.2978 Ti801.3823
																																																																																																																								Get dirvec_group.2975 Ti802.3822
																																																																																																																							Let Td806.3819
																																																																																																																								Let Td804.3820
																																																																																																																									Float:-150.000000
																																																																																																																									Let Td805.3821
																																																																																																																										FReciprocal Td804.3820
																																																																																																																										FMul p.3812 Td805.3821
																																																																																																																								App trace_diffuse_ray.2971Tt803.3818 Td806.3819 
																																																																																																																			Let Ti808.3814
																																																																																																																				Let Ti807.3815
																																																																																																																					Int:2
																																																																																																																					Sub index.2978 Ti807.3815
																																																																																																																				App iter_trace_diffuse_rays.2974dirvec_group.2975 nvector.2976 org.2977 Ti808.3814 
																																																																																																																	Unit
																																																																																																															LetRec trace_diffuse_rays.2979 dirvec_group.2980 nvector.2981 org.2982 
																																																																																																																Let Tu159.3809
																																																																																																																	App setup_startp.2879org.2982 
																																																																																																																	Let Ti791.3810
																																																																																																																		Int:118
																																																																																																																		App iter_trace_diffuse_rays.2974dirvec_group.2980 nvector.2981 org.2982 Ti791.3810 
																																																																																																																LetRec trace_diffuse_ray_80percent.2983 group_id.2984 nvector.2985 org.2986 
																																																																																																																	Let Tu163.3785
																																																																																																																		Let Ti771.3805
																																																																																																																			Int:0
																																																																																																																			IfEq group_id.2984 Ti771.3805
																																																																																																																				Unit
																																																																																																																				Let Ta774.3806
																																																																																																																					Let Ta772.3807
																																																																																																																						ExtArray dirvecs
																																																																																																																						Let Ti773.3808
																																																																																																																							Int:0
																																																																																																																							Get Ta772.3807 Ti773.3808
																																																																																																																					App trace_diffuse_rays.2979Ta774.3806 nvector.2985 org.2986 
																																																																																																																		Let Tu162.3786
																																																																																																																			Let Ti775.3801
																																																																																																																				Int:1
																																																																																																																				IfEq group_id.2984 Ti775.3801
																																																																																																																					Unit
																																																																																																																					Let Ta778.3802
																																																																																																																						Let Ta776.3803
																																																																																																																							ExtArray dirvecs
																																																																																																																							Let Ti777.3804
																																																																																																																								Int:1
																																																																																																																								Get Ta776.3803 Ti777.3804
																																																																																																																						App trace_diffuse_rays.2979Ta778.3802 nvector.2985 org.2986 
																																																																																																																			Let Tu161.3787
																																																																																																																				Let Ti779.3797
																																																																																																																					Int:2
																																																																																																																					IfEq group_id.2984 Ti779.3797
																																																																																																																						Unit
																																																																																																																						Let Ta782.3798
																																																																																																																							Let Ta780.3799
																																																																																																																								ExtArray dirvecs
																																																																																																																								Let Ti781.3800
																																																																																																																									Int:2
																																																																																																																									Get Ta780.3799 Ti781.3800
																																																																																																																							App trace_diffuse_rays.2979Ta782.3798 nvector.2985 org.2986 
																																																																																																																				Let Tu160.3788
																																																																																																																					Let Ti783.3793
																																																																																																																						Int:3
																																																																																																																						IfEq group_id.2984 Ti783.3793
																																																																																																																							Unit
																																																																																																																							Let Ta786.3794
																																																																																																																								Let Ta784.3795
																																																																																																																									ExtArray dirvecs
																																																																																																																									Let Ti785.3796
																																																																																																																										Int:3
																																																																																																																										Get Ta784.3795 Ti785.3796
																																																																																																																								App trace_diffuse_rays.2979Ta786.3794 nvector.2985 org.2986 
																																																																																																																					Let Ti787.3789
																																																																																																																						Int:4
																																																																																																																						IfEq group_id.2984 Ti787.3789
																																																																																																																							Unit
																																																																																																																							Let Ta790.3790
																																																																																																																								Let Ta788.3791
																																																																																																																									ExtArray dirvecs
																																																																																																																									Let Ti789.3792
																																																																																																																										Int:4
																																																																																																																										Get Ta788.3791 Ti789.3792
																																																																																																																								App trace_diffuse_rays.2979Ta790.3790 nvector.2985 org.2986 
																																																																																																																	LetRec calc_diffuse_using_1point.2987 pixel.2988 nref.2989 
																																																																																																																		Let ray20p.3771
																																																																																																																			App p_received_ray_20percent.2736pixel.2988 
																																																																																																																			Let nvectors.3772
																																																																																																																				App p_nvectors.2743pixel.2988 
																																																																																																																				Let intersection_points.3773
																																																																																																																					App p_intersection_points.2728pixel.2988 
																																																																																																																					Let energya.3774
																																																																																																																						App p_energy.2734pixel.2988 
																																																																																																																						Let Tu165.3775
																																																																																																																							Let Ta763.3783
																																																																																																																								ExtArray diffuse_ray
																																																																																																																								Let Ta764.3784
																																																																																																																									Get ray20p.3771 nref.2989
																																																																																																																									App veccpy.2648Ta763.3783 Ta764.3784 
																																																																																																																							Let Tu164.3776
																																																																																																																								Let Ti765.3780
																																																																																																																									App p_group_id.2738pixel.2988 
																																																																																																																									Let Ta766.3781
																																																																																																																										Get nvectors.3772 nref.2989
																																																																																																																										Let Ta767.3782
																																																																																																																											Get intersection_points.3773 nref.2989
																																																																																																																											App trace_diffuse_ray_80percent.2983Ti765.3780 Ta766.3781 Ta767.3782 
																																																																																																																								Let Ta768.3777
																																																																																																																									ExtArray rgb
																																																																																																																									Let Ta769.3778
																																																																																																																										Get energya.3774 nref.2989
																																																																																																																										Let Ta770.3779
																																																																																																																											ExtArray diffuse_ray
																																																																																																																											App vecaccumv.2680Ta768.3777 Ta769.3778 Ta770.3779 
																																																																																																																		LetRec calc_diffuse_using_5points.2990 x.2991 prev.2992 cur.2993 next.2994 nref.2995 
																																																																																																																			Let r_up.3737
																																																																																																																				Let Tt740.3770
																																																																																																																					Get prev.2992 x.2991
																																																																																																																					App p_received_ray_20percent.2736Tt740.3770 
																																																																																																																				Let r_left.3738
																																																																																																																					Let Tt743.3767
																																																																																																																						Let Ti742.3768
																																																																																																																							Let Ti741.3769
																																																																																																																								Int:1
																																																																																																																								Sub x.2991 Ti741.3769
																																																																																																																							Get cur.2993 Ti742.3768
																																																																																																																						App p_received_ray_20percent.2736Tt743.3767 
																																																																																																																					Let r_center.3739
																																																																																																																						Let Tt744.3766
																																																																																																																							Get cur.2993 x.2991
																																																																																																																							App p_received_ray_20percent.2736Tt744.3766 
																																																																																																																						Let r_right.3740
																																																																																																																							Let Tt747.3763
																																																																																																																								Let Ti746.3764
																																																																																																																									Let Ti745.3765
																																																																																																																										Int:1
																																																																																																																										Add x.2991 Ti745.3765
																																																																																																																									Get cur.2993 Ti746.3764
																																																																																																																								App p_received_ray_20percent.2736Tt747.3763 
																																																																																																																							Let r_down.3741
																																																																																																																								Let Tt748.3762
																																																																																																																									Get next.2994 x.2991
																																																																																																																									App p_received_ray_20percent.2736Tt748.3762 
																																																																																																																								Let Tu170.3742
																																																																																																																									Let Ta749.3760
																																																																																																																										ExtArray diffuse_ray
																																																																																																																										Let Ta750.3761
																																																																																																																											Get r_up.3737 nref.2995
																																																																																																																											App veccpy.2648Ta749.3760 Ta750.3761 
																																																																																																																									Let Tu169.3743
																																																																																																																										Let Ta751.3758
																																																																																																																											ExtArray diffuse_ray
																																																																																																																											Let Ta752.3759
																																																																																																																												Get r_left.3738 nref.2995
																																																																																																																												App vecadd.2671Ta751.3758 Ta752.3759 
																																																																																																																										Let Tu168.3744
																																																																																																																											Let Ta753.3756
																																																																																																																												ExtArray diffuse_ray
																																																																																																																												Let Ta754.3757
																																																																																																																													Get r_center.3739 nref.2995
																																																																																																																													App vecadd.2671Ta753.3756 Ta754.3757 
																																																																																																																											Let Tu167.3745
																																																																																																																												Let Ta755.3754
																																																																																																																													ExtArray diffuse_ray
																																																																																																																													Let Ta756.3755
																																																																																																																														Get r_right.3740 nref.2995
																																																																																																																														App vecadd.2671Ta755.3754 Ta756.3755 
																																																																																																																												Let Tu166.3746
																																																																																																																													Let Ta757.3752
																																																																																																																														ExtArray diffuse_ray
																																																																																																																														Let Ta758.3753
																																																																																																																															Get r_down.3741 nref.2995
																																																																																																																															App vecadd.2671Ta757.3752 Ta758.3753 
																																																																																																																													Let energya.3747
																																																																																																																														Let Tt759.3751
																																																																																																																															Get cur.2993 x.2991
																																																																																																																															App p_energy.2734Tt759.3751 
																																																																																																																														Let Ta760.3748
																																																																																																																															ExtArray rgb
																																																																																																																															Let Ta761.3749
																																																																																																																																Get energya.3747 nref.2995
																																																																																																																																Let Ta762.3750
																																																																																																																																	ExtArray diffuse_ray
																																																																																																																																	App vecaccumv.2680Ta760.3748 Ta761.3749 Ta762.3750 
																																																																																																																			LetRec do_without_neighbors.2996 pixel.2997 nref.2998 
																																																																																																																				Let Ti733.3727
																																																																																																																					Int:4
																																																																																																																					IfLE nref.2998 Ti733.3727
																																																																																																																						Let surface_ids.3728
																																																																																																																							App p_surface_ids.2730pixel.2997 
																																																																																																																							Let Ti734.3729
																																																																																																																								Int:0
																																																																																																																								Let Ti735.3730
																																																																																																																									Get surface_ids.3728 nref.2998
																																																																																																																									IfLE Ti734.3729 Ti735.3730
																																																																																																																										Let calc_diffuse.3731
																																																																																																																											App p_calc_diffuse.2732pixel.2997 
																																																																																																																											Let Tu171.3732
																																																																																																																												Let Tb736.3735
																																																																																																																													Get calc_diffuse.3731 nref.2998
																																																																																																																													Let Ti737.3736
																																																																																																																														Int:0
																																																																																																																														IfEq Tb736.3735 Ti737.3736
																																																																																																																															Unit
																																																																																																																															App calc_diffuse_using_1point.2987pixel.2997 nref.2998 
																																																																																																																												Let Ti739.3733
																																																																																																																													Let Ti738.3734
																																																																																																																														Int:1
																																																																																																																														Add nref.2998 Ti738.3734
																																																																																																																													App do_without_neighbors.2996pixel.2997 Ti739.3733 
																																																																																																																										Unit
																																																																																																																						Unit
																																																																																																																				LetRec neighbors_exist.2999 x.3000 y.3001 next.3002 
																																																																																																																					Let Ti723.3715
																																																																																																																						Let Ta721.3725
																																																																																																																							ExtArray image_size
																																																																																																																							Let Ti722.3726
																																																																																																																								Int:1
																																																																																																																								Get Ta721.3725 Ti722.3726
																																																																																																																						Let Ti725.3716
																																																																																																																							Let Ti724.3724
																																																																																																																								Int:1
																																																																																																																								Add y.3001 Ti724.3724
																																																																																																																							IfLE Ti723.3715 Ti725.3716
																																																																																																																								Int:0
																																																																																																																								Let Ti726.3717
																																																																																																																									Int:0
																																																																																																																									IfLE y.3001 Ti726.3717
																																																																																																																										Int:0
																																																																																																																										Let Ti729.3718
																																																																																																																											Let Ta727.3722
																																																																																																																												ExtArray image_size
																																																																																																																												Let Ti728.3723
																																																																																																																													Int:0
																																																																																																																													Get Ta727.3722 Ti728.3723
																																																																																																																											Let Ti731.3719
																																																																																																																												Let Ti730.3721
																																																																																																																													Int:1
																																																																																																																													Add x.3000 Ti730.3721
																																																																																																																												IfLE Ti729.3718 Ti731.3719
																																																																																																																													Int:0
																																																																																																																													Let Ti732.3720
																																																																																																																														Int:0
																																																																																																																														IfLE x.3000 Ti732.3720
																																																																																																																															Int:0
																																																																																																																															Int:1
																																																																																																																					LetRec get_surface_id.3003 pixel.3004 index.3005 
																																																																																																																						Let surface_ids.3714
																																																																																																																							App p_surface_ids.2730pixel.3004 
																																																																																																																							Get surface_ids.3714 index.3005
																																																																																																																						LetRec neighbors_are_available.3006 x.3007 prev.3008 cur.3009 next.3010 nref.3011 
																																																																																																																							Let sid_center.3700
																																																																																																																								Let Tt708.3713
																																																																																																																									Get cur.3009 x.3007
																																																																																																																									App get_surface_id.3003Tt708.3713 nref.3011 
																																																																																																																								Let Ti710.3701
																																																																																																																									Let Tt709.3712
																																																																																																																										Get prev.3008 x.3007
																																																																																																																										App get_surface_id.3003Tt709.3712 nref.3011 
																																																																																																																									IfEq Ti710.3701 sid_center.3700
																																																																																																																										Let Ti712.3702
																																																																																																																											Let Tt711.3711
																																																																																																																												Get next.3010 x.3007
																																																																																																																												App get_surface_id.3003Tt711.3711 nref.3011 
																																																																																																																											IfEq Ti712.3702 sid_center.3700
																																																																																																																												Let Ti716.3703
																																																																																																																													Let Tt715.3708
																																																																																																																														Let Ti714.3709
																																																																																																																															Let Ti713.3710
																																																																																																																																Int:1
																																																																																																																																Sub x.3007 Ti713.3710
																																																																																																																															Get cur.3009 Ti714.3709
																																																																																																																														App get_surface_id.3003Tt715.3708 nref.3011 
																																																																																																																													IfEq Ti716.3703 sid_center.3700
																																																																																																																														Let Ti720.3704
																																																																																																																															Let Tt719.3705
																																																																																																																																Let Ti718.3706
																																																																																																																																	Let Ti717.3707
																																																																																																																																		Int:1
																																																																																																																																		Add x.3007 Ti717.3707
																																																																																																																																	Get cur.3009 Ti718.3706
																																																																																																																																App get_surface_id.3003Tt719.3705 nref.3011 
																																																																																																																															IfEq Ti720.3704 sid_center.3700
																																																																																																																																Int:1
																																																																																																																																Int:0
																																																																																																																														Int:0
																																																																																																																												Int:0
																																																																																																																										Int:0
																																																																																																																							LetRec try_exploit_neighbors.3012 x.3013 y.3014 prev.3015 cur.3016 next.3017 nref.3018 
																																																																																																																								Let pixel.3687
																																																																																																																									Get cur.3016 x.3013
																																																																																																																									Let Ti698.3688
																																																																																																																										Int:4
																																																																																																																										IfLE nref.3018 Ti698.3688
																																																																																																																											Let Ti699.3689
																																																																																																																												Int:0
																																																																																																																												Let Ti700.3690
																																																																																																																													App get_surface_id.3003pixel.3687 nref.3018 
																																																																																																																													IfLE Ti699.3689 Ti700.3690
																																																																																																																														Let Tb701.3691
																																																																																																																															App neighbors_are_available.3006x.3013 prev.3015 cur.3016 next.3017 nref.3018 
																																																																																																																															Let Ti702.3692
																																																																																																																																Int:0
																																																																																																																																IfEq Tb701.3691 Ti702.3692
																																																																																																																																	Let Tt703.3699
																																																																																																																																		Get cur.3016 x.3013
																																																																																																																																		App do_without_neighbors.2996Tt703.3699 nref.3018 
																																																																																																																																	Let calc_diffuse.3693
																																																																																																																																		App p_calc_diffuse.2732pixel.3687 
																																																																																																																																		Let Tu172.3694
																																																																																																																																			Let Tb704.3697
																																																																																																																																				Get calc_diffuse.3693 nref.3018
																																																																																																																																				Let Ti705.3698
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb704.3697 Ti705.3698
																																																																																																																																						Unit
																																																																																																																																						App calc_diffuse_using_5points.2990x.3013 prev.3015 cur.3016 next.3017 nref.3018 
																																																																																																																																			Let Ti707.3695
																																																																																																																																				Let Ti706.3696
																																																																																																																																					Int:1
																																																																																																																																					Add nref.3018 Ti706.3696
																																																																																																																																				App try_exploit_neighbors.3012x.3013 y.3014 prev.3015 cur.3016 next.3017 Ti707.3695 
																																																																																																																														Unit
																																																																																																																											Unit
																																																																																																																								LetRec write_ppm_header.3019 Tu173.3020 
																																																																																																																									Let Tu181.3664
																																																																																																																										Let Ti683.3686
																																																																																																																											Int:80
																																																																																																																											ExtFunApp print_char Ti683.3686,
																																																																																																																										Let Tu180.3665
																																																																																																																											Let Ti686.3683
																																																																																																																												Let Ti684.3684
																																																																																																																													Int:48
																																																																																																																													Let Ti685.3685
																																																																																																																														Int:3
																																																																																																																														Add Ti684.3684 Ti685.3685
																																																																																																																												ExtFunApp print_char Ti686.3683,
																																																																																																																											Let Tu179.3666
																																																																																																																												Let Ti687.3682
																																																																																																																													Int:10
																																																																																																																													ExtFunApp print_char Ti687.3682,
																																																																																																																												Let Tu178.3667
																																																																																																																													Let Ti690.3679
																																																																																																																														Let Ta688.3680
																																																																																																																															ExtArray image_size
																																																																																																																															Let Ti689.3681
																																																																																																																																Int:0
																																																																																																																																Get Ta688.3680 Ti689.3681
																																																																																																																														ExtFunApp print_int Ti690.3679,
																																																																																																																													Let Tu177.3668
																																																																																																																														Let Ti691.3678
																																																																																																																															Int:32
																																																																																																																															ExtFunApp print_char Ti691.3678,
																																																																																																																														Let Tu176.3669
																																																																																																																															Let Ti694.3675
																																																																																																																																Let Ta692.3676
																																																																																																																																	ExtArray image_size
																																																																																																																																	Let Ti693.3677
																																																																																																																																		Int:1
																																																																																																																																		Get Ta692.3676 Ti693.3677
																																																																																																																																ExtFunApp print_int Ti694.3675,
																																																																																																																															Let Tu175.3670
																																																																																																																																Let Ti695.3674
																																																																																																																																	Int:32
																																																																																																																																	ExtFunApp print_char Ti695.3674,
																																																																																																																																Let Tu174.3671
																																																																																																																																	Let Ti696.3673
																																																																																																																																		Int:255
																																																																																																																																		ExtFunApp print_int Ti696.3673,
																																																																																																																																	Let Ti697.3672
																																																																																																																																		Int:10
																																																																																																																																		ExtFunApp print_char Ti697.3672,
																																																																																																																									LetRec write_rgb_element.3021 x.3022 
																																																																																																																										Let ix.3660
																																																																																																																											ExtFunApp int_of_float x.3022,
																																																																																																																											Let elem.3661
																																																																																																																												Let Ti681.3662
																																																																																																																													Int:255
																																																																																																																													IfLE ix.3660 Ti681.3662
																																																																																																																														Let Ti682.3663
																																																																																																																															Int:0
																																																																																																																															IfLE Ti682.3663 ix.3660
																																																																																																																																Var ix.3660
																																																																																																																																Int:0
																																																																																																																														Int:255
																																																																																																																												ExtFunApp print_int elem.3661,
																																																																																																																										LetRec write_rgb.3023 Tu182.3024 
																																																																																																																											Let Tu187.3643
																																																																																																																												Let Td671.3657
																																																																																																																													Let Ta669.3658
																																																																																																																														ExtArray rgb
																																																																																																																														Let Ti670.3659
																																																																																																																															Int:0
																																																																																																																															Get Ta669.3658 Ti670.3659
																																																																																																																													App write_rgb_element.3021Td671.3657 
																																																																																																																												Let Tu186.3644
																																																																																																																													Let Ti672.3656
																																																																																																																														Int:32
																																																																																																																														ExtFunApp print_char Ti672.3656,
																																																																																																																													Let Tu185.3645
																																																																																																																														Let Td675.3653
																																																																																																																															Let Ta673.3654
																																																																																																																																ExtArray rgb
																																																																																																																																Let Ti674.3655
																																																																																																																																	Int:1
																																																																																																																																	Get Ta673.3654 Ti674.3655
																																																																																																																															App write_rgb_element.3021Td675.3653 
																																																																																																																														Let Tu184.3646
																																																																																																																															Let Ti676.3652
																																																																																																																																Int:32
																																																																																																																																ExtFunApp print_char Ti676.3652,
																																																																																																																															Let Tu183.3647
																																																																																																																																Let Td679.3649
																																																																																																																																	Let Ta677.3650
																																																																																																																																		ExtArray rgb
																																																																																																																																		Let Ti678.3651
																																																																																																																																			Int:2
																																																																																																																																			Get Ta677.3650 Ti678.3651
																																																																																																																																	App write_rgb_element.3021Td679.3649 
																																																																																																																																Let Ti680.3648
																																																																																																																																	Int:10
																																																																																																																																	ExtFunApp print_char Ti680.3648,
																																																																																																																											LetRec pretrace_diffuse_rays.3025 pixel.3026 nref.3027 
																																																																																																																												Let Ti656.3621
																																																																																																																													Int:4
																																																																																																																													IfLE nref.3027 Ti656.3621
																																																																																																																														Let sid.3622
																																																																																																																															App get_surface_id.3003pixel.3026 nref.3027 
																																																																																																																															Let Ti657.3623
																																																																																																																																Int:0
																																																																																																																																IfLE Ti657.3623 sid.3622
																																																																																																																																	Let calc_diffuse.3624
																																																																																																																																		App p_calc_diffuse.2732pixel.3026 
																																																																																																																																		Let Tu190.3625
																																																																																																																																			Let Tb658.3628
																																																																																																																																				Get calc_diffuse.3624 nref.3027
																																																																																																																																				Let Ti659.3629
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb658.3628 Ti659.3629
																																																																																																																																						Unit
																																																																																																																																						Let group_id.3630
																																																																																																																																							App p_group_id.2738pixel.3026 
																																																																																																																																							Let Tu189.3631
																																																																																																																																								Let Ta660.3642
																																																																																																																																									ExtArray diffuse_ray
																																																																																																																																									App vecbzero.2646Ta660.3642 
																																																																																																																																								Let nvectors.3632
																																																																																																																																									App p_nvectors.2743pixel.3026 
																																																																																																																																									Let intersection_points.3633
																																																																																																																																										App p_intersection_points.2728pixel.3026 
																																																																																																																																										Let Tu188.3634
																																																																																																																																											Let Ta662.3638
																																																																																																																																												Let Ta661.3641
																																																																																																																																													ExtArray dirvecs
																																																																																																																																													Get Ta661.3641 group_id.3630
																																																																																																																																												Let Ta663.3639
																																																																																																																																													Get nvectors.3632 nref.3027
																																																																																																																																													Let Ta664.3640
																																																																																																																																														Get intersection_points.3633 nref.3027
																																																																																																																																														App trace_diffuse_rays.2979Ta662.3638 Ta663.3639 Ta664.3640 
																																																																																																																																											Let ray20p.3635
																																																																																																																																												App p_received_ray_20percent.2736pixel.3026 
																																																																																																																																												Let Ta665.3636
																																																																																																																																													Get ray20p.3635 nref.3027
																																																																																																																																													Let Ta666.3637
																																																																																																																																														ExtArray diffuse_ray
																																																																																																																																														App veccpy.2648Ta665.3636 Ta666.3637 
																																																																																																																																			Let Ti668.3626
																																																																																																																																				Let Ti667.3627
																																																																																																																																					Int:1
																																																																																																																																					Add nref.3027 Ti667.3627
																																																																																																																																				App pretrace_diffuse_rays.3025pixel.3026 Ti668.3626 
																																																																																																																																	Unit
																																																																																																																														Unit
																																																																																																																												LetRec pretrace_pixels.3028 line.3029 x.3030 group_id.3031 lc0.3032 lc1.3033 lc2.3034 
																																																																																																																													Let Ti606.3560
																																																																																																																														Int:0
																																																																																																																														IfLE Ti606.3560 x.3030
																																																																																																																															Let xdisp.3561
																																																																																																																																Let Td609.3613
																																																																																																																																	Let Ta607.3619
																																																																																																																																		ExtArray scan_pitch
																																																																																																																																		Let Ti608.3620
																																																																																																																																			Int:0
																																																																																																																																			Get Ta607.3619 Ti608.3620
																																																																																																																																	Let Td614.3614
																																																																																																																																		Let Ti613.3615
																																																																																																																																			Let Ti612.3616
																																																																																																																																				Let Ta610.3617
																																																																																																																																					ExtArray image_center
																																																																																																																																					Let Ti611.3618
																																																																																																																																						Int:0
																																																																																																																																						Get Ta610.3617 Ti611.3618
																																																																																																																																				Sub x.3030 Ti612.3616
																																																																																																																																			ExtFunApp float_of_int Ti613.3615,
																																																																																																																																		FMul Td609.3613 Td614.3614
																																																																																																																																Let Tu200.3562
																																																																																																																																	Let Ta615.3606
																																																																																																																																		ExtArray ptrace_dirvec
																																																																																																																																		Let Ti616.3607
																																																																																																																																			Int:0
																																																																																																																																			Let Td621.3608
																																																																																																																																				Let Td620.3609
																																																																																																																																					Let Td619.3610
																																																																																																																																						Let Ta617.3611
																																																																																																																																							ExtArray screenx_dir
																																																																																																																																							Let Ti618.3612
																																																																																																																																								Int:0
																																																																																																																																								Get Ta617.3611 Ti618.3612
																																																																																																																																						FMul xdisp.3561 Td619.3610
																																																																																																																																					FAdd Td620.3609 lc0.3032
																																																																																																																																				Put Ta615.3606 Ti616.3607 Td621.3608
																																																																																																																																	Let Tu199.3563
																																																																																																																																		Let Ta622.3599
																																																																																																																																			ExtArray ptrace_dirvec
																																																																																																																																			Let Ti623.3600
																																																																																																																																				Int:1
																																																																																																																																				Let Td628.3601
																																																																																																																																					Let Td627.3602
																																																																																																																																						Let Td626.3603
																																																																																																																																							Let Ta624.3604
																																																																																																																																								ExtArray screenx_dir
																																																																																																																																								Let Ti625.3605
																																																																																																																																									Int:1
																																																																																																																																									Get Ta624.3604 Ti625.3605
																																																																																																																																							FMul xdisp.3561 Td626.3603
																																																																																																																																						FAdd Td627.3602 lc1.3033
																																																																																																																																					Put Ta622.3599 Ti623.3600 Td628.3601
																																																																																																																																		Let Tu198.3564
																																																																																																																																			Let Ta629.3592
																																																																																																																																				ExtArray ptrace_dirvec
																																																																																																																																				Let Ti630.3593
																																																																																																																																					Int:2
																																																																																																																																					Let Td635.3594
																																																																																																																																						Let Td634.3595
																																																																																																																																							Let Td633.3596
																																																																																																																																								Let Ta631.3597
																																																																																																																																									ExtArray screenx_dir
																																																																																																																																									Let Ti632.3598
																																																																																																																																										Int:2
																																																																																																																																										Get Ta631.3597 Ti632.3598
																																																																																																																																								FMul xdisp.3561 Td633.3596
																																																																																																																																							FAdd Td634.3595 lc2.3034
																																																																																																																																						Put Ta629.3592 Ti630.3593 Td635.3594
																																																																																																																																			Let Tu197.3565
																																																																																																																																				Let Ta636.3590
																																																																																																																																					ExtArray ptrace_dirvec
																																																																																																																																					Let Ti637.3591
																																																																																																																																						Int:0
																																																																																																																																						App vecunit_sgn.2656Ta636.3590 Ti637.3591 
																																																																																																																																				Let Tu196.3566
																																																																																																																																					Let Ta638.3589
																																																																																																																																						ExtArray rgb
																																																																																																																																						App vecbzero.2646Ta638.3589 
																																																																																																																																					Let Tu195.3567
																																																																																																																																						Let Ta639.3587
																																																																																																																																							ExtArray startp
																																																																																																																																							Let Ta640.3588
																																																																																																																																								ExtArray viewpoint
																																																																																																																																								App veccpy.2648Ta639.3587 Ta640.3588 
																																																																																																																																						Let Tu194.3568
																																																																																																																																							Let Ti641.3582
																																																																																																																																								Int:0
																																																																																																																																								Let Td642.3583
																																																																																																																																									Float:1.000000
																																																																																																																																									Let Ta643.3584
																																																																																																																																										ExtArray ptrace_dirvec
																																																																																																																																										Let Tt644.3585
																																																																																																																																											Get line.3029 x.3030
																																																																																																																																											Let Td645.3586
																																																																																																																																												Float:0.000000
																																																																																																																																												App trace_ray.2965Ti641.3582 Td642.3583 Ta643.3584 Tt644.3585 Td645.3586 
																																																																																																																																							Let Tu193.3569
																																																																																																																																								Let Ta647.3579
																																																																																																																																									Let Tt646.3581
																																																																																																																																										Get line.3029 x.3030
																																																																																																																																										App p_rgb.2726Tt646.3581 
																																																																																																																																									Let Ta648.3580
																																																																																																																																										ExtArray rgb
																																																																																																																																										App veccpy.2648Ta647.3579 Ta648.3580 
																																																																																																																																								Let Tu192.3570
																																																																																																																																									Let Tt649.3578
																																																																																																																																										Get line.3029 x.3030
																																																																																																																																										App p_set_group_id.2740Tt649.3578 group_id.3031 
																																																																																																																																									Let Tu191.3571
																																																																																																																																										Let Tt650.3576
																																																																																																																																											Get line.3029 x.3030
																																																																																																																																											Let Ti651.3577
																																																																																																																																												Int:0
																																																																																																																																												App pretrace_diffuse_rays.3025Tt650.3576 Ti651.3577 
																																																																																																																																										Let Ti653.3572
																																																																																																																																											Let Ti652.3575
																																																																																																																																												Int:1
																																																																																																																																												Sub x.3030 Ti652.3575
																																																																																																																																											Let Ti655.3573
																																																																																																																																												Let Ti654.3574
																																																																																																																																													Int:1
																																																																																																																																													App add_mod5.2635group_id.3031 Ti654.3574 
																																																																																																																																												App pretrace_pixels.3028line.3029 Ti653.3572 Ti655.3573 lc0.3032 lc1.3033 lc2.3034 
																																																																																																																															Unit
																																																																																																																													LetRec pretrace_line.3035 line.3036 y.3037 group_id.3038 
																																																																																																																														Let ydisp.3522
																																																																																																																															Let Td574.3552
																																																																																																																																Let Ta572.3558
																																																																																																																																	ExtArray scan_pitch
																																																																																																																																	Let Ti573.3559
																																																																																																																																		Int:0
																																																																																																																																		Get Ta572.3558 Ti573.3559
																																																																																																																																Let Td579.3553
																																																																																																																																	Let Ti578.3554
																																																																																																																																		Let Ti577.3555
																																																																																																																																			Let Ta575.3556
																																																																																																																																				ExtArray image_center
																																																																																																																																				Let Ti576.3557
																																																																																																																																					Int:1
																																																																																																																																					Get Ta575.3556 Ti576.3557
																																																																																																																																			Sub y.3037 Ti577.3555
																																																																																																																																		ExtFunApp float_of_int Ti578.3554,
																																																																																																																																	FMul Td574.3552 Td579.3553
																																																																																																																															Let lc0.3523
																																																																																																																																Let Td583.3545
																																																																																																																																	Let Td582.3549
																																																																																																																																		Let Ta580.3550
																																																																																																																																			ExtArray screeny_dir
																																																																																																																																			Let Ti581.3551
																																																																																																																																				Int:0
																																																																																																																																				Get Ta580.3550 Ti581.3551
																																																																																																																																		FMul ydisp.3522 Td582.3549
																																																																																																																																	Let Td586.3546
																																																																																																																																		Let Ta584.3547
																																																																																																																																			ExtArray screenz_dir
																																																																																																																																			Let Ti585.3548
																																																																																																																																				Int:0
																																																																																																																																				Get Ta584.3547 Ti585.3548
																																																																																																																																		FAdd Td583.3545 Td586.3546
																																																																																																																																Let lc1.3524
																																																																																																																																	Let Td590.3538
																																																																																																																																		Let Td589.3542
																																																																																																																																			Let Ta587.3543
																																																																																																																																				ExtArray screeny_dir
																																																																																																																																				Let Ti588.3544
																																																																																																																																					Int:1
																																																																																																																																					Get Ta587.3543 Ti588.3544
																																																																																																																																			FMul ydisp.3522 Td589.3542
																																																																																																																																		Let Td593.3539
																																																																																																																																			Let Ta591.3540
																																																																																																																																				ExtArray screenz_dir
																																																																																																																																				Let Ti592.3541
																																																																																																																																					Int:1
																																																																																																																																					Get Ta591.3540 Ti592.3541
																																																																																																																																			FAdd Td590.3538 Td593.3539
																																																																																																																																	Let lc2.3525
																																																																																																																																		Let Td597.3531
																																																																																																																																			Let Td596.3535
																																																																																																																																				Let Ta594.3536
																																																																																																																																					ExtArray screeny_dir
																																																																																																																																					Let Ti595.3537
																																																																																																																																						Int:2
																																																																																																																																						Get Ta594.3536 Ti595.3537
																																																																																																																																				FMul ydisp.3522 Td596.3535
																																																																																																																																			Let Td600.3532
																																																																																																																																				Let Ta598.3533
																																																																																																																																					ExtArray screenz_dir
																																																																																																																																					Let Ti599.3534
																																																																																																																																						Int:2
																																																																																																																																						Get Ta598.3533 Ti599.3534
																																																																																																																																				FAdd Td597.3531 Td600.3532
																																																																																																																																		Let Ti605.3526
																																																																																																																																			Let Ti603.3527
																																																																																																																																				Let Ta601.3529
																																																																																																																																					ExtArray image_size
																																																																																																																																					Let Ti602.3530
																																																																																																																																						Int:0
																																																																																																																																						Get Ta601.3529 Ti602.3530
																																																																																																																																				Let Ti604.3528
																																																																																																																																					Int:1
																																																																																																																																					Sub Ti603.3527 Ti604.3528
																																																																																																																																			App pretrace_pixels.3028line.3036 Ti605.3526 group_id.3038 lc0.3523 lc1.3524 lc2.3525 
																																																																																																																														LetRec scan_pixel.3039 x.3040 y.3041 prev.3042 cur.3043 next.3044 
																																																																																																																															Let Ti560.3505
																																																																																																																																Let Ta558.3520
																																																																																																																																	ExtArray image_size
																																																																																																																																	Let Ti559.3521
																																																																																																																																		Int:0
																																																																																																																																		Get Ta558.3520 Ti559.3521
																																																																																																																																IfLE Ti560.3505 x.3040
																																																																																																																																	Unit
																																																																																																																																	Let Tu203.3506
																																																																																																																																		Let Ta561.3517
																																																																																																																																			ExtArray rgb
																																																																																																																																			Let Ta563.3518
																																																																																																																																				Let Tt562.3519
																																																																																																																																					Get cur.3043 x.3040
																																																																																																																																					App p_rgb.2726Tt562.3519 
																																																																																																																																				App veccpy.2648Ta561.3517 Ta563.3518 
																																																																																																																																		Let Tu202.3507
																																																																																																																																			Let Tb564.3512
																																																																																																																																				App neighbors_exist.2999x.3040 y.3041 next.3044 
																																																																																																																																				Let Ti565.3513
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb564.3512 Ti565.3513
																																																																																																																																						Let Tt566.3515
																																																																																																																																							Get cur.3043 x.3040
																																																																																																																																							Let Ti567.3516
																																																																																																																																								Int:0
																																																																																																																																								App do_without_neighbors.2996Tt566.3515 Ti567.3516 
																																																																																																																																						Let Ti568.3514
																																																																																																																																							Int:0
																																																																																																																																							App try_exploit_neighbors.3012x.3040 y.3041 prev.3042 cur.3043 next.3044 Ti568.3514 
																																																																																																																																			Let Tu201.3508
																																																																																																																																				Let Tu569.3511
																																																																																																																																					Unit
																																																																																																																																					App write_rgb.3023Tu569.3511 
																																																																																																																																				Let Ti571.3509
																																																																																																																																					Let Ti570.3510
																																																																																																																																						Int:1
																																																																																																																																						Add x.3040 Ti570.3510
																																																																																																																																					App scan_pixel.3039Ti571.3509 y.3041 prev.3042 cur.3043 next.3044 
																																																																																																																															LetRec scan_line.3045 y.3046 prev.3047 cur.3048 next.3049 group_id.3050 
																																																																																																																																Let Ti545.3488
																																																																																																																																	Let Ta543.3503
																																																																																																																																		ExtArray image_size
																																																																																																																																		Let Ti544.3504
																																																																																																																																			Int:1
																																																																																																																																			Get Ta543.3503 Ti544.3504
																																																																																																																																	IfLE Ti545.3488 y.3046
																																																																																																																																		Unit
																																																																																																																																		Let Tu205.3489
																																																																																																																																			Let Ti550.3496
																																																																																																																																				Let Ti548.3499
																																																																																																																																					Let Ta546.3501
																																																																																																																																						ExtArray image_size
																																																																																																																																						Let Ti547.3502
																																																																																																																																							Int:1
																																																																																																																																							Get Ta546.3501 Ti547.3502
																																																																																																																																					Let Ti549.3500
																																																																																																																																						Int:1
																																																																																																																																						Sub Ti548.3499 Ti549.3500
																																																																																																																																				IfLE Ti550.3496 y.3046
																																																																																																																																					Unit
																																																																																																																																					Let Ti552.3497
																																																																																																																																						Let Ti551.3498
																																																																																																																																							Int:1
																																																																																																																																							Add y.3046 Ti551.3498
																																																																																																																																						App pretrace_line.3035next.3049 Ti552.3497 group_id.3050 
																																																																																																																																			Let Tu204.3490
																																																																																																																																				Let Ti553.3495
																																																																																																																																					Int:0
																																																																																																																																					App scan_pixel.3039Ti553.3495 y.3046 prev.3047 cur.3048 next.3049 
																																																																																																																																				Let Ti555.3491
																																																																																																																																					Let Ti554.3494
																																																																																																																																						Int:1
																																																																																																																																						Add y.3046 Ti554.3494
																																																																																																																																					Let Ti557.3492
																																																																																																																																						Let Ti556.3493
																																																																																																																																							Int:2
																																																																																																																																							App add_mod5.2635group_id.3050 Ti556.3493 
																																																																																																																																						App scan_line.3045Ti555.3491 cur.3048 next.3049 prev.3047 Ti557.3492 
																																																																																																																																LetRec create_float5x3array.3051 Tu206.3052 
																																																																																																																																	Let vec.3463
																																																																																																																																		Let Ti524.3486
																																																																																																																																			Int:3
																																																																																																																																			Let Td525.3487
																																																																																																																																				Float:0.000000
																																																																																																																																				ExtFunApp create_float_array Ti524.3486,Td525.3487,
																																																																																																																																		Let array.3464
																																																																																																																																			Let Ti526.3485
																																																																																																																																				Int:5
																																																																																																																																				ExtFunApp create_array Ti526.3485,vec.3463,
																																																																																																																																			Let Tu210.3465
																																																																																																																																				Let Ti527.3481
																																																																																																																																					Int:1
																																																																																																																																					Let Ta530.3482
																																																																																																																																						Let Ti528.3483
																																																																																																																																							Int:3
																																																																																																																																							Let Td529.3484
																																																																																																																																								Float:0.000000
																																																																																																																																								ExtFunApp create_float_array Ti528.3483,Td529.3484,
																																																																																																																																						Put array.3464 Ti527.3481 Ta530.3482
																																																																																																																																				Let Tu209.3466
																																																																																																																																					Let Ti531.3477
																																																																																																																																						Int:2
																																																																																																																																						Let Ta534.3478
																																																																																																																																							Let Ti532.3479
																																																																																																																																								Int:3
																																																																																																																																								Let Td533.3480
																																																																																																																																									Float:0.000000
																																																																																																																																									ExtFunApp create_float_array Ti532.3479,Td533.3480,
																																																																																																																																							Put array.3464 Ti531.3477 Ta534.3478
																																																																																																																																					Let Tu208.3467
																																																																																																																																						Let Ti535.3473
																																																																																																																																							Int:3
																																																																																																																																							Let Ta538.3474
																																																																																																																																								Let Ti536.3475
																																																																																																																																									Int:3
																																																																																																																																									Let Td537.3476
																																																																																																																																										Float:0.000000
																																																																																																																																										ExtFunApp create_float_array Ti536.3475,Td537.3476,
																																																																																																																																								Put array.3464 Ti535.3473 Ta538.3474
																																																																																																																																						Let Tu207.3468
																																																																																																																																							Let Ti539.3469
																																																																																																																																								Int:4
																																																																																																																																								Let Ta542.3470
																																																																																																																																									Let Ti540.3471
																																																																																																																																										Int:3
																																																																																																																																										Let Td541.3472
																																																																																																																																											Float:0.000000
																																																																																																																																											ExtFunApp create_float_array Ti540.3471,Td541.3472,
																																																																																																																																									Put array.3464 Ti539.3469 Ta542.3470
																																																																																																																																							Var array.3464
																																																																																																																																	LetRec create_pixel.3053 Tu211.3054 
																																																																																																																																		Let m_rgb.3443
																																																																																																																																			Let Ti512.3461
																																																																																																																																				Int:3
																																																																																																																																				Let Td513.3462
																																																																																																																																					Float:0.000000
																																																																																																																																					ExtFunApp create_float_array Ti512.3461,Td513.3462,
																																																																																																																																			Let m_isect_ps.3444
																																																																																																																																				Let Tu514.3460
																																																																																																																																					Unit
																																																																																																																																					App create_float5x3array.3051Tu514.3460 
																																																																																																																																				Let m_sids.3445
																																																																																																																																					Let Ti515.3458
																																																																																																																																						Int:5
																																																																																																																																						Let Ti516.3459
																																																																																																																																							Int:0
																																																																																																																																							ExtFunApp create_array Ti515.3458,Ti516.3459,
																																																																																																																																					Let m_cdif.3446
																																																																																																																																						Let Ti517.3456
																																																																																																																																							Int:5
																																																																																																																																							Let Ti518.3457
																																																																																																																																								Int:0
																																																																																																																																								ExtFunApp create_array Ti517.3456,Ti518.3457,
																																																																																																																																						Let m_engy.3447
																																																																																																																																							Let Tu519.3455
																																																																																																																																								Unit
																																																																																																																																								App create_float5x3array.3051Tu519.3455 
																																																																																																																																							Let m_r20p.3448
																																																																																																																																								Let Tu520.3454
																																																																																																																																									Unit
																																																																																																																																									App create_float5x3array.3051Tu520.3454 
																																																																																																																																								Let m_gid.3449
																																																																																																																																									Let Ti521.3452
																																																																																																																																										Int:1
																																																																																																																																										Let Ti522.3453
																																																																																																																																											Int:0
																																																																																																																																											ExtFunApp create_array Ti521.3452,Ti522.3453,
																																																																																																																																									Let m_nvectors.3450
																																																																																																																																										Let Tu523.3451
																																																																																																																																											Unit
																																																																																																																																											App create_float5x3array.3051Tu523.3451 
																																																																																																																																										Tuple (m_rgb.3443,m_isect_ps.3444,m_sids.3445,m_cdif.3446,m_engy.3447,m_r20p.3448,m_gid.3449,m_nvectors.3450,)
																																																																																																																																		LetRec init_line_elements.3055 line.3056 n.3057 
																																																																																																																																			Let Ti507.3437
																																																																																																																																				Int:0
																																																																																																																																				IfLE Ti507.3437 n.3057
																																																																																																																																					Let Tu212.3438
																																																																																																																																						Let Tt509.3441
																																																																																																																																							Let Tu508.3442
																																																																																																																																								Unit
																																																																																																																																								App create_pixel.3053Tu508.3442 
																																																																																																																																							Put line.3056 n.3057 Tt509.3441
																																																																																																																																						Let Ti511.3439
																																																																																																																																							Let Ti510.3440
																																																																																																																																								Int:1
																																																																																																																																								Sub n.3057 Ti510.3440
																																																																																																																																							App init_line_elements.3055line.3056 Ti511.3439 
																																																																																																																																					Var line.3056
																																																																																																																																			LetRec create_pixelline.3058 Tu213.3059 
																																																																																																																																				Let line.3426
																																																																																																																																					Let Ti499.3432
																																																																																																																																						Let Ta497.3435
																																																																																																																																							ExtArray image_size
																																																																																																																																							Let Ti498.3436
																																																																																																																																								Int:0
																																																																																																																																								Get Ta497.3435 Ti498.3436
																																																																																																																																						Let Tt501.3433
																																																																																																																																							Let Tu500.3434
																																																																																																																																								Unit
																																																																																																																																								App create_pixel.3053Tu500.3434 
																																																																																																																																							ExtFunApp create_array Ti499.3432,Tt501.3433,
																																																																																																																																					Let Ti506.3427
																																																																																																																																						Let Ti504.3428
																																																																																																																																							Let Ta502.3430
																																																																																																																																								ExtArray image_size
																																																																																																																																								Let Ti503.3431
																																																																																																																																									Int:0
																																																																																																																																									Get Ta502.3430 Ti503.3431
																																																																																																																																							Let Ti505.3429
																																																																																																																																								Int:2
																																																																																																																																								Sub Ti504.3428 Ti505.3429
																																																																																																																																						App init_line_elements.3055line.3426 Ti506.3427 
																																																																																																																																				LetRec tan.3060 x.3061 
																																																																																																																																					Let Td494.3423
																																																																																																																																						ExtFunApp sin x.3061,
																																																																																																																																						Let Td495.3424
																																																																																																																																							ExtFunApp cos x.3061,
																																																																																																																																							Let Td496.3425
																																																																																																																																								FReciprocal Td495.3424
																																																																																																																																								FMul Td494.3423 Td496.3425
																																																																																																																																					LetRec adjust_position.3062 h.3063 ratio.3064 
																																																																																																																																						Let l.3413
																																																																																																																																							Let Td490.3420
																																																																																																																																								Let Td488.3421
																																																																																																																																									FMul h.3063 h.3063
																																																																																																																																									Let Td489.3422
																																																																																																																																										Float:0.100000
																																																																																																																																										FAdd Td488.3421 Td489.3422
																																																																																																																																								ExtFunApp sqrt Td490.3420,
																																																																																																																																							Let tan_h.3414
																																																																																																																																								Let Td491.3418
																																																																																																																																									Float:1.000000
																																																																																																																																									Let Td492.3419
																																																																																																																																										FReciprocal l.3413
																																																																																																																																										FMul Td491.3418 Td492.3419
																																																																																																																																								Let theta_h.3415
																																																																																																																																									ExtFunApp atan tan_h.3414,
																																																																																																																																									Let tan_m.3416
																																																																																																																																										Let Td493.3417
																																																																																																																																											FMul theta_h.3415 ratio.3064
																																																																																																																																											App tan.3060Td493.3417 
																																																																																																																																										FMul tan_m.3416 l.3413
																																																																																																																																						LetRec calc_dirvec.3065 icount.3066 x.3067 y.3068 rx.3069 ry.3070 group_id.3071 index.3072 
																																																																																																																																							Let Ti443.3357
																																																																																																																																								Int:5
																																																																																																																																								IfLE Ti443.3357 icount.3066
																																																																																																																																									Let l.3362
																																																																																																																																										Let Td448.3408
																																																																																																																																											Let Td446.3409
																																																																																																																																												Let Td444.3411
																																																																																																																																													ExtFunApp fsqr x.3067,
																																																																																																																																													Let Td445.3412
																																																																																																																																														ExtFunApp fsqr y.3068,
																																																																																																																																														FAdd Td444.3411 Td445.3412
																																																																																																																																												Let Td447.3410
																																																																																																																																													Float:1.000000
																																																																																																																																													FAdd Td446.3409 Td447.3410
																																																																																																																																											ExtFunApp sqrt Td448.3408,
																																																																																																																																										Let vx.3363
																																																																																																																																											Let Td449.3407
																																																																																																																																												FReciprocal l.3362
																																																																																																																																												FMul x.3067 Td449.3407
																																																																																																																																											Let vy.3364
																																																																																																																																												Let Td450.3406
																																																																																																																																													FReciprocal l.3362
																																																																																																																																													FMul y.3068 Td450.3406
																																																																																																																																												Let vz.3365
																																																																																																																																													Let Td451.3404
																																																																																																																																														Float:1.000000
																																																																																																																																														Let Td452.3405
																																																																																																																																															FReciprocal l.3362
																																																																																																																																															FMul Td451.3404 Td452.3405
																																																																																																																																													Let dgroup.3366
																																																																																																																																														Let Ta453.3403
																																																																																																																																															ExtArray dirvecs
																																																																																																																																															Get Ta453.3403 group_id.3071
																																																																																																																																														Let Tu218.3367
																																																																																																																																															Let Ta455.3401
																																																																																																																																																Let Tt454.3402
																																																																																																																																																	Get dgroup.3366 index.3072
																																																																																																																																																	App d_vec.2745Tt454.3402 
																																																																																																																																																App vecset.2638Ta455.3401 vx.3363 vy.3364 vz.3365 
																																																																																																																																															Let Tu217.3368
																																																																																																																																																Let Ta459.3396
																																																																																																																																																	Let Tt458.3398
																																																																																																																																																		Let Ti457.3399
																																																																																																																																																			Let Ti456.3400
																																																																																																																																																				Int:40
																																																																																																																																																				Add index.3072 Ti456.3400
																																																																																																																																																			Get dgroup.3366 Ti457.3399
																																																																																																																																																		App d_vec.2745Tt458.3398 
																																																																																																																																																	Let Td460.3397
																																																																																																																																																		ExtFunApp fneg vy.3364,
																																																																																																																																																		App vecset.2638Ta459.3396 vx.3363 vz.3365 Td460.3397 
																																																																																																																																																Let Tu216.3369
																																																																																																																																																	Let Ta464.3390
																																																																																																																																																		Let Tt463.3393
																																																																																																																																																			Let Ti462.3394
																																																																																																																																																				Let Ti461.3395
																																																																																																																																																					Int:80
																																																																																																																																																					Add index.3072 Ti461.3395
																																																																																																																																																				Get dgroup.3366 Ti462.3394
																																																																																																																																																			App d_vec.2745Tt463.3393 
																																																																																																																																																		Let Td465.3391
																																																																																																																																																			ExtFunApp fneg vx.3363,
																																																																																																																																																			Let Td466.3392
																																																																																																																																																				ExtFunApp fneg vy.3364,
																																																																																																																																																				App vecset.2638Ta464.3390 vz.3365 Td465.3391 Td466.3392 
																																																																																																																																																	Let Tu215.3370
																																																																																																																																																		Let Ta470.3383
																																																																																																																																																			Let Tt469.3387
																																																																																																																																																				Let Ti468.3388
																																																																																																																																																					Let Ti467.3389
																																																																																																																																																						Int:1
																																																																																																																																																						Add index.3072 Ti467.3389
																																																																																																																																																					Get dgroup.3366 Ti468.3388
																																																																																																																																																				App d_vec.2745Tt469.3387 
																																																																																																																																																			Let Td471.3384
																																																																																																																																																				ExtFunApp fneg vx.3363,
																																																																																																																																																				Let Td472.3385
																																																																																																																																																					ExtFunApp fneg vy.3364,
																																																																																																																																																					Let Td473.3386
																																																																																																																																																						ExtFunApp fneg vz.3365,
																																																																																																																																																						App vecset.2638Ta470.3383 Td471.3384 Td472.3385 Td473.3386 
																																																																																																																																																		Let Tu214.3371
																																																																																																																																																			Let Ta477.3377
																																																																																																																																																				Let Tt476.3380
																																																																																																																																																					Let Ti475.3381
																																																																																																																																																						Let Ti474.3382
																																																																																																																																																							Int:41
																																																																																																																																																							Add index.3072 Ti474.3382
																																																																																																																																																						Get dgroup.3366 Ti475.3381
																																																																																																																																																					App d_vec.2745Tt476.3380 
																																																																																																																																																				Let Td478.3378
																																																																																																																																																					ExtFunApp fneg vx.3363,
																																																																																																																																																					Let Td479.3379
																																																																																																																																																						ExtFunApp fneg vz.3365,
																																																																																																																																																						App vecset.2638Ta477.3377 Td478.3378 Td479.3379 vy.3364 
																																																																																																																																																			Let Ta483.3372
																																																																																																																																																				Let Tt482.3374
																																																																																																																																																					Let Ti481.3375
																																																																																																																																																						Let Ti480.3376
																																																																																																																																																							Int:81
																																																																																																																																																							Add index.3072 Ti480.3376
																																																																																																																																																						Get dgroup.3366 Ti481.3375
																																																																																																																																																					App d_vec.2745Tt482.3374 
																																																																																																																																																				Let Td484.3373
																																																																																																																																																					ExtFunApp fneg vz.3365,
																																																																																																																																																					App vecset.2638Ta483.3372 Td484.3373 vx.3363 vy.3364 
																																																																																																																																									Let x2.3358
																																																																																																																																										App adjust_position.3062y.3068 rx.3069 
																																																																																																																																										Let Ti486.3359
																																																																																																																																											Let Ti485.3361
																																																																																																																																												Int:1
																																																																																																																																												Add icount.3066 Ti485.3361
																																																																																																																																											Let Td487.3360
																																																																																																																																												App adjust_position.3062x2.3358 ry.3070 
																																																																																																																																												App calc_dirvec.3065Ti486.3359 x2.3358 Td487.3360 rx.3069 ry.3070 group_id.3071 index.3072 
																																																																																																																																							LetRec calc_dirvecs.3073 col.3074 ry.3075 group_id.3076 index.3077 
																																																																																																																																								Let Ti422.3332
																																																																																																																																									Int:0
																																																																																																																																									IfLE Ti422.3332 col.3074
																																																																																																																																										Let rx.3333
																																																																																																																																											Let Td425.3353
																																																																																																																																												Let Td423.3355
																																																																																																																																													ExtFunApp float_of_int col.3074,
																																																																																																																																													Let Td424.3356
																																																																																																																																														Float:0.200000
																																																																																																																																														FMul Td423.3355 Td424.3356
																																																																																																																																												Let Td426.3354
																																																																																																																																													Float:0.900000
																																																																																																																																													FSub Td425.3353 Td426.3354
																																																																																																																																											Let Tu220.3334
																																																																																																																																												Let Ti427.3350
																																																																																																																																													Int:0
																																																																																																																																													Let Td428.3351
																																																																																																																																														Float:0.000000
																																																																																																																																														Let Td429.3352
																																																																																																																																															Float:0.000000
																																																																																																																																															App calc_dirvec.3065Ti427.3350 Td428.3351 Td429.3352 rx.3333 ry.3075 group_id.3076 index.3077 
																																																																																																																																												Let rx2.3335
																																																																																																																																													Let Td432.3346
																																																																																																																																														Let Td430.3348
																																																																																																																																															ExtFunApp float_of_int col.3074,
																																																																																																																																															Let Td431.3349
																																																																																																																																																Float:0.200000
																																																																																																																																																FMul Td430.3348 Td431.3349
																																																																																																																																														Let Td433.3347
																																																																																																																																															Float:0.100000
																																																																																																																																															FAdd Td432.3346 Td433.3347
																																																																																																																																													Let Tu219.3336
																																																																																																																																														Let Ti434.3341
																																																																																																																																															Int:0
																																																																																																																																															Let Td435.3342
																																																																																																																																																Float:0.000000
																																																																																																																																																Let Td436.3343
																																																																																																																																																	Float:0.000000
																																																																																																																																																	Let Ti438.3344
																																																																																																																																																		Let Ti437.3345
																																																																																																																																																			Int:2
																																																																																																																																																			Add index.3077 Ti437.3345
																																																																																																																																																		App calc_dirvec.3065Ti434.3341 Td435.3342 Td436.3343 rx2.3335 ry.3075 group_id.3076 Ti438.3344 
																																																																																																																																														Let Ti440.3337
																																																																																																																																															Let Ti439.3340
																																																																																																																																																Int:1
																																																																																																																																																Sub col.3074 Ti439.3340
																																																																																																																																															Let Ti442.3338
																																																																																																																																																Let Ti441.3339
																																																																																																																																																	Int:1
																																																																																																																																																	App add_mod5.2635group_id.3076 Ti441.3339 
																																																																																																																																																App calc_dirvecs.3073Ti440.3337 ry.3075 Ti442.3338 index.3077 
																																																																																																																																										Unit
																																																																																																																																								LetRec calc_dirvec_rows.3078 row.3079 group_id.3080 index.3081 
																																																																																																																																									Let Ti410.3318
																																																																																																																																										Int:0
																																																																																																																																										IfLE Ti410.3318 row.3079
																																																																																																																																											Let ry.3319
																																																																																																																																												Let Td413.3328
																																																																																																																																													Let Td411.3330
																																																																																																																																														ExtFunApp float_of_int row.3079,
																																																																																																																																														Let Td412.3331
																																																																																																																																															Float:0.200000
																																																																																																																																															FMul Td411.3330 Td412.3331
																																																																																																																																													Let Td414.3329
																																																																																																																																														Float:0.900000
																																																																																																																																														FSub Td413.3328 Td414.3329
																																																																																																																																												Let Tu221.3320
																																																																																																																																													Let Ti415.3327
																																																																																																																																														Int:4
																																																																																																																																														App calc_dirvecs.3073Ti415.3327 ry.3319 group_id.3080 index.3081 
																																																																																																																																													Let Ti417.3321
																																																																																																																																														Let Ti416.3326
																																																																																																																																															Int:1
																																																																																																																																															Sub row.3079 Ti416.3326
																																																																																																																																														Let Ti419.3322
																																																																																																																																															Let Ti418.3325
																																																																																																																																																Int:2
																																																																																																																																																App add_mod5.2635group_id.3080 Ti418.3325 
																																																																																																																																															Let Ti421.3323
																																																																																																																																																Let Ti420.3324
																																																																																																																																																	Int:4
																																																																																																																																																	Add index.3081 Ti420.3324
																																																																																																																																																App calc_dirvec_rows.3078Ti417.3321 Ti419.3322 Ti421.3323 
																																																																																																																																											Unit
																																																																																																																																									LetRec create_dirvec.3082 Tu222.3083 
																																																																																																																																										Let v3.3311
																																																																																																																																											Let Ti405.3316
																																																																																																																																												Int:3
																																																																																																																																												Let Td406.3317
																																																																																																																																													Float:0.000000
																																																																																																																																													ExtFunApp create_float_array Ti405.3316,Td406.3317,
																																																																																																																																											Let consts.3312
																																																																																																																																												Let Ti409.3313
																																																																																																																																													Let Ta407.3314
																																																																																																																																														ExtArray n_objects
																																																																																																																																														Let Ti408.3315
																																																																																																																																															Int:0
																																																																																																																																															Get Ta407.3314 Ti408.3315
																																																																																																																																													ExtFunApp create_array Ti409.3313,v3.3311,
																																																																																																																																												Tuple (v3.3311,consts.3312,)
																																																																																																																																										LetRec create_dirvec_elements.3084 d.3085 index.3086 
																																																																																																																																											Let Ti400.3305
																																																																																																																																												Int:0
																																																																																																																																												IfLE Ti400.3305 index.3086
																																																																																																																																													Let Tu223.3306
																																																																																																																																														Let Tt402.3309
																																																																																																																																															Let Tu401.3310
																																																																																																																																																Unit
																																																																																																																																																App create_dirvec.3082Tu401.3310 
																																																																																																																																															Put d.3085 index.3086 Tt402.3309
																																																																																																																																														Let Ti404.3307
																																																																																																																																															Let Ti403.3308
																																																																																																																																																Int:1
																																																																																																																																																Sub index.3086 Ti403.3308
																																																																																																																																															App create_dirvec_elements.3084d.3085 Ti404.3307 
																																																																																																																																													Unit
																																																																																																																																											LetRec create_dirvecs.3087 index.3088 
																																																																																																																																												Let Ti389.3292
																																																																																																																																													Int:0
																																																																																																																																													IfLE Ti389.3292 index.3088
																																																																																																																																														Let Tu225.3293
																																																																																																																																															Let Ta390.3300
																																																																																																																																																ExtArray dirvecs
																																																																																																																																																Let Ta394.3301
																																																																																																																																																	Let Ti391.3302
																																																																																																																																																		Int:120
																																																																																																																																																		Let Tt393.3303
																																																																																																																																																			Let Tu392.3304
																																																																																																																																																				Unit
																																																																																																																																																				App create_dirvec.3082Tu392.3304 
																																																																																																																																																			ExtFunApp create_array Ti391.3302,Tt393.3303,
																																																																																																																																																	Put Ta390.3300 index.3088 Ta394.3301
																																																																																																																																															Let Tu224.3294
																																																																																																																																																Let Ta396.3297
																																																																																																																																																	Let Ta395.3299
																																																																																																																																																		ExtArray dirvecs
																																																																																																																																																		Get Ta395.3299 index.3088
																																																																																																																																																	Let Ti397.3298
																																																																																																																																																		Int:118
																																																																																																																																																		App create_dirvec_elements.3084Ta396.3297 Ti397.3298 
																																																																																																																																																Let Ti399.3295
																																																																																																																																																	Let Ti398.3296
																																																																																																																																																		Int:1
																																																																																																																																																		Sub index.3088 Ti398.3296
																																																																																																																																																	App create_dirvecs.3087Ti399.3295 
																																																																																																																																														Unit
																																																																																																																																												LetRec init_dirvec_constants.3089 vecset.3090 index.3091 
																																																																																																																																													Let Ti385.3287
																																																																																																																																														Int:0
																																																																																																																																														IfLE Ti385.3287 index.3091
																																																																																																																																															Let Tu226.3288
																																																																																																																																																Let Tt386.3291
																																																																																																																																																	Get vecset.3090 index.3091
																																																																																																																																																	App setup_dirvec_constants.2874Tt386.3291 
																																																																																																																																																Let Ti388.3289
																																																																																																																																																	Let Ti387.3290
																																																																																																																																																		Int:1
																																																																																																																																																		Sub index.3091 Ti387.3290
																																																																																																																																																	App init_dirvec_constants.3089vecset.3090 Ti388.3289 
																																																																																																																																															Unit
																																																																																																																																													LetRec init_vecset_constants.3092 index.3093 
																																																																																																																																														Let Ti379.3280
																																																																																																																																															Int:0
																																																																																																																																															IfLE Ti379.3280 index.3093
																																																																																																																																																Let Tu227.3281
																																																																																																																																																	Let Ta381.3284
																																																																																																																																																		Let Ta380.3286
																																																																																																																																																			ExtArray dirvecs
																																																																																																																																																			Get Ta380.3286 index.3093
																																																																																																																																																		Let Ti382.3285
																																																																																																																																																			Int:119
																																																																																																																																																			App init_dirvec_constants.3089Ta381.3284 Ti382.3285 
																																																																																																																																																	Let Ti384.3282
																																																																																																																																																		Let Ti383.3283
																																																																																																																																																			Int:1
																																																																																																																																																			Sub index.3093 Ti383.3283
																																																																																																																																																		App init_vecset_constants.3092Ti384.3282 
																																																																																																																																																Unit
																																																																																																																																														LetRec init_dirvecs.3094 Tu228.3095 
																																																																																																																																															Let Tu230.3273
																																																																																																																																																Let Ti374.3279
																																																																																																																																																	Int:4
																																																																																																																																																	App create_dirvecs.3087Ti374.3279 
																																																																																																																																																Let Tu229.3274
																																																																																																																																																	Let Ti375.3276
																																																																																																																																																		Int:9
																																																																																																																																																		Let Ti376.3277
																																																																																																																																																			Int:0
																																																																																																																																																			Let Ti377.3278
																																																																																																																																																				Int:0
																																																																																																																																																				App calc_dirvec_rows.3078Ti375.3276 Ti376.3277 Ti377.3278 
																																																																																																																																																	Let Ti378.3275
																																																																																																																																																		Int:4
																																																																																																																																																		App init_vecset_constants.3092Ti378.3275 
																																																																																																																																															LetRec add_reflection.3096 index.3097 surface_id.3098 bright.3099 v0.3100 v1.3101 v2.3102 
																																																																																																																																																Let dvec.3266
																																																																																																																																																	Let Tu370.3272
																																																																																																																																																		Unit
																																																																																																																																																		App create_dirvec.3082Tu370.3272 
																																																																																																																																																	Let Tu232.3267
																																																																																																																																																		Let Ta371.3271
																																																																																																																																																			App d_vec.2745dvec.3266 
																																																																																																																																																			App vecset.2638Ta371.3271 v0.3100 v1.3101 v2.3102 
																																																																																																																																																		Let Tu231.3268
																																																																																																																																																			App setup_dirvec_constants.2874dvec.3266 
																																																																																																																																																			Let Ta372.3269
																																																																																																																																																				ExtArray reflections
																																																																																																																																																				Let Tt373.3270
																																																																																																																																																					Tuple (surface_id.3098,dvec.3266,bright.3099,)
																																																																																																																																																					Put Ta372.3269 index.3097 Tt373.3270
																																																																																																																																																LetRec setup_rect_reflection.3103 obj_id.3104 obj.3105 
																																																																																																																																																	Let sid.3221
																																																																																																																																																		ShiftL2 obj_id.3104
																																																																																																																																																		Let nr.3222
																																																																																																																																																			Let Ta334.3264
																																																																																																																																																				ExtArray n_reflections
																																																																																																																																																				Let Ti335.3265
																																																																																																																																																					Int:0
																																																																																																																																																					Get Ta334.3264 Ti335.3265
																																																																																																																																																			Let br.3223
																																																																																																																																																				Let Td336.3262
																																																																																																																																																					Float:1.000000
																																																																																																																																																					Let Td337.3263
																																																																																																																																																						App o_diffuse.2708obj.3105 
																																																																																																																																																						FSub Td336.3262 Td337.3263
																																																																																																																																																				Let n0.3224
																																																																																																																																																					Let Td340.3259
																																																																																																																																																						Let Ta338.3260
																																																																																																																																																							ExtArray light
																																																																																																																																																							Let Ti339.3261
																																																																																																																																																								Int:0
																																																																																																																																																								Get Ta338.3260 Ti339.3261
																																																																																																																																																						ExtFunApp fneg Td340.3259,
																																																																																																																																																					Let n1.3225
																																																																																																																																																						Let Td343.3256
																																																																																																																																																							Let Ta341.3257
																																																																																																																																																								ExtArray light
																																																																																																																																																								Let Ti342.3258
																																																																																																																																																									Int:1
																																																																																																																																																									Get Ta341.3257 Ti342.3258
																																																																																																																																																							ExtFunApp fneg Td343.3256,
																																																																																																																																																						Let n2.3226
																																																																																																																																																							Let Td346.3253
																																																																																																																																																								Let Ta344.3254
																																																																																																																																																									ExtArray light
																																																																																																																																																									Let Ti345.3255
																																																																																																																																																										Int:2
																																																																																																																																																										Get Ta344.3254 Ti345.3255
																																																																																																																																																								ExtFunApp fneg Td346.3253,
																																																																																																																																																							Let Tu235.3227
																																																																																																																																																								Let Ti348.3248
																																																																																																																																																									Let Ti347.3252
																																																																																																																																																										Int:1
																																																																																																																																																										Add sid.3221 Ti347.3252
																																																																																																																																																									Let Td351.3249
																																																																																																																																																										Let Ta349.3250
																																																																																																																																																											ExtArray light
																																																																																																																																																											Let Ti350.3251
																																																																																																																																																												Int:0
																																																																																																																																																												Get Ta349.3250 Ti350.3251
																																																																																																																																																										App add_reflection.3096nr.3222 Ti348.3248 br.3223 Td351.3249 n1.3225 n2.3226 
																																																																																																																																																								Let Tu234.3228
																																																																																																																																																									Let Ti353.3241
																																																																																																																																																										Let Ti352.3247
																																																																																																																																																											Int:1
																																																																																																																																																											Add nr.3222 Ti352.3247
																																																																																																																																																										Let Ti355.3242
																																																																																																																																																											Let Ti354.3246
																																																																																																																																																												Int:2
																																																																																																																																																												Add sid.3221 Ti354.3246
																																																																																																																																																											Let Td358.3243
																																																																																																																																																												Let Ta356.3244
																																																																																																																																																													ExtArray light
																																																																																																																																																													Let Ti357.3245
																																																																																																																																																														Int:1
																																																																																																																																																														Get Ta356.3244 Ti357.3245
																																																																																																																																																												App add_reflection.3096Ti353.3241 Ti355.3242 br.3223 n0.3224 Td358.3243 n2.3226 
																																																																																																																																																									Let Tu233.3229
																																																																																																																																																										Let Ti360.3234
																																																																																																																																																											Let Ti359.3240
																																																																																																																																																												Int:2
																																																																																																																																																												Add nr.3222 Ti359.3240
																																																																																																																																																											Let Ti362.3235
																																																																																																																																																												Let Ti361.3239
																																																																																																																																																													Int:3
																																																																																																																																																													Add sid.3221 Ti361.3239
																																																																																																																																																												Let Td365.3236
																																																																																																																																																													Let Ta363.3237
																																																																																																																																																														ExtArray light
																																																																																																																																																														Let Ti364.3238
																																																																																																																																																															Int:2
																																																																																																																																																															Get Ta363.3237 Ti364.3238
																																																																																																																																																													App add_reflection.3096Ti360.3234 Ti362.3235 br.3223 n0.3224 n1.3225 Td365.3236 
																																																																																																																																																										Let Ta366.3230
																																																																																																																																																											ExtArray n_reflections
																																																																																																																																																											Let Ti367.3231
																																																																																																																																																												Int:0
																																																																																																																																																												Let Ti369.3232
																																																																																																																																																													Let Ti368.3233
																																																																																																																																																														Int:3
																																																																																																																																																														Add nr.3222 Ti368.3233
																																																																																																																																																													Put Ta366.3230 Ti367.3231 Ti369.3232
																																																																																																																																																	LetRec setup_surface_reflection.3106 obj_id.3107 obj.3108 
																																																																																																																																																		Let sid.3180
																																																																																																																																																			Let Ti298.3219
																																																																																																																																																				ShiftL2 obj_id.3107
																																																																																																																																																				Let Ti299.3220
																																																																																																																																																					Int:1
																																																																																																																																																					Add Ti298.3219 Ti299.3220
																																																																																																																																																			Let nr.3181
																																																																																																																																																				Let Ta300.3217
																																																																																																																																																					ExtArray n_reflections
																																																																																																																																																					Let Ti301.3218
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta300.3217 Ti301.3218
																																																																																																																																																				Let br.3182
																																																																																																																																																					Let Td302.3215
																																																																																																																																																						Float:1.000000
																																																																																																																																																						Let Td303.3216
																																																																																																																																																							App o_diffuse.2708obj.3108 
																																																																																																																																																							FSub Td302.3215 Td303.3216
																																																																																																																																																					Let p.3183
																																																																																																																																																						Let Ta304.3213
																																																																																																																																																							ExtArray light
																																																																																																																																																							Let Ta305.3214
																																																																																																																																																								App o_param_abc.2700obj.3108 
																																																																																																																																																								App veciprod.2659Ta304.3213 Ta305.3214 
																																																																																																																																																						Let Tu236.3184
																																																																																																																																																							Let Td313.3189
																																																																																																																																																								Let Td309.3206
																																																																																																																																																									Let Td308.3210
																																																																																																																																																										Let Td306.3211
																																																																																																																																																											Float:2.000000
																																																																																																																																																											Let Td307.3212
																																																																																																																																																												App o_param_a.2694obj.3108 
																																																																																																																																																												FMul Td306.3211 Td307.3212
																																																																																																																																																										FMul Td308.3210 p.3183
																																																																																																																																																									Let Td312.3207
																																																																																																																																																										Let Ta310.3208
																																																																																																																																																											ExtArray light
																																																																																																																																																											Let Ti311.3209
																																																																																																																																																												Int:0
																																																																																																																																																												Get Ta310.3208 Ti311.3209
																																																																																																																																																										FSub Td309.3206 Td312.3207
																																																																																																																																																								Let Td321.3190
																																																																																																																																																									Let Td317.3199
																																																																																																																																																										Let Td316.3203
																																																																																																																																																											Let Td314.3204
																																																																																																																																																												Float:2.000000
																																																																																																																																																												Let Td315.3205
																																																																																																																																																													App o_param_b.2696obj.3108 
																																																																																																																																																													FMul Td314.3204 Td315.3205
																																																																																																																																																											FMul Td316.3203 p.3183
																																																																																																																																																										Let Td320.3200
																																																																																																																																																											Let Ta318.3201
																																																																																																																																																												ExtArray light
																																																																																																																																																												Let Ti319.3202
																																																																																																																																																													Int:1
																																																																																																																																																													Get Ta318.3201 Ti319.3202
																																																																																																																																																											FSub Td317.3199 Td320.3200
																																																																																																																																																									Let Td329.3191
																																																																																																																																																										Let Td325.3192
																																																																																																																																																											Let Td324.3196
																																																																																																																																																												Let Td322.3197
																																																																																																																																																													Float:2.000000
																																																																																																																																																													Let Td323.3198
																																																																																																																																																														App o_param_c.2698obj.3108 
																																																																																																																																																														FMul Td322.3197 Td323.3198
																																																																																																																																																												FMul Td324.3196 p.3183
																																																																																																																																																											Let Td328.3193
																																																																																																																																																												Let Ta326.3194
																																																																																																																																																													ExtArray light
																																																																																																																																																													Let Ti327.3195
																																																																																																																																																														Int:2
																																																																																																																																																														Get Ta326.3194 Ti327.3195
																																																																																																																																																												FSub Td325.3192 Td328.3193
																																																																																																																																																										App add_reflection.3096nr.3181 sid.3180 br.3182 Td313.3189 Td321.3190 Td329.3191 
																																																																																																																																																							Let Ta330.3185
																																																																																																																																																								ExtArray n_reflections
																																																																																																																																																								Let Ti331.3186
																																																																																																																																																									Int:0
																																																																																																																																																									Let Ti333.3187
																																																																																																																																																										Let Ti332.3188
																																																																																																																																																											Int:1
																																																																																																																																																											Add nr.3181 Ti332.3188
																																																																																																																																																										Put Ta330.3185 Ti331.3186 Ti333.3187
																																																																																																																																																		LetRec setup_reflections.3109 obj_id.3110 
																																																																																																																																																			Let Ti288.3168
																																																																																																																																																				Int:0
																																																																																																																																																				IfLE Ti288.3168 obj_id.3110
																																																																																																																																																					Let obj.3169
																																																																																																																																																						Let Ta289.3179
																																																																																																																																																							ExtArray objects
																																																																																																																																																							Get Ta289.3179 obj_id.3110
																																																																																																																																																						Let Ti290.3170
																																																																																																																																																							App o_reflectiontype.2688obj.3169 
																																																																																																																																																							Let Ti291.3171
																																																																																																																																																								Int:2
																																																																																																																																																								IfEq Ti290.3170 Ti291.3171
																																																																																																																																																									Let Tb294.3172
																																																																																																																																																										Let Td292.3177
																																																																																																																																																											App o_diffuse.2708obj.3169 
																																																																																																																																																											Let Td293.3178
																																																																																																																																																												Float:1.000000
																																																																																																																																																												ExtFunApp fless Td292.3177,Td293.3178,
																																																																																																																																																										Let Ti295.3173
																																																																																																																																																											Int:0
																																																																																																																																																											IfEq Tb294.3172 Ti295.3173
																																																																																																																																																												Unit
																																																																																																																																																												Let m_shape.3174
																																																																																																																																																													App o_form.2686obj.3169 
																																																																																																																																																													Let Ti296.3175
																																																																																																																																																														Int:1
																																																																																																																																																														IfEq m_shape.3174 Ti296.3175
																																																																																																																																																															App setup_rect_reflection.3103obj_id.3110 obj.3169 
																																																																																																																																																															Let Ti297.3176
																																																																																																																																																																Int:2
																																																																																																																																																																IfEq m_shape.3174 Ti297.3176
																																																																																																																																																																	App setup_surface_reflection.3106obj_id.3110 obj.3169 
																																																																																																																																																																	Unit
																																																																																																																																																									Unit
																																																																																																																																																					Unit
																																																																																																																																																			LetRec rt.3111 size_x.3112 size_y.3113 
																																																																																																																																																				Let Tu248.3118
																																																																																																																																																					Let Ta253.3166
																																																																																																																																																						ExtArray image_size
																																																																																																																																																						Let Ti254.3167
																																																																																																																																																							Int:0
																																																																																																																																																							Put Ta253.3166 Ti254.3167 size_x.3112
																																																																																																																																																					Let Tu247.3119
																																																																																																																																																						Let Ta255.3164
																																																																																																																																																							ExtArray image_size
																																																																																																																																																							Let Ti256.3165
																																																																																																																																																								Int:1
																																																																																																																																																								Put Ta255.3164 Ti256.3165 size_y.3113
																																																																																																																																																						Let Tu246.3120
																																																																																																																																																							Let Ta257.3161
																																																																																																																																																								ExtArray image_center
																																																																																																																																																								Let Ti258.3162
																																																																																																																																																									Int:0
																																																																																																																																																									Let Ti259.3163
																																																																																																																																																										ShiftR1 size_x.3112
																																																																																																																																																										Put Ta257.3161 Ti258.3162 Ti259.3163
																																																																																																																																																							Let Tu245.3121
																																																																																																																																																								Let Ta260.3158
																																																																																																																																																									ExtArray image_center
																																																																																																																																																									Let Ti261.3159
																																																																																																																																																										Int:1
																																																																																																																																																										Let Ti262.3160
																																																																																																																																																											ShiftR1 size_y.3113
																																																																																																																																																											Put Ta260.3158 Ti261.3159 Ti262.3160
																																																																																																																																																								Let Tu244.3122
																																																																																																																																																									Let Ta263.3152
																																																																																																																																																										ExtArray scan_pitch
																																																																																																																																																										Let Ti264.3153
																																																																																																																																																											Int:0
																																																																																																																																																											Let Td268.3154
																																																																																																																																																												Let Td265.3155
																																																																																																																																																													Float:128.000000
																																																																																																																																																													Let Td266.3156
																																																																																																																																																														ExtFunApp float_of_int size_x.3112,
																																																																																																																																																														Let Td267.3157
																																																																																																																																																															FReciprocal Td266.3156
																																																																																																																																																															FMul Td265.3155 Td267.3157
																																																																																																																																																												Put Ta263.3152 Ti264.3153 Td268.3154
																																																																																																																																																									Let prev.3123
																																																																																																																																																										Let Tu269.3151
																																																																																																																																																											Unit
																																																																																																																																																											App create_pixelline.3058Tu269.3151 
																																																																																																																																																										Let cur.3124
																																																																																																																																																											Let Tu270.3150
																																																																																																																																																												Unit
																																																																																																																																																												App create_pixelline.3058Tu270.3150 
																																																																																																																																																											Let next.3125
																																																																																																																																																												Let Tu271.3149
																																																																																																																																																													Unit
																																																																																																																																																													App create_pixelline.3058Tu271.3149 
																																																																																																																																																												Let Tu243.3126
																																																																																																																																																													Let Tu272.3148
																																																																																																																																																														Unit
																																																																																																																																																														App read_parameter.2776Tu272.3148 
																																																																																																																																																													Let Tu242.3127
																																																																																																																																																														Let Tu273.3147
																																																																																																																																																															Unit
																																																																																																																																																															App write_ppm_header.3019Tu273.3147 
																																																																																																																																																														Let Tu241.3128
																																																																																																																																																															Let Tu274.3146
																																																																																																																																																																Unit
																																																																																																																																																																App init_dirvecs.3094Tu274.3146 
																																																																																																																																																															Let Tu240.3129
																																																																																																																																																																Let Ta276.3143
																																																																																																																																																																	Let Tt275.3145
																																																																																																																																																																		ExtTuple light_dirvec
																																																																																																																																																																		App d_vec.2745Tt275.3145 
																																																																																																																																																																	Let Ta277.3144
																																																																																																																																																																		ExtArray light
																																																																																																																																																																		App veccpy.2648Ta276.3143 Ta277.3144 
																																																																																																																																																																Let Tu239.3130
																																																																																																																																																																	Let Tt278.3142
																																																																																																																																																																		ExtTuple light_dirvec
																																																																																																																																																																		App setup_dirvec_constants.2874Tt278.3142 
																																																																																																																																																																	Let Tu238.3131
																																																																																																																																																																		Let Ti283.3137
																																																																																																																																																																			Let Ti281.3138
																																																																																																																																																																				Let Ta279.3140
																																																																																																																																																																					ExtArray n_objects
																																																																																																																																																																					Let Ti280.3141
																																																																																																																																																																						Int:0
																																																																																																																																																																						Get Ta279.3140 Ti280.3141
																																																																																																																																																																				Let Ti282.3139
																																																																																																																																																																					Int:1
																																																																																																																																																																					Sub Ti281.3138 Ti282.3139
																																																																																																																																																																			App setup_reflections.3109Ti283.3137 
																																																																																																																																																																		Let Tu237.3132
																																																																																																																																																																			Let Ti284.3135
																																																																																																																																																																				Int:0
																																																																																																																																																																				Let Ti285.3136
																																																																																																																																																																					Int:0
																																																																																																																																																																					App pretrace_line.3035cur.3124 Ti284.3135 Ti285.3136 
																																																																																																																																																																			Let Ti286.3133
																																																																																																																																																																				Int:0
																																																																																																																																																																				Let Ti287.3134
																																																																																																																																																																					Int:2
																																																																																																																																																																					App scan_line.3045Ti286.3133 prev.3123 cur.3124 next.3125 Ti287.3134 
																																																																																																																																																				Let Tu249.3114
																																																																																																																																																					Let Ti250.3116
																																																																																																																																																						Int:512
																																																																																																																																																						Let Ti251.3117
																																																																																																																																																							Int:512
																																																																																																																																																							App rt.3111Ti250.3116 Ti251.3117 
																																																																																																																																																					Let Ti252.3115
																																																																																																																																																						Int:0
																																																																																																																																																						ExtFunApp print_int Ti252.3115,
