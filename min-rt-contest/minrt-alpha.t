LetRec fneg.2639 x.2640 
	FNeg x.2640
	LetRec fispos.2641 x.2642 
		Let Td2638.6383
			Float:0.000000
			IfLE x.2642 Td2638.6383
				Int:0
				Int:1
		LetRec fisneg.2643 x.2644 
			Let Td2637.6382
				Float:0.000000
				IfLE Td2637.6382 x.2644
					Int:0
					Int:1
			LetRec fiszero.2645 x.2646 
				Let Td2636.6381
					Float:0.000000
					IfEq x.2646 Td2636.6381
						Int:1
						Int:0
				LetRec fhalf.2647 x.2648 
					Let Td2635.6380
						Float:0.500000
						FMul x.2648 Td2635.6380
					LetRec fsqr.2649 x.2650 
						FMul x.2650 x.2650
						LetRec fabs.2651 x.2652 
							Let Td2634.6379
								Float:0.000000
								IfLE Td2634.6379 x.2652
									Var x.2652
									App fneg.2639x.2652 
							LetRec fless.2653 x.2654 y.2655 
								Let z.6378
									FSub x.2654 y.2655
									App fisneg.2643z.6378 
								LetRec fflag.2656 a.2657 
									Let Td2632.6376
										Float:0.000000
										IfLE Td2632.6376 a.2657
											Int:1
											Let Ti2633.6377
												Int:1
												Neg Ti2633.6377
									LetRec xor.2658 x.2659 y.2660 
										Let Ti2630.6374
											Int:0
											IfEq x.2659 Ti2630.6374
												Var y.2660
												Let Ti2631.6375
													Int:0
													IfEq y.2660 Ti2631.6375
														Int:1
														Int:0
										LetRec sgn.2661 x.2662 
											Let Tb2626.6370
												App fiszero.2645x.2662 
												Let Ti2627.6371
													Int:0
													IfEq Tb2626.6370 Ti2627.6371
														Let Tb2628.6372
															App fispos.2641x.2662 
															Let Ti2629.6373
																Int:0
																IfEq Tb2628.6372 Ti2629.6373
																	Float:-1.000000
																	Float:1.000000
														Float:0.000000
											LetRec fneg_cond.2663 cond.2664 x.2665 
												Let Ti2625.6369
													Int:0
													IfEq cond.2664 Ti2625.6369
														App fneg.2639x.2665 
														Var x.2665
												LetRec add_mod5.2666 x.2667 y.2668 
													Let sum.6366
														Add x.2667 y.2668
														Let Ti2623.6367
															Int:5
															IfLE Ti2623.6367 sum.6366
																Let Ti2624.6368
																	Int:5
																	Sub sum.6366 Ti2624.6368
																Var sum.6366
													LetRec vecset.2669 v.2670 x.2671 y.2672 z.2673 
														Let Tu2.6361
															Let Ti2620.6365
																Int:0
																Put v.2670 Ti2620.6365 x.2671
															Let Tu1.6362
																Let Ti2621.6364
																	Int:1
																	Put v.2670 Ti2621.6364 y.2672
																Let Ti2622.6363
																	Int:2
																	Put v.2670 Ti2622.6363 z.2673
														LetRec vecfill.2674 v.2675 elem.2676 
															Let Tu4.6356
																Let Ti2617.6360
																	Int:0
																	Put v.2675 Ti2617.6360 elem.2676
																Let Tu3.6357
																	Let Ti2618.6359
																		Int:1
																		Put v.2675 Ti2618.6359 elem.2676
																	Let Ti2619.6358
																		Int:2
																		Put v.2675 Ti2619.6358 elem.2676
															LetRec vecbzero.2677 v.2678 
																Let Td2616.6355
																	Float:0.000000
																	App vecfill.2674v.2678 Td2616.6355 
																LetRec veccpy.2679 dest.2680 src.2681 
																	Let Tu6.6344
																		Let Ti2607.6352
																			Int:0
																			Let Td2609.6353
																				Let Ti2608.6354
																					Int:0
																					Get src.2681 Ti2608.6354
																				Put dest.2680 Ti2607.6352 Td2609.6353
																		Let Tu5.6345
																			Let Ti2610.6349
																				Int:1
																				Let Td2612.6350
																					Let Ti2611.6351
																						Int:1
																						Get src.2681 Ti2611.6351
																					Put dest.2680 Ti2610.6349 Td2612.6350
																			Let Ti2613.6346
																				Int:2
																				Let Td2615.6347
																					Let Ti2614.6348
																						Int:2
																						Get src.2681 Ti2614.6348
																					Put dest.2680 Ti2613.6346 Td2615.6347
																	LetRec vecdist2.2682 p.2683 q.2684 
																		Let Td2600.6325
																			Let Td2593.6332
																				Let Td2592.6339
																					Let Td2589.6340
																						Let Ti2588.6343
																							Int:0
																							Get p.2683 Ti2588.6343
																						Let Td2591.6341
																							Let Ti2590.6342
																								Int:0
																								Get q.2684 Ti2590.6342
																							FSub Td2589.6340 Td2591.6341
																					App fsqr.2649Td2592.6339 
																				Let Td2599.6333
																					Let Td2598.6334
																						Let Td2595.6335
																							Let Ti2594.6338
																								Int:1
																								Get p.2683 Ti2594.6338
																							Let Td2597.6336
																								Let Ti2596.6337
																									Int:1
																									Get q.2684 Ti2596.6337
																								FSub Td2595.6335 Td2597.6336
																						App fsqr.2649Td2598.6334 
																					FAdd Td2593.6332 Td2599.6333
																			Let Td2606.6326
																				Let Td2605.6327
																					Let Td2602.6328
																						Let Ti2601.6331
																							Int:2
																							Get p.2683 Ti2601.6331
																						Let Td2604.6329
																							Let Ti2603.6330
																								Int:2
																								Get q.2684 Ti2603.6330
																							FSub Td2602.6328 Td2604.6329
																					App fsqr.2649Td2605.6327 
																				FAdd Td2600.6325 Td2606.6326
																		LetRec vecunit.2685 v.2686 
																			Let il.6296
																				Let Td2562.6311
																					Float:1.000000
																					Let Td2574.6312
																						Let Td2573.6314
																							Let Td2569.6315
																								Let Td2565.6319
																									Let Td2564.6323
																										Let Ti2563.6324
																											Int:0
																											Get v.2686 Ti2563.6324
																										App fsqr.2649Td2564.6323 
																									Let Td2568.6320
																										Let Td2567.6321
																											Let Ti2566.6322
																												Int:1
																												Get v.2686 Ti2566.6322
																											App fsqr.2649Td2567.6321 
																										FAdd Td2565.6319 Td2568.6320
																								Let Td2572.6316
																									Let Td2571.6317
																										Let Ti2570.6318
																											Int:2
																											Get v.2686 Ti2570.6318
																										App fsqr.2649Td2571.6317 
																									FAdd Td2569.6315 Td2572.6316
																							ExtFunApp sqrt Td2573.6314,
																						Let Td2575.6313
																							FReciprocal Td2574.6312
																							FMul Td2562.6311 Td2575.6313
																				Let Tu8.6297
																					Let Ti2576.6307
																						Int:0
																						Let Td2579.6308
																							Let Td2578.6309
																								Let Ti2577.6310
																									Int:0
																									Get v.2686 Ti2577.6310
																								FMul Td2578.6309 il.6296
																							Put v.2686 Ti2576.6307 Td2579.6308
																					Let Tu7.6298
																						Let Ti2580.6303
																							Int:1
																							Let Td2583.6304
																								Let Td2582.6305
																									Let Ti2581.6306
																										Int:1
																										Get v.2686 Ti2581.6306
																									FMul Td2582.6305 il.6296
																								Put v.2686 Ti2580.6303 Td2583.6304
																						Let Ti2584.6299
																							Int:2
																							Let Td2587.6300
																								Let Td2586.6301
																									Let Ti2585.6302
																										Int:2
																										Get v.2686 Ti2585.6302
																									FMul Td2586.6301 il.6296
																								Put v.2686 Ti2584.6299 Td2587.6300
																			LetRec vecunit_sgn.2687 v.2688 inv.2689 
																				Let l.6262
																					Let Td2542.6285
																						Let Td2538.6286
																							Let Td2534.6290
																								Let Td2533.6294
																									Let Ti2532.6295
																										Int:0
																										Get v.2688 Ti2532.6295
																									App fsqr.2649Td2533.6294 
																								Let Td2537.6291
																									Let Td2536.6292
																										Let Ti2535.6293
																											Int:1
																											Get v.2688 Ti2535.6293
																										App fsqr.2649Td2536.6292 
																									FAdd Td2534.6290 Td2537.6291
																							Let Td2541.6287
																								Let Td2540.6288
																									Let Ti2539.6289
																										Int:2
																										Get v.2688 Ti2539.6289
																									App fsqr.2649Td2540.6288 
																								FAdd Td2538.6286 Td2541.6287
																						ExtFunApp sqrt Td2542.6285,
																					Let il.6263
																						Let Tb2543.6278
																							App fiszero.2645l.6262 
																							Let Ti2544.6279
																								Int:0
																								IfEq Tb2543.6278 Ti2544.6279
																									Let Ti2545.6280
																										Int:0
																										IfEq inv.2689 Ti2545.6280
																											Let Td2546.6283
																												Float:1.000000
																												Let Td2547.6284
																													FReciprocal l.6262
																													FMul Td2546.6283 Td2547.6284
																											Let Td2548.6281
																												Float:-1.000000
																												Let Td2549.6282
																													FReciprocal l.6262
																													FMul Td2548.6281 Td2549.6282
																									Float:1.000000
																						Let Tu10.6264
																							Let Ti2550.6274
																								Int:0
																								Let Td2553.6275
																									Let Td2552.6276
																										Let Ti2551.6277
																											Int:0
																											Get v.2688 Ti2551.6277
																										FMul Td2552.6276 il.6263
																									Put v.2688 Ti2550.6274 Td2553.6275
																							Let Tu9.6265
																								Let Ti2554.6270
																									Int:1
																									Let Td2557.6271
																										Let Td2556.6272
																											Let Ti2555.6273
																												Int:1
																												Get v.2688 Ti2555.6273
																											FMul Td2556.6272 il.6263
																										Put v.2688 Ti2554.6270 Td2557.6271
																								Let Ti2558.6266
																									Int:2
																									Let Td2561.6267
																										Let Td2560.6268
																											Let Ti2559.6269
																												Int:2
																												Get v.2688 Ti2559.6269
																											FMul Td2560.6268 il.6263
																										Put v.2688 Ti2558.6266 Td2561.6267
																				LetRec veciprod.2690 v.2691 w.2692 
																					Let Td2526.6246
																						Let Td2520.6252
																							Let Td2517.6258
																								Let Ti2516.6261
																									Int:0
																									Get v.2691 Ti2516.6261
																								Let Td2519.6259
																									Let Ti2518.6260
																										Int:0
																										Get w.2692 Ti2518.6260
																									FMul Td2517.6258 Td2519.6259
																							Let Td2525.6253
																								Let Td2522.6254
																									Let Ti2521.6257
																										Int:1
																										Get v.2691 Ti2521.6257
																									Let Td2524.6255
																										Let Ti2523.6256
																											Int:1
																											Get w.2692 Ti2523.6256
																										FMul Td2522.6254 Td2524.6255
																								FAdd Td2520.6252 Td2525.6253
																						Let Td2531.6247
																							Let Td2528.6248
																								Let Ti2527.6251
																									Int:2
																									Get v.2691 Ti2527.6251
																								Let Td2530.6249
																									Let Ti2529.6250
																										Int:2
																										Get w.2692 Ti2529.6250
																									FMul Td2528.6248 Td2530.6249
																							FAdd Td2526.6246 Td2531.6247
																					LetRec veciprod2.2693 v.2694 w0.2695 w1.2696 w2.2697 
																						Let Td2512.6236
																							Let Td2508.6240
																								Let Td2507.6244
																									Let Ti2506.6245
																										Int:0
																										Get v.2694 Ti2506.6245
																									FMul Td2507.6244 w0.2695
																								Let Td2511.6241
																									Let Td2510.6242
																										Let Ti2509.6243
																											Int:1
																											Get v.2694 Ti2509.6243
																										FMul Td2510.6242 w1.2696
																									FAdd Td2508.6240 Td2511.6241
																							Let Td2515.6237
																								Let Td2514.6238
																									Let Ti2513.6239
																										Int:2
																										Get v.2694 Ti2513.6239
																									FMul Td2514.6238 w2.2697
																								FAdd Td2512.6236 Td2515.6237
																						LetRec vecaccum.2698 dest.2699 scale.2700 v.2701 
																							Let Tu12.6213
																								Let Ti2485.6229
																									Int:0
																									Let Td2491.6230
																										Let Td2487.6231
																											Let Ti2486.6235
																												Int:0
																												Get dest.2699 Ti2486.6235
																											Let Td2490.6232
																												Let Td2489.6233
																													Let Ti2488.6234
																														Int:0
																														Get v.2701 Ti2488.6234
																													FMul scale.2700 Td2489.6233
																												FAdd Td2487.6231 Td2490.6232
																										Put dest.2699 Ti2485.6229 Td2491.6230
																								Let Tu11.6214
																									Let Ti2492.6222
																										Int:1
																										Let Td2498.6223
																											Let Td2494.6224
																												Let Ti2493.6228
																													Int:1
																													Get dest.2699 Ti2493.6228
																												Let Td2497.6225
																													Let Td2496.6226
																														Let Ti2495.6227
																															Int:1
																															Get v.2701 Ti2495.6227
																														FMul scale.2700 Td2496.6226
																													FAdd Td2494.6224 Td2497.6225
																											Put dest.2699 Ti2492.6222 Td2498.6223
																									Let Ti2499.6215
																										Int:2
																										Let Td2505.6216
																											Let Td2501.6217
																												Let Ti2500.6221
																													Int:2
																													Get dest.2699 Ti2500.6221
																												Let Td2504.6218
																													Let Td2503.6219
																														Let Ti2502.6220
																															Int:2
																															Get v.2701 Ti2502.6220
																														FMul scale.2700 Td2503.6219
																													FAdd Td2501.6217 Td2504.6218
																											Put dest.2699 Ti2499.6215 Td2505.6216
																							LetRec vecadd.2702 dest.2703 v.2704 
																								Let Tu14.6193
																									Let Ti2467.6207
																										Int:0
																										Let Td2472.6208
																											Let Td2469.6209
																												Let Ti2468.6212
																													Int:0
																													Get dest.2703 Ti2468.6212
																												Let Td2471.6210
																													Let Ti2470.6211
																														Int:0
																														Get v.2704 Ti2470.6211
																													FAdd Td2469.6209 Td2471.6210
																											Put dest.2703 Ti2467.6207 Td2472.6208
																									Let Tu13.6194
																										Let Ti2473.6201
																											Int:1
																											Let Td2478.6202
																												Let Td2475.6203
																													Let Ti2474.6206
																														Int:1
																														Get dest.2703 Ti2474.6206
																													Let Td2477.6204
																														Let Ti2476.6205
																															Int:1
																															Get v.2704 Ti2476.6205
																														FAdd Td2475.6203 Td2477.6204
																												Put dest.2703 Ti2473.6201 Td2478.6202
																										Let Ti2479.6195
																											Int:2
																											Let Td2484.6196
																												Let Td2481.6197
																													Let Ti2480.6200
																														Int:2
																														Get dest.2703 Ti2480.6200
																													Let Td2483.6198
																														Let Ti2482.6199
																															Int:2
																															Get v.2704 Ti2482.6199
																														FAdd Td2481.6197 Td2483.6198
																												Put dest.2703 Ti2479.6195 Td2484.6196
																								LetRec vecmul.2705 dest.2706 v.2707 
																									Let Tu16.6173
																										Let Ti2449.6187
																											Int:0
																											Let Td2454.6188
																												Let Td2451.6189
																													Let Ti2450.6192
																														Int:0
																														Get dest.2706 Ti2450.6192
																													Let Td2453.6190
																														Let Ti2452.6191
																															Int:0
																															Get v.2707 Ti2452.6191
																														FMul Td2451.6189 Td2453.6190
																												Put dest.2706 Ti2449.6187 Td2454.6188
																										Let Tu15.6174
																											Let Ti2455.6181
																												Int:1
																												Let Td2460.6182
																													Let Td2457.6183
																														Let Ti2456.6186
																															Int:1
																															Get dest.2706 Ti2456.6186
																														Let Td2459.6184
																															Let Ti2458.6185
																																Int:1
																																Get v.2707 Ti2458.6185
																															FMul Td2457.6183 Td2459.6184
																													Put dest.2706 Ti2455.6181 Td2460.6182
																											Let Ti2461.6175
																												Int:2
																												Let Td2466.6176
																													Let Td2463.6177
																														Let Ti2462.6180
																															Int:2
																															Get dest.2706 Ti2462.6180
																														Let Td2465.6178
																															Let Ti2464.6179
																																Int:2
																																Get v.2707 Ti2464.6179
																															FMul Td2463.6177 Td2465.6178
																													Put dest.2706 Ti2461.6175 Td2466.6176
																									LetRec vecscale.2708 dest.2709 scale.2710 
																										Let Tu18.6159
																											Let Ti2437.6169
																												Int:0
																												Let Td2440.6170
																													Let Td2439.6171
																														Let Ti2438.6172
																															Int:0
																															Get dest.2709 Ti2438.6172
																														FMul Td2439.6171 scale.2710
																													Put dest.2709 Ti2437.6169 Td2440.6170
																											Let Tu17.6160
																												Let Ti2441.6165
																													Int:1
																													Let Td2444.6166
																														Let Td2443.6167
																															Let Ti2442.6168
																																Int:1
																																Get dest.2709 Ti2442.6168
																															FMul Td2443.6167 scale.2710
																														Put dest.2709 Ti2441.6165 Td2444.6166
																												Let Ti2445.6161
																													Int:2
																													Let Td2448.6162
																														Let Td2447.6163
																															Let Ti2446.6164
																																Int:2
																																Get dest.2709 Ti2446.6164
																															FMul Td2447.6163 scale.2710
																														Put dest.2709 Ti2445.6161 Td2448.6162
																										LetRec vecaccumv.2711 dest.2712 v.2713 w.2714 
																											Let Tu20.6130
																												Let Ti2410.6150
																													Int:0
																													Let Td2418.6151
																														Let Td2412.6152
																															Let Ti2411.6158
																																Int:0
																																Get dest.2712 Ti2411.6158
																															Let Td2417.6153
																																Let Td2414.6154
																																	Let Ti2413.6157
																																		Int:0
																																		Get v.2713 Ti2413.6157
																																	Let Td2416.6155
																																		Let Ti2415.6156
																																			Int:0
																																			Get w.2714 Ti2415.6156
																																		FMul Td2414.6154 Td2416.6155
																																FAdd Td2412.6152 Td2417.6153
																														Put dest.2712 Ti2410.6150 Td2418.6151
																												Let Tu19.6131
																													Let Ti2419.6141
																														Int:1
																														Let Td2427.6142
																															Let Td2421.6143
																																Let Ti2420.6149
																																	Int:1
																																	Get dest.2712 Ti2420.6149
																																Let Td2426.6144
																																	Let Td2423.6145
																																		Let Ti2422.6148
																																			Int:1
																																			Get v.2713 Ti2422.6148
																																		Let Td2425.6146
																																			Let Ti2424.6147
																																				Int:1
																																				Get w.2714 Ti2424.6147
																																			FMul Td2423.6145 Td2425.6146
																																	FAdd Td2421.6143 Td2426.6144
																															Put dest.2712 Ti2419.6141 Td2427.6142
																													Let Ti2428.6132
																														Int:2
																														Let Td2436.6133
																															Let Td2430.6134
																																Let Ti2429.6140
																																	Int:2
																																	Get dest.2712 Ti2429.6140
																																Let Td2435.6135
																																	Let Td2432.6136
																																		Let Ti2431.6139
																																			Int:2
																																			Get v.2713 Ti2431.6139
																																		Let Td2434.6137
																																			Let Ti2433.6138
																																				Int:2
																																				Get w.2714 Ti2433.6138
																																			FMul Td2432.6136 Td2434.6137
																																	FAdd Td2430.6134 Td2435.6135
																															Put dest.2712 Ti2428.6132 Td2436.6133
																											LetRec o_texturetype.2715 m.2716 
																												LetTuple (m_tex.6119,xm_shape.6120,xm_surface.6121,xm_isrot.6122,xm_abc.6123,xm_xyz.6124,xm_invert.6125,xm_surfparams.6126,xm_color.6127,xm_rot123.6128,xm_ctbl.6129,)
 m.2716
																													Var m_tex.6119
																												LetRec o_form.2717 m.2718 
																													LetTuple (xm_tex.6108,m_shape.6109,xm_surface.6110,xm_isrot.6111,xm_abc.6112,xm_xyz.6113,xm_invert.6114,xm_surfparams.6115,xm_color.6116,xm_rot123.6117,xm_ctbl.6118,)
 m.2718
																														Var m_shape.6109
																													LetRec o_reflectiontype.2719 m.2720 
																														LetTuple (xm_tex.6097,xm_shape.6098,m_surface.6099,xm_isrot.6100,xm_abc.6101,xm_xyz.6102,xm_invert.6103,xm_surfparams.6104,xm_color.6105,xm_rot123.6106,xm_ctbl.6107,)
 m.2720
																															Var m_surface.6099
																														LetRec o_isinvert.2721 m.2722 
																															LetTuple (xm_tex.6086,xm_shape.6087,xm_surface.6088,xm_isrot.6089,xm_abc.6090,xm_xyz.6091,m_invert.6092,xm_surfparams.6093,xm_color.6094,xm_rot123.6095,xm_ctbl.6096,)
 m.2722
																																Var m_invert.6092
																															LetRec o_isrot.2723 m.2724 
																																LetTuple (xm_tex.6075,xm_shape.6076,xm_surface.6077,m_isrot.6078,xm_abc.6079,xm_xyz.6080,xm_invert.6081,xm_surfparams.6082,xm_color.6083,xm_rot123.6084,xm_ctbl.6085,)
 m.2724
																																	Var m_isrot.6078
																																LetRec o_param_a.2725 m.2726 
																																	LetTuple (xm_tex.6063,xm_shape.6064,xm_surface.6065,xm_isrot.6066,m_abc.6067,xm_xyz.6068,xm_invert.6069,xm_surfparams.6070,xm_color.6071,xm_rot123.6072,xm_ctbl.6073,)
 m.2726
																																		Let Ti2409.6074
																																			Int:0
																																			Get m_abc.6067 Ti2409.6074
																																	LetRec o_param_b.2727 m.2728 
																																		LetTuple (xm_tex.6051,xm_shape.6052,xm_surface.6053,xm_isrot.6054,m_abc.6055,xm_xyz.6056,xm_invert.6057,xm_surfparams.6058,xm_color.6059,xm_rot123.6060,xm_ctbl.6061,)
 m.2728
																																			Let Ti2408.6062
																																				Int:1
																																				Get m_abc.6055 Ti2408.6062
																																		LetRec o_param_c.2729 m.2730 
																																			LetTuple (xm_tex.6039,xm_shape.6040,xm_surface.6041,xm_isrot.6042,m_abc.6043,xm_xyz.6044,xm_invert.6045,xm_surfparams.6046,xm_color.6047,xm_rot123.6048,xm_ctbl.6049,)
 m.2730
																																				Let Ti2407.6050
																																					Int:2
																																					Get m_abc.6043 Ti2407.6050
																																			LetRec o_param_abc.2731 m.2732 
																																				LetTuple (xm_tex.6028,xm_shape.6029,xm_surface.6030,xm_isrot.6031,m_abc.6032,xm_xyz.6033,xm_invert.6034,xm_surfparams.6035,xm_color.6036,xm_rot123.6037,xm_ctbl.6038,)
 m.2732
																																					Var m_abc.6032
																																				LetRec o_param_x.2733 m.2734 
																																					LetTuple (xm_tex.6016,xm_shape.6017,xm_surface.6018,xm_isrot.6019,xm_abc.6020,m_xyz.6021,xm_invert.6022,xm_surfparams.6023,xm_color.6024,xm_rot123.6025,xm_ctbl.6026,)
 m.2734
																																						Let Ti2406.6027
																																							Int:0
																																							Get m_xyz.6021 Ti2406.6027
																																					LetRec o_param_y.2735 m.2736 
																																						LetTuple (xm_tex.6004,xm_shape.6005,xm_surface.6006,xm_isrot.6007,xm_abc.6008,m_xyz.6009,xm_invert.6010,xm_surfparams.6011,xm_color.6012,xm_rot123.6013,xm_ctbl.6014,)
 m.2736
																																							Let Ti2405.6015
																																								Int:1
																																								Get m_xyz.6009 Ti2405.6015
																																						LetRec o_param_z.2737 m.2738 
																																							LetTuple (xm_tex.5992,xm_shape.5993,xm_surface.5994,xm_isrot.5995,xm_abc.5996,m_xyz.5997,xm_invert.5998,xm_surfparams.5999,xm_color.6000,xm_rot123.6001,xm_ctbl.6002,)
 m.2738
																																								Let Ti2404.6003
																																									Int:2
																																									Get m_xyz.5997 Ti2404.6003
																																							LetRec o_diffuse.2739 m.2740 
																																								LetTuple (xm_tex.5980,xm_shape.5981,xm_surface.5982,xm_isrot.5983,xm_abc.5984,xm_xyz.5985,xm_invert.5986,m_surfparams.5987,xm_color.5988,xm_rot123.5989,xm_ctbl.5990,)
 m.2740
																																									Let Ti2403.5991
																																										Int:0
																																										Get m_surfparams.5987 Ti2403.5991
																																								LetRec o_hilight.2741 m.2742 
																																									LetTuple (xm_tex.5968,xm_shape.5969,xm_surface.5970,xm_isrot.5971,xm_abc.5972,xm_xyz.5973,xm_invert.5974,m_surfparams.5975,xm_color.5976,xm_rot123.5977,xm_ctbl.5978,)
 m.2742
																																										Let Ti2402.5979
																																											Int:1
																																											Get m_surfparams.5975 Ti2402.5979
																																									LetRec o_color_red.2743 m.2744 
																																										LetTuple (xm_tex.5956,xm_shape.5957,m_surface.5958,xm_isrot.5959,xm_abc.5960,xm_xyz.5961,xm_invert.5962,xm_surfparams.5963,m_color.5964,xm_rot123.5965,xm_ctbl.5966,)
 m.2744
																																											Let Ti2401.5967
																																												Int:0
																																												Get m_color.5964 Ti2401.5967
																																										LetRec o_color_green.2745 m.2746 
																																											LetTuple (xm_tex.5944,xm_shape.5945,m_surface.5946,xm_isrot.5947,xm_abc.5948,xm_xyz.5949,xm_invert.5950,xm_surfparams.5951,m_color.5952,xm_rot123.5953,xm_ctbl.5954,)
 m.2746
																																												Let Ti2400.5955
																																													Int:1
																																													Get m_color.5952 Ti2400.5955
																																											LetRec o_color_blue.2747 m.2748 
																																												LetTuple (xm_tex.5932,xm_shape.5933,m_surface.5934,xm_isrot.5935,xm_abc.5936,xm_xyz.5937,xm_invert.5938,xm_surfparams.5939,m_color.5940,xm_rot123.5941,xm_ctbl.5942,)
 m.2748
																																													Let Ti2399.5943
																																														Int:2
																																														Get m_color.5940 Ti2399.5943
																																												LetRec o_param_r1.2749 m.2750 
																																													LetTuple (xm_tex.5920,xm_shape.5921,xm_surface.5922,xm_isrot.5923,xm_abc.5924,xm_xyz.5925,xm_invert.5926,xm_surfparams.5927,xm_color.5928,m_rot123.5929,xm_ctbl.5930,)
 m.2750
																																														Let Ti2398.5931
																																															Int:0
																																															Get m_rot123.5929 Ti2398.5931
																																													LetRec o_param_r2.2751 m.2752 
																																														LetTuple (xm_tex.5908,xm_shape.5909,xm_surface.5910,xm_isrot.5911,xm_abc.5912,xm_xyz.5913,xm_invert.5914,xm_surfparams.5915,xm_color.5916,m_rot123.5917,xm_ctbl.5918,)
 m.2752
																																															Let Ti2397.5919
																																																Int:1
																																																Get m_rot123.5917 Ti2397.5919
																																														LetRec o_param_r3.2753 m.2754 
																																															LetTuple (xm_tex.5896,xm_shape.5897,xm_surface.5898,xm_isrot.5899,xm_abc.5900,xm_xyz.5901,xm_invert.5902,xm_surfparams.5903,xm_color.5904,m_rot123.5905,xm_ctbl.5906,)
 m.2754
																																																Let Ti2396.5907
																																																	Int:2
																																																	Get m_rot123.5905 Ti2396.5907
																																															LetRec o_param_ctbl.2755 m.2756 
																																																LetTuple (xm_tex.5885,xm_shape.5886,xm_surface.5887,xm_isrot.5888,xm_abc.5889,xm_xyz.5890,xm_invert.5891,xm_surfparams.5892,xm_color.5893,xm_rot123.5894,m_ctbl.5895,)
 m.2756
																																																	Var m_ctbl.5895
																																																LetRec p_rgb.2757 pixel.2758 
																																																	LetTuple (m_rgb.5877,xm_isect_ps.5878,xm_sids.5879,xm_cdif.5880,xm_engy.5881,xm_r20p.5882,xm_gid.5883,xm_nvectors.5884,)
 pixel.2758
																																																		Var m_rgb.5877
																																																	LetRec p_intersection_points.2759 pixel.2760 
																																																		LetTuple (xm_rgb.5869,m_isect_ps.5870,xm_sids.5871,xm_cdif.5872,xm_engy.5873,xm_r20p.5874,xm_gid.5875,xm_nvectors.5876,)
 pixel.2760
																																																			Var m_isect_ps.5870
																																																		LetRec p_surface_ids.2761 pixel.2762 
																																																			LetTuple (xm_rgb.5861,xm_isect_ps.5862,m_sids.5863,xm_cdif.5864,xm_engy.5865,xm_r20p.5866,xm_gid.5867,xm_nvectors.5868,)
 pixel.2762
																																																				Var m_sids.5863
																																																			LetRec p_calc_diffuse.2763 pixel.2764 
																																																				LetTuple (xm_rgb.5853,xm_isect_ps.5854,xm_sids.5855,m_cdif.5856,xm_engy.5857,xm_r20p.5858,xm_gid.5859,xm_nvectors.5860,)
 pixel.2764
																																																					Var m_cdif.5856
																																																				LetRec p_energy.2765 pixel.2766 
																																																					LetTuple (xm_rgb.5845,xm_isect_ps.5846,xm_sids.5847,xm_cdif.5848,m_engy.5849,xm_r20p.5850,xm_gid.5851,xm_nvectors.5852,)
 pixel.2766
																																																						Var m_engy.5849
																																																					LetRec p_received_ray_20percent.2767 pixel.2768 
																																																						LetTuple (xm_rgb.5837,xm_isect_ps.5838,xm_sids.5839,xm_cdif.5840,xm_engy.5841,m_r20p.5842,xm_gid.5843,xm_nvectors.5844,)
 pixel.2768
																																																							Var m_r20p.5842
																																																						LetRec p_group_id.2769 pixel.2770 
																																																							LetTuple (xm_rgb.5828,xm_isect_ps.5829,xm_sids.5830,xm_cdif.5831,xm_engy.5832,xm_r20p.5833,m_gid.5834,xm_nvectors.5835,)
 pixel.2770
																																																								Let Ti2395.5836
																																																									Int:0
																																																									Get m_gid.5834 Ti2395.5836
																																																							LetRec p_set_group_id.2771 pixel.2772 id.2773 
																																																								LetTuple (xm_rgb.5819,xm_isect_ps.5820,xm_sids.5821,xm_cdif.5822,xm_engy.5823,xm_r20p.5824,m_gid.5825,xm_nvectors.5826,)
 pixel.2772
																																																									Let Ti2394.5827
																																																										Int:0
																																																										Put m_gid.5825 Ti2394.5827 id.2773
																																																								LetRec p_nvectors.2774 pixel.2775 
																																																									LetTuple (xm_rgb.5811,xm_isect_ps.5812,xm_sids.5813,xm_cdif.5814,xm_engy.5815,xm_r20p.5816,xm_gid.5817,m_nvectors.5818,)
 pixel.2775
																																																										Var m_nvectors.5818
																																																									LetRec d_vec.2776 d.2777 
																																																										LetTuple (m_vec.5809,xm_const.5810,)
 d.2777
																																																											Var m_vec.5809
																																																										LetRec d_const.2778 d.2779 
																																																											LetTuple (dm_vec.5807,m_const.5808,)
 d.2779
																																																												Var m_const.5808
																																																											LetRec r_surface_id.2780 r.2781 
																																																												LetTuple (m_sid.5804,xm_dvec.5805,xm_br.5806,)
 r.2781
																																																													Var m_sid.5804
																																																												LetRec r_dvec.2782 r.2783 
																																																													LetTuple (xm_sid.5801,m_dvec.5802,xm_br.5803,)
 r.2783
																																																														Var m_dvec.5802
																																																													LetRec r_bright.2784 r.2785 
																																																														LetTuple (xm_sid.5798,xm_dvec.5799,m_br.5800,)
 r.2785
																																																															Var m_br.5800
																																																														LetRec rad.2786 x.2787 
																																																															Let Td2393.5797
																																																																Float:0.017453
																																																																FMul x.2787 Td2393.5797
																																																															LetRec read_screen_settings.2788 Tu21.2789 
																																																																Let Tu35.5701
																																																																	Let Ta2317.5793
																																																																		ExtArray 288
																																																																		Let Ti2318.5794
																																																																			Int:0
																																																																			Let Td2320.5795
																																																																				Let Tu2319.5796
																																																																					Unit
																																																																					ExtFunApp read_float Tu2319.5796,
																																																																				Put Ta2317.5793 Ti2318.5794 Td2320.5795
																																																																	Let Tu34.5702
																																																																		Let Ta2321.5789
																																																																			ExtArray 288
																																																																			Let Ti2322.5790
																																																																				Int:1
																																																																				Let Td2324.5791
																																																																					Let Tu2323.5792
																																																																						Unit
																																																																						ExtFunApp read_float Tu2323.5792,
																																																																					Put Ta2321.5789 Ti2322.5790 Td2324.5791
																																																																		Let Tu33.5703
																																																																			Let Ta2325.5785
																																																																				ExtArray 288
																																																																				Let Ti2326.5786
																																																																					Int:2
																																																																					Let Td2328.5787
																																																																						Let Tu2327.5788
																																																																							Unit
																																																																							ExtFunApp read_float Tu2327.5788,
																																																																						Put Ta2325.5785 Ti2326.5786 Td2328.5787
																																																																			Let v1.5704
																																																																				Let Td2330.5783
																																																																					Let Tu2329.5784
																																																																						Unit
																																																																						ExtFunApp read_float Tu2329.5784,
																																																																					App rad.2786Td2330.5783 
																																																																				Let cos_v1.5705
																																																																					ExtFunApp cos v1.5704,
																																																																					Let sin_v1.5706
																																																																						ExtFunApp sin v1.5704,
																																																																						Let v2.5707
																																																																							Let Td2332.5781
																																																																								Let Tu2331.5782
																																																																									Unit
																																																																									ExtFunApp read_float Tu2331.5782,
																																																																								App rad.2786Td2332.5781 
																																																																							Let cos_v2.5708
																																																																								ExtFunApp cos v2.5707,
																																																																								Let sin_v2.5709
																																																																									ExtFunApp sin v2.5707,
																																																																									Let Tu32.5710
																																																																										Let Ta2333.5776
																																																																											ExtArray 684
																																																																											Let Ti2334.5777
																																																																												Int:0
																																																																												Let Td2337.5778
																																																																													Let Td2335.5779
																																																																														FMul cos_v1.5705 sin_v2.5709
																																																																														Let Td2336.5780
																																																																															Float:200.000000
																																																																															FMul Td2335.5779 Td2336.5780
																																																																													Put Ta2333.5776 Ti2334.5777 Td2337.5778
																																																																										Let Tu31.5711
																																																																											Let Ta2338.5772
																																																																												ExtArray 684
																																																																												Let Ti2339.5773
																																																																													Int:1
																																																																													Let Td2341.5774
																																																																														Let Td2340.5775
																																																																															Float:-200.000000
																																																																															FMul sin_v1.5706 Td2340.5775
																																																																														Put Ta2338.5772 Ti2339.5773 Td2341.5774
																																																																											Let Tu30.5712
																																																																												Let Ta2342.5767
																																																																													ExtArray 684
																																																																													Let Ti2343.5768
																																																																														Int:2
																																																																														Let Td2346.5769
																																																																															Let Td2344.5770
																																																																																FMul cos_v1.5705 cos_v2.5708
																																																																																Let Td2345.5771
																																																																																	Float:200.000000
																																																																																	FMul Td2344.5770 Td2345.5771
																																																																															Put Ta2342.5767 Ti2343.5768 Td2346.5769
																																																																												Let Tu29.5713
																																																																													Let Ta2347.5765
																																																																														ExtArray 660
																																																																														Let Ti2348.5766
																																																																															Int:0
																																																																															Put Ta2347.5765 Ti2348.5766 cos_v2.5708
																																																																													Let Tu28.5714
																																																																														Let Ta2349.5762
																																																																															ExtArray 660
																																																																															Let Ti2350.5763
																																																																																Int:1
																																																																																Let Td2351.5764
																																																																																	Float:0.000000
																																																																																	Put Ta2349.5762 Ti2350.5763 Td2351.5764
																																																																														Let Tu27.5715
																																																																															Let Ta2352.5759
																																																																																ExtArray 660
																																																																																Let Ti2353.5760
																																																																																	Int:2
																																																																																	Let Td2354.5761
																																																																																		App fneg.2639sin_v2.5709 
																																																																																		Put Ta2352.5759 Ti2353.5760 Td2354.5761
																																																																															Let Tu26.5716
																																																																																Let Ta2355.5755
																																																																																	ExtArray 672
																																																																																	Let Ti2356.5756
																																																																																		Int:0
																																																																																		Let Td2358.5757
																																																																																			Let Td2357.5758
																																																																																				App fneg.2639sin_v1.5706 
																																																																																				FMul Td2357.5758 sin_v2.5709
																																																																																			Put Ta2355.5755 Ti2356.5756 Td2358.5757
																																																																																Let Tu25.5717
																																																																																	Let Ta2359.5752
																																																																																		ExtArray 672
																																																																																		Let Ti2360.5753
																																																																																			Int:1
																																																																																			Let Td2361.5754
																																																																																				App fneg.2639cos_v1.5705 
																																																																																				Put Ta2359.5752 Ti2360.5753 Td2361.5754
																																																																																	Let Tu24.5718
																																																																																		Let Ta2362.5748
																																																																																			ExtArray 672
																																																																																			Let Ti2363.5749
																																																																																				Int:2
																																																																																				Let Td2365.5750
																																																																																					Let Td2364.5751
																																																																																						App fneg.2639sin_v1.5706 
																																																																																						FMul Td2364.5751 cos_v2.5708
																																																																																					Put Ta2362.5748 Ti2363.5749 Td2365.5750
																																																																																		Let Tu23.5719
																																																																																			Let Ta2366.5739
																																																																																				ExtArray 300
																																																																																				Let Ti2367.5740
																																																																																					Int:0
																																																																																					Let Td2374.5741
																																																																																						Let Td2370.5742
																																																																																							Let Ta2368.5746
																																																																																								ExtArray 288
																																																																																								Let Ti2369.5747
																																																																																									Int:0
																																																																																									Get Ta2368.5746 Ti2369.5747
																																																																																							Let Td2373.5743
																																																																																								Let Ta2371.5744
																																																																																									ExtArray 684
																																																																																									Let Ti2372.5745
																																																																																										Int:0
																																																																																										Get Ta2371.5744 Ti2372.5745
																																																																																								FSub Td2370.5742 Td2373.5743
																																																																																						Put Ta2366.5739 Ti2367.5740 Td2374.5741
																																																																																			Let Tu22.5720
																																																																																				Let Ta2375.5730
																																																																																					ExtArray 300
																																																																																					Let Ti2376.5731
																																																																																						Int:1
																																																																																						Let Td2383.5732
																																																																																							Let Td2379.5733
																																																																																								Let Ta2377.5737
																																																																																									ExtArray 288
																																																																																									Let Ti2378.5738
																																																																																										Int:1
																																																																																										Get Ta2377.5737 Ti2378.5738
																																																																																								Let Td2382.5734
																																																																																									Let Ta2380.5735
																																																																																										ExtArray 684
																																																																																										Let Ti2381.5736
																																																																																											Int:1
																																																																																											Get Ta2380.5735 Ti2381.5736
																																																																																									FSub Td2379.5733 Td2382.5734
																																																																																							Put Ta2375.5730 Ti2376.5731 Td2383.5732
																																																																																				Let Ta2384.5721
																																																																																					ExtArray 300
																																																																																					Let Ti2385.5722
																																																																																						Int:2
																																																																																						Let Td2392.5723
																																																																																							Let Td2388.5724
																																																																																								Let Ta2386.5728
																																																																																									ExtArray 288
																																																																																									Let Ti2387.5729
																																																																																										Int:2
																																																																																										Get Ta2386.5728 Ti2387.5729
																																																																																								Let Td2391.5725
																																																																																									Let Ta2389.5726
																																																																																										ExtArray 684
																																																																																										Let Ti2390.5727
																																																																																											Int:2
																																																																																											Get Ta2389.5726 Ti2390.5727
																																																																																									FSub Td2388.5724 Td2391.5725
																																																																																							Put Ta2384.5721 Ti2385.5722 Td2392.5723
																																																																LetRec read_light.2790 Tu36.2791 
																																																																	Let nl.5673
																																																																		Let Tu2299.5700
																																																																			Unit
																																																																			ExtFunApp read_int Tu2299.5700,
																																																																		Let l1.5674
																																																																			Let Td2301.5698
																																																																				Let Tu2300.5699
																																																																					Unit
																																																																					ExtFunApp read_float Tu2300.5699,
																																																																				App rad.2786Td2301.5698 
																																																																			Let sl1.5675
																																																																				ExtFunApp sin l1.5674,
																																																																				Let Tu39.5676
																																																																					Let Ta2302.5695
																																																																						ExtArray 312
																																																																						Let Ti2303.5696
																																																																							Int:1
																																																																							Let Td2304.5697
																																																																								App fneg.2639sl1.5675 
																																																																								Put Ta2302.5695 Ti2303.5696 Td2304.5697
																																																																					Let l2.5677
																																																																						Let Td2306.5693
																																																																							Let Tu2305.5694
																																																																								Unit
																																																																								ExtFunApp read_float Tu2305.5694,
																																																																							App rad.2786Td2306.5693 
																																																																						Let cl1.5678
																																																																							ExtFunApp cos l1.5674,
																																																																							Let sl2.5679
																																																																								ExtFunApp sin l2.5677,
																																																																								Let Tu38.5680
																																																																									Let Ta2307.5690
																																																																										ExtArray 312
																																																																										Let Ti2308.5691
																																																																											Int:0
																																																																											Let Td2309.5692
																																																																												FMul cl1.5678 sl2.5679
																																																																												Put Ta2307.5690 Ti2308.5691 Td2309.5692
																																																																									Let cl2.5681
																																																																										ExtFunApp cos l2.5677,
																																																																										Let Tu37.5682
																																																																											Let Ta2310.5687
																																																																												ExtArray 312
																																																																												Let Ti2311.5688
																																																																													Int:2
																																																																													Let Td2312.5689
																																																																														FMul cl1.5678 cl2.5681
																																																																														Put Ta2310.5687 Ti2311.5688 Td2312.5689
																																																																											Let Ta2313.5683
																																																																												ExtArray 324
																																																																												Let Ti2314.5684
																																																																													Int:0
																																																																													Let Td2316.5685
																																																																														Let Tu2315.5686
																																																																															Unit
																																																																															ExtFunApp read_float Tu2315.5686,
																																																																														Put Ta2313.5683 Ti2314.5684 Td2316.5685
																																																																	LetRec rotate_quadratic_matrix.2792 abc.2793 rot.2794 
																																																																		Let cos_x.5563
																																																																			Let Td2213.5671
																																																																				Let Ti2212.5672
																																																																					Int:0
																																																																					Get rot.2794 Ti2212.5672
																																																																				ExtFunApp cos Td2213.5671,
																																																																			Let sin_x.5564
																																																																				Let Td2215.5669
																																																																					Let Ti2214.5670
																																																																						Int:0
																																																																						Get rot.2794 Ti2214.5670
																																																																					ExtFunApp sin Td2215.5669,
																																																																				Let cos_y.5565
																																																																					Let Td2217.5667
																																																																						Let Ti2216.5668
																																																																							Int:1
																																																																							Get rot.2794 Ti2216.5668
																																																																						ExtFunApp cos Td2217.5667,
																																																																					Let sin_y.5566
																																																																						Let Td2219.5665
																																																																							Let Ti2218.5666
																																																																								Int:1
																																																																								Get rot.2794 Ti2218.5666
																																																																							ExtFunApp sin Td2219.5665,
																																																																						Let cos_z.5567
																																																																							Let Td2221.5663
																																																																								Let Ti2220.5664
																																																																									Int:2
																																																																									Get rot.2794 Ti2220.5664
																																																																								ExtFunApp cos Td2221.5663,
																																																																							Let sin_z.5568
																																																																								Let Td2223.5661
																																																																									Let Ti2222.5662
																																																																										Int:2
																																																																										Get rot.2794 Ti2222.5662
																																																																									ExtFunApp sin Td2223.5661,
																																																																								Let m00.5569
																																																																									FMul cos_y.5565 cos_z.5567
																																																																									Let m01.5570
																																																																										Let Td2225.5658
																																																																											Let Td2224.5660
																																																																												FMul sin_x.5564 sin_y.5566
																																																																												FMul Td2224.5660 cos_z.5567
																																																																											Let Td2226.5659
																																																																												FMul cos_x.5563 sin_z.5568
																																																																												FSub Td2225.5658 Td2226.5659
																																																																										Let m02.5571
																																																																											Let Td2228.5655
																																																																												Let Td2227.5657
																																																																													FMul cos_x.5563 sin_y.5566
																																																																													FMul Td2227.5657 cos_z.5567
																																																																												Let Td2229.5656
																																																																													FMul sin_x.5564 sin_z.5568
																																																																													FAdd Td2228.5655 Td2229.5656
																																																																											Let m10.5572
																																																																												FMul cos_y.5565 sin_z.5568
																																																																												Let m11.5573
																																																																													Let Td2231.5652
																																																																														Let Td2230.5654
																																																																															FMul sin_x.5564 sin_y.5566
																																																																															FMul Td2230.5654 sin_z.5568
																																																																														Let Td2232.5653
																																																																															FMul cos_x.5563 cos_z.5567
																																																																															FAdd Td2231.5652 Td2232.5653
																																																																													Let m12.5574
																																																																														Let Td2234.5649
																																																																															Let Td2233.5651
																																																																																FMul cos_x.5563 sin_y.5566
																																																																																FMul Td2233.5651 sin_z.5568
																																																																															Let Td2235.5650
																																																																																FMul sin_x.5564 cos_z.5567
																																																																																FSub Td2234.5649 Td2235.5650
																																																																														Let m20.5575
																																																																															App fneg.2639sin_y.5566 
																																																																															Let m21.5576
																																																																																FMul sin_x.5564 cos_y.5565
																																																																																Let m22.5577
																																																																																	FMul cos_x.5563 cos_y.5565
																																																																																	Let ao.5578
																																																																																		Let Ti2236.5648
																																																																																			Int:0
																																																																																			Get abc.2793 Ti2236.5648
																																																																																		Let bo.5579
																																																																																			Let Ti2237.5647
																																																																																				Int:1
																																																																																				Get abc.2793 Ti2237.5647
																																																																																			Let co.5580
																																																																																				Let Ti2238.5646
																																																																																					Int:2
																																																																																					Get abc.2793 Ti2238.5646
																																																																																				Let Tu44.5581
																																																																																					Let Ti2239.5637
																																																																																						Int:0
																																																																																						Let Td2247.5638
																																																																																							Let Td2244.5639
																																																																																								Let Td2241.5642
																																																																																									Let Td2240.5645
																																																																																										App fsqr.2649m00.5569 
																																																																																										FMul ao.5578 Td2240.5645
																																																																																									Let Td2243.5643
																																																																																										Let Td2242.5644
																																																																																											App fsqr.2649m10.5572 
																																																																																											FMul bo.5579 Td2242.5644
																																																																																										FAdd Td2241.5642 Td2243.5643
																																																																																								Let Td2246.5640
																																																																																									Let Td2245.5641
																																																																																										App fsqr.2649m20.5575 
																																																																																										FMul co.5580 Td2245.5641
																																																																																									FAdd Td2244.5639 Td2246.5640
																																																																																							Put abc.2793 Ti2239.5637 Td2247.5638
																																																																																					Let Tu43.5582
																																																																																						Let Ti2248.5628
																																																																																							Int:1
																																																																																							Let Td2256.5629
																																																																																								Let Td2253.5630
																																																																																									Let Td2250.5633
																																																																																										Let Td2249.5636
																																																																																											App fsqr.2649m01.5570 
																																																																																											FMul ao.5578 Td2249.5636
																																																																																										Let Td2252.5634
																																																																																											Let Td2251.5635
																																																																																												App fsqr.2649m11.5573 
																																																																																												FMul bo.5579 Td2251.5635
																																																																																											FAdd Td2250.5633 Td2252.5634
																																																																																									Let Td2255.5631
																																																																																										Let Td2254.5632
																																																																																											App fsqr.2649m21.5576 
																																																																																											FMul co.5580 Td2254.5632
																																																																																										FAdd Td2253.5630 Td2255.5631
																																																																																								Put abc.2793 Ti2248.5628 Td2256.5629
																																																																																						Let Tu42.5583
																																																																																							Let Ti2257.5619
																																																																																								Int:2
																																																																																								Let Td2265.5620
																																																																																									Let Td2262.5621
																																																																																										Let Td2259.5624
																																																																																											Let Td2258.5627
																																																																																												App fsqr.2649m02.5571 
																																																																																												FMul ao.5578 Td2258.5627
																																																																																											Let Td2261.5625
																																																																																												Let Td2260.5626
																																																																																													App fsqr.2649m12.5574 
																																																																																													FMul bo.5579 Td2260.5626
																																																																																												FAdd Td2259.5624 Td2261.5625
																																																																																										Let Td2264.5622
																																																																																											Let Td2263.5623
																																																																																												App fsqr.2649m22.5577 
																																																																																												FMul co.5580 Td2263.5623
																																																																																											FAdd Td2262.5621 Td2264.5622
																																																																																									Put abc.2793 Ti2257.5619 Td2265.5620
																																																																																							Let Tu41.5584
																																																																																								Let Ti2266.5608
																																																																																									Int:0
																																																																																									Let Td2276.5609
																																																																																										Let Td2267.5610
																																																																																											Float:2.000000
																																																																																											Let Td2275.5611
																																																																																												Let Td2272.5612
																																																																																													Let Td2269.5615
																																																																																														Let Td2268.5618
																																																																																															FMul ao.5578 m01.5570
																																																																																															FMul Td2268.5618 m02.5571
																																																																																														Let Td2271.5616
																																																																																															Let Td2270.5617
																																																																																																FMul bo.5579 m11.5573
																																																																																																FMul Td2270.5617 m12.5574
																																																																																															FAdd Td2269.5615 Td2271.5616
																																																																																													Let Td2274.5613
																																																																																														Let Td2273.5614
																																																																																															FMul co.5580 m21.5576
																																																																																															FMul Td2273.5614 m22.5577
																																																																																														FAdd Td2272.5612 Td2274.5613
																																																																																												FMul Td2267.5610 Td2275.5611
																																																																																										Put rot.2794 Ti2266.5608 Td2276.5609
																																																																																								Let Tu40.5585
																																																																																									Let Ti2277.5597
																																																																																										Int:1
																																																																																										Let Td2287.5598
																																																																																											Let Td2278.5599
																																																																																												Float:2.000000
																																																																																												Let Td2286.5600
																																																																																													Let Td2283.5601
																																																																																														Let Td2280.5604
																																																																																															Let Td2279.5607
																																																																																																FMul ao.5578 m00.5569
																																																																																																FMul Td2279.5607 m02.5571
																																																																																															Let Td2282.5605
																																																																																																Let Td2281.5606
																																																																																																	FMul bo.5579 m10.5572
																																																																																																	FMul Td2281.5606 m12.5574
																																																																																																FAdd Td2280.5604 Td2282.5605
																																																																																														Let Td2285.5602
																																																																																															Let Td2284.5603
																																																																																																FMul co.5580 m20.5575
																																																																																																FMul Td2284.5603 m22.5577
																																																																																															FAdd Td2283.5601 Td2285.5602
																																																																																													FMul Td2278.5599 Td2286.5600
																																																																																											Put rot.2794 Ti2277.5597 Td2287.5598
																																																																																									Let Ti2288.5586
																																																																																										Int:2
																																																																																										Let Td2298.5587
																																																																																											Let Td2289.5588
																																																																																												Float:2.000000
																																																																																												Let Td2297.5589
																																																																																													Let Td2294.5590
																																																																																														Let Td2291.5593
																																																																																															Let Td2290.5596
																																																																																																FMul ao.5578 m00.5569
																																																																																																FMul Td2290.5596 m01.5570
																																																																																															Let Td2293.5594
																																																																																																Let Td2292.5595
																																																																																																	FMul bo.5579 m10.5572
																																																																																																	FMul Td2292.5595 m11.5573
																																																																																																FAdd Td2291.5593 Td2293.5594
																																																																																														Let Td2296.5591
																																																																																															Let Td2295.5592
																																																																																																FMul co.5580 m20.5575
																																																																																																FMul Td2295.5592 m21.5576
																																																																																															FAdd Td2294.5590 Td2296.5591
																																																																																													FMul Td2289.5588 Td2297.5589
																																																																																											Put rot.2794 Ti2288.5586 Td2298.5587
																																																																		LetRec read_nth_object.2795 n.2796 
																																																																			Let texture.5431
																																																																				Let Tu2115.5562
																																																																					Unit
																																																																					ExtFunApp read_int Tu2115.5562,
																																																																				Let Ti2117.5432
																																																																					Let Ti2116.5561
																																																																						Int:1
																																																																						Neg Ti2116.5561
																																																																					IfEq texture.5431 Ti2117.5432
																																																																						Int:0
																																																																						Let form.5433
																																																																							Let Tu2118.5560
																																																																								Unit
																																																																								ExtFunApp read_int Tu2118.5560,
																																																																							Let refltype.5434
																																																																								Let Tu2119.5559
																																																																									Unit
																																																																									ExtFunApp read_int Tu2119.5559,
																																																																								Let isrot_p.5435
																																																																									Let Tu2120.5558
																																																																										Unit
																																																																										ExtFunApp read_int Tu2120.5558,
																																																																									Let abc.5436
																																																																										Let Ti2121.5556
																																																																											Int:3
																																																																											Let Td2122.5557
																																																																												Float:0.000000
																																																																												ExtFunApp create_float_array Ti2121.5556,Td2122.5557,
																																																																										Let Tu63.5437
																																																																											Let Ti2123.5553
																																																																												Int:0
																																																																												Let Td2125.5554
																																																																													Let Tu2124.5555
																																																																														Unit
																																																																														ExtFunApp read_float Tu2124.5555,
																																																																													Put abc.5436 Ti2123.5553 Td2125.5554
																																																																											Let Tu62.5438
																																																																												Let Ti2126.5550
																																																																													Int:1
																																																																													Let Td2128.5551
																																																																														Let Tu2127.5552
																																																																															Unit
																																																																															ExtFunApp read_float Tu2127.5552,
																																																																														Put abc.5436 Ti2126.5550 Td2128.5551
																																																																												Let Tu61.5439
																																																																													Let Ti2129.5547
																																																																														Int:2
																																																																														Let Td2131.5548
																																																																															Let Tu2130.5549
																																																																																Unit
																																																																																ExtFunApp read_float Tu2130.5549,
																																																																															Put abc.5436 Ti2129.5547 Td2131.5548
																																																																													Let xyz.5440
																																																																														Let Ti2132.5545
																																																																															Int:3
																																																																															Let Td2133.5546
																																																																																Float:0.000000
																																																																																ExtFunApp create_float_array Ti2132.5545,Td2133.5546,
																																																																														Let Tu60.5441
																																																																															Let Ti2134.5542
																																																																																Int:0
																																																																																Let Td2136.5543
																																																																																	Let Tu2135.5544
																																																																																		Unit
																																																																																		ExtFunApp read_float Tu2135.5544,
																																																																																	Put xyz.5440 Ti2134.5542 Td2136.5543
																																																																															Let Tu59.5442
																																																																																Let Ti2137.5539
																																																																																	Int:1
																																																																																	Let Td2139.5540
																																																																																		Let Tu2138.5541
																																																																																			Unit
																																																																																			ExtFunApp read_float Tu2138.5541,
																																																																																		Put xyz.5440 Ti2137.5539 Td2139.5540
																																																																																Let Tu58.5443
																																																																																	Let Ti2140.5536
																																																																																		Int:2
																																																																																		Let Td2142.5537
																																																																																			Let Tu2141.5538
																																																																																				Unit
																																																																																				ExtFunApp read_float Tu2141.5538,
																																																																																			Put xyz.5440 Ti2140.5536 Td2142.5537
																																																																																	Let m_invert.5444
																																																																																		Let Td2144.5534
																																																																																			Let Tu2143.5535
																																																																																				Unit
																																																																																				ExtFunApp read_float Tu2143.5535,
																																																																																			App fisneg.2643Td2144.5534 
																																																																																		Let reflparam.5445
																																																																																			Let Ti2145.5532
																																																																																				Int:2
																																																																																				Let Td2146.5533
																																																																																					Float:0.000000
																																																																																					ExtFunApp create_float_array Ti2145.5532,Td2146.5533,
																																																																																			Let Tu57.5446
																																																																																				Let Ti2147.5529
																																																																																					Int:0
																																																																																					Let Td2149.5530
																																																																																						Let Tu2148.5531
																																																																																							Unit
																																																																																							ExtFunApp read_float Tu2148.5531,
																																																																																						Put reflparam.5445 Ti2147.5529 Td2149.5530
																																																																																				Let Tu56.5447
																																																																																					Let Ti2150.5526
																																																																																						Int:1
																																																																																						Let Td2152.5527
																																																																																							Let Tu2151.5528
																																																																																								Unit
																																																																																								ExtFunApp read_float Tu2151.5528,
																																																																																							Put reflparam.5445 Ti2150.5526 Td2152.5527
																																																																																					Let color.5448
																																																																																						Let Ti2153.5524
																																																																																							Int:3
																																																																																							Let Td2154.5525
																																																																																								Float:0.000000
																																																																																								ExtFunApp create_float_array Ti2153.5524,Td2154.5525,
																																																																																						Let Tu55.5449
																																																																																							Let Ti2155.5521
																																																																																								Int:0
																																																																																								Let Td2157.5522
																																																																																									Let Tu2156.5523
																																																																																										Unit
																																																																																										ExtFunApp read_float Tu2156.5523,
																																																																																									Put color.5448 Ti2155.5521 Td2157.5522
																																																																																							Let Tu54.5450
																																																																																								Let Ti2158.5518
																																																																																									Int:1
																																																																																									Let Td2160.5519
																																																																																										Let Tu2159.5520
																																																																																											Unit
																																																																																											ExtFunApp read_float Tu2159.5520,
																																																																																										Put color.5448 Ti2158.5518 Td2160.5519
																																																																																								Let Tu53.5451
																																																																																									Let Ti2161.5515
																																																																																										Int:2
																																																																																										Let Td2163.5516
																																																																																											Let Tu2162.5517
																																																																																												Unit
																																																																																												ExtFunApp read_float Tu2162.5517,
																																																																																											Put color.5448 Ti2161.5515 Td2163.5516
																																																																																									Let rotation.5452
																																																																																										Let Ti2164.5513
																																																																																											Int:3
																																																																																											Let Td2165.5514
																																																																																												Float:0.000000
																																																																																												ExtFunApp create_float_array Ti2164.5513,Td2165.5514,
																																																																																										Let Tu52.5453
																																																																																											Let Ti2166.5498
																																																																																												Int:0
																																																																																												IfEq isrot_p.5435 Ti2166.5498
																																																																																													Unit
																																																																																													Let Tu46.5499
																																																																																														Let Ti2167.5509
																																																																																															Int:0
																																																																																															Let Td2170.5510
																																																																																																Let Td2169.5511
																																																																																																	Let Tu2168.5512
																																																																																																		Unit
																																																																																																		ExtFunApp read_float Tu2168.5512,
																																																																																																	App rad.2786Td2169.5511 
																																																																																																Put rotation.5452 Ti2167.5509 Td2170.5510
																																																																																														Let Tu45.5500
																																																																																															Let Ti2171.5505
																																																																																																Int:1
																																																																																																Let Td2174.5506
																																																																																																	Let Td2173.5507
																																																																																																		Let Tu2172.5508
																																																																																																			Unit
																																																																																																			ExtFunApp read_float Tu2172.5508,
																																																																																																		App rad.2786Td2173.5507 
																																																																																																	Put rotation.5452 Ti2171.5505 Td2174.5506
																																																																																															Let Ti2175.5501
																																																																																																Int:2
																																																																																																Let Td2178.5502
																																																																																																	Let Td2177.5503
																																																																																																		Let Tu2176.5504
																																																																																																			Unit
																																																																																																			ExtFunApp read_float Tu2176.5504,
																																																																																																		App rad.2786Td2177.5503 
																																																																																																	Put rotation.5452 Ti2175.5501 Td2178.5502
																																																																																											Let m_invert2.5454
																																																																																												Let Ti2179.5497
																																																																																													Int:2
																																																																																													IfEq form.5433 Ti2179.5497
																																																																																														Int:1
																																																																																														Var m_invert.5444
																																																																																												Let ctbl.5455
																																																																																													Let Ti2180.5495
																																																																																														Int:4
																																																																																														Let Td2181.5496
																																																																																															Float:0.000000
																																																																																															ExtFunApp create_float_array Ti2180.5495,Td2181.5496,
																																																																																													Let obj.5456
																																																																																														Tuple (texture.5431,form.5433,refltype.5434,isrot_p.5435,abc.5436,xyz.5440,m_invert2.5454,reflparam.5445,color.5448,rotation.5452,ctbl.5455,)
																																																																																														Let Tu51.5457
																																																																																															Let Ta2182.5494
																																																																																																ExtArray 48
																																																																																																Put Ta2182.5494 n.2796 obj.5456
																																																																																															Let Tu50.5458
																																																																																																Let Ti2183.5461
																																																																																																	Int:3
																																																																																																	IfEq form.5433 Ti2183.5461
																																																																																																		Let a.5465
																																																																																																			Let Ti2184.5493
																																																																																																				Int:0
																																																																																																				Get abc.5436 Ti2184.5493
																																																																																																			Let Tu48.5466
																																																																																																				Let Ti2185.5486
																																																																																																					Int:0
																																																																																																					Let Td2191.5487
																																																																																																						Let Tb2186.5488
																																																																																																							App fiszero.2645a.5465 
																																																																																																							Let Ti2187.5489
																																																																																																								Int:0
																																																																																																								IfEq Tb2186.5488 Ti2187.5489
																																																																																																									Let Td2188.5490
																																																																																																										App sgn.2661a.5465 
																																																																																																										Let Td2189.5491
																																																																																																											App fsqr.2649a.5465 
																																																																																																											Let Td2190.5492
																																																																																																												FReciprocal Td2189.5491
																																																																																																												FMul Td2188.5490 Td2190.5492
																																																																																																									Float:0.000000
																																																																																																						Put abc.5436 Ti2185.5486 Td2191.5487
																																																																																																				Let b.5467
																																																																																																					Let Ti2192.5485
																																																																																																						Int:1
																																																																																																						Get abc.5436 Ti2192.5485
																																																																																																					Let Tu47.5468
																																																																																																						Let Ti2193.5478
																																																																																																							Int:1
																																																																																																							Let Td2199.5479
																																																																																																								Let Tb2194.5480
																																																																																																									App fiszero.2645b.5467 
																																																																																																									Let Ti2195.5481
																																																																																																										Int:0
																																																																																																										IfEq Tb2194.5480 Ti2195.5481
																																																																																																											Let Td2196.5482
																																																																																																												App sgn.2661b.5467 
																																																																																																												Let Td2197.5483
																																																																																																													App fsqr.2649b.5467 
																																																																																																													Let Td2198.5484
																																																																																																														FReciprocal Td2197.5483
																																																																																																														FMul Td2196.5482 Td2198.5484
																																																																																																											Float:0.000000
																																																																																																								Put abc.5436 Ti2193.5478 Td2199.5479
																																																																																																						Let c.5469
																																																																																																							Let Ti2200.5477
																																																																																																								Int:2
																																																																																																								Get abc.5436 Ti2200.5477
																																																																																																							Let Ti2201.5470
																																																																																																								Int:2
																																																																																																								Let Td2207.5471
																																																																																																									Let Tb2202.5472
																																																																																																										App fiszero.2645c.5469 
																																																																																																										Let Ti2203.5473
																																																																																																											Int:0
																																																																																																											IfEq Tb2202.5472 Ti2203.5473
																																																																																																												Let Td2204.5474
																																																																																																													App sgn.2661c.5469 
																																																																																																													Let Td2205.5475
																																																																																																														App fsqr.2649c.5469 
																																																																																																														Let Td2206.5476
																																																																																																															FReciprocal Td2205.5475
																																																																																																															FMul Td2204.5474 Td2206.5476
																																																																																																												Float:0.000000
																																																																																																									Put abc.5436 Ti2201.5470 Td2207.5471
																																																																																																		Let Ti2208.5462
																																																																																																			Int:2
																																																																																																			IfEq form.5433 Ti2208.5462
																																																																																																				Let Ti2210.5463
																																																																																																					Let Ti2209.5464
																																																																																																						Int:0
																																																																																																						IfEq m_invert.5444 Ti2209.5464
																																																																																																							Int:1
																																																																																																							Int:0
																																																																																																					App vecunit_sgn.2687abc.5436 Ti2210.5463 
																																																																																																				Unit
																																																																																																Let Tu49.5459
																																																																																																	Let Ti2211.5460
																																																																																																		Int:0
																																																																																																		IfEq isrot_p.5435 Ti2211.5460
																																																																																																			Unit
																																																																																																			App rotate_quadratic_matrix.2792abc.5436 rotation.5452 
																																																																																																	Int:1
																																																																			LetRec read_object.2797 n.2798 
																																																																				Let Ti2108.5424
																																																																					Int:60
																																																																					IfLE Ti2108.5424 n.2798
																																																																						Unit
																																																																						Let Tb2109.5425
																																																																							App read_nth_object.2795n.2798 
																																																																							Let Ti2110.5426
																																																																								Int:0
																																																																								IfEq Tb2109.5425 Ti2110.5426
																																																																									Let Ta2111.5429
																																																																										ExtArray 0
																																																																										Let Ti2112.5430
																																																																											Int:0
																																																																											Put Ta2111.5429 Ti2112.5430 n.2798
																																																																									Let Ti2114.5427
																																																																										Let Ti2113.5428
																																																																											Int:1
																																																																											Add n.2798 Ti2113.5428
																																																																										App read_object.2797Ti2114.5427 
																																																																				LetRec read_all_object.2799 Tu64.2800 
																																																																					Let Ti2107.5423
																																																																						Int:0
																																																																						App read_object.2797Ti2107.5423 
																																																																					LetRec read_net_item.2801 length.2802 
																																																																						Let item.5411
																																																																							Let Tu2098.5422
																																																																								Unit
																																																																								ExtFunApp read_int Tu2098.5422,
																																																																							Let Ti2100.5412
																																																																								Let Ti2099.5421
																																																																									Int:1
																																																																									Neg Ti2099.5421
																																																																								IfEq item.5411 Ti2100.5412
																																																																									Let Ti2102.5417
																																																																										Let Ti2101.5420
																																																																											Int:1
																																																																											Add length.2802 Ti2101.5420
																																																																										Let Ti2104.5418
																																																																											Let Ti2103.5419
																																																																												Int:1
																																																																												Neg Ti2103.5419
																																																																											ExtFunApp create_array Ti2102.5417,Ti2104.5418,
																																																																									Let v.5413
																																																																										Let Ti2106.5415
																																																																											Let Ti2105.5416
																																																																												Int:1
																																																																												Add length.2802 Ti2105.5416
																																																																											App read_net_item.2801Ti2106.5415 
																																																																										Let Tu65.5414
																																																																											Put v.5413 length.2802 item.5411
																																																																											Var v.5413
																																																																						LetRec read_or_network.2803 length.2804 
																																																																							Let net.5399
																																																																								Let Ti2089.5410
																																																																									Int:0
																																																																									App read_net_item.2801Ti2089.5410 
																																																																								Let Ti2091.5400
																																																																									Let Ti2090.5409
																																																																										Int:0
																																																																										Get net.5399 Ti2090.5409
																																																																									Let Ti2093.5401
																																																																										Let Ti2092.5408
																																																																											Int:1
																																																																											Neg Ti2092.5408
																																																																										IfEq Ti2091.5400 Ti2093.5401
																																																																											Let Ti2095.5406
																																																																												Let Ti2094.5407
																																																																													Int:1
																																																																													Add length.2804 Ti2094.5407
																																																																												ExtFunApp create_array Ti2095.5406,net.5399,
																																																																											Let v.5402
																																																																												Let Ti2097.5404
																																																																													Let Ti2096.5405
																																																																														Int:1
																																																																														Add length.2804 Ti2096.5405
																																																																													App read_or_network.2803Ti2097.5404 
																																																																												Let Tu66.5403
																																																																													Put v.5402 length.2804 net.5399
																																																																													Var v.5402
																																																																							LetRec read_and_network.2805 n.2806 
																																																																								Let net.5389
																																																																									Let Ti2081.5398
																																																																										Int:0
																																																																										App read_net_item.2801Ti2081.5398 
																																																																									Let Ti2083.5390
																																																																										Let Ti2082.5397
																																																																											Int:0
																																																																											Get net.5389 Ti2082.5397
																																																																										Let Ti2085.5391
																																																																											Let Ti2084.5396
																																																																												Int:1
																																																																												Neg Ti2084.5396
																																																																											IfEq Ti2083.5390 Ti2085.5391
																																																																												Unit
																																																																												Let Tu67.5392
																																																																													Let Ta2086.5395
																																																																														ExtArray 332
																																																																														Put Ta2086.5395 n.2806 net.5389
																																																																													Let Ti2088.5393
																																																																														Let Ti2087.5394
																																																																															Int:1
																																																																															Add n.2806 Ti2087.5394
																																																																														App read_and_network.2805Ti2088.5393 
																																																																								LetRec read_parameter.2807 Tu68.2808 
																																																																									Let Tu72.5377
																																																																										Let Tu2073.5388
																																																																											Unit
																																																																											App read_screen_settings.2788Tu2073.5388 
																																																																										Let Tu71.5378
																																																																											Let Tu2074.5387
																																																																												Unit
																																																																												App read_light.2790Tu2074.5387 
																																																																											Let Tu70.5379
																																																																												Let Tu2075.5386
																																																																													Unit
																																																																													App read_all_object.2799Tu2075.5386 
																																																																												Let Tu69.5380
																																																																													Let Ti2076.5385
																																																																														Int:0
																																																																														App read_and_network.2805Ti2076.5385 
																																																																													Let Ta2077.5381
																																																																														ExtArray 536
																																																																														Let Ti2078.5382
																																																																															Int:0
																																																																															Let Ta2080.5383
																																																																																Let Ti2079.5384
																																																																																	Int:0
																																																																																	App read_or_network.2803Ti2079.5384 
																																																																																Put Ta2077.5381 Ti2078.5382 Ta2080.5383
																																																																									LetRec solver_rect_surface.2809 m.2810 dirvec.2811 b0.2812 b1.2813 b2.2814 i0.2815 i1.2816 i2.2817 
																																																																										Let Tb2047.5346
																																																																											Let Td2046.5376
																																																																												Get dirvec.2811 i0.2815
																																																																												App fiszero.2645Td2046.5376 
																																																																											Let Ti2048.5347
																																																																												Int:0
																																																																												IfEq Tb2047.5346 Ti2048.5347
																																																																													Let abc.5348
																																																																														App o_param_abc.2731m.2810 
																																																																														Let d.5349
																																																																															Let Tb2052.5371
																																																																																Let Tb2049.5373
																																																																																	App o_isinvert.2721m.2810 
																																																																																	Let Tb2051.5374
																																																																																		Let Td2050.5375
																																																																																			Get dirvec.2811 i0.2815
																																																																																			App fisneg.2643Td2050.5375 
																																																																																		App xor.2658Tb2049.5373 Tb2051.5374 
																																																																																Let Td2053.5372
																																																																																	Get abc.5348 i0.2815
																																																																																	App fneg_cond.2663Tb2052.5371 Td2053.5372 
																																																																															Let d2.5350
																																																																																Let Td2054.5368
																																																																																	FSub d.5349 b0.2812
																																																																																	Let Td2055.5369
																																																																																		Get dirvec.2811 i0.2815
																																																																																		Let Td2056.5370
																																																																																			FReciprocal Td2055.5369
																																																																																			FMul Td2054.5368 Td2056.5370
																																																																																Let Tb2062.5351
																																																																																	Let Td2060.5363
																																																																																		Let Td2059.5365
																																																																																			Let Td2058.5366
																																																																																				Let Td2057.5367
																																																																																					Get dirvec.2811 i1.2816
																																																																																					FMul d2.5350 Td2057.5367
																																																																																				FAdd Td2058.5366 b1.2813
																																																																																			App fabs.2651Td2059.5365 
																																																																																		Let Td2061.5364
																																																																																			Get abc.5348 i1.2816
																																																																																			App fless.2653Td2060.5363 Td2061.5364 
																																																																																	Let Ti2063.5352
																																																																																		Int:0
																																																																																		IfEq Tb2062.5351 Ti2063.5352
																																																																																			Int:0
																																																																																			Let Tb2069.5353
																																																																																				Let Td2067.5358
																																																																																					Let Td2066.5360
																																																																																						Let Td2065.5361
																																																																																							Let Td2064.5362
																																																																																								Get dirvec.2811 i2.2817
																																																																																								FMul d2.5350 Td2064.5362
																																																																																							FAdd Td2065.5361 b2.2814
																																																																																						App fabs.2651Td2066.5360 
																																																																																					Let Td2068.5359
																																																																																						Get abc.5348 i2.2817
																																																																																						App fless.2653Td2067.5358 Td2068.5359 
																																																																																				Let Ti2070.5354
																																																																																					Int:0
																																																																																					IfEq Tb2069.5353 Ti2070.5354
																																																																																						Int:0
																																																																																						Let Tu73.5355
																																																																																							Let Ta2071.5356
																																																																																								ExtArray 540
																																																																																								Let Ti2072.5357
																																																																																									Int:0
																																																																																									Put Ta2071.5356 Ti2072.5357 d2.5350
																																																																																							Int:1
																																																																													Int:0
																																																																										LetRec solver_rect.2818 m.2819 dirvec.2820 b0.2821 b1.2822 b2.2823 
																																																																											Let Tb2034.5331
																																																																												Let Ti2031.5343
																																																																													Int:0
																																																																													Let Ti2032.5344
																																																																														Int:1
																																																																														Let Ti2033.5345
																																																																															Int:2
																																																																															App solver_rect_surface.2809m.2819 dirvec.2820 b0.2821 b1.2822 b2.2823 Ti2031.5343 Ti2032.5344 Ti2033.5345 
																																																																												Let Ti2035.5332
																																																																													Int:0
																																																																													IfEq Tb2034.5331 Ti2035.5332
																																																																														Let Tb2039.5333
																																																																															Let Ti2036.5340
																																																																																Int:1
																																																																																Let Ti2037.5341
																																																																																	Int:2
																																																																																	Let Ti2038.5342
																																																																																		Int:0
																																																																																		App solver_rect_surface.2809m.2819 dirvec.2820 b1.2822 b2.2823 b0.2821 Ti2036.5340 Ti2037.5341 Ti2038.5342 
																																																																															Let Ti2040.5334
																																																																																Int:0
																																																																																IfEq Tb2039.5333 Ti2040.5334
																																																																																	Let Tb2044.5335
																																																																																		Let Ti2041.5337
																																																																																			Int:2
																																																																																			Let Ti2042.5338
																																																																																				Int:0
																																																																																				Let Ti2043.5339
																																																																																					Int:1
																																																																																					App solver_rect_surface.2809m.2819 dirvec.2820 b2.2823 b0.2821 b1.2822 Ti2041.5337 Ti2042.5338 Ti2043.5339 
																																																																																		Let Ti2045.5336
																																																																																			Int:0
																																																																																			IfEq Tb2044.5335 Ti2045.5336
																																																																																				Int:0
																																																																																				Int:3
																																																																																	Int:2
																																																																														Int:1
																																																																											LetRec solver_surface.2824 m.2825 dirvec.2826 b0.2827 b1.2828 b2.2829 
																																																																												Let abc.5320
																																																																													App o_param_abc.2731m.2825 
																																																																													Let d.5321
																																																																														App veciprod.2690dirvec.2826 abc.5320 
																																																																														Let Tb2023.5322
																																																																															App fispos.2641d.5321 
																																																																															Let Ti2024.5323
																																																																																Int:0
																																																																																IfEq Tb2023.5322 Ti2024.5323
																																																																																	Int:0
																																																																																	Let Tu74.5324
																																																																																		Let Ta2025.5325
																																																																																			ExtArray 540
																																																																																			Let Ti2026.5326
																																																																																				Int:0
																																																																																				Let Td2030.5327
																																																																																					Let Td2028.5328
																																																																																						Let Td2027.5330
																																																																																							App veciprod2.2693abc.5320 b0.2827 b1.2828 b2.2829 
																																																																																							App fneg.2639Td2027.5330 
																																																																																						Let Td2029.5329
																																																																																							FReciprocal d.5321
																																																																																							FMul Td2028.5328 Td2029.5329
																																																																																					Put Ta2025.5325 Ti2026.5326 Td2030.5327
																																																																																		Int:1
																																																																												LetRec quadratic.2830 m.2831 v0.2832 v1.2833 v2.2834 
																																																																													Let diag_part.5296
																																																																														Let Td2006.5310
																																																																															Let Td2002.5314
																																																																																Let Td2000.5318
																																																																																	App fsqr.2649v0.2832 
																																																																																	Let Td2001.5319
																																																																																		App o_param_a.2725m.2831 
																																																																																		FMul Td2000.5318 Td2001.5319
																																																																																Let Td2005.5315
																																																																																	Let Td2003.5316
																																																																																		App fsqr.2649v1.2833 
																																																																																		Let Td2004.5317
																																																																																			App o_param_b.2727m.2831 
																																																																																			FMul Td2003.5316 Td2004.5317
																																																																																	FAdd Td2002.5314 Td2005.5315
																																																																															Let Td2009.5311
																																																																																Let Td2007.5312
																																																																																	App fsqr.2649v2.2834 
																																																																																	Let Td2008.5313
																																																																																		App o_param_c.2729m.2831 
																																																																																		FMul Td2007.5312 Td2008.5313
																																																																																FAdd Td2006.5310 Td2009.5311
																																																																														Let Ti2010.5297
																																																																															App o_isrot.2723m.2831 
																																																																															Let Ti2011.5298
																																																																																Int:0
																																																																																IfEq Ti2010.5297 Ti2011.5298
																																																																																	Var diag_part.5296
																																																																																	Let Td2019.5299
																																																																																		Let Td2015.5303
																																																																																			Let Td2014.5307
																																																																																				Let Td2012.5308
																																																																																					FMul v1.2833 v2.2834
																																																																																					Let Td2013.5309
																																																																																						App o_param_r1.2749m.2831 
																																																																																						FMul Td2012.5308 Td2013.5309
																																																																																				FAdd diag_part.5296 Td2014.5307
																																																																																			Let Td2018.5304
																																																																																				Let Td2016.5305
																																																																																					FMul v2.2834 v0.2832
																																																																																					Let Td2017.5306
																																																																																						App o_param_r2.2751m.2831 
																																																																																						FMul Td2016.5305 Td2017.5306
																																																																																				FAdd Td2015.5303 Td2018.5304
																																																																																		Let Td2022.5300
																																																																																			Let Td2020.5301
																																																																																				FMul v0.2832 v1.2833
																																																																																				Let Td2021.5302
																																																																																					App o_param_r3.2753m.2831 
																																																																																					FMul Td2020.5301 Td2021.5302
																																																																																			FAdd Td2019.5299 Td2022.5300
																																																																													LetRec bilinear.2835 m.2836 v0.2837 v1.2838 v2.2839 w0.2840 w1.2841 w2.2842 
																																																																														Let diag_part.5265
																																																																															Let Td1976.5286
																																																																																Let Td1972.5290
																																																																																	Let Td1970.5294
																																																																																		FMul v0.2837 w0.2840
																																																																																		Let Td1971.5295
																																																																																			App o_param_a.2725m.2836 
																																																																																			FMul Td1970.5294 Td1971.5295
																																																																																	Let Td1975.5291
																																																																																		Let Td1973.5292
																																																																																			FMul v1.2838 w1.2841
																																																																																			Let Td1974.5293
																																																																																				App o_param_b.2727m.2836 
																																																																																				FMul Td1973.5292 Td1974.5293
																																																																																		FAdd Td1972.5290 Td1975.5291
																																																																																Let Td1979.5287
																																																																																	Let Td1977.5288
																																																																																		FMul v2.2839 w2.2842
																																																																																		Let Td1978.5289
																																																																																			App o_param_c.2729m.2836 
																																																																																			FMul Td1977.5288 Td1978.5289
																																																																																	FAdd Td1976.5286 Td1979.5287
																																																																															Let Ti1980.5266
																																																																																App o_isrot.2723m.2836 
																																																																																Let Ti1981.5267
																																																																																	Int:0
																																																																																	IfEq Ti1980.5266 Ti1981.5267
																																																																																		Var diag_part.5265
																																																																																		Let Td1999.5268
																																																																																			Let Td1998.5269
																																																																																				Let Td1992.5270
																																																																																					Let Td1986.5276
																																																																																						Let Td1984.5282
																																																																																							Let Td1982.5284
																																																																																								FMul v2.2839 w1.2841
																																																																																								Let Td1983.5285
																																																																																									FMul v1.2838 w2.2842
																																																																																									FAdd Td1982.5284 Td1983.5285
																																																																																							Let Td1985.5283
																																																																																								App o_param_r1.2749m.2836 
																																																																																								FMul Td1984.5282 Td1985.5283
																																																																																						Let Td1991.5277
																																																																																							Let Td1989.5278
																																																																																								Let Td1987.5280
																																																																																									FMul v0.2837 w2.2842
																																																																																									Let Td1988.5281
																																																																																										FMul v2.2839 w0.2840
																																																																																										FAdd Td1987.5280 Td1988.5281
																																																																																								Let Td1990.5279
																																																																																									App o_param_r2.2751m.2836 
																																																																																									FMul Td1989.5278 Td1990.5279
																																																																																							FAdd Td1986.5276 Td1991.5277
																																																																																					Let Td1997.5271
																																																																																						Let Td1995.5272
																																																																																							Let Td1993.5274
																																																																																								FMul v0.2837 w1.2841
																																																																																								Let Td1994.5275
																																																																																									FMul v1.2838 w0.2840
																																																																																									FAdd Td1993.5274 Td1994.5275
																																																																																							Let Td1996.5273
																																																																																								App o_param_r3.2753m.2836 
																																																																																								FMul Td1995.5272 Td1996.5273
																																																																																						FAdd Td1992.5270 Td1997.5271
																																																																																				App fhalf.2647Td1998.5269 
																																																																																			FAdd diag_part.5265 Td1999.5268
																																																																														LetRec solver_second.2843 m.2844 dirvec.2845 b0.2846 b1.2847 b2.2848 
																																																																															Let aa.5229
																																																																																Let Td1943.5259
																																																																																	Let Ti1942.5264
																																																																																		Int:0
																																																																																		Get dirvec.2845 Ti1942.5264
																																																																																	Let Td1945.5260
																																																																																		Let Ti1944.5263
																																																																																			Int:1
																																																																																			Get dirvec.2845 Ti1944.5263
																																																																																		Let Td1947.5261
																																																																																			Let Ti1946.5262
																																																																																				Int:2
																																																																																				Get dirvec.2845 Ti1946.5262
																																																																																			App quadratic.2830m.2844 Td1943.5259 Td1945.5260 Td1947.5261 
																																																																																Let Tb1948.5230
																																																																																	App fiszero.2645aa.5229 
																																																																																	Let Ti1949.5231
																																																																																		Int:0
																																																																																		IfEq Tb1948.5230 Ti1949.5231
																																																																																			Let bb.5232
																																																																																				Let Td1951.5253
																																																																																					Let Ti1950.5258
																																																																																						Int:0
																																																																																						Get dirvec.2845 Ti1950.5258
																																																																																					Let Td1953.5254
																																																																																						Let Ti1952.5257
																																																																																							Int:1
																																																																																							Get dirvec.2845 Ti1952.5257
																																																																																						Let Td1955.5255
																																																																																							Let Ti1954.5256
																																																																																								Int:2
																																																																																								Get dirvec.2845 Ti1954.5256
																																																																																							App bilinear.2835m.2844 Td1951.5253 Td1953.5254 Td1955.5255 b0.2846 b1.2847 b2.2848 
																																																																																				Let cc0.5233
																																																																																					App quadratic.2830m.2844 b0.2846 b1.2847 b2.2848 
																																																																																					Let cc.5234
																																																																																						Let Ti1956.5250
																																																																																							App o_form.2717m.2844 
																																																																																							Let Ti1957.5251
																																																																																								Int:3
																																																																																								IfEq Ti1956.5250 Ti1957.5251
																																																																																									Let Td1958.5252
																																																																																										Float:1.000000
																																																																																										FSub cc0.5233 Td1958.5252
																																																																																									Var cc0.5233
																																																																																						Let d.5235
																																																																																							Let Td1959.5248
																																																																																								App fsqr.2649bb.5232 
																																																																																								Let Td1960.5249
																																																																																									FMul aa.5229 cc.5234
																																																																																									FSub Td1959.5248 Td1960.5249
																																																																																							Let Tb1961.5236
																																																																																								App fispos.2641d.5235 
																																																																																								Let Ti1962.5237
																																																																																									Int:0
																																																																																									IfEq Tb1961.5236 Ti1962.5237
																																																																																										Int:0
																																																																																										Let sd.5238
																																																																																											ExtFunApp sqrt d.5235,
																																																																																											Let t1.5239
																																																																																												Let Tb1963.5246
																																																																																													App o_isinvert.2721m.2844 
																																																																																													Let Ti1964.5247
																																																																																														Int:0
																																																																																														IfEq Tb1963.5246 Ti1964.5247
																																																																																															App fneg.2639sd.5238 
																																																																																															Var sd.5238
																																																																																												Let Tu75.5240
																																																																																													Let Ta1965.5241
																																																																																														ExtArray 540
																																																																																														Let Ti1966.5242
																																																																																															Int:0
																																																																																															Let Td1969.5243
																																																																																																Let Td1967.5244
																																																																																																	FSub t1.5239 bb.5232
																																																																																																	Let Td1968.5245
																																																																																																		FReciprocal aa.5229
																																																																																																		FMul Td1967.5244 Td1968.5245
																																																																																																Put Ta1965.5241 Ti1966.5242 Td1969.5243
																																																																																													Int:1
																																																																																			Int:0
																																																																															LetRec solver.2849 index.2850 dirvec.2851 org.2852 
																																																																																Let m.5212
																																																																																	Let Ta1930.5228
																																																																																		ExtArray 48
																																																																																		Get Ta1930.5228 index.2850
																																																																																	Let b0.5213
																																																																																		Let Td1932.5225
																																																																																			Let Ti1931.5227
																																																																																				Int:0
																																																																																				Get org.2852 Ti1931.5227
																																																																																			Let Td1933.5226
																																																																																				App o_param_x.2733m.5212 
																																																																																				FSub Td1932.5225 Td1933.5226
																																																																																		Let b1.5214
																																																																																			Let Td1935.5222
																																																																																				Let Ti1934.5224
																																																																																					Int:1
																																																																																					Get org.2852 Ti1934.5224
																																																																																				Let Td1936.5223
																																																																																					App o_param_y.2735m.5212 
																																																																																					FSub Td1935.5222 Td1936.5223
																																																																																			Let b2.5215
																																																																																				Let Td1938.5219
																																																																																					Let Ti1937.5221
																																																																																						Int:2
																																																																																						Get org.2852 Ti1937.5221
																																																																																					Let Td1939.5220
																																																																																						App o_param_z.2737m.5212 
																																																																																						FSub Td1938.5219 Td1939.5220
																																																																																				Let m_shape.5216
																																																																																					App o_form.2717m.5212 
																																																																																					Let Ti1940.5217
																																																																																						Int:1
																																																																																						IfEq m_shape.5216 Ti1940.5217
																																																																																							App solver_rect.2818m.5212 dirvec.2851 b0.5213 b1.5214 b2.5215 
																																																																																							Let Ti1941.5218
																																																																																								Int:2
																																																																																								IfEq m_shape.5216 Ti1941.5218
																																																																																									App solver_surface.2824m.5212 dirvec.2851 b0.5213 b1.5214 b2.5215 
																																																																																									App solver_second.2843m.5212 dirvec.2851 b0.5213 b1.5214 b2.5215 
																																																																																LetRec solver_rect_fast.2853 m.2854 v.2855 dconst.2856 b0.2857 b1.2858 b2.2859 
																																																																																	Let d0.5119
																																																																																		Let Td1845.5207
																																																																																			Let Td1844.5210
																																																																																				Let Ti1843.5211
																																																																																					Int:0
																																																																																					Get dconst.2856 Ti1843.5211
																																																																																				FSub Td1844.5210 b0.2857
																																																																																			Let Td1847.5208
																																																																																				Let Ti1846.5209
																																																																																					Int:1
																																																																																					Get dconst.2856 Ti1846.5209
																																																																																				FMul Td1845.5207 Td1847.5208
																																																																																		Let Ti1868.5120
																																																																																			Let Tb1854.5187
																																																																																				Let Td1852.5201
																																																																																					Let Td1851.5203
																																																																																						Let Td1850.5204
																																																																																							Let Td1849.5205
																																																																																								Let Ti1848.5206
																																																																																									Int:1
																																																																																									Get v.2855 Ti1848.5206
																																																																																								FMul d0.5119 Td1849.5205
																																																																																							FAdd Td1850.5204 b1.2858
																																																																																						App fabs.2651Td1851.5203 
																																																																																					Let Td1853.5202
																																																																																						App o_param_b.2727m.2854 
																																																																																						App fless.2653Td1852.5201 Td1853.5202 
																																																																																				Let Ti1855.5188
																																																																																					Int:0
																																																																																					IfEq Tb1854.5187 Ti1855.5188
																																																																																						Int:0
																																																																																						Let Tb1862.5189
																																																																																							Let Td1860.5195
																																																																																								Let Td1859.5197
																																																																																									Let Td1858.5198
																																																																																										Let Td1857.5199
																																																																																											Let Ti1856.5200
																																																																																												Int:2
																																																																																												Get v.2855 Ti1856.5200
																																																																																											FMul d0.5119 Td1857.5199
																																																																																										FAdd Td1858.5198 b2.2859
																																																																																									App fabs.2651Td1859.5197 
																																																																																								Let Td1861.5196
																																																																																									App o_param_c.2729m.2854 
																																																																																									App fless.2653Td1860.5195 Td1861.5196 
																																																																																							Let Ti1863.5190
																																																																																								Int:0
																																																																																								IfEq Tb1862.5189 Ti1863.5190
																																																																																									Int:0
																																																																																									Let Tb1866.5191
																																																																																										Let Td1865.5193
																																																																																											Let Ti1864.5194
																																																																																												Int:1
																																																																																												Get dconst.2856 Ti1864.5194
																																																																																											App fiszero.2645Td1865.5193 
																																																																																										Let Ti1867.5192
																																																																																											Int:0
																																																																																											IfEq Tb1866.5191 Ti1867.5192
																																																																																												Int:1
																																																																																												Int:0
																																																																																			Let Ti1869.5121
																																																																																				Int:0
																																																																																				IfEq Ti1868.5120 Ti1869.5121
																																																																																					Let d1.5125
																																																																																						Let Td1872.5182
																																																																																							Let Td1871.5185
																																																																																								Let Ti1870.5186
																																																																																									Int:2
																																																																																									Get dconst.2856 Ti1870.5186
																																																																																								FSub Td1871.5185 b1.2858
																																																																																							Let Td1874.5183
																																																																																								Let Ti1873.5184
																																																																																									Int:3
																																																																																									Get dconst.2856 Ti1873.5184
																																																																																								FMul Td1872.5182 Td1874.5183
																																																																																						Let Ti1895.5126
																																																																																							Let Tb1881.5162
																																																																																								Let Td1879.5176
																																																																																									Let Td1878.5178
																																																																																										Let Td1877.5179
																																																																																											Let Td1876.5180
																																																																																												Let Ti1875.5181
																																																																																													Int:0
																																																																																													Get v.2855 Ti1875.5181
																																																																																												FMul d1.5125 Td1876.5180
																																																																																											FAdd Td1877.5179 b0.2857
																																																																																										App fabs.2651Td1878.5178 
																																																																																									Let Td1880.5177
																																																																																										App o_param_a.2725m.2854 
																																																																																										App fless.2653Td1879.5176 Td1880.5177 
																																																																																								Let Ti1882.5163
																																																																																									Int:0
																																																																																									IfEq Tb1881.5162 Ti1882.5163
																																																																																										Int:0
																																																																																										Let Tb1889.5164
																																																																																											Let Td1887.5170
																																																																																												Let Td1886.5172
																																																																																													Let Td1885.5173
																																																																																														Let Td1884.5174
																																																																																															Let Ti1883.5175
																																																																																																Int:2
																																																																																																Get v.2855 Ti1883.5175
																																																																																															FMul d1.5125 Td1884.5174
																																																																																														FAdd Td1885.5173 b2.2859
																																																																																													App fabs.2651Td1886.5172 
																																																																																												Let Td1888.5171
																																																																																													App o_param_c.2729m.2854 
																																																																																													App fless.2653Td1887.5170 Td1888.5171 
																																																																																											Let Ti1890.5165
																																																																																												Int:0
																																																																																												IfEq Tb1889.5164 Ti1890.5165
																																																																																													Int:0
																																																																																													Let Tb1893.5166
																																																																																														Let Td1892.5168
																																																																																															Let Ti1891.5169
																																																																																																Int:3
																																																																																																Get dconst.2856 Ti1891.5169
																																																																																															App fiszero.2645Td1892.5168 
																																																																																														Let Ti1894.5167
																																																																																															Int:0
																																																																																															IfEq Tb1893.5166 Ti1894.5167
																																																																																																Int:1
																																																																																																Int:0
																																																																																							Let Ti1896.5127
																																																																																								Int:0
																																																																																								IfEq Ti1895.5126 Ti1896.5127
																																																																																									Let d2.5131
																																																																																										Let Td1899.5157
																																																																																											Let Td1898.5160
																																																																																												Let Ti1897.5161
																																																																																													Int:4
																																																																																													Get dconst.2856 Ti1897.5161
																																																																																												FSub Td1898.5160 b2.2859
																																																																																											Let Td1901.5158
																																																																																												Let Ti1900.5159
																																																																																													Int:5
																																																																																													Get dconst.2856 Ti1900.5159
																																																																																												FMul Td1899.5157 Td1901.5158
																																																																																										Let Ti1922.5132
																																																																																											Let Tb1908.5137
																																																																																												Let Td1906.5151
																																																																																													Let Td1905.5153
																																																																																														Let Td1904.5154
																																																																																															Let Td1903.5155
																																																																																																Let Ti1902.5156
																																																																																																	Int:0
																																																																																																	Get v.2855 Ti1902.5156
																																																																																																FMul d2.5131 Td1903.5155
																																																																																															FAdd Td1904.5154 b0.2857
																																																																																														App fabs.2651Td1905.5153 
																																																																																													Let Td1907.5152
																																																																																														App o_param_a.2725m.2854 
																																																																																														App fless.2653Td1906.5151 Td1907.5152 
																																																																																												Let Ti1909.5138
																																																																																													Int:0
																																																																																													IfEq Tb1908.5137 Ti1909.5138
																																																																																														Int:0
																																																																																														Let Tb1916.5139
																																																																																															Let Td1914.5145
																																																																																																Let Td1913.5147
																																																																																																	Let Td1912.5148
																																																																																																		Let Td1911.5149
																																																																																																			Let Ti1910.5150
																																																																																																				Int:1
																																																																																																				Get v.2855 Ti1910.5150
																																																																																																			FMul d2.5131 Td1911.5149
																																																																																																		FAdd Td1912.5148 b1.2858
																																																																																																	App fabs.2651Td1913.5147 
																																																																																																Let Td1915.5146
																																																																																																	App o_param_b.2727m.2854 
																																																																																																	App fless.2653Td1914.5145 Td1915.5146 
																																																																																															Let Ti1917.5140
																																																																																																Int:0
																																																																																																IfEq Tb1916.5139 Ti1917.5140
																																																																																																	Int:0
																																																																																																	Let Tb1920.5141
																																																																																																		Let Td1919.5143
																																																																																																			Let Ti1918.5144
																																																																																																				Int:5
																																																																																																				Get dconst.2856 Ti1918.5144
																																																																																																			App fiszero.2645Td1919.5143 
																																																																																																		Let Ti1921.5142
																																																																																																			Int:0
																																																																																																			IfEq Tb1920.5141 Ti1921.5142
																																																																																																				Int:1
																																																																																																				Int:0
																																																																																											Let Ti1923.5133
																																																																																												Int:0
																																																																																												IfEq Ti1922.5132 Ti1923.5133
																																																																																													Int:0
																																																																																													Let Tu78.5134
																																																																																														Let Ta1924.5135
																																																																																															ExtArray 540
																																																																																															Let Ti1925.5136
																																																																																																Int:0
																																																																																																Put Ta1924.5135 Ti1925.5136 d2.5131
																																																																																														Int:3
																																																																																									Let Tu77.5128
																																																																																										Let Ta1926.5129
																																																																																											ExtArray 540
																																																																																											Let Ti1927.5130
																																																																																												Int:0
																																																																																												Put Ta1926.5129 Ti1927.5130 d1.5125
																																																																																										Int:2
																																																																																					Let Tu76.5122
																																																																																						Let Ta1928.5123
																																																																																							ExtArray 540
																																																																																							Let Ti1929.5124
																																																																																								Int:0
																																																																																								Put Ta1928.5123 Ti1929.5124 d0.5119
																																																																																						Int:1
																																																																																	LetRec solver_surface_fast.2860 m.2861 dconst.2862 b0.2863 b1.2864 b2.2865 
																																																																																		Let Tb1828.5101
																																																																																			Let Td1827.5117
																																																																																				Let Ti1826.5118
																																																																																					Int:0
																																																																																					Get dconst.2862 Ti1826.5118
																																																																																				App fisneg.2643Td1827.5117 
																																																																																			Let Ti1829.5102
																																																																																				Int:0
																																																																																				IfEq Tb1828.5101 Ti1829.5102
																																																																																					Int:0
																																																																																					Let Tu79.5103
																																																																																						Let Ta1830.5104
																																																																																							ExtArray 540
																																																																																							Let Ti1831.5105
																																																																																								Int:0
																																																																																								Let Td1842.5106
																																																																																									Let Td1838.5107
																																																																																										Let Td1834.5111
																																																																																											Let Td1833.5115
																																																																																												Let Ti1832.5116
																																																																																													Int:1
																																																																																													Get dconst.2862 Ti1832.5116
																																																																																												FMul Td1833.5115 b0.2863
																																																																																											Let Td1837.5112
																																																																																												Let Td1836.5113
																																																																																													Let Ti1835.5114
																																																																																														Int:2
																																																																																														Get dconst.2862 Ti1835.5114
																																																																																													FMul Td1836.5113 b1.2864
																																																																																												FAdd Td1834.5111 Td1837.5112
																																																																																										Let Td1841.5108
																																																																																											Let Td1840.5109
																																																																																												Let Ti1839.5110
																																																																																													Int:3
																																																																																													Get dconst.2862 Ti1839.5110
																																																																																												FMul Td1840.5109 b2.2865
																																																																																											FAdd Td1838.5107 Td1841.5108
																																																																																									Put Ta1830.5104 Ti1831.5105 Td1842.5106
																																																																																						Int:1
																																																																																		LetRec solver_second_fast.2866 m.2867 dconst.2868 b0.2869 b1.2870 b2.2871 
																																																																																			Let aa.5059
																																																																																				Let Ti1790.5100
																																																																																					Int:0
																																																																																					Get dconst.2868 Ti1790.5100
																																																																																				Let Tb1791.5060
																																																																																					App fiszero.2645aa.5059 
																																																																																					Let Ti1792.5061
																																																																																						Int:0
																																																																																						IfEq Tb1791.5060 Ti1792.5061
																																																																																							Let neg_bb.5062
																																																																																								Let Td1799.5090
																																																																																									Let Td1795.5094
																																																																																										Let Td1794.5098
																																																																																											Let Ti1793.5099
																																																																																												Int:1
																																																																																												Get dconst.2868 Ti1793.5099
																																																																																											FMul Td1794.5098 b0.2869
																																																																																										Let Td1798.5095
																																																																																											Let Td1797.5096
																																																																																												Let Ti1796.5097
																																																																																													Int:2
																																																																																													Get dconst.2868 Ti1796.5097
																																																																																												FMul Td1797.5096 b1.2870
																																																																																											FAdd Td1795.5094 Td1798.5095
																																																																																									Let Td1802.5091
																																																																																										Let Td1801.5092
																																																																																											Let Ti1800.5093
																																																																																												Int:3
																																																																																												Get dconst.2868 Ti1800.5093
																																																																																											FMul Td1801.5092 b2.2871
																																																																																										FAdd Td1799.5090 Td1802.5091
																																																																																								Let cc0.5063
																																																																																									App quadratic.2830m.2867 b0.2869 b1.2870 b2.2871 
																																																																																									Let cc.5064
																																																																																										Let Ti1803.5087
																																																																																											App o_form.2717m.2867 
																																																																																											Let Ti1804.5088
																																																																																												Int:3
																																																																																												IfEq Ti1803.5087 Ti1804.5088
																																																																																													Let Td1805.5089
																																																																																														Float:1.000000
																																																																																														FSub cc0.5063 Td1805.5089
																																																																																													Var cc0.5063
																																																																																										Let d.5065
																																																																																											Let Td1806.5085
																																																																																												App fsqr.2649neg_bb.5062 
																																																																																												Let Td1807.5086
																																																																																													FMul aa.5059 cc.5064
																																																																																													FSub Td1806.5085 Td1807.5086
																																																																																											Let Tb1808.5066
																																																																																												App fispos.2641d.5065 
																																																																																												Let Ti1809.5067
																																																																																													Int:0
																																																																																													IfEq Tb1808.5066 Ti1809.5067
																																																																																														Int:0
																																																																																														Let Tu80.5068
																																																																																															Let Tb1810.5069
																																																																																																App o_isinvert.2721m.2867 
																																																																																																Let Ti1811.5070
																																																																																																	Int:0
																																																																																																	IfEq Tb1810.5069 Ti1811.5070
																																																																																																		Let Ta1812.5078
																																																																																																			ExtArray 540
																																																																																																			Let Ti1813.5079
																																																																																																				Int:0
																																																																																																				Let Td1818.5080
																																																																																																					Let Td1815.5081
																																																																																																						Let Td1814.5084
																																																																																																							ExtFunApp sqrt d.5065,
																																																																																																							FSub neg_bb.5062 Td1814.5084
																																																																																																						Let Td1817.5082
																																																																																																							Let Ti1816.5083
																																																																																																								Int:4
																																																																																																								Get dconst.2868 Ti1816.5083
																																																																																																							FMul Td1815.5081 Td1817.5082
																																																																																																					Put Ta1812.5078 Ti1813.5079 Td1818.5080
																																																																																																		Let Ta1819.5071
																																																																																																			ExtArray 540
																																																																																																			Let Ti1820.5072
																																																																																																				Int:0
																																																																																																				Let Td1825.5073
																																																																																																					Let Td1822.5074
																																																																																																						Let Td1821.5077
																																																																																																							ExtFunApp sqrt d.5065,
																																																																																																							FAdd neg_bb.5062 Td1821.5077
																																																																																																						Let Td1824.5075
																																																																																																							Let Ti1823.5076
																																																																																																								Int:4
																																																																																																								Get dconst.2868 Ti1823.5076
																																																																																																							FMul Td1822.5074 Td1824.5075
																																																																																																					Put Ta1819.5071 Ti1820.5072 Td1825.5073
																																																																																															Int:1
																																																																																							Int:0
																																																																																			LetRec solver_fast.2872 index.2873 dirvec.2874 org.2875 
																																																																																				Let m.5039
																																																																																					Let Ta1777.5058
																																																																																						ExtArray 48
																																																																																						Get Ta1777.5058 index.2873
																																																																																					Let b0.5040
																																																																																						Let Td1779.5055
																																																																																							Let Ti1778.5057
																																																																																								Int:0
																																																																																								Get org.2875 Ti1778.5057
																																																																																							Let Td1780.5056
																																																																																								App o_param_x.2733m.5039 
																																																																																								FSub Td1779.5055 Td1780.5056
																																																																																						Let b1.5041
																																																																																							Let Td1782.5052
																																																																																								Let Ti1781.5054
																																																																																									Int:1
																																																																																									Get org.2875 Ti1781.5054
																																																																																								Let Td1783.5053
																																																																																									App o_param_y.2735m.5039 
																																																																																									FSub Td1782.5052 Td1783.5053
																																																																																							Let b2.5042
																																																																																								Let Td1785.5049
																																																																																									Let Ti1784.5051
																																																																																										Int:2
																																																																																										Get org.2875 Ti1784.5051
																																																																																									Let Td1786.5050
																																																																																										App o_param_z.2737m.5039 
																																																																																										FSub Td1785.5049 Td1786.5050
																																																																																								Let dconsts.5043
																																																																																									App d_const.2778dirvec.2874 
																																																																																									Let dconst.5044
																																																																																										Get dconsts.5043 index.2873
																																																																																										Let m_shape.5045
																																																																																											App o_form.2717m.5039 
																																																																																											Let Ti1787.5046
																																																																																												Int:1
																																																																																												IfEq m_shape.5045 Ti1787.5046
																																																																																													Let Ta1788.5048
																																																																																														App d_vec.2776dirvec.2874 
																																																																																														App solver_rect_fast.2853m.5039 Ta1788.5048 dconst.5044 b0.5040 b1.5041 b2.5042 
																																																																																													Let Ti1789.5047
																																																																																														Int:2
																																																																																														IfEq m_shape.5045 Ti1789.5047
																																																																																															App solver_surface_fast.2860m.5039 dconst.5044 b0.5040 b1.5041 b2.5042 
																																																																																															App solver_second_fast.2866m.5039 dconst.5044 b0.5040 b1.5041 b2.5042 
																																																																																				LetRec solver_surface_fast2.2876 m.2877 dconst.2878 sconst.2879 b0.2880 b1.2881 b2.2882 
																																																																																					Let Tb1768.5027
																																																																																						Let Td1767.5037
																																																																																							Let Ti1766.5038
																																																																																								Int:0
																																																																																								Get dconst.2878 Ti1766.5038
																																																																																							App fisneg.2643Td1767.5037 
																																																																																						Let Ti1769.5028
																																																																																							Int:0
																																																																																							IfEq Tb1768.5027 Ti1769.5028
																																																																																								Int:0
																																																																																								Let Tu81.5029
																																																																																									Let Ta1770.5030
																																																																																										ExtArray 540
																																																																																										Let Ti1771.5031
																																																																																											Int:0
																																																																																											Let Td1776.5032
																																																																																												Let Td1773.5033
																																																																																													Let Ti1772.5036
																																																																																														Int:0
																																																																																														Get dconst.2878 Ti1772.5036
																																																																																													Let Td1775.5034
																																																																																														Let Ti1774.5035
																																																																																															Int:3
																																																																																															Get sconst.2879 Ti1774.5035
																																																																																														FMul Td1773.5033 Td1775.5034
																																																																																												Put Ta1770.5030 Ti1771.5031 Td1776.5032
																																																																																									Int:1
																																																																																					LetRec solver_second_fast2.2883 m.2884 dconst.2885 sconst.2886 b0.2887 b1.2888 b2.2889 
																																																																																						Let aa.4988
																																																																																							Let Ti1732.5026
																																																																																								Int:0
																																																																																								Get dconst.2885 Ti1732.5026
																																																																																							Let Tb1733.4989
																																																																																								App fiszero.2645aa.4988 
																																																																																								Let Ti1734.4990
																																																																																									Int:0
																																																																																									IfEq Tb1733.4989 Ti1734.4990
																																																																																										Let neg_bb.4991
																																																																																											Let Td1741.5016
																																																																																												Let Td1737.5020
																																																																																													Let Td1736.5024
																																																																																														Let Ti1735.5025
																																																																																															Int:1
																																																																																															Get dconst.2885 Ti1735.5025
																																																																																														FMul Td1736.5024 b0.2887
																																																																																													Let Td1740.5021
																																																																																														Let Td1739.5022
																																																																																															Let Ti1738.5023
																																																																																																Int:2
																																																																																																Get dconst.2885 Ti1738.5023
																																																																																															FMul Td1739.5022 b1.2888
																																																																																														FAdd Td1737.5020 Td1740.5021
																																																																																												Let Td1744.5017
																																																																																													Let Td1743.5018
																																																																																														Let Ti1742.5019
																																																																																															Int:3
																																																																																															Get dconst.2885 Ti1742.5019
																																																																																														FMul Td1743.5018 b2.2889
																																																																																													FAdd Td1741.5016 Td1744.5017
																																																																																											Let cc.4992
																																																																																												Let Ti1745.5015
																																																																																													Int:3
																																																																																													Get sconst.2886 Ti1745.5015
																																																																																												Let d.4993
																																																																																													Let Td1746.5013
																																																																																														App fsqr.2649neg_bb.4991 
																																																																																														Let Td1747.5014
																																																																																															FMul aa.4988 cc.4992
																																																																																															FSub Td1746.5013 Td1747.5014
																																																																																													Let Tb1748.4994
																																																																																														App fispos.2641d.4993 
																																																																																														Let Ti1749.4995
																																																																																															Int:0
																																																																																															IfEq Tb1748.4994 Ti1749.4995
																																																																																																Int:0
																																																																																																Let Tu82.4996
																																																																																																	Let Tb1750.4997
																																																																																																		App o_isinvert.2721m.2884 
																																																																																																		Let Ti1751.4998
																																																																																																			Int:0
																																																																																																			IfEq Tb1750.4997 Ti1751.4998
																																																																																																				Let Ta1752.5006
																																																																																																					ExtArray 540
																																																																																																					Let Ti1753.5007
																																																																																																						Int:0
																																																																																																						Let Td1758.5008
																																																																																																							Let Td1755.5009
																																																																																																								Let Td1754.5012
																																																																																																									ExtFunApp sqrt d.4993,
																																																																																																									FSub neg_bb.4991 Td1754.5012
																																																																																																								Let Td1757.5010
																																																																																																									Let Ti1756.5011
																																																																																																										Int:4
																																																																																																										Get dconst.2885 Ti1756.5011
																																																																																																									FMul Td1755.5009 Td1757.5010
																																																																																																							Put Ta1752.5006 Ti1753.5007 Td1758.5008
																																																																																																				Let Ta1759.4999
																																																																																																					ExtArray 540
																																																																																																					Let Ti1760.5000
																																																																																																						Int:0
																																																																																																						Let Td1765.5001
																																																																																																							Let Td1762.5002
																																																																																																								Let Td1761.5005
																																																																																																									ExtFunApp sqrt d.4993,
																																																																																																									FAdd neg_bb.4991 Td1761.5005
																																																																																																								Let Td1764.5003
																																																																																																									Let Ti1763.5004
																																																																																																										Int:4
																																																																																																										Get dconst.2885 Ti1763.5004
																																																																																																									FMul Td1762.5002 Td1764.5003
																																																																																																							Put Ta1759.4999 Ti1760.5000 Td1765.5001
																																																																																																	Int:1
																																																																																										Int:0
																																																																																						LetRec solver_fast2.2890 index.2891 dirvec.2892 
																																																																																							Let m.4973
																																																																																								Let Ta1725.4987
																																																																																									ExtArray 48
																																																																																									Get Ta1725.4987 index.2891
																																																																																								Let sconst.4974
																																																																																									App o_param_ctbl.2755m.4973 
																																																																																									Let b0.4975
																																																																																										Let Ti1726.4986
																																																																																											Int:0
																																																																																											Get sconst.4974 Ti1726.4986
																																																																																										Let b1.4976
																																																																																											Let Ti1727.4985
																																																																																												Int:1
																																																																																												Get sconst.4974 Ti1727.4985
																																																																																											Let b2.4977
																																																																																												Let Ti1728.4984
																																																																																													Int:2
																																																																																													Get sconst.4974 Ti1728.4984
																																																																																												Let dconsts.4978
																																																																																													App d_const.2778dirvec.2892 
																																																																																													Let dconst.4979
																																																																																														Get dconsts.4978 index.2891
																																																																																														Let m_shape.4980
																																																																																															App o_form.2717m.4973 
																																																																																															Let Ti1729.4981
																																																																																																Int:1
																																																																																																IfEq m_shape.4980 Ti1729.4981
																																																																																																	Let Ta1730.4983
																																																																																																		App d_vec.2776dirvec.2892 
																																																																																																		App solver_rect_fast.2853m.4973 Ta1730.4983 dconst.4979 b0.4975 b1.4976 b2.4977 
																																																																																																	Let Ti1731.4982
																																																																																																		Int:2
																																																																																																		IfEq m_shape.4980 Ti1731.4982
																																																																																																			App solver_surface_fast2.2876m.4973 dconst.4979 sconst.4974 b0.4975 b1.4976 b2.4977 
																																																																																																			App solver_second_fast2.2883m.4973 dconst.4979 sconst.4974 b0.4975 b1.4976 b2.4977 
																																																																																							LetRec setup_rect_table.2893 vec.2894 m.2895 
																																																																																								Let const.4904
																																																																																									Let Ti1663.4971
																																																																																										Int:6
																																																																																										Let Td1664.4972
																																																																																											Float:0.000000
																																																																																											ExtFunApp create_float_array Ti1663.4971,Td1664.4972,
																																																																																									Let Tu88.4905
																																																																																										Let Tb1667.4950
																																																																																											Let Td1666.4969
																																																																																												Let Ti1665.4970
																																																																																													Int:0
																																																																																													Get vec.2894 Ti1665.4970
																																																																																												App fiszero.2645Td1666.4969 
																																																																																											Let Ti1668.4951
																																																																																												Int:0
																																																																																												IfEq Tb1667.4950 Ti1668.4951
																																																																																													Let Tu83.4954
																																																																																														Let Ti1669.4961
																																																																																															Int:0
																																																																																															Let Td1676.4962
																																																																																																Let Tb1674.4963
																																																																																																	Let Tb1670.4965
																																																																																																		App o_isinvert.2721m.2895 
																																																																																																		Let Tb1673.4966
																																																																																																			Let Td1672.4967
																																																																																																				Let Ti1671.4968
																																																																																																					Int:0
																																																																																																					Get vec.2894 Ti1671.4968
																																																																																																				App fisneg.2643Td1672.4967 
																																																																																																			App xor.2658Tb1670.4965 Tb1673.4966 
																																																																																																	Let Td1675.4964
																																																																																																		App o_param_a.2725m.2895 
																																																																																																		App fneg_cond.2663Tb1674.4963 Td1675.4964 
																																																																																																Put const.4904 Ti1669.4961 Td1676.4962
																																																																																														Let Ti1677.4955
																																																																																															Int:1
																																																																																															Let Td1682.4956
																																																																																																Let Td1678.4957
																																																																																																	Float:1.000000
																																																																																																	Let Td1680.4958
																																																																																																		Let Ti1679.4960
																																																																																																			Int:0
																																																																																																			Get vec.2894 Ti1679.4960
																																																																																																		Let Td1681.4959
																																																																																																			FReciprocal Td1680.4958
																																																																																																			FMul Td1678.4957 Td1681.4959
																																																																																																Put const.4904 Ti1677.4955 Td1682.4956
																																																																																													Let Ti1683.4952
																																																																																														Int:1
																																																																																														Let Td1684.4953
																																																																																															Float:0.000000
																																																																																															Put const.4904 Ti1683.4952 Td1684.4953
																																																																																										Let Tu87.4906
																																																																																											Let Tb1687.4929
																																																																																												Let Td1686.4948
																																																																																													Let Ti1685.4949
																																																																																														Int:1
																																																																																														Get vec.2894 Ti1685.4949
																																																																																													App fiszero.2645Td1686.4948 
																																																																																												Let Ti1688.4930
																																																																																													Int:0
																																																																																													IfEq Tb1687.4929 Ti1688.4930
																																																																																														Let Tu84.4933
																																																																																															Let Ti1689.4940
																																																																																																Int:2
																																																																																																Let Td1696.4941
																																																																																																	Let Tb1694.4942
																																																																																																		Let Tb1690.4944
																																																																																																			App o_isinvert.2721m.2895 
																																																																																																			Let Tb1693.4945
																																																																																																				Let Td1692.4946
																																																																																																					Let Ti1691.4947
																																																																																																						Int:1
																																																																																																						Get vec.2894 Ti1691.4947
																																																																																																					App fisneg.2643Td1692.4946 
																																																																																																				App xor.2658Tb1690.4944 Tb1693.4945 
																																																																																																		Let Td1695.4943
																																																																																																			App o_param_b.2727m.2895 
																																																																																																			App fneg_cond.2663Tb1694.4942 Td1695.4943 
																																																																																																	Put const.4904 Ti1689.4940 Td1696.4941
																																																																																															Let Ti1697.4934
																																																																																																Int:3
																																																																																																Let Td1702.4935
																																																																																																	Let Td1698.4936
																																																																																																		Float:1.000000
																																																																																																		Let Td1700.4937
																																																																																																			Let Ti1699.4939
																																																																																																				Int:1
																																																																																																				Get vec.2894 Ti1699.4939
																																																																																																			Let Td1701.4938
																																																																																																				FReciprocal Td1700.4937
																																																																																																				FMul Td1698.4936 Td1701.4938
																																																																																																	Put const.4904 Ti1697.4934 Td1702.4935
																																																																																														Let Ti1703.4931
																																																																																															Int:3
																																																																																															Let Td1704.4932
																																																																																																Float:0.000000
																																																																																																Put const.4904 Ti1703.4931 Td1704.4932
																																																																																											Let Tu86.4907
																																																																																												Let Tb1707.4908
																																																																																													Let Td1706.4927
																																																																																														Let Ti1705.4928
																																																																																															Int:2
																																																																																															Get vec.2894 Ti1705.4928
																																																																																														App fiszero.2645Td1706.4927 
																																																																																													Let Ti1708.4909
																																																																																														Int:0
																																																																																														IfEq Tb1707.4908 Ti1708.4909
																																																																																															Let Tu85.4912
																																																																																																Let Ti1709.4919
																																																																																																	Int:4
																																																																																																	Let Td1716.4920
																																																																																																		Let Tb1714.4921
																																																																																																			Let Tb1710.4923
																																																																																																				App o_isinvert.2721m.2895 
																																																																																																				Let Tb1713.4924
																																																																																																					Let Td1712.4925
																																																																																																						Let Ti1711.4926
																																																																																																							Int:2
																																																																																																							Get vec.2894 Ti1711.4926
																																																																																																						App fisneg.2643Td1712.4925 
																																																																																																					App xor.2658Tb1710.4923 Tb1713.4924 
																																																																																																			Let Td1715.4922
																																																																																																				App o_param_c.2729m.2895 
																																																																																																				App fneg_cond.2663Tb1714.4921 Td1715.4922 
																																																																																																		Put const.4904 Ti1709.4919 Td1716.4920
																																																																																																Let Ti1717.4913
																																																																																																	Int:5
																																																																																																	Let Td1722.4914
																																																																																																		Let Td1718.4915
																																																																																																			Float:1.000000
																																																																																																			Let Td1720.4916
																																																																																																				Let Ti1719.4918
																																																																																																					Int:2
																																																																																																					Get vec.2894 Ti1719.4918
																																																																																																				Let Td1721.4917
																																																																																																					FReciprocal Td1720.4916
																																																																																																					FMul Td1718.4915 Td1721.4917
																																																																																																		Put const.4904 Ti1717.4913 Td1722.4914
																																																																																															Let Ti1723.4910
																																																																																																Int:5
																																																																																																Let Td1724.4911
																																																																																																	Float:0.000000
																																																																																																	Put const.4904 Ti1723.4910 Td1724.4911
																																																																																												Var const.4904
																																																																																								LetRec setup_surface_table.2896 vec.2897 m.2898 
																																																																																									Let const.4860
																																																																																										Let Ti1625.4902
																																																																																											Int:4
																																																																																											Let Td1626.4903
																																																																																												Float:0.000000
																																																																																												ExtFunApp create_float_array Ti1625.4902,Td1626.4903,
																																																																																										Let d.4861
																																																																																											Let Td1635.4889
																																																																																												Let Td1630.4894
																																																																																													Let Td1628.4899
																																																																																														Let Ti1627.4901
																																																																																															Int:0
																																																																																															Get vec.2897 Ti1627.4901
																																																																																														Let Td1629.4900
																																																																																															App o_param_a.2725m.2898 
																																																																																															FMul Td1628.4899 Td1629.4900
																																																																																													Let Td1634.4895
																																																																																														Let Td1632.4896
																																																																																															Let Ti1631.4898
																																																																																																Int:1
																																																																																																Get vec.2897 Ti1631.4898
																																																																																															Let Td1633.4897
																																																																																																App o_param_b.2727m.2898 
																																																																																																FMul Td1632.4896 Td1633.4897
																																																																																														FAdd Td1630.4894 Td1634.4895
																																																																																												Let Td1639.4890
																																																																																													Let Td1637.4891
																																																																																														Let Ti1636.4893
																																																																																															Int:2
																																																																																															Get vec.2897 Ti1636.4893
																																																																																														Let Td1638.4892
																																																																																															App o_param_c.2729m.2898 
																																																																																															FMul Td1637.4891 Td1638.4892
																																																																																													FAdd Td1635.4889 Td1639.4890
																																																																																											Let Tu92.4862
																																																																																												Let Tb1640.4863
																																																																																													App fispos.2641d.4861 
																																																																																													Let Ti1641.4864
																																																																																														Int:0
																																																																																														IfEq Tb1640.4863 Ti1641.4864
																																																																																															Let Ti1642.4887
																																																																																																Int:0
																																																																																																Let Td1643.4888
																																																																																																	Float:0.000000
																																																																																																	Put const.4860 Ti1642.4887 Td1643.4888
																																																																																															Let Tu91.4865
																																																																																																Let Ti1644.4883
																																																																																																	Int:0
																																																																																																	Let Td1647.4884
																																																																																																		Let Td1645.4885
																																																																																																			Float:-1.000000
																																																																																																			Let Td1646.4886
																																																																																																				FReciprocal d.4861
																																																																																																				FMul Td1645.4885 Td1646.4886
																																																																																																		Put const.4860 Ti1644.4883 Td1647.4884
																																																																																																Let Tu90.4866
																																																																																																	Let Ti1648.4878
																																																																																																		Int:1
																																																																																																		Let Td1652.4879
																																																																																																			Let Td1651.4880
																																																																																																				Let Td1649.4881
																																																																																																					App o_param_a.2725m.2898 
																																																																																																					Let Td1650.4882
																																																																																																						FReciprocal d.4861
																																																																																																						FMul Td1649.4881 Td1650.4882
																																																																																																				App fneg.2639Td1651.4880 
																																																																																																			Put const.4860 Ti1648.4878 Td1652.4879
																																																																																																	Let Tu89.4867
																																																																																																		Let Ti1653.4873
																																																																																																			Int:2
																																																																																																			Let Td1657.4874
																																																																																																				Let Td1656.4875
																																																																																																					Let Td1654.4876
																																																																																																						App o_param_b.2727m.2898 
																																																																																																						Let Td1655.4877
																																																																																																							FReciprocal d.4861
																																																																																																							FMul Td1654.4876 Td1655.4877
																																																																																																					App fneg.2639Td1656.4875 
																																																																																																				Put const.4860 Ti1653.4873 Td1657.4874
																																																																																																		Let Ti1658.4868
																																																																																																			Int:3
																																																																																																			Let Td1662.4869
																																																																																																				Let Td1661.4870
																																																																																																					Let Td1659.4871
																																																																																																						App o_param_c.2729m.2898 
																																																																																																						Let Td1660.4872
																																																																																																							FReciprocal d.4861
																																																																																																							FMul Td1659.4871 Td1660.4872
																																																																																																					App fneg.2639Td1661.4870 
																																																																																																				Put const.4860 Ti1658.4868 Td1662.4869
																																																																																												Var const.4860
																																																																																									LetRec setup_second_table.2899 v.2900 m.2901 
																																																																																										Let const.4780
																																																																																											Let Ti1557.4858
																																																																																												Int:5
																																																																																												Let Td1558.4859
																																																																																													Float:0.000000
																																																																																													ExtFunApp create_float_array Ti1557.4858,Td1558.4859,
																																																																																											Let aa.4781
																																																																																												Let Td1560.4852
																																																																																													Let Ti1559.4857
																																																																																														Int:0
																																																																																														Get v.2900 Ti1559.4857
																																																																																													Let Td1562.4853
																																																																																														Let Ti1561.4856
																																																																																															Int:1
																																																																																															Get v.2900 Ti1561.4856
																																																																																														Let Td1564.4854
																																																																																															Let Ti1563.4855
																																																																																																Int:2
																																																																																																Get v.2900 Ti1563.4855
																																																																																															App quadratic.2830m.2901 Td1560.4852 Td1562.4853 Td1564.4854 
																																																																																												Let c1.4782
																																																																																													Let Td1568.4848
																																																																																														Let Td1566.4849
																																																																																															Let Ti1565.4851
																																																																																																Int:0
																																																																																																Get v.2900 Ti1565.4851
																																																																																															Let Td1567.4850
																																																																																																App o_param_a.2725m.2901 
																																																																																																FMul Td1566.4849 Td1567.4850
																																																																																														App fneg.2639Td1568.4848 
																																																																																													Let c2.4783
																																																																																														Let Td1572.4844
																																																																																															Let Td1570.4845
																																																																																																Let Ti1569.4847
																																																																																																	Int:1
																																																																																																	Get v.2900 Ti1569.4847
																																																																																																Let Td1571.4846
																																																																																																	App o_param_b.2727m.2901 
																																																																																																	FMul Td1570.4845 Td1571.4846
																																																																																															App fneg.2639Td1572.4844 
																																																																																														Let c3.4784
																																																																																															Let Td1576.4840
																																																																																																Let Td1574.4841
																																																																																																	Let Ti1573.4843
																																																																																																		Int:2
																																																																																																		Get v.2900 Ti1573.4843
																																																																																																	Let Td1575.4842
																																																																																																		App o_param_c.2729m.2901 
																																																																																																		FMul Td1574.4841 Td1575.4842
																																																																																																App fneg.2639Td1576.4840 
																																																																																															Let Tu99.4785
																																																																																																Let Ti1577.4839
																																																																																																	Int:0
																																																																																																	Put const.4780 Ti1577.4839 aa.4781
																																																																																																Let Tu98.4786
																																																																																																	Let Ti1578.4794
																																																																																																		App o_isrot.2723m.2901 
																																																																																																		Let Ti1579.4795
																																																																																																			Int:0
																																																																																																			IfEq Ti1578.4794 Ti1579.4795
																																																																																																				Let Tu96.4834
																																																																																																					Let Ti1580.4838
																																																																																																						Int:1
																																																																																																						Put const.4780 Ti1580.4838 c1.4782
																																																																																																					Let Tu95.4835
																																																																																																						Let Ti1581.4837
																																																																																																							Int:2
																																																																																																							Put const.4780 Ti1581.4837 c2.4783
																																																																																																						Let Ti1582.4836
																																																																																																							Int:3
																																																																																																							Put const.4780 Ti1582.4836 c3.4784
																																																																																																				Let Tu94.4796
																																																																																																					Let Ti1583.4822
																																																																																																						Int:1
																																																																																																						Let Td1594.4823
																																																																																																							Let Td1593.4824
																																																																																																								Let Td1592.4825
																																																																																																									Let Td1587.4826
																																																																																																										Let Td1585.4831
																																																																																																											Let Ti1584.4833
																																																																																																												Int:2
																																																																																																												Get v.2900 Ti1584.4833
																																																																																																											Let Td1586.4832
																																																																																																												App o_param_r2.2751m.2901 
																																																																																																												FMul Td1585.4831 Td1586.4832
																																																																																																										Let Td1591.4827
																																																																																																											Let Td1589.4828
																																																																																																												Let Ti1588.4830
																																																																																																													Int:1
																																																																																																													Get v.2900 Ti1588.4830
																																																																																																												Let Td1590.4829
																																																																																																													App o_param_r3.2753m.2901 
																																																																																																													FMul Td1589.4828 Td1590.4829
																																																																																																											FAdd Td1587.4826 Td1591.4827
																																																																																																									App fhalf.2647Td1592.4825 
																																																																																																								FSub c1.4782 Td1593.4824
																																																																																																							Put const.4780 Ti1583.4822 Td1594.4823
																																																																																																					Let Tu93.4797
																																																																																																						Let Ti1595.4810
																																																																																																							Int:2
																																																																																																							Let Td1606.4811
																																																																																																								Let Td1605.4812
																																																																																																									Let Td1604.4813
																																																																																																										Let Td1599.4814
																																																																																																											Let Td1597.4819
																																																																																																												Let Ti1596.4821
																																																																																																													Int:2
																																																																																																													Get v.2900 Ti1596.4821
																																																																																																												Let Td1598.4820
																																																																																																													App o_param_r1.2749m.2901 
																																																																																																													FMul Td1597.4819 Td1598.4820
																																																																																																											Let Td1603.4815
																																																																																																												Let Td1601.4816
																																																																																																													Let Ti1600.4818
																																																																																																														Int:0
																																																																																																														Get v.2900 Ti1600.4818
																																																																																																													Let Td1602.4817
																																																																																																														App o_param_r3.2753m.2901 
																																																																																																														FMul Td1601.4816 Td1602.4817
																																																																																																												FAdd Td1599.4814 Td1603.4815
																																																																																																										App fhalf.2647Td1604.4813 
																																																																																																									FSub c2.4783 Td1605.4812
																																																																																																								Put const.4780 Ti1595.4810 Td1606.4811
																																																																																																						Let Ti1607.4798
																																																																																																							Int:3
																																																																																																							Let Td1618.4799
																																																																																																								Let Td1617.4800
																																																																																																									Let Td1616.4801
																																																																																																										Let Td1611.4802
																																																																																																											Let Td1609.4807
																																																																																																												Let Ti1608.4809
																																																																																																													Int:1
																																																																																																													Get v.2900 Ti1608.4809
																																																																																																												Let Td1610.4808
																																																																																																													App o_param_r1.2749m.2901 
																																																																																																													FMul Td1609.4807 Td1610.4808
																																																																																																											Let Td1615.4803
																																																																																																												Let Td1613.4804
																																																																																																													Let Ti1612.4806
																																																																																																														Int:0
																																																																																																														Get v.2900 Ti1612.4806
																																																																																																													Let Td1614.4805
																																																																																																														App o_param_r2.2751m.2901 
																																																																																																														FMul Td1613.4804 Td1614.4805
																																																																																																												FAdd Td1611.4802 Td1615.4803
																																																																																																										App fhalf.2647Td1616.4801 
																																																																																																									FSub c3.4784 Td1617.4800
																																																																																																								Put const.4780 Ti1607.4798 Td1618.4799
																																																																																																	Let Tu97.4787
																																																																																																		Let Tb1619.4788
																																																																																																			App fiszero.2645aa.4781 
																																																																																																			Let Ti1620.4789
																																																																																																				Int:0
																																																																																																				IfEq Tb1619.4788 Ti1620.4789
																																																																																																					Let Ti1621.4790
																																																																																																						Int:4
																																																																																																						Let Td1624.4791
																																																																																																							Let Td1622.4792
																																																																																																								Float:1.000000
																																																																																																								Let Td1623.4793
																																																																																																									FReciprocal aa.4781
																																																																																																									FMul Td1622.4792 Td1623.4793
																																																																																																							Put const.4780 Ti1621.4790 Td1624.4791
																																																																																																					Unit
																																																																																																		Var const.4780
																																																																																										LetRec iter_setup_dirvec_constants.2902 dirvec.2903 index.2904 
																																																																																											Let Ti1548.4766
																																																																																												Int:0
																																																																																												IfLE Ti1548.4766 index.2904
																																																																																													Let m.4767
																																																																																														Let Ta1549.4779
																																																																																															ExtArray 48
																																																																																															Get Ta1549.4779 index.2904
																																																																																														Let dconst.4768
																																																																																															App d_const.2778dirvec.2903 
																																																																																															Let v.4769
																																																																																																App d_vec.2776dirvec.2903 
																																																																																																Let m_shape.4770
																																																																																																	App o_form.2717m.4767 
																																																																																																	Let Tu100.4771
																																																																																																		Let Ti1550.4774
																																																																																																			Int:1
																																																																																																			IfEq m_shape.4770 Ti1550.4774
																																																																																																				Let Ta1551.4778
																																																																																																					App setup_rect_table.2893v.4769 m.4767 
																																																																																																					Put dconst.4768 index.2904 Ta1551.4778
																																																																																																				Let Ti1552.4775
																																																																																																					Int:2
																																																																																																					IfEq m_shape.4770 Ti1552.4775
																																																																																																						Let Ta1553.4777
																																																																																																							App setup_surface_table.2896v.4769 m.4767 
																																																																																																							Put dconst.4768 index.2904 Ta1553.4777
																																																																																																						Let Ta1554.4776
																																																																																																							App setup_second_table.2899v.4769 m.4767 
																																																																																																							Put dconst.4768 index.2904 Ta1554.4776
																																																																																																		Let Ti1556.4772
																																																																																																			Let Ti1555.4773
																																																																																																				Int:1
																																																																																																				Sub index.2904 Ti1555.4773
																																																																																																			App iter_setup_dirvec_constants.2902dirvec.2903 Ti1556.4772 
																																																																																													Unit
																																																																																											LetRec setup_dirvec_constants.2905 dirvec.2906 
																																																																																												Let Ti1547.4761
																																																																																													Let Ti1545.4762
																																																																																														Let Ta1543.4764
																																																																																															ExtArray 0
																																																																																															Let Ti1544.4765
																																																																																																Int:0
																																																																																																Get Ta1543.4764 Ti1544.4765
																																																																																														Let Ti1546.4763
																																																																																															Int:1
																																																																																															Sub Ti1545.4762 Ti1546.4763
																																																																																													App iter_setup_dirvec_constants.2902dirvec.2906 Ti1547.4761 
																																																																																												LetRec setup_startp_constants.2907 p.2908 index.2909 
																																																																																													Let Ti1503.4713
																																																																																														Int:0
																																																																																														IfLE Ti1503.4713 index.2909
																																																																																															Let obj.4714
																																																																																																Let Ta1504.4760
																																																																																																	ExtArray 48
																																																																																																	Get Ta1504.4760 index.2909
																																																																																																Let sconst.4715
																																																																																																	App o_param_ctbl.2755obj.4714 
																																																																																																	Let m_shape.4716
																																																																																																		App o_form.2717obj.4714 
																																																																																																		Let Tu104.4717
																																																																																																			Let Ti1505.4755
																																																																																																				Int:0
																																																																																																				Let Td1509.4756
																																																																																																					Let Td1507.4757
																																																																																																						Let Ti1506.4759
																																																																																																							Int:0
																																																																																																							Get p.2908 Ti1506.4759
																																																																																																						Let Td1508.4758
																																																																																																							App o_param_x.2733obj.4714 
																																																																																																							FSub Td1507.4757 Td1508.4758
																																																																																																					Put sconst.4715 Ti1505.4755 Td1509.4756
																																																																																																			Let Tu103.4718
																																																																																																				Let Ti1510.4750
																																																																																																					Int:1
																																																																																																					Let Td1514.4751
																																																																																																						Let Td1512.4752
																																																																																																							Let Ti1511.4754
																																																																																																								Int:1
																																																																																																								Get p.2908 Ti1511.4754
																																																																																																							Let Td1513.4753
																																																																																																								App o_param_y.2735obj.4714 
																																																																																																								FSub Td1512.4752 Td1513.4753
																																																																																																						Put sconst.4715 Ti1510.4750 Td1514.4751
																																																																																																				Let Tu102.4719
																																																																																																					Let Ti1515.4745
																																																																																																						Int:2
																																																																																																						Let Td1519.4746
																																																																																																							Let Td1517.4747
																																																																																																								Let Ti1516.4749
																																																																																																									Int:2
																																																																																																									Get p.2908 Ti1516.4749
																																																																																																								Let Td1518.4748
																																																																																																									App o_param_z.2737obj.4714 
																																																																																																									FSub Td1517.4747 Td1518.4748
																																																																																																							Put sconst.4715 Ti1515.4745 Td1519.4746
																																																																																																					Let Tu101.4720
																																																																																																						Let Ti1520.4723
																																																																																																							Int:2
																																																																																																							IfEq m_shape.4716 Ti1520.4723
																																																																																																								Let Ti1521.4736
																																																																																																									Int:3
																																																																																																									Let Td1529.4737
																																																																																																										Let Ta1522.4738
																																																																																																											App o_param_abc.2731obj.4714 
																																																																																																											Let Td1524.4739
																																																																																																												Let Ti1523.4744
																																																																																																													Int:0
																																																																																																													Get sconst.4715 Ti1523.4744
																																																																																																												Let Td1526.4740
																																																																																																													Let Ti1525.4743
																																																																																																														Int:1
																																																																																																														Get sconst.4715 Ti1525.4743
																																																																																																													Let Td1528.4741
																																																																																																														Let Ti1527.4742
																																																																																																															Int:2
																																																																																																															Get sconst.4715 Ti1527.4742
																																																																																																														App veciprod2.2693Ta1522.4738 Td1524.4739 Td1526.4740 Td1528.4741 
																																																																																																										Put sconst.4715 Ti1521.4736 Td1529.4737
																																																																																																								Let Ti1530.4724
																																																																																																									Int:2
																																																																																																									IfLE m_shape.4716 Ti1530.4724
																																																																																																										Unit
																																																																																																										Let cc0.4725
																																																																																																											Let Td1532.4730
																																																																																																												Let Ti1531.4735
																																																																																																													Int:0
																																																																																																													Get sconst.4715 Ti1531.4735
																																																																																																												Let Td1534.4731
																																																																																																													Let Ti1533.4734
																																																																																																														Int:1
																																																																																																														Get sconst.4715 Ti1533.4734
																																																																																																													Let Td1536.4732
																																																																																																														Let Ti1535.4733
																																																																																																															Int:2
																																																																																																															Get sconst.4715 Ti1535.4733
																																																																																																														App quadratic.2830obj.4714 Td1532.4730 Td1534.4731 Td1536.4732 
																																																																																																											Let Ti1537.4726
																																																																																																												Int:3
																																																																																																												Let Td1540.4727
																																																																																																													Let Ti1538.4728
																																																																																																														Int:3
																																																																																																														IfEq m_shape.4716 Ti1538.4728
																																																																																																															Let Td1539.4729
																																																																																																																Float:1.000000
																																																																																																																FSub cc0.4725 Td1539.4729
																																																																																																															Var cc0.4725
																																																																																																													Put sconst.4715 Ti1537.4726 Td1540.4727
																																																																																																						Let Ti1542.4721
																																																																																																							Let Ti1541.4722
																																																																																																								Int:1
																																																																																																								Sub index.2909 Ti1541.4722
																																																																																																							App setup_startp_constants.2907p.2908 Ti1542.4721 
																																																																																															Unit
																																																																																													LetRec setup_startp.2910 p.2911 
																																																																																														Let Tu105.4706
																																																																																															Let Ta1497.4712
																																																																																																ExtArray 648
																																																																																																App veccpy.2679Ta1497.4712 p.2911 
																																																																																															Let Ti1502.4707
																																																																																																Let Ti1500.4708
																																																																																																	Let Ta1498.4710
																																																																																																		ExtArray 0
																																																																																																		Let Ti1499.4711
																																																																																																			Int:0
																																																																																																			Get Ta1498.4710 Ti1499.4711
																																																																																																	Let Ti1501.4709
																																																																																																		Int:1
																																																																																																		Sub Ti1500.4708 Ti1501.4709
																																																																																																App setup_startp_constants.2907p.2911 Ti1502.4707 
																																																																																														LetRec is_rect_outside.2912 m.2913 p0.2914 p1.2915 p2.2916 
																																																																																															Let Ti1493.4692
																																																																																																Let Tb1485.4696
																																																																																																	Let Td1483.4704
																																																																																																		App fabs.2651p0.2914 
																																																																																																		Let Td1484.4705
																																																																																																			App o_param_a.2725m.2913 
																																																																																																			App fless.2653Td1483.4704 Td1484.4705 
																																																																																																	Let Ti1486.4697
																																																																																																		Int:0
																																																																																																		IfEq Tb1485.4696 Ti1486.4697
																																																																																																			Int:0
																																																																																																			Let Tb1489.4698
																																																																																																				Let Td1487.4702
																																																																																																					App fabs.2651p1.2915 
																																																																																																					Let Td1488.4703
																																																																																																						App o_param_b.2727m.2913 
																																																																																																						App fless.2653Td1487.4702 Td1488.4703 
																																																																																																				Let Ti1490.4699
																																																																																																					Int:0
																																																																																																					IfEq Tb1489.4698 Ti1490.4699
																																																																																																						Int:0
																																																																																																						Let Td1491.4700
																																																																																																							App fabs.2651p2.2916 
																																																																																																							Let Td1492.4701
																																																																																																								App o_param_c.2729m.2913 
																																																																																																								App fless.2653Td1491.4700 Td1492.4701 
																																																																																																Let Ti1494.4693
																																																																																																	Int:0
																																																																																																	IfEq Ti1493.4692 Ti1494.4693
																																																																																																		Let Tb1495.4694
																																																																																																			App o_isinvert.2721m.2913 
																																																																																																			Let Ti1496.4695
																																																																																																				Int:0
																																																																																																				IfEq Tb1495.4694 Ti1496.4695
																																																																																																					Int:1
																																																																																																					Int:0
																																																																																																		App o_isinvert.2721m.2913 
																																																																																															LetRec is_plane_outside.2917 m.2918 p0.2919 p1.2920 p2.2921 
																																																																																																Let w.4686
																																																																																																	Let Ta1478.4691
																																																																																																		App o_param_abc.2731m.2918 
																																																																																																		App veciprod2.2693Ta1478.4691 p0.2919 p1.2920 p2.2921 
																																																																																																	Let Tb1481.4687
																																																																																																		Let Tb1479.4689
																																																																																																			App o_isinvert.2721m.2918 
																																																																																																			Let Tb1480.4690
																																																																																																				App fisneg.2643w.4686 
																																																																																																				App xor.2658Tb1479.4689 Tb1480.4690 
																																																																																																		Let Ti1482.4688
																																																																																																			Int:0
																																																																																																			IfEq Tb1481.4687 Ti1482.4688
																																																																																																				Int:1
																																																																																																				Int:0
																																																																																																LetRec is_second_outside.2922 m.2923 p0.2924 p1.2925 p2.2926 
																																																																																																	Let w.4677
																																																																																																		App quadratic.2830m.2923 p0.2924 p1.2925 p2.2926 
																																																																																																		Let w2.4678
																																																																																																			Let Ti1471.4683
																																																																																																				App o_form.2717m.2923 
																																																																																																				Let Ti1472.4684
																																																																																																					Int:3
																																																																																																					IfEq Ti1471.4683 Ti1472.4684
																																																																																																						Let Td1473.4685
																																																																																																							Float:1.000000
																																																																																																							FSub w.4677 Td1473.4685
																																																																																																						Var w.4677
																																																																																																			Let Tb1476.4679
																																																																																																				Let Tb1474.4681
																																																																																																					App o_isinvert.2721m.2923 
																																																																																																					Let Tb1475.4682
																																																																																																						App fisneg.2643w2.4678 
																																																																																																						App xor.2658Tb1474.4681 Tb1475.4682 
																																																																																																				Let Ti1477.4680
																																																																																																					Int:0
																																																																																																					IfEq Tb1476.4679 Ti1477.4680
																																																																																																						Int:1
																																																																																																						Int:0
																																																																																																	LetRec is_outside.2927 m.2928 q0.2929 q1.2930 q2.2931 
																																																																																																		Let p0.4668
																																																																																																			Let Td1466.4676
																																																																																																				App o_param_x.2733m.2928 
																																																																																																				FSub q0.2929 Td1466.4676
																																																																																																			Let p1.4669
																																																																																																				Let Td1467.4675
																																																																																																					App o_param_y.2735m.2928 
																																																																																																					FSub q1.2930 Td1467.4675
																																																																																																				Let p2.4670
																																																																																																					Let Td1468.4674
																																																																																																						App o_param_z.2737m.2928 
																																																																																																						FSub q2.2931 Td1468.4674
																																																																																																					Let m_shape.4671
																																																																																																						App o_form.2717m.2928 
																																																																																																						Let Ti1469.4672
																																																																																																							Int:1
																																																																																																							IfEq m_shape.4671 Ti1469.4672
																																																																																																								App is_rect_outside.2912m.2928 p0.4668 p1.4669 p2.4670 
																																																																																																								Let Ti1470.4673
																																																																																																									Int:2
																																																																																																									IfEq m_shape.4671 Ti1470.4673
																																																																																																										App is_plane_outside.2917m.2928 p0.4668 p1.4669 p2.4670 
																																																																																																										App is_second_outside.2922m.2928 p0.4668 p1.4669 p2.4670 
																																																																																																		LetRec check_all_inside.2932 ofs.2933 iand.2934 q0.2935 q1.2936 q2.2937 
																																																																																																			Let head.4659
																																																																																																				Get iand.2934 ofs.2933
																																																																																																				Let Ti1459.4660
																																																																																																					Let Ti1458.4667
																																																																																																						Int:1
																																																																																																						Neg Ti1458.4667
																																																																																																					IfEq head.4659 Ti1459.4660
																																																																																																						Int:1
																																																																																																						Let Tb1462.4661
																																																																																																							Let Tt1461.4665
																																																																																																								Let Ta1460.4666
																																																																																																									ExtArray 48
																																																																																																									Get Ta1460.4666 head.4659
																																																																																																								App is_outside.2927Tt1461.4665 q0.2935 q1.2936 q2.2937 
																																																																																																							Let Ti1463.4662
																																																																																																								Int:0
																																																																																																								IfEq Tb1462.4661 Ti1463.4662
																																																																																																									Let Ti1465.4663
																																																																																																										Let Ti1464.4664
																																																																																																											Int:1
																																																																																																											Add ofs.2933 Ti1464.4664
																																																																																																										App check_all_inside.2932Ti1465.4663 iand.2934 q0.2935 q1.2936 q2.2937 
																																																																																																									Int:0
																																																																																																			LetRec shadow_check_and_group.2938 iand_ofs.2939 and_group.2940 
																																																																																																				Let Ti1414.4608
																																																																																																					Get and_group.2940 iand_ofs.2939
																																																																																																					Let Ti1416.4609
																																																																																																						Let Ti1415.4658
																																																																																																							Int:1
																																																																																																							Neg Ti1415.4658
																																																																																																						IfEq Ti1414.4608 Ti1416.4609
																																																																																																							Int:0
																																																																																																							Let obj.4610
																																																																																																								Get and_group.2940 iand_ofs.2939
																																																																																																								Let t0.4611
																																																																																																									Let Tt1417.4656
																																																																																																										ExtTuple 988
																																																																																																										Let Ta1418.4657
																																																																																																											ExtArray 552
																																																																																																											App solver_fast.2872obj.4610 Tt1417.4656 Ta1418.4657 
																																																																																																									Let t0p.4612
																																																																																																										Let Ta1419.4654
																																																																																																											ExtArray 540
																																																																																																											Let Ti1420.4655
																																																																																																												Int:0
																																																																																																												Get Ta1419.4654 Ti1420.4655
																																																																																																										Let Ti1423.4613
																																																																																																											Let Ti1421.4652
																																																																																																												Int:0
																																																																																																												IfEq t0.4611 Ti1421.4652
																																																																																																													Int:0
																																																																																																													Let Td1422.4653
																																																																																																														Float:-0.200000
																																																																																																														App fless.2653t0p.4612 Td1422.4653 
																																																																																																											Let Ti1424.4614
																																																																																																												Int:0
																																																																																																												IfEq Ti1423.4613 Ti1424.4614
																																																																																																													Let Tb1427.4646
																																																																																																														Let Tt1426.4650
																																																																																																															Let Ta1425.4651
																																																																																																																ExtArray 48
																																																																																																																Get Ta1425.4651 obj.4610
																																																																																																															App o_isinvert.2721Tt1426.4650 
																																																																																																														Let Ti1428.4647
																																																																																																															Int:0
																																																																																																															IfEq Tb1427.4646 Ti1428.4647
																																																																																																																Int:0
																																																																																																																Let Ti1430.4648
																																																																																																																	Let Ti1429.4649
																																																																																																																		Int:1
																																																																																																																		Add iand_ofs.2939 Ti1429.4649
																																																																																																																	App shadow_check_and_group.2938Ti1430.4648 and_group.2940 
																																																																																																													Let t.4615
																																																																																																														Let Td1431.4645
																																																																																																															Float:0.010000
																																																																																																															FAdd t0p.4612 Td1431.4645
																																																																																																														Let q0.4616
																																																																																																															Let Td1435.4638
																																																																																																																Let Td1434.4642
																																																																																																																	Let Ta1432.4643
																																																																																																																		ExtArray 312
																																																																																																																		Let Ti1433.4644
																																																																																																																			Int:0
																																																																																																																			Get Ta1432.4643 Ti1433.4644
																																																																																																																	FMul Td1434.4642 t.4615
																																																																																																																Let Td1438.4639
																																																																																																																	Let Ta1436.4640
																																																																																																																		ExtArray 552
																																																																																																																		Let Ti1437.4641
																																																																																																																			Int:0
																																																																																																																			Get Ta1436.4640 Ti1437.4641
																																																																																																																	FAdd Td1435.4638 Td1438.4639
																																																																																																															Let q1.4617
																																																																																																																Let Td1442.4631
																																																																																																																	Let Td1441.4635
																																																																																																																		Let Ta1439.4636
																																																																																																																			ExtArray 312
																																																																																																																			Let Ti1440.4637
																																																																																																																				Int:1
																																																																																																																				Get Ta1439.4636 Ti1440.4637
																																																																																																																		FMul Td1441.4635 t.4615
																																																																																																																	Let Td1445.4632
																																																																																																																		Let Ta1443.4633
																																																																																																																			ExtArray 552
																																																																																																																			Let Ti1444.4634
																																																																																																																				Int:1
																																																																																																																				Get Ta1443.4633 Ti1444.4634
																																																																																																																		FAdd Td1442.4631 Td1445.4632
																																																																																																																Let q2.4618
																																																																																																																	Let Td1449.4624
																																																																																																																		Let Td1448.4628
																																																																																																																			Let Ta1446.4629
																																																																																																																				ExtArray 312
																																																																																																																				Let Ti1447.4630
																																																																																																																					Int:2
																																																																																																																					Get Ta1446.4629 Ti1447.4630
																																																																																																																			FMul Td1448.4628 t.4615
																																																																																																																		Let Td1452.4625
																																																																																																																			Let Ta1450.4626
																																																																																																																				ExtArray 552
																																																																																																																				Let Ti1451.4627
																																																																																																																					Int:2
																																																																																																																					Get Ta1450.4626 Ti1451.4627
																																																																																																																			FAdd Td1449.4624 Td1452.4625
																																																																																																																	Let Tb1454.4619
																																																																																																																		Let Ti1453.4623
																																																																																																																			Int:0
																																																																																																																			App check_all_inside.2932Ti1453.4623 and_group.2940 q0.4616 q1.4617 q2.4618 
																																																																																																																		Let Ti1455.4620
																																																																																																																			Int:0
																																																																																																																			IfEq Tb1454.4619 Ti1455.4620
																																																																																																																				Let Ti1457.4621
																																																																																																																					Let Ti1456.4622
																																																																																																																						Int:1
																																																																																																																						Add iand_ofs.2939 Ti1456.4622
																																																																																																																					App shadow_check_and_group.2938Ti1457.4621 and_group.2940 
																																																																																																																				Int:1
																																																																																																				LetRec shadow_check_one_or_group.2941 ofs.2942 or_group.2943 
																																																																																																					Let head.4598
																																																																																																						Get or_group.2943 ofs.2942
																																																																																																						Let Ti1408.4599
																																																																																																							Let Ti1407.4607
																																																																																																								Int:1
																																																																																																								Neg Ti1407.4607
																																																																																																							IfEq head.4598 Ti1408.4599
																																																																																																								Int:0
																																																																																																								Let and_group.4600
																																																																																																									Let Ta1409.4606
																																																																																																										ExtArray 332
																																																																																																										Get Ta1409.4606 head.4598
																																																																																																									Let shadow_p.4601
																																																																																																										Let Ti1410.4605
																																																																																																											Int:0
																																																																																																											App shadow_check_and_group.2938Ti1410.4605 and_group.4600 
																																																																																																										Let Ti1411.4602
																																																																																																											Int:0
																																																																																																											IfEq shadow_p.4601 Ti1411.4602
																																																																																																												Let Ti1413.4603
																																																																																																													Let Ti1412.4604
																																																																																																														Int:1
																																																																																																														Add ofs.2942 Ti1412.4604
																																																																																																													App shadow_check_one_or_group.2941Ti1413.4603 or_group.2943 
																																																																																																												Int:1
																																																																																																					LetRec shadow_check_one_or_matrix.2944 ofs.2945 or_matrix.2946 
																																																																																																						Let head.4570
																																																																																																							Get or_matrix.2946 ofs.2945
																																																																																																							Let range_primitive.4571
																																																																																																								Let Ti1382.4597
																																																																																																									Int:0
																																																																																																									Get head.4570 Ti1382.4597
																																																																																																								Let Ti1384.4572
																																																																																																									Let Ti1383.4596
																																																																																																										Int:1
																																																																																																										Neg Ti1383.4596
																																																																																																									IfEq range_primitive.4571 Ti1384.4572
																																																																																																										Int:0
																																																																																																										Let Ti1398.4573
																																																																																																											Let Ti1385.4582
																																																																																																												Int:99
																																																																																																												IfEq range_primitive.4571 Ti1385.4582
																																																																																																													Int:1
																																																																																																													Let t.4583
																																																																																																														Let Tt1386.4594
																																																																																																															ExtTuple 988
																																																																																																															Let Ta1387.4595
																																																																																																																ExtArray 552
																																																																																																																App solver_fast.2872range_primitive.4571 Tt1386.4594 Ta1387.4595 
																																																																																																														Let Ti1388.4584
																																																																																																															Int:0
																																																																																																															IfEq t.4583 Ti1388.4584
																																																																																																																Int:0
																																																																																																																Let Tb1393.4585
																																																																																																																	Let Td1391.4590
																																																																																																																		Let Ta1389.4592
																																																																																																																			ExtArray 540
																																																																																																																			Let Ti1390.4593
																																																																																																																				Int:0
																																																																																																																				Get Ta1389.4592 Ti1390.4593
																																																																																																																		Let Td1392.4591
																																																																																																																			Float:-0.100000
																																																																																																																			App fless.2653Td1391.4590 Td1392.4591 
																																																																																																																	Let Ti1394.4586
																																																																																																																		Int:0
																																																																																																																		IfEq Tb1393.4585 Ti1394.4586
																																																																																																																			Int:0
																																																																																																																			Let Tb1396.4587
																																																																																																																				Let Ti1395.4589
																																																																																																																					Int:1
																																																																																																																					App shadow_check_one_or_group.2941Ti1395.4589 head.4570 
																																																																																																																				Let Ti1397.4588
																																																																																																																					Int:0
																																																																																																																					IfEq Tb1396.4587 Ti1397.4588
																																																																																																																						Int:0
																																																																																																																						Int:1
																																																																																																											Let Ti1399.4574
																																																																																																												Int:0
																																																																																																												IfEq Ti1398.4573 Ti1399.4574
																																																																																																													Let Ti1401.4580
																																																																																																														Let Ti1400.4581
																																																																																																															Int:1
																																																																																																															Add ofs.2945 Ti1400.4581
																																																																																																														App shadow_check_one_or_matrix.2944Ti1401.4580 or_matrix.2946 
																																																																																																													Let Tb1403.4575
																																																																																																														Let Ti1402.4579
																																																																																																															Int:1
																																																																																																															App shadow_check_one_or_group.2941Ti1402.4579 head.4570 
																																																																																																														Let Ti1404.4576
																																																																																																															Int:0
																																																																																																															IfEq Tb1403.4575 Ti1404.4576
																																																																																																																Let Ti1406.4577
																																																																																																																	Let Ti1405.4578
																																																																																																																		Int:1
																																																																																																																		Add ofs.2945 Ti1405.4578
																																																																																																																	App shadow_check_one_or_matrix.2944Ti1406.4577 or_matrix.2946 
																																																																																																																Int:1
																																																																																																						LetRec solve_each_element.2947 iand_ofs.2948 and_group.2949 dirvec.2950 
																																																																																																							Let iobj.4508
																																																																																																								Get and_group.2949 iand_ofs.2948
																																																																																																								Let Ti1332.4509
																																																																																																									Let Ti1331.4569
																																																																																																										Int:1
																																																																																																										Neg Ti1331.4569
																																																																																																									IfEq iobj.4508 Ti1332.4509
																																																																																																										Unit
																																																																																																										Let t0.4510
																																																																																																											Let Ta1333.4568
																																																																																																												ExtArray 636
																																																																																																												App solver.2849iobj.4508 dirvec.2950 Ta1333.4568 
																																																																																																											Let Ti1334.4511
																																																																																																												Int:0
																																																																																																												IfEq t0.4510 Ti1334.4511
																																																																																																													Let Tb1337.4562
																																																																																																														Let Tt1336.4566
																																																																																																															Let Ta1335.4567
																																																																																																																ExtArray 48
																																																																																																																Get Ta1335.4567 iobj.4508
																																																																																																															App o_isinvert.2721Tt1336.4566 
																																																																																																														Let Ti1338.4563
																																																																																																															Int:0
																																																																																																															IfEq Tb1337.4562 Ti1338.4563
																																																																																																																Unit
																																																																																																																Let Ti1340.4564
																																																																																																																	Let Ti1339.4565
																																																																																																																		Int:1
																																																																																																																		Add iand_ofs.2948 Ti1339.4565
																																																																																																																	App solve_each_element.2947Ti1340.4564 and_group.2949 dirvec.2950 
																																																																																																													Let t0p.4512
																																																																																																														Let Ta1341.4560
																																																																																																															ExtArray 540
																																																																																																															Let Ti1342.4561
																																																																																																																Int:0
																																																																																																																Get Ta1341.4560 Ti1342.4561
																																																																																																														Let Tu109.4513
																																																																																																															Let Tb1344.4516
																																																																																																																Let Td1343.4559
																																																																																																																	Float:0.000000
																																																																																																																	App fless.2653Td1343.4559 t0p.4512 
																																																																																																																Let Ti1345.4517
																																																																																																																	Int:0
																																																																																																																	IfEq Tb1344.4516 Ti1345.4517
																																																																																																																		Unit
																																																																																																																		Let Tb1349.4518
																																																																																																																			Let Td1348.4556
																																																																																																																				Let Ta1346.4557
																																																																																																																					ExtArray 548
																																																																																																																					Let Ti1347.4558
																																																																																																																						Int:0
																																																																																																																						Get Ta1346.4557 Ti1347.4558
																																																																																																																				App fless.2653t0p.4512 Td1348.4556 
																																																																																																																			Let Ti1350.4519
																																																																																																																				Int:0
																																																																																																																				IfEq Tb1349.4518 Ti1350.4519
																																																																																																																					Unit
																																																																																																																					Let t.4520
																																																																																																																						Let Td1351.4555
																																																																																																																							Float:0.010000
																																																																																																																							FAdd t0p.4512 Td1351.4555
																																																																																																																						Let q0.4521
																																																																																																																							Let Td1354.4549
																																																																																																																								Let Td1353.4553
																																																																																																																									Let Ti1352.4554
																																																																																																																										Int:0
																																																																																																																										Get dirvec.2950 Ti1352.4554
																																																																																																																									FMul Td1353.4553 t.4520
																																																																																																																								Let Td1357.4550
																																																																																																																									Let Ta1355.4551
																																																																																																																										ExtArray 636
																																																																																																																										Let Ti1356.4552
																																																																																																																											Int:0
																																																																																																																											Get Ta1355.4551 Ti1356.4552
																																																																																																																									FAdd Td1354.4549 Td1357.4550
																																																																																																																							Let q1.4522
																																																																																																																								Let Td1360.4543
																																																																																																																									Let Td1359.4547
																																																																																																																										Let Ti1358.4548
																																																																																																																											Int:1
																																																																																																																											Get dirvec.2950 Ti1358.4548
																																																																																																																										FMul Td1359.4547 t.4520
																																																																																																																									Let Td1363.4544
																																																																																																																										Let Ta1361.4545
																																																																																																																											ExtArray 636
																																																																																																																											Let Ti1362.4546
																																																																																																																												Int:1
																																																																																																																												Get Ta1361.4545 Ti1362.4546
																																																																																																																										FAdd Td1360.4543 Td1363.4544
																																																																																																																								Let q2.4523
																																																																																																																									Let Td1366.4537
																																																																																																																										Let Td1365.4541
																																																																																																																											Let Ti1364.4542
																																																																																																																												Int:2
																																																																																																																												Get dirvec.2950 Ti1364.4542
																																																																																																																											FMul Td1365.4541 t.4520
																																																																																																																										Let Td1369.4538
																																																																																																																											Let Ta1367.4539
																																																																																																																												ExtArray 636
																																																																																																																												Let Ti1368.4540
																																																																																																																													Int:2
																																																																																																																													Get Ta1367.4539 Ti1368.4540
																																																																																																																											FAdd Td1366.4537 Td1369.4538
																																																																																																																									Let Tb1371.4524
																																																																																																																										Let Ti1370.4536
																																																																																																																											Int:0
																																																																																																																											App check_all_inside.2932Ti1370.4536 and_group.2949 q0.4521 q1.4522 q2.4523 
																																																																																																																										Let Ti1372.4525
																																																																																																																											Int:0
																																																																																																																											IfEq Tb1371.4524 Ti1372.4525
																																																																																																																												Unit
																																																																																																																												Let Tu108.4526
																																																																																																																													Let Ta1373.4534
																																																																																																																														ExtArray 548
																																																																																																																														Let Ti1374.4535
																																																																																																																															Int:0
																																																																																																																															Put Ta1373.4534 Ti1374.4535 t.4520
																																																																																																																													Let Tu107.4527
																																																																																																																														Let Ta1375.4533
																																																																																																																															ExtArray 552
																																																																																																																															App vecset.2669Ta1375.4533 q0.4521 q1.4522 q2.4523 
																																																																																																																														Let Tu106.4528
																																																																																																																															Let Ta1376.4531
																																																																																																																																ExtArray 564
																																																																																																																																Let Ti1377.4532
																																																																																																																																	Int:0
																																																																																																																																	Put Ta1376.4531 Ti1377.4532 iobj.4508
																																																																																																																															Let Ta1378.4529
																																																																																																																																ExtArray 544
																																																																																																																																Let Ti1379.4530
																																																																																																																																	Int:0
																																																																																																																																	Put Ta1378.4529 Ti1379.4530 t0.4510
																																																																																																															Let Ti1381.4514
																																																																																																																Let Ti1380.4515
																																																																																																																	Int:1
																																																																																																																	Add iand_ofs.2948 Ti1380.4515
																																																																																																																App solve_each_element.2947Ti1381.4514 and_group.2949 dirvec.2950 
																																																																																																							LetRec solve_one_or_network.2951 ofs.2952 or_group.2953 dirvec.2954 
																																																																																																								Let head.4499
																																																																																																									Get or_group.2953 ofs.2952
																																																																																																									Let Ti1326.4500
																																																																																																										Let Ti1325.4507
																																																																																																											Int:1
																																																																																																											Neg Ti1325.4507
																																																																																																										IfEq head.4499 Ti1326.4500
																																																																																																											Unit
																																																																																																											Let and_group.4501
																																																																																																												Let Ta1327.4506
																																																																																																													ExtArray 332
																																																																																																													Get Ta1327.4506 head.4499
																																																																																																												Let Tu110.4502
																																																																																																													Let Ti1328.4505
																																																																																																														Int:0
																																																																																																														App solve_each_element.2947Ti1328.4505 and_group.4501 dirvec.2954 
																																																																																																													Let Ti1330.4503
																																																																																																														Let Ti1329.4504
																																																																																																															Int:1
																																																																																																															Add ofs.2952 Ti1329.4504
																																																																																																														App solve_one_or_network.2951Ti1330.4503 or_group.2953 dirvec.2954 
																																																																																																								LetRec trace_or_matrix.2955 ofs.2956 or_network.2957 dirvec.2958 
																																																																																																									Let head.4477
																																																																																																										Get or_network.2957 ofs.2956
																																																																																																										Let range_primitive.4478
																																																																																																											Let Ti1308.4498
																																																																																																												Int:0
																																																																																																												Get head.4477 Ti1308.4498
																																																																																																											Let Ti1310.4479
																																																																																																												Let Ti1309.4497
																																																																																																													Int:1
																																																																																																													Neg Ti1309.4497
																																																																																																												IfEq range_primitive.4478 Ti1310.4479
																																																																																																													Unit
																																																																																																													Let Tu111.4480
																																																																																																														Let Ti1311.4483
																																																																																																															Int:99
																																																																																																															IfEq range_primitive.4478 Ti1311.4483
																																																																																																																Let Ti1312.4496
																																																																																																																	Int:1
																																																																																																																	App solve_one_or_network.2951Ti1312.4496 head.4477 dirvec.2958 
																																																																																																																Let t.4484
																																																																																																																	Let Ta1313.4495
																																																																																																																		ExtArray 636
																																																																																																																		App solver.2849range_primitive.4478 dirvec.2958 Ta1313.4495 
																																																																																																																	Let Ti1314.4485
																																																																																																																		Int:0
																																																																																																																		IfEq t.4484 Ti1314.4485
																																																																																																																			Unit
																																																																																																																			Let tp.4486
																																																																																																																				Let Ta1315.4493
																																																																																																																					ExtArray 540
																																																																																																																					Let Ti1316.4494
																																																																																																																						Int:0
																																																																																																																						Get Ta1315.4493 Ti1316.4494
																																																																																																																				Let Tb1320.4487
																																																																																																																					Let Td1319.4490
																																																																																																																						Let Ta1317.4491
																																																																																																																							ExtArray 548
																																																																																																																							Let Ti1318.4492
																																																																																																																								Int:0
																																																																																																																								Get Ta1317.4491 Ti1318.4492
																																																																																																																						App fless.2653tp.4486 Td1319.4490 
																																																																																																																					Let Ti1321.4488
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1320.4487 Ti1321.4488
																																																																																																																							Unit
																																																																																																																							Let Ti1322.4489
																																																																																																																								Int:1
																																																																																																																								App solve_one_or_network.2951Ti1322.4489 head.4477 dirvec.2958 
																																																																																																														Let Ti1324.4481
																																																																																																															Let Ti1323.4482
																																																																																																																Int:1
																																																																																																																Add ofs.2956 Ti1323.4482
																																																																																																															App trace_or_matrix.2955Ti1324.4481 or_network.2957 dirvec.2958 
																																																																																																									LetRec judge_intersection.2959 dirvec.2960 
																																																																																																										Let Tu113.4461
																																																																																																											Let Ta1295.4474
																																																																																																												ExtArray 548
																																																																																																												Let Ti1296.4475
																																																																																																													Int:0
																																																																																																													Let Td1297.4476
																																																																																																														Float:1000000000.000000
																																																																																																														Put Ta1295.4474 Ti1296.4475 Td1297.4476
																																																																																																											Let Tu112.4462
																																																																																																												Let Ti1298.4470
																																																																																																													Int:0
																																																																																																													Let Ta1301.4471
																																																																																																														Let Ta1299.4472
																																																																																																															ExtArray 536
																																																																																																															Let Ti1300.4473
																																																																																																																Int:0
																																																																																																																Get Ta1299.4472 Ti1300.4473
																																																																																																														App trace_or_matrix.2955Ti1298.4470 Ta1301.4471 dirvec.2960 
																																																																																																												Let t.4463
																																																																																																													Let Ta1302.4468
																																																																																																														ExtArray 548
																																																																																																														Let Ti1303.4469
																																																																																																															Int:0
																																																																																																															Get Ta1302.4468 Ti1303.4469
																																																																																																													Let Tb1305.4464
																																																																																																														Let Td1304.4467
																																																																																																															Float:-0.100000
																																																																																																															App fless.2653Td1304.4467 t.4463 
																																																																																																														Let Ti1306.4465
																																																																																																															Int:0
																																																																																																															IfEq Tb1305.4464 Ti1306.4465
																																																																																																																Int:0
																																																																																																																Let Td1307.4466
																																																																																																																	Float:100000000.000000
																																																																																																																	App fless.2653t.4463 Td1307.4466 
																																																																																																										LetRec solve_each_element_fast.2961 iand_ofs.2962 and_group.2963 dirvec.2964 
																																																																																																											Let vec.4399
																																																																																																												App d_vec.2776dirvec.2964 
																																																																																																												Let iobj.4400
																																																																																																													Get and_group.2963 iand_ofs.2962
																																																																																																													Let Ti1246.4401
																																																																																																														Let Ti1245.4460
																																																																																																															Int:1
																																																																																																															Neg Ti1245.4460
																																																																																																														IfEq iobj.4400 Ti1246.4401
																																																																																																															Unit
																																																																																																															Let t0.4402
																																																																																																																App solver_fast2.2890iobj.4400 dirvec.2964 
																																																																																																																Let Ti1247.4403
																																																																																																																	Int:0
																																																																																																																	IfEq t0.4402 Ti1247.4403
																																																																																																																		Let Tb1250.4454
																																																																																																																			Let Tt1249.4458
																																																																																																																				Let Ta1248.4459
																																																																																																																					ExtArray 48
																																																																																																																					Get Ta1248.4459 iobj.4400
																																																																																																																				App o_isinvert.2721Tt1249.4458 
																																																																																																																			Let Ti1251.4455
																																																																																																																				Int:0
																																																																																																																				IfEq Tb1250.4454 Ti1251.4455
																																																																																																																					Unit
																																																																																																																					Let Ti1253.4456
																																																																																																																						Let Ti1252.4457
																																																																																																																							Int:1
																																																																																																																							Add iand_ofs.2962 Ti1252.4457
																																																																																																																						App solve_each_element_fast.2961Ti1253.4456 and_group.2963 dirvec.2964 
																																																																																																																		Let t0p.4404
																																																																																																																			Let Ta1254.4452
																																																																																																																				ExtArray 540
																																																																																																																				Let Ti1255.4453
																																																																																																																					Int:0
																																																																																																																					Get Ta1254.4452 Ti1255.4453
																																																																																																																			Let Tu117.4405
																																																																																																																				Let Tb1257.4408
																																																																																																																					Let Td1256.4451
																																																																																																																						Float:0.000000
																																																																																																																						App fless.2653Td1256.4451 t0p.4404 
																																																																																																																					Let Ti1258.4409
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1257.4408 Ti1258.4409
																																																																																																																							Unit
																																																																																																																							Let Tb1262.4410
																																																																																																																								Let Td1261.4448
																																																																																																																									Let Ta1259.4449
																																																																																																																										ExtArray 548
																																																																																																																										Let Ti1260.4450
																																																																																																																											Int:0
																																																																																																																											Get Ta1259.4449 Ti1260.4450
																																																																																																																									App fless.2653t0p.4404 Td1261.4448 
																																																																																																																								Let Ti1263.4411
																																																																																																																									Int:0
																																																																																																																									IfEq Tb1262.4410 Ti1263.4411
																																																																																																																										Unit
																																																																																																																										Let t.4412
																																																																																																																											Let Td1264.4447
																																																																																																																												Float:0.010000
																																																																																																																												FAdd t0p.4404 Td1264.4447
																																																																																																																											Let q0.4413
																																																																																																																												Let Td1267.4441
																																																																																																																													Let Td1266.4445
																																																																																																																														Let Ti1265.4446
																																																																																																																															Int:0
																																																																																																																															Get vec.4399 Ti1265.4446
																																																																																																																														FMul Td1266.4445 t.4412
																																																																																																																													Let Td1270.4442
																																																																																																																														Let Ta1268.4443
																																																																																																																															ExtArray 648
																																																																																																																															Let Ti1269.4444
																																																																																																																																Int:0
																																																																																																																																Get Ta1268.4443 Ti1269.4444
																																																																																																																														FAdd Td1267.4441 Td1270.4442
																																																																																																																												Let q1.4414
																																																																																																																													Let Td1273.4435
																																																																																																																														Let Td1272.4439
																																																																																																																															Let Ti1271.4440
																																																																																																																																Int:1
																																																																																																																																Get vec.4399 Ti1271.4440
																																																																																																																															FMul Td1272.4439 t.4412
																																																																																																																														Let Td1276.4436
																																																																																																																															Let Ta1274.4437
																																																																																																																																ExtArray 648
																																																																																																																																Let Ti1275.4438
																																																																																																																																	Int:1
																																																																																																																																	Get Ta1274.4437 Ti1275.4438
																																																																																																																															FAdd Td1273.4435 Td1276.4436
																																																																																																																													Let q2.4415
																																																																																																																														Let Td1279.4429
																																																																																																																															Let Td1278.4433
																																																																																																																																Let Ti1277.4434
																																																																																																																																	Int:2
																																																																																																																																	Get vec.4399 Ti1277.4434
																																																																																																																																FMul Td1278.4433 t.4412
																																																																																																																															Let Td1282.4430
																																																																																																																																Let Ta1280.4431
																																																																																																																																	ExtArray 648
																																																																																																																																	Let Ti1281.4432
																																																																																																																																		Int:2
																																																																																																																																		Get Ta1280.4431 Ti1281.4432
																																																																																																																																FAdd Td1279.4429 Td1282.4430
																																																																																																																														Let Tb1284.4416
																																																																																																																															Let Ti1283.4428
																																																																																																																																Int:0
																																																																																																																																App check_all_inside.2932Ti1283.4428 and_group.2963 q0.4413 q1.4414 q2.4415 
																																																																																																																															Let Ti1285.4417
																																																																																																																																Int:0
																																																																																																																																IfEq Tb1284.4416 Ti1285.4417
																																																																																																																																	Unit
																																																																																																																																	Let Tu116.4418
																																																																																																																																		Let Ta1286.4426
																																																																																																																																			ExtArray 548
																																																																																																																																			Let Ti1287.4427
																																																																																																																																				Int:0
																																																																																																																																				Put Ta1286.4426 Ti1287.4427 t.4412
																																																																																																																																		Let Tu115.4419
																																																																																																																																			Let Ta1288.4425
																																																																																																																																				ExtArray 552
																																																																																																																																				App vecset.2669Ta1288.4425 q0.4413 q1.4414 q2.4415 
																																																																																																																																			Let Tu114.4420
																																																																																																																																				Let Ta1289.4423
																																																																																																																																					ExtArray 564
																																																																																																																																					Let Ti1290.4424
																																																																																																																																						Int:0
																																																																																																																																						Put Ta1289.4423 Ti1290.4424 iobj.4400
																																																																																																																																				Let Ta1291.4421
																																																																																																																																					ExtArray 544
																																																																																																																																					Let Ti1292.4422
																																																																																																																																						Int:0
																																																																																																																																						Put Ta1291.4421 Ti1292.4422 t0.4402
																																																																																																																				Let Ti1294.4406
																																																																																																																					Let Ti1293.4407
																																																																																																																						Int:1
																																																																																																																						Add iand_ofs.2962 Ti1293.4407
																																																																																																																					App solve_each_element_fast.2961Ti1294.4406 and_group.2963 dirvec.2964 
																																																																																																											LetRec solve_one_or_network_fast.2965 ofs.2966 or_group.2967 dirvec.2968 
																																																																																																												Let head.4390
																																																																																																													Get or_group.2967 ofs.2966
																																																																																																													Let Ti1240.4391
																																																																																																														Let Ti1239.4398
																																																																																																															Int:1
																																																																																																															Neg Ti1239.4398
																																																																																																														IfEq head.4390 Ti1240.4391
																																																																																																															Unit
																																																																																																															Let and_group.4392
																																																																																																																Let Ta1241.4397
																																																																																																																	ExtArray 332
																																																																																																																	Get Ta1241.4397 head.4390
																																																																																																																Let Tu118.4393
																																																																																																																	Let Ti1242.4396
																																																																																																																		Int:0
																																																																																																																		App solve_each_element_fast.2961Ti1242.4396 and_group.4392 dirvec.2968 
																																																																																																																	Let Ti1244.4394
																																																																																																																		Let Ti1243.4395
																																																																																																																			Int:1
																																																																																																																			Add ofs.2966 Ti1243.4395
																																																																																																																		App solve_one_or_network_fast.2965Ti1244.4394 or_group.2967 dirvec.2968 
																																																																																																												LetRec trace_or_matrix_fast.2969 ofs.2970 or_network.2971 dirvec.2972 
																																																																																																													Let head.4369
																																																																																																														Get or_network.2971 ofs.2970
																																																																																																														Let range_primitive.4370
																																																																																																															Let Ti1223.4389
																																																																																																																Int:0
																																																																																																																Get head.4369 Ti1223.4389
																																																																																																															Let Ti1225.4371
																																																																																																																Let Ti1224.4388
																																																																																																																	Int:1
																																																																																																																	Neg Ti1224.4388
																																																																																																																IfEq range_primitive.4370 Ti1225.4371
																																																																																																																	Unit
																																																																																																																	Let Tu119.4372
																																																																																																																		Let Ti1226.4375
																																																																																																																			Int:99
																																																																																																																			IfEq range_primitive.4370 Ti1226.4375
																																																																																																																				Let Ti1227.4387
																																																																																																																					Int:1
																																																																																																																					App solve_one_or_network_fast.2965Ti1227.4387 head.4369 dirvec.2972 
																																																																																																																				Let t.4376
																																																																																																																					App solver_fast2.2890range_primitive.4370 dirvec.2972 
																																																																																																																					Let Ti1228.4377
																																																																																																																						Int:0
																																																																																																																						IfEq t.4376 Ti1228.4377
																																																																																																																							Unit
																																																																																																																							Let tp.4378
																																																																																																																								Let Ta1229.4385
																																																																																																																									ExtArray 540
																																																																																																																									Let Ti1230.4386
																																																																																																																										Int:0
																																																																																																																										Get Ta1229.4385 Ti1230.4386
																																																																																																																								Let Tb1234.4379
																																																																																																																									Let Td1233.4382
																																																																																																																										Let Ta1231.4383
																																																																																																																											ExtArray 548
																																																																																																																											Let Ti1232.4384
																																																																																																																												Int:0
																																																																																																																												Get Ta1231.4383 Ti1232.4384
																																																																																																																										App fless.2653tp.4378 Td1233.4382 
																																																																																																																									Let Ti1235.4380
																																																																																																																										Int:0
																																																																																																																										IfEq Tb1234.4379 Ti1235.4380
																																																																																																																											Unit
																																																																																																																											Let Ti1236.4381
																																																																																																																												Int:1
																																																																																																																												App solve_one_or_network_fast.2965Ti1236.4381 head.4369 dirvec.2972 
																																																																																																																		Let Ti1238.4373
																																																																																																																			Let Ti1237.4374
																																																																																																																				Int:1
																																																																																																																				Add ofs.2970 Ti1237.4374
																																																																																																																			App trace_or_matrix_fast.2969Ti1238.4373 or_network.2971 dirvec.2972 
																																																																																																													LetRec judge_intersection_fast.2973 dirvec.2974 
																																																																																																														Let Tu121.4353
																																																																																																															Let Ta1210.4366
																																																																																																																ExtArray 548
																																																																																																																Let Ti1211.4367
																																																																																																																	Int:0
																																																																																																																	Let Td1212.4368
																																																																																																																		Float:1000000000.000000
																																																																																																																		Put Ta1210.4366 Ti1211.4367 Td1212.4368
																																																																																																															Let Tu120.4354
																																																																																																																Let Ti1213.4362
																																																																																																																	Int:0
																																																																																																																	Let Ta1216.4363
																																																																																																																		Let Ta1214.4364
																																																																																																																			ExtArray 536
																																																																																																																			Let Ti1215.4365
																																																																																																																				Int:0
																																																																																																																				Get Ta1214.4364 Ti1215.4365
																																																																																																																		App trace_or_matrix_fast.2969Ti1213.4362 Ta1216.4363 dirvec.2974 
																																																																																																																Let t.4355
																																																																																																																	Let Ta1217.4360
																																																																																																																		ExtArray 548
																																																																																																																		Let Ti1218.4361
																																																																																																																			Int:0
																																																																																																																			Get Ta1217.4360 Ti1218.4361
																																																																																																																	Let Tb1220.4356
																																																																																																																		Let Td1219.4359
																																																																																																																			Float:-0.100000
																																																																																																																			App fless.2653Td1219.4359 t.4355 
																																																																																																																		Let Ti1221.4357
																																																																																																																			Int:0
																																																																																																																			IfEq Tb1220.4356 Ti1221.4357
																																																																																																																				Int:0
																																																																																																																				Let Td1222.4358
																																																																																																																					Float:100000000.000000
																																																																																																																					App fless.2653t.4355 Td1222.4358 
																																																																																																														LetRec get_nvector_rect.2975 dirvec.2976 
																																																																																																															Let rectside.4340
																																																																																																																Let Ta1199.4351
																																																																																																																	ExtArray 544
																																																																																																																	Let Ti1200.4352
																																																																																																																		Int:0
																																																																																																																		Get Ta1199.4351 Ti1200.4352
																																																																																																																Let Tu122.4341
																																																																																																																	Let Ta1201.4350
																																																																																																																		ExtArray 568
																																																																																																																		App vecbzero.2677Ta1201.4350 
																																																																																																																	Let Ta1202.4342
																																																																																																																		ExtArray 568
																																																																																																																		Let Ti1204.4343
																																																																																																																			Let Ti1203.4349
																																																																																																																				Int:1
																																																																																																																				Sub rectside.4340 Ti1203.4349
																																																																																																																			Let Td1209.4344
																																																																																																																				Let Td1208.4345
																																																																																																																					Let Td1207.4346
																																																																																																																						Let Ti1206.4347
																																																																																																																							Let Ti1205.4348
																																																																																																																								Int:1
																																																																																																																								Sub rectside.4340 Ti1205.4348
																																																																																																																							Get dirvec.2976 Ti1206.4347
																																																																																																																						App sgn.2661Td1207.4346 
																																																																																																																					App fneg.2639Td1208.4345 
																																																																																																																				Put Ta1202.4342 Ti1204.4343 Td1209.4344
																																																																																																															LetRec get_nvector_plane.2977 m.2978 
																																																																																																																Let Tu124.4326
																																																																																																																	Let Ta1187.4336
																																																																																																																		ExtArray 568
																																																																																																																		Let Ti1188.4337
																																																																																																																			Int:0
																																																																																																																			Let Td1190.4338
																																																																																																																				Let Td1189.4339
																																																																																																																					App o_param_a.2725m.2978 
																																																																																																																					App fneg.2639Td1189.4339 
																																																																																																																				Put Ta1187.4336 Ti1188.4337 Td1190.4338
																																																																																																																	Let Tu123.4327
																																																																																																																		Let Ta1191.4332
																																																																																																																			ExtArray 568
																																																																																																																			Let Ti1192.4333
																																																																																																																				Int:1
																																																																																																																				Let Td1194.4334
																																																																																																																					Let Td1193.4335
																																																																																																																						App o_param_b.2727m.2978 
																																																																																																																						App fneg.2639Td1193.4335 
																																																																																																																					Put Ta1191.4332 Ti1192.4333 Td1194.4334
																																																																																																																		Let Ta1195.4328
																																																																																																																			ExtArray 568
																																																																																																																			Let Ti1196.4329
																																																																																																																				Int:2
																																																																																																																				Let Td1198.4330
																																																																																																																					Let Td1197.4331
																																																																																																																						App o_param_c.2729m.2978 
																																																																																																																						App fneg.2639Td1197.4331 
																																																																																																																					Put Ta1195.4328 Ti1196.4329 Td1198.4330
																																																																																																																LetRec get_nvector_second.2979 m.2980 
																																																																																																																	Let p0.4263
																																																																																																																		Let Td1137.4322
																																																																																																																			Let Ta1135.4324
																																																																																																																				ExtArray 552
																																																																																																																				Let Ti1136.4325
																																																																																																																					Int:0
																																																																																																																					Get Ta1135.4324 Ti1136.4325
																																																																																																																			Let Td1138.4323
																																																																																																																				App o_param_x.2733m.2980 
																																																																																																																				FSub Td1137.4322 Td1138.4323
																																																																																																																		Let p1.4264
																																																																																																																			Let Td1141.4318
																																																																																																																				Let Ta1139.4320
																																																																																																																					ExtArray 552
																																																																																																																					Let Ti1140.4321
																																																																																																																						Int:1
																																																																																																																						Get Ta1139.4320 Ti1140.4321
																																																																																																																				Let Td1142.4319
																																																																																																																					App o_param_y.2735m.2980 
																																																																																																																					FSub Td1141.4318 Td1142.4319
																																																																																																																			Let p2.4265
																																																																																																																				Let Td1145.4314
																																																																																																																					Let Ta1143.4316
																																																																																																																						ExtArray 552
																																																																																																																						Let Ti1144.4317
																																																																																																																							Int:2
																																																																																																																							Get Ta1143.4316 Ti1144.4317
																																																																																																																					Let Td1146.4315
																																																																																																																						App o_param_z.2737m.2980 
																																																																																																																						FSub Td1145.4314 Td1146.4315
																																																																																																																				Let d0.4266
																																																																																																																					Let Td1147.4313
																																																																																																																						App o_param_a.2725m.2980 
																																																																																																																						FMul p0.4263 Td1147.4313
																																																																																																																					Let d1.4267
																																																																																																																						Let Td1148.4312
																																																																																																																							App o_param_b.2727m.2980 
																																																																																																																							FMul p1.4264 Td1148.4312
																																																																																																																						Let d2.4268
																																																																																																																							Let Td1149.4311
																																																																																																																								App o_param_c.2729m.2980 
																																																																																																																								FMul p2.4265 Td1149.4311
																																																																																																																							Let Tu129.4269
																																																																																																																								Let Ti1150.4272
																																																																																																																									App o_isrot.2723m.2980 
																																																																																																																									Let Ti1151.4273
																																																																																																																										Int:0
																																																																																																																										IfEq Ti1150.4272 Ti1151.4273
																																																																																																																											Let Tu126.4303
																																																																																																																												Let Ta1152.4309
																																																																																																																													ExtArray 568
																																																																																																																													Let Ti1153.4310
																																																																																																																														Int:0
																																																																																																																														Put Ta1152.4309 Ti1153.4310 d0.4266
																																																																																																																												Let Tu125.4304
																																																																																																																													Let Ta1154.4307
																																																																																																																														ExtArray 568
																																																																																																																														Let Ti1155.4308
																																																																																																																															Int:1
																																																																																																																															Put Ta1154.4307 Ti1155.4308 d1.4267
																																																																																																																													Let Ta1156.4305
																																																																																																																														ExtArray 568
																																																																																																																														Let Ti1157.4306
																																																																																																																															Int:2
																																																																																																																															Put Ta1156.4305 Ti1157.4306 d2.4268
																																																																																																																											Let Tu128.4274
																																																																																																																												Let Ta1158.4294
																																																																																																																													ExtArray 568
																																																																																																																													Let Ti1159.4295
																																																																																																																														Int:0
																																																																																																																														Let Td1166.4296
																																																																																																																															Let Td1165.4297
																																																																																																																																Let Td1164.4298
																																																																																																																																	Let Td1161.4299
																																																																																																																																		Let Td1160.4302
																																																																																																																																			App o_param_r3.2753m.2980 
																																																																																																																																			FMul p1.4264 Td1160.4302
																																																																																																																																		Let Td1163.4300
																																																																																																																																			Let Td1162.4301
																																																																																																																																				App o_param_r2.2751m.2980 
																																																																																																																																				FMul p2.4265 Td1162.4301
																																																																																																																																			FAdd Td1161.4299 Td1163.4300
																																																																																																																																	App fhalf.2647Td1164.4298 
																																																																																																																																FAdd d0.4266 Td1165.4297
																																																																																																																															Put Ta1158.4294 Ti1159.4295 Td1166.4296
																																																																																																																												Let Tu127.4275
																																																																																																																													Let Ta1167.4285
																																																																																																																														ExtArray 568
																																																																																																																														Let Ti1168.4286
																																																																																																																															Int:1
																																																																																																																															Let Td1175.4287
																																																																																																																																Let Td1174.4288
																																																																																																																																	Let Td1173.4289
																																																																																																																																		Let Td1170.4290
																																																																																																																																			Let Td1169.4293
																																																																																																																																				App o_param_r3.2753m.2980 
																																																																																																																																				FMul p0.4263 Td1169.4293
																																																																																																																																			Let Td1172.4291
																																																																																																																																				Let Td1171.4292
																																																																																																																																					App o_param_r1.2749m.2980 
																																																																																																																																					FMul p2.4265 Td1171.4292
																																																																																																																																				FAdd Td1170.4290 Td1172.4291
																																																																																																																																		App fhalf.2647Td1173.4289 
																																																																																																																																	FAdd d1.4267 Td1174.4288
																																																																																																																																Put Ta1167.4285 Ti1168.4286 Td1175.4287
																																																																																																																													Let Ta1176.4276
																																																																																																																														ExtArray 568
																																																																																																																														Let Ti1177.4277
																																																																																																																															Int:2
																																																																																																																															Let Td1184.4278
																																																																																																																																Let Td1183.4279
																																																																																																																																	Let Td1182.4280
																																																																																																																																		Let Td1179.4281
																																																																																																																																			Let Td1178.4284
																																																																																																																																				App o_param_r2.2751m.2980 
																																																																																																																																				FMul p0.4263 Td1178.4284
																																																																																																																																			Let Td1181.4282
																																																																																																																																				Let Td1180.4283
																																																																																																																																					App o_param_r1.2749m.2980 
																																																																																																																																					FMul p1.4264 Td1180.4283
																																																																																																																																				FAdd Td1179.4281 Td1181.4282
																																																																																																																																		App fhalf.2647Td1182.4280 
																																																																																																																																	FAdd d2.4268 Td1183.4279
																																																																																																																																Put Ta1176.4276 Ti1177.4277 Td1184.4278
																																																																																																																								Let Ta1185.4270
																																																																																																																									ExtArray 568
																																																																																																																									Let Tb1186.4271
																																																																																																																										App o_isinvert.2721m.2980 
																																																																																																																										App vecunit_sgn.2687Ta1185.4270 Tb1186.4271 
																																																																																																																	LetRec get_nvector.2981 m.2982 dirvec.2983 
																																																																																																																		Let m_shape.4260
																																																																																																																			App o_form.2717m.2982 
																																																																																																																			Let Ti1133.4261
																																																																																																																				Int:1
																																																																																																																				IfEq m_shape.4260 Ti1133.4261
																																																																																																																					App get_nvector_rect.2975dirvec.2983 
																																																																																																																					Let Ti1134.4262
																																																																																																																						Int:2
																																																																																																																						IfEq m_shape.4260 Ti1134.4262
																																																																																																																							App get_nvector_plane.2977m.2982 
																																																																																																																							App get_nvector_second.2979m.2982 
																																																																																																																		LetRec utexture.2984 m.2985 p.2986 
																																																																																																																			Let m_tex.4091
																																																																																																																				App o_texturetype.2715m.2985 
																																																																																																																				Let Tu134.4092
																																																																																																																					Let Ta994.4257
																																																																																																																						ExtArray 580
																																																																																																																						Let Ti995.4258
																																																																																																																							Int:0
																																																																																																																							Let Td996.4259
																																																																																																																								App o_color_red.2743m.2985 
																																																																																																																								Put Ta994.4257 Ti995.4258 Td996.4259
																																																																																																																					Let Tu133.4093
																																																																																																																						Let Ta997.4254
																																																																																																																							ExtArray 580
																																																																																																																							Let Ti998.4255
																																																																																																																								Int:1
																																																																																																																								Let Td999.4256
																																																																																																																									App o_color_green.2745m.2985 
																																																																																																																									Put Ta997.4254 Ti998.4255 Td999.4256
																																																																																																																						Let Tu132.4094
																																																																																																																							Let Ta1000.4251
																																																																																																																								ExtArray 580
																																																																																																																								Let Ti1001.4252
																																																																																																																									Int:2
																																																																																																																									Let Td1002.4253
																																																																																																																										App o_color_blue.2747m.2985 
																																																																																																																										Put Ta1000.4251 Ti1001.4252 Td1002.4253
																																																																																																																							Let Ti1003.4095
																																																																																																																								Int:1
																																																																																																																								IfEq m_tex.4091 Ti1003.4095
																																																																																																																									Let w1.4221
																																																																																																																										Let Td1005.4248
																																																																																																																											Let Ti1004.4250
																																																																																																																												Int:0
																																																																																																																												Get p.2986 Ti1004.4250
																																																																																																																											Let Td1006.4249
																																																																																																																												App o_param_x.2733m.2985 
																																																																																																																												FSub Td1005.4248 Td1006.4249
																																																																																																																										Let flag1.4222
																																																																																																																											Let d1.4241
																																																																																																																												Let Td1009.4244
																																																																																																																													Let Td1008.4246
																																																																																																																														Let Td1007.4247
																																																																																																																															Float:0.050000
																																																																																																																															FMul w1.4221 Td1007.4247
																																																																																																																														ExtFunApp floor Td1008.4246,
																																																																																																																													Let Td1010.4245
																																																																																																																														Float:20.000000
																																																																																																																														FMul Td1009.4244 Td1010.4245
																																																																																																																												Let Td1011.4242
																																																																																																																													FSub w1.4221 d1.4241
																																																																																																																													Let Td1012.4243
																																																																																																																														Float:10.000000
																																																																																																																														App fless.2653Td1011.4242 Td1012.4243 
																																																																																																																											Let w3.4223
																																																																																																																												Let Td1014.4238
																																																																																																																													Let Ti1013.4240
																																																																																																																														Int:2
																																																																																																																														Get p.2986 Ti1013.4240
																																																																																																																													Let Td1015.4239
																																																																																																																														App o_param_z.2737m.2985 
																																																																																																																														FSub Td1014.4238 Td1015.4239
																																																																																																																												Let flag2.4224
																																																																																																																													Let d2.4231
																																																																																																																														Let Td1018.4234
																																																																																																																															Let Td1017.4236
																																																																																																																																Let Td1016.4237
																																																																																																																																	Float:0.050000
																																																																																																																																	FMul w3.4223 Td1016.4237
																																																																																																																																ExtFunApp floor Td1017.4236,
																																																																																																																															Let Td1019.4235
																																																																																																																																Float:20.000000
																																																																																																																																FMul Td1018.4234 Td1019.4235
																																																																																																																														Let Td1020.4232
																																																																																																																															FSub w3.4223 d2.4231
																																																																																																																															Let Td1021.4233
																																																																																																																																Float:10.000000
																																																																																																																																App fless.2653Td1020.4232 Td1021.4233 
																																																																																																																													Let Ta1022.4225
																																																																																																																														ExtArray 580
																																																																																																																														Let Ti1023.4226
																																																																																																																															Int:1
																																																																																																																															Let Td1027.4227
																																																																																																																																Let Ti1024.4228
																																																																																																																																	Int:0
																																																																																																																																	IfEq flag1.4222 Ti1024.4228
																																																																																																																																		Let Ti1025.4230
																																																																																																																																			Int:0
																																																																																																																																			IfEq flag2.4224 Ti1025.4230
																																																																																																																																				Float:255.000000
																																																																																																																																				Float:0.000000
																																																																																																																																		Let Ti1026.4229
																																																																																																																																			Int:0
																																																																																																																																			IfEq flag2.4224 Ti1026.4229
																																																																																																																																				Float:0.000000
																																																																																																																																				Float:255.000000
																																																																																																																																Put Ta1022.4225 Ti1023.4226 Td1027.4227
																																																																																																																									Let Ti1028.4096
																																																																																																																										Int:2
																																																																																																																										IfEq m_tex.4091 Ti1028.4096
																																																																																																																											Let w2.4204
																																																																																																																												Let Td1033.4216
																																																																																																																													Let Td1032.4217
																																																																																																																														Let Td1030.4218
																																																																																																																															Let Ti1029.4220
																																																																																																																																Int:1
																																																																																																																																Get p.2986 Ti1029.4220
																																																																																																																															Let Td1031.4219
																																																																																																																																Float:0.250000
																																																																																																																																FMul Td1030.4218 Td1031.4219
																																																																																																																														ExtFunApp sin Td1032.4217,
																																																																																																																													App fsqr.2649Td1033.4216 
																																																																																																																												Let Tu130.4205
																																																																																																																													Let Ta1034.4212
																																																																																																																														ExtArray 580
																																																																																																																														Let Ti1035.4213
																																																																																																																															Int:0
																																																																																																																															Let Td1037.4214
																																																																																																																																Let Td1036.4215
																																																																																																																																	Float:255.000000
																																																																																																																																	FMul Td1036.4215 w2.4204
																																																																																																																																Put Ta1034.4212 Ti1035.4213 Td1037.4214
																																																																																																																													Let Ta1038.4206
																																																																																																																														ExtArray 580
																																																																																																																														Let Ti1039.4207
																																																																																																																															Int:1
																																																																																																																															Let Td1043.4208
																																																																																																																																Let Td1040.4209
																																																																																																																																	Float:255.000000
																																																																																																																																	Let Td1042.4210
																																																																																																																																		Let Td1041.4211
																																																																																																																																			Float:1.000000
																																																																																																																																			FSub Td1041.4211 w2.4204
																																																																																																																																		FMul Td1040.4209 Td1042.4210
																																																																																																																																Put Ta1038.4206 Ti1039.4207 Td1043.4208
																																																																																																																											Let Ti1044.4097
																																																																																																																												Int:3
																																																																																																																												IfEq m_tex.4091 Ti1044.4097
																																																																																																																													Let w1.4172
																																																																																																																														Let Td1046.4201
																																																																																																																															Let Ti1045.4203
																																																																																																																																Int:0
																																																																																																																																Get p.2986 Ti1045.4203
																																																																																																																															Let Td1047.4202
																																																																																																																																App o_param_x.2733m.2985 
																																																																																																																																FSub Td1046.4201 Td1047.4202
																																																																																																																														Let w3.4173
																																																																																																																															Let Td1049.4198
																																																																																																																																Let Ti1048.4200
																																																																																																																																	Int:2
																																																																																																																																	Get p.2986 Ti1048.4200
																																																																																																																																Let Td1050.4199
																																																																																																																																	App o_param_z.2737m.2985 
																																																																																																																																	FSub Td1049.4198 Td1050.4199
																																																																																																																															Let w2.4174
																																																																																																																																Let Td1054.4192
																																																																																																																																	Let Td1053.4195
																																																																																																																																		Let Td1051.4196
																																																																																																																																			App fsqr.2649w1.4172 
																																																																																																																																			Let Td1052.4197
																																																																																																																																				App fsqr.2649w3.4173 
																																																																																																																																				FAdd Td1051.4196 Td1052.4197
																																																																																																																																		ExtFunApp sqrt Td1053.4195,
																																																																																																																																	Let Td1055.4193
																																																																																																																																		Float:10.000000
																																																																																																																																		Let Td1056.4194
																																																																																																																																			FReciprocal Td1055.4193
																																																																																																																																			FMul Td1054.4192 Td1056.4194
																																																																																																																																Let w4.4175
																																																																																																																																	Let Td1058.4189
																																																																																																																																		Let Td1057.4191
																																																																																																																																			ExtFunApp floor w2.4174,
																																																																																																																																			FSub w2.4174 Td1057.4191
																																																																																																																																		Let Td1059.4190
																																																																																																																																			Float:3.141593
																																																																																																																																			FMul Td1058.4189 Td1059.4190
																																																																																																																																	Let cws.4176
																																																																																																																																		Let Td1060.4188
																																																																																																																																			ExtFunApp cos w4.4175,
																																																																																																																																			App fsqr.2649Td1060.4188 
																																																																																																																																		Let Tu131.4177
																																																																																																																																			Let Ta1061.4184
																																																																																																																																				ExtArray 580
																																																																																																																																				Let Ti1062.4185
																																																																																																																																					Int:1
																																																																																																																																					Let Td1064.4186
																																																																																																																																						Let Td1063.4187
																																																																																																																																							Float:255.000000
																																																																																																																																							FMul cws.4176 Td1063.4187
																																																																																																																																						Put Ta1061.4184 Ti1062.4185 Td1064.4186
																																																																																																																																			Let Ta1065.4178
																																																																																																																																				ExtArray 580
																																																																																																																																				Let Ti1066.4179
																																																																																																																																					Int:2
																																																																																																																																					Let Td1070.4180
																																																																																																																																						Let Td1068.4181
																																																																																																																																							Let Td1067.4183
																																																																																																																																								Float:1.000000
																																																																																																																																								FSub Td1067.4183 cws.4176
																																																																																																																																							Let Td1069.4182
																																																																																																																																								Float:255.000000
																																																																																																																																								FMul Td1068.4181 Td1069.4182
																																																																																																																																						Put Ta1065.4178 Ti1066.4179 Td1070.4180
																																																																																																																													Let Ti1071.4098
																																																																																																																														Int:4
																																																																																																																														IfEq m_tex.4091 Ti1071.4098
																																																																																																																															Let w1.4099
																																																																																																																																Let Td1075.4166
																																																																																																																																	Let Td1073.4169
																																																																																																																																		Let Ti1072.4171
																																																																																																																																			Int:0
																																																																																																																																			Get p.2986 Ti1072.4171
																																																																																																																																		Let Td1074.4170
																																																																																																																																			App o_param_x.2733m.2985 
																																																																																																																																			FSub Td1073.4169 Td1074.4170
																																																																																																																																	Let Td1077.4167
																																																																																																																																		Let Td1076.4168
																																																																																																																																			App o_param_a.2725m.2985 
																																																																																																																																			ExtFunApp sqrt Td1076.4168,
																																																																																																																																		FMul Td1075.4166 Td1077.4167
																																																																																																																																Let w3.4100
																																																																																																																																	Let Td1081.4160
																																																																																																																																		Let Td1079.4163
																																																																																																																																			Let Ti1078.4165
																																																																																																																																				Int:2
																																																																																																																																				Get p.2986 Ti1078.4165
																																																																																																																																			Let Td1080.4164
																																																																																																																																				App o_param_z.2737m.2985 
																																																																																																																																				FSub Td1079.4163 Td1080.4164
																																																																																																																																		Let Td1083.4161
																																																																																																																																			Let Td1082.4162
																																																																																																																																				App o_param_c.2729m.2985 
																																																																																																																																				ExtFunApp sqrt Td1082.4162,
																																																																																																																																			FMul Td1081.4160 Td1083.4161
																																																																																																																																	Let w4.4101
																																																																																																																																		Let Td1084.4158
																																																																																																																																			App fsqr.2649w1.4099 
																																																																																																																																			Let Td1085.4159
																																																																																																																																				App fsqr.2649w3.4100 
																																																																																																																																				FAdd Td1084.4158 Td1085.4159
																																																																																																																																		Let w7.4102
																																																																																																																																			Let Tb1088.4146
																																																																																																																																				Let Td1086.4156
																																																																																																																																					App fabs.2651w1.4099 
																																																																																																																																					Let Td1087.4157
																																																																																																																																						Float:0.000100
																																																																																																																																						App fless.2653Td1086.4156 Td1087.4157 
																																																																																																																																				Let Ti1089.4147
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb1088.4146 Ti1089.4147
																																																																																																																																						Let w5.4148
																																																																																																																																							Let Td1091.4154
																																																																																																																																								Let Td1090.4155
																																																																																																																																									FReciprocal w1.4099
																																																																																																																																									FMul w3.4100 Td1090.4155
																																																																																																																																								App fabs.2651Td1091.4154 
																																																																																																																																							Let Td1094.4149
																																																																																																																																								Let Td1092.4152
																																																																																																																																									ExtFunApp atan w5.4148,
																																																																																																																																									Let Td1093.4153
																																																																																																																																										Float:30.000000
																																																																																																																																										FMul Td1092.4152 Td1093.4153
																																																																																																																																								Let Td1095.4150
																																																																																																																																									Float:3.141593
																																																																																																																																									Let Td1096.4151
																																																																																																																																										FReciprocal Td1095.4150
																																																																																																																																										FMul Td1094.4149 Td1096.4151
																																																																																																																																						Float:15.000000
																																																																																																																																			Let w9.4103
																																																																																																																																				Let Td1097.4145
																																																																																																																																					ExtFunApp floor w7.4102,
																																																																																																																																					FSub w7.4102 Td1097.4145
																																																																																																																																				Let w2.4104
																																																																																																																																					Let Td1101.4139
																																																																																																																																						Let Td1099.4142
																																																																																																																																							Let Ti1098.4144
																																																																																																																																								Int:1
																																																																																																																																								Get p.2986 Ti1098.4144
																																																																																																																																							Let Td1100.4143
																																																																																																																																								App o_param_y.2735m.2985 
																																																																																																																																								FSub Td1099.4142 Td1100.4143
																																																																																																																																						Let Td1103.4140
																																																																																																																																							Let Td1102.4141
																																																																																																																																								App o_param_b.2727m.2985 
																																																																																																																																								ExtFunApp sqrt Td1102.4141,
																																																																																																																																							FMul Td1101.4139 Td1103.4140
																																																																																																																																					Let w8.4105
																																																																																																																																						Let Tb1106.4127
																																																																																																																																							Let Td1104.4137
																																																																																																																																								App fabs.2651w4.4101 
																																																																																																																																								Let Td1105.4138
																																																																																																																																									Float:0.000100
																																																																																																																																									App fless.2653Td1104.4137 Td1105.4138 
																																																																																																																																							Let Ti1107.4128
																																																																																																																																								Int:0
																																																																																																																																								IfEq Tb1106.4127 Ti1107.4128
																																																																																																																																									Let w6.4129
																																																																																																																																										Let Td1109.4135
																																																																																																																																											Let Td1108.4136
																																																																																																																																												FReciprocal w4.4101
																																																																																																																																												FMul w2.4104 Td1108.4136
																																																																																																																																											App fabs.2651Td1109.4135 
																																																																																																																																										Let Td1112.4130
																																																																																																																																											Let Td1110.4133
																																																																																																																																												ExtFunApp atan w6.4129,
																																																																																																																																												Let Td1111.4134
																																																																																																																																													Float:30.000000
																																																																																																																																													FMul Td1110.4133 Td1111.4134
																																																																																																																																											Let Td1113.4131
																																																																																																																																												Float:3.141593
																																																																																																																																												Let Td1114.4132
																																																																																																																																													FReciprocal Td1113.4131
																																																																																																																																													FMul Td1112.4130 Td1114.4132
																																																																																																																																									Float:15.000000
																																																																																																																																						Let w10.4106
																																																																																																																																							Let Td1115.4126
																																																																																																																																								ExtFunApp floor w8.4105,
																																																																																																																																								FSub w8.4105 Td1115.4126
																																																																																																																																							Let w11.4107
																																																																																																																																								Let Td1120.4118
																																																																																																																																									Let Td1116.4122
																																																																																																																																										Float:0.150000
																																																																																																																																										Let Td1119.4123
																																																																																																																																											Let Td1118.4124
																																																																																																																																												Let Td1117.4125
																																																																																																																																													Float:0.500000
																																																																																																																																													FSub Td1117.4125 w9.4103
																																																																																																																																												App fsqr.2649Td1118.4124 
																																																																																																																																											FSub Td1116.4122 Td1119.4123
																																																																																																																																									Let Td1123.4119
																																																																																																																																										Let Td1122.4120
																																																																																																																																											Let Td1121.4121
																																																																																																																																												Float:0.500000
																																																																																																																																												FSub Td1121.4121 w10.4106
																																																																																																																																											App fsqr.2649Td1122.4120 
																																																																																																																																										FSub Td1120.4118 Td1123.4119
																																																																																																																																								Let w12.4108
																																																																																																																																									Let Tb1124.4116
																																																																																																																																										App fisneg.2643w11.4107 
																																																																																																																																										Let Ti1125.4117
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb1124.4116 Ti1125.4117
																																																																																																																																												Var w11.4107
																																																																																																																																												Float:0.000000
																																																																																																																																									Let Ta1126.4109
																																																																																																																																										ExtArray 580
																																																																																																																																										Let Ti1127.4110
																																																																																																																																											Int:2
																																																																																																																																											Let Td1132.4111
																																																																																																																																												Let Td1129.4112
																																																																																																																																													Let Td1128.4115
																																																																																																																																														Float:255.000000
																																																																																																																																														FMul Td1128.4115 w12.4108
																																																																																																																																													Let Td1130.4113
																																																																																																																																														Float:0.300000
																																																																																																																																														Let Td1131.4114
																																																																																																																																															FReciprocal Td1130.4113
																																																																																																																																															FMul Td1129.4112 Td1131.4114
																																																																																																																																												Put Ta1126.4109 Ti1127.4110 Td1132.4111
																																																																																																																															Unit
																																																																																																																			LetRec add_light.2987 bright.2988 hilight.2989 hilight_scale.2990 
																																																																																																																				Let Tu137.4061
																																																																																																																					Let Tb968.4087
																																																																																																																						App fispos.2641bright.2988 
																																																																																																																						Let Ti969.4088
																																																																																																																							Int:0
																																																																																																																							IfEq Tb968.4087 Ti969.4088
																																																																																																																								Unit
																																																																																																																								Let Ta970.4089
																																																																																																																									ExtArray 604
																																																																																																																									Let Ta971.4090
																																																																																																																										ExtArray 580
																																																																																																																										App vecaccum.2698Ta970.4089 bright.2988 Ta971.4090 
																																																																																																																					Let Tb972.4062
																																																																																																																						App fispos.2641hilight.2989 
																																																																																																																						Let Ti973.4063
																																																																																																																							Int:0
																																																																																																																							IfEq Tb972.4062 Ti973.4063
																																																																																																																								Unit
																																																																																																																								Let ihl.4064
																																																																																																																									Let Td975.4085
																																																																																																																										Let Td974.4086
																																																																																																																											App fsqr.2649hilight.2989 
																																																																																																																											App fsqr.2649Td974.4086 
																																																																																																																										FMul Td975.4085 hilight_scale.2990
																																																																																																																									Let Tu136.4065
																																																																																																																										Let Ta976.4079
																																																																																																																											ExtArray 604
																																																																																																																											Let Ti977.4080
																																																																																																																												Int:0
																																																																																																																												Let Td981.4081
																																																																																																																													Let Td980.4082
																																																																																																																														Let Ta978.4083
																																																																																																																															ExtArray 604
																																																																																																																															Let Ti979.4084
																																																																																																																																Int:0
																																																																																																																																Get Ta978.4083 Ti979.4084
																																																																																																																														FAdd Td980.4082 ihl.4064
																																																																																																																													Put Ta976.4079 Ti977.4080 Td981.4081
																																																																																																																										Let Tu135.4066
																																																																																																																											Let Ta982.4073
																																																																																																																												ExtArray 604
																																																																																																																												Let Ti983.4074
																																																																																																																													Int:1
																																																																																																																													Let Td987.4075
																																																																																																																														Let Td986.4076
																																																																																																																															Let Ta984.4077
																																																																																																																																ExtArray 604
																																																																																																																																Let Ti985.4078
																																																																																																																																	Int:1
																																																																																																																																	Get Ta984.4077 Ti985.4078
																																																																																																																															FAdd Td986.4076 ihl.4064
																																																																																																																														Put Ta982.4073 Ti983.4074 Td987.4075
																																																																																																																											Let Ta988.4067
																																																																																																																												ExtArray 604
																																																																																																																												Let Ti989.4068
																																																																																																																													Int:2
																																																																																																																													Let Td993.4069
																																																																																																																														Let Td992.4070
																																																																																																																															Let Ta990.4071
																																																																																																																																ExtArray 604
																																																																																																																																Let Ti991.4072
																																																																																																																																	Int:2
																																																																																																																																	Get Ta990.4071 Ti991.4072
																																																																																																																															FAdd Td992.4070 ihl.4064
																																																																																																																														Put Ta988.4067 Ti989.4068 Td993.4069
																																																																																																																				LetRec trace_reflections.2991 index.2992 diffuse.2993 hilight_scale.2994 dirvec.2995 
																																																																																																																					Let Ti943.4028
																																																																																																																						Int:0
																																																																																																																						IfLE Ti943.4028 index.2992
																																																																																																																							Let rinfo.4029
																																																																																																																								Let Ta944.4060
																																																																																																																									ExtArray 1016
																																																																																																																									Get Ta944.4060 index.2992
																																																																																																																								Let dvec.4030
																																																																																																																									App r_dvec.2782rinfo.4029 
																																																																																																																									Let Tu138.4031
																																																																																																																										Let Tb945.4034
																																																																																																																											App judge_intersection_fast.2973dvec.4030 
																																																																																																																											Let Ti946.4035
																																																																																																																												Int:0
																																																																																																																												IfEq Tb945.4034 Ti946.4035
																																																																																																																													Unit
																																																																																																																													Let surface_id.4036
																																																																																																																														Let Ti950.4053
																																																																																																																															Let Ti949.4057
																																																																																																																																Let Ta947.4058
																																																																																																																																	ExtArray 564
																																																																																																																																	Let Ti948.4059
																																																																																																																																		Int:0
																																																																																																																																		Get Ta947.4058 Ti948.4059
																																																																																																																																ShiftL2 Ti949.4057
																																																																																																																															Let Ti953.4054
																																																																																																																																Let Ta951.4055
																																																																																																																																	ExtArray 544
																																																																																																																																	Let Ti952.4056
																																																																																																																																		Int:0
																																																																																																																																		Get Ta951.4055 Ti952.4056
																																																																																																																																Add Ti950.4053 Ti953.4054
																																																																																																																														Let Ti954.4037
																																																																																																																															App r_surface_id.2780rinfo.4029 
																																																																																																																															IfEq surface_id.4036 Ti954.4037
																																																																																																																																Let Tb959.4038
																																																																																																																																	Let Ti955.4049
																																																																																																																																		Int:0
																																																																																																																																		Let Ta958.4050
																																																																																																																																			Let Ta956.4051
																																																																																																																																				ExtArray 536
																																																																																																																																				Let Ti957.4052
																																																																																																																																					Int:0
																																																																																																																																					Get Ta956.4051 Ti957.4052
																																																																																																																																			App shadow_check_one_or_matrix.2944Ti955.4049 Ta958.4050 
																																																																																																																																	Let Ti960.4039
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb959.4038 Ti960.4039
																																																																																																																																			Let p.4040
																																																																																																																																				Let Ta961.4047
																																																																																																																																					ExtArray 568
																																																																																																																																					Let Ta962.4048
																																																																																																																																						App d_vec.2776dvec.4030 
																																																																																																																																						App veciprod.2690Ta961.4047 Ta962.4048 
																																																																																																																																				Let scale.4041
																																																																																																																																					App r_bright.2784rinfo.4029 
																																																																																																																																					Let bright.4042
																																																																																																																																						Let Td963.4046
																																																																																																																																							FMul scale.4041 diffuse.2993
																																																																																																																																							FMul Td963.4046 p.4040
																																																																																																																																						Let hilight.4043
																																																																																																																																							Let Td965.4044
																																																																																																																																								Let Ta964.4045
																																																																																																																																									App d_vec.2776dvec.4030 
																																																																																																																																									App veciprod.2690dirvec.2995 Ta964.4045 
																																																																																																																																								FMul scale.4041 Td965.4044
																																																																																																																																							App add_light.2987bright.4042 hilight.4043 hilight_scale.2994 
																																																																																																																																			Unit
																																																																																																																																Unit
																																																																																																																										Let Ti967.4032
																																																																																																																											Let Ti966.4033
																																																																																																																												Int:1
																																																																																																																												Sub index.2992 Ti966.4033
																																																																																																																											App trace_reflections.2991Ti967.4032 diffuse.2993 hilight_scale.2994 dirvec.2995 
																																																																																																																							Unit
																																																																																																																					LetRec trace_ray.2996 nref.2997 energy.2998 dirvec.2999 pixel.3000 dist.3001 
																																																																																																																						Let Ti838.3890
																																																																																																																							Int:4
																																																																																																																							IfLE nref.2997 Ti838.3890
																																																																																																																								Let surface_ids.3891
																																																																																																																									App p_surface_ids.2761pixel.3000 
																																																																																																																									Let Tb839.3892
																																																																																																																										App judge_intersection.2959dirvec.2999 
																																																																																																																										Let Ti840.3893
																																																																																																																											Int:0
																																																																																																																											IfEq Tb839.3892 Ti840.3893
																																																																																																																												Let Tu155.3992
																																																																																																																													Let Ti842.4026
																																																																																																																														Let Ti841.4027
																																																																																																																															Int:1
																																																																																																																															Neg Ti841.4027
																																																																																																																														Put surface_ids.3891 nref.2997 Ti842.4026
																																																																																																																													Let Ti843.3993
																																																																																																																														Int:0
																																																																																																																														IfEq nref.2997 Ti843.3993
																																																																																																																															Unit
																																																																																																																															Let hl.3994
																																																																																																																																Let Td845.4024
																																																																																																																																	Let Ta844.4025
																																																																																																																																		ExtArray 312
																																																																																																																																		App veciprod.2690dirvec.2999 Ta844.4025 
																																																																																																																																	App fneg.2639Td845.4024 
																																																																																																																																Let Tb846.3995
																																																																																																																																	App fispos.2641hl.3994 
																																																																																																																																	Let Ti847.3996
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb846.3995 Ti847.3996
																																																																																																																																			Unit
																																																																																																																																			Let ihl.3997
																																																																																																																																				Let Td850.4018
																																																																																																																																					Let Td849.4022
																																																																																																																																						Let Td848.4023
																																																																																																																																							App fsqr.2649hl.3994 
																																																																																																																																							FMul Td848.4023 hl.3994
																																																																																																																																						FMul Td849.4022 energy.2998
																																																																																																																																					Let Td853.4019
																																																																																																																																						Let Ta851.4020
																																																																																																																																							ExtArray 324
																																																																																																																																							Let Ti852.4021
																																																																																																																																								Int:0
																																																																																																																																								Get Ta851.4020 Ti852.4021
																																																																																																																																						FMul Td850.4018 Td853.4019
																																																																																																																																				Let Tu154.3998
																																																																																																																																					Let Ta854.4012
																																																																																																																																						ExtArray 604
																																																																																																																																						Let Ti855.4013
																																																																																																																																							Int:0
																																																																																																																																							Let Td859.4014
																																																																																																																																								Let Td858.4015
																																																																																																																																									Let Ta856.4016
																																																																																																																																										ExtArray 604
																																																																																																																																										Let Ti857.4017
																																																																																																																																											Int:0
																																																																																																																																											Get Ta856.4016 Ti857.4017
																																																																																																																																									FAdd Td858.4015 ihl.3997
																																																																																																																																								Put Ta854.4012 Ti855.4013 Td859.4014
																																																																																																																																					Let Tu153.3999
																																																																																																																																						Let Ta860.4006
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti861.4007
																																																																																																																																								Int:1
																																																																																																																																								Let Td865.4008
																																																																																																																																									Let Td864.4009
																																																																																																																																										Let Ta862.4010
																																																																																																																																											ExtArray 604
																																																																																																																																											Let Ti863.4011
																																																																																																																																												Int:1
																																																																																																																																												Get Ta862.4010 Ti863.4011
																																																																																																																																										FAdd Td864.4009 ihl.3997
																																																																																																																																									Put Ta860.4006 Ti861.4007 Td865.4008
																																																																																																																																						Let Ta866.4000
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti867.4001
																																																																																																																																								Int:2
																																																																																																																																								Let Td871.4002
																																																																																																																																									Let Td870.4003
																																																																																																																																										Let Ta868.4004
																																																																																																																																											ExtArray 604
																																																																																																																																											Let Ti869.4005
																																																																																																																																												Int:2
																																																																																																																																												Get Ta868.4004 Ti869.4005
																																																																																																																																										FAdd Td870.4003 ihl.3997
																																																																																																																																									Put Ta866.4000 Ti867.4001 Td871.4002
																																																																																																																												Let obj_id.3894
																																																																																																																													Let Ta872.3990
																																																																																																																														ExtArray 564
																																																																																																																														Let Ti873.3991
																																																																																																																															Int:0
																																																																																																																															Get Ta872.3990 Ti873.3991
																																																																																																																													Let obj.3895
																																																																																																																														Let Ta874.3989
																																																																																																																															ExtArray 48
																																																																																																																															Get Ta874.3989 obj_id.3894
																																																																																																																														Let m_surface.3896
																																																																																																																															App o_reflectiontype.2719obj.3895 
																																																																																																																															Let diffuse.3897
																																																																																																																																Let Td875.3988
																																																																																																																																	App o_diffuse.2739obj.3895 
																																																																																																																																	FMul Td875.3988 energy.2998
																																																																																																																																Let Tu152.3898
																																																																																																																																	App get_nvector.2981obj.3895 dirvec.2999 
																																																																																																																																	Let Tu151.3899
																																																																																																																																		Let Ta876.3986
																																																																																																																																			ExtArray 636
																																																																																																																																			Let Ta877.3987
																																																																																																																																				ExtArray 552
																																																																																																																																				App veccpy.2679Ta876.3986 Ta877.3987 
																																																																																																																																		Let Tu150.3900
																																																																																																																																			Let Ta878.3985
																																																																																																																																				ExtArray 552
																																																																																																																																				App utexture.2984obj.3895 Ta878.3985 
																																																																																																																																			Let Tu149.3901
																																																																																																																																				Let Ti883.3980
																																																																																																																																					Let Ti879.3981
																																																																																																																																						ShiftL2 obj_id.3894
																																																																																																																																						Let Ti882.3982
																																																																																																																																							Let Ta880.3983
																																																																																																																																								ExtArray 544
																																																																																																																																								Let Ti881.3984
																																																																																																																																									Int:0
																																																																																																																																									Get Ta880.3983 Ti881.3984
																																																																																																																																							Add Ti879.3981 Ti882.3982
																																																																																																																																					Put surface_ids.3891 nref.2997 Ti883.3980
																																																																																																																																				Let intersection_points.3902
																																																																																																																																					App p_intersection_points.2759pixel.3000 
																																																																																																																																					Let Tu148.3903
																																																																																																																																						Let Ta884.3978
																																																																																																																																							Get intersection_points.3902 nref.2997
																																																																																																																																							Let Ta885.3979
																																																																																																																																								ExtArray 552
																																																																																																																																								App veccpy.2679Ta884.3978 Ta885.3979 
																																																																																																																																						Let calc_diffuse.3904
																																																																																																																																							App p_calc_diffuse.2763pixel.3000 
																																																																																																																																							Let Tu147.3905
																																																																																																																																								Let Tb888.3957
																																																																																																																																									Let Td886.3976
																																																																																																																																										App o_diffuse.2739obj.3895 
																																																																																																																																										Let Td887.3977
																																																																																																																																											Float:0.500000
																																																																																																																																											App fless.2653Td886.3976 Td887.3977 
																																																																																																																																									Let Ti889.3958
																																																																																																																																										Int:0
																																																																																																																																										IfEq Tb888.3957 Ti889.3958
																																																																																																																																											Let Tu141.3960
																																																																																																																																												Let Ti890.3975
																																																																																																																																													Int:1
																																																																																																																																													Put calc_diffuse.3904 nref.2997 Ti890.3975
																																																																																																																																												Let energya.3961
																																																																																																																																													App p_energy.2765pixel.3000 
																																																																																																																																													Let Tu140.3962
																																																																																																																																														Let Ta891.3973
																																																																																																																																															Get energya.3961 nref.2997
																																																																																																																																															Let Ta892.3974
																																																																																																																																																ExtArray 580
																																																																																																																																																App veccpy.2679Ta891.3973 Ta892.3974 
																																																																																																																																														Let Tu139.3963
																																																																																																																																															Let Ta893.3967
																																																																																																																																																Get energya.3961 nref.2997
																																																																																																																																																Let Td898.3968
																																																																																																																																																	Let Td897.3969
																																																																																																																																																		Let Td894.3970
																																																																																																																																																			Float:1.000000
																																																																																																																																																			Let Td895.3971
																																																																																																																																																				Float:256.000000
																																																																																																																																																				Let Td896.3972
																																																																																																																																																					FReciprocal Td895.3971
																																																																																																																																																					FMul Td894.3970 Td896.3972
																																																																																																																																																		FMul Td897.3969 diffuse.3897
																																																																																																																																																	App vecscale.2708Ta893.3967 Td898.3968 
																																																																																																																																															Let nvectors.3964
																																																																																																																																																App p_nvectors.2774pixel.3000 
																																																																																																																																																Let Ta899.3965
																																																																																																																																																	Get nvectors.3964 nref.2997
																																																																																																																																																	Let Ta900.3966
																																																																																																																																																		ExtArray 568
																																																																																																																																																		App veccpy.2679Ta899.3965 Ta900.3966 
																																																																																																																																											Let Ti901.3959
																																																																																																																																												Int:0
																																																																																																																																												Put calc_diffuse.3904 nref.2997 Ti901.3959
																																																																																																																																								Let w.3906
																																																																																																																																									Let Td902.3954
																																																																																																																																										Float:-2.000000
																																																																																																																																										Let Td904.3955
																																																																																																																																											Let Ta903.3956
																																																																																																																																												ExtArray 568
																																																																																																																																												App veciprod.2690dirvec.2999 Ta903.3956 
																																																																																																																																											FMul Td902.3954 Td904.3955
																																																																																																																																									Let Tu146.3907
																																																																																																																																										Let Ta905.3953
																																																																																																																																											ExtArray 568
																																																																																																																																											App vecaccum.2698dirvec.2999 w.3906 Ta905.3953 
																																																																																																																																										Let hilight_scale.3908
																																																																																																																																											Let Td906.3952
																																																																																																																																												App o_hilight.2741obj.3895 
																																																																																																																																												FMul energy.2998 Td906.3952
																																																																																																																																											Let Tu145.3909
																																																																																																																																												Let Tb911.3938
																																																																																																																																													Let Ti907.3948
																																																																																																																																														Int:0
																																																																																																																																														Let Ta910.3949
																																																																																																																																															Let Ta908.3950
																																																																																																																																																ExtArray 536
																																																																																																																																																Let Ti909.3951
																																																																																																																																																	Int:0
																																																																																																																																																	Get Ta908.3950 Ti909.3951
																																																																																																																																															App shadow_check_one_or_matrix.2944Ti907.3948 Ta910.3949 
																																																																																																																																													Let Ti912.3939
																																																																																																																																														Int:0
																																																																																																																																														IfEq Tb911.3938 Ti912.3939
																																																																																																																																															Let bright.3940
																																																																																																																																																Let Td916.3944
																																																																																																																																																	Let Td915.3945
																																																																																																																																																		Let Ta913.3946
																																																																																																																																																			ExtArray 568
																																																																																																																																																			Let Ta914.3947
																																																																																																																																																				ExtArray 312
																																																																																																																																																				App veciprod.2690Ta913.3946 Ta914.3947 
																																																																																																																																																		App fneg.2639Td915.3945 
																																																																																																																																																	FMul Td916.3944 diffuse.3897
																																																																																																																																																Let hilight.3941
																																																																																																																																																	Let Td918.3942
																																																																																																																																																		Let Ta917.3943
																																																																																																																																																			ExtArray 312
																																																																																																																																																			App veciprod.2690dirvec.2999 Ta917.3943 
																																																																																																																																																		App fneg.2639Td918.3942 
																																																																																																																																																	App add_light.2987bright.3940 hilight.3941 hilight_scale.3908 
																																																																																																																																															Unit
																																																																																																																																												Let Tu144.3910
																																																																																																																																													Let Ta919.3937
																																																																																																																																														ExtArray 552
																																																																																																																																														App setup_startp.2910Ta919.3937 
																																																																																																																																													Let Tu143.3911
																																																																																																																																														Let Ti924.3932
																																																																																																																																															Let Ti922.3933
																																																																																																																																																Let Ta920.3935
																																																																																																																																																	ExtArray 1736
																																																																																																																																																	Let Ti921.3936
																																																																																																																																																		Int:0
																																																																																																																																																		Get Ta920.3935 Ti921.3936
																																																																																																																																																Let Ti923.3934
																																																																																																																																																	Int:1
																																																																																																																																																	Sub Ti922.3933 Ti923.3934
																																																																																																																																															App trace_reflections.2991Ti924.3932 diffuse.3897 hilight_scale.3908 dirvec.2999 
																																																																																																																																														Let Tb926.3912
																																																																																																																																															Let Td925.3931
																																																																																																																																																Float:0.100000
																																																																																																																																																App fless.2653Td925.3931 energy.2998 
																																																																																																																																															Let Ti927.3913
																																																																																																																																																Int:0
																																																																																																																																																IfEq Tb926.3912 Ti927.3913
																																																																																																																																																	Unit
																																																																																																																																																	Let Tu142.3914
																																																																																																																																																		Let Ti928.3926
																																																																																																																																																			Int:4
																																																																																																																																																			IfLE Ti928.3926 nref.2997
																																																																																																																																																				Unit
																																																																																																																																																				Let Ti930.3927
																																																																																																																																																					Let Ti929.3930
																																																																																																																																																						Int:1
																																																																																																																																																						Add nref.2997 Ti929.3930
																																																																																																																																																					Let Ti932.3928
																																																																																																																																																						Let Ti931.3929
																																																																																																																																																							Int:1
																																																																																																																																																							Neg Ti931.3929
																																																																																																																																																						Put surface_ids.3891 Ti930.3927 Ti932.3928
																																																																																																																																																		Let Ti933.3915
																																																																																																																																																			Int:2
																																																																																																																																																			IfEq m_surface.3896 Ti933.3915
																																																																																																																																																				Let energy2.3916
																																																																																																																																																					Let Td936.3923
																																																																																																																																																						Let Td934.3924
																																																																																																																																																							Float:1.000000
																																																																																																																																																							Let Td935.3925
																																																																																																																																																								App o_diffuse.2739obj.3895 
																																																																																																																																																								FSub Td934.3924 Td935.3925
																																																																																																																																																						FMul energy.2998 Td936.3923
																																																																																																																																																					Let Ti938.3917
																																																																																																																																																						Let Ti937.3922
																																																																																																																																																							Int:1
																																																																																																																																																							Add nref.2997 Ti937.3922
																																																																																																																																																						Let Td942.3918
																																																																																																																																																							Let Td941.3919
																																																																																																																																																								Let Ta939.3920
																																																																																																																																																									ExtArray 548
																																																																																																																																																									Let Ti940.3921
																																																																																																																																																										Int:0
																																																																																																																																																										Get Ta939.3920 Ti940.3921
																																																																																																																																																								FAdd dist.3001 Td941.3919
																																																																																																																																																							App trace_ray.2996Ti938.3917 energy2.3916 dirvec.2999 pixel.3000 Td942.3918 
																																																																																																																																																				Unit
																																																																																																																								Unit
																																																																																																																						LetRec trace_diffuse_ray.3002 dirvec.3003 energy.3004 
																																																																																																																							Let Tb814.3861
																																																																																																																								App judge_intersection_fast.2973dirvec.3003 
																																																																																																																								Let Ti815.3862
																																																																																																																									Int:0
																																																																																																																									IfEq Tb814.3861 Ti815.3862
																																																																																																																										Unit
																																																																																																																										Let obj.3863
																																																																																																																											Let Ta816.3886
																																																																																																																												ExtArray 48
																																																																																																																												Let Ti819.3887
																																																																																																																													Let Ta817.3888
																																																																																																																														ExtArray 564
																																																																																																																														Let Ti818.3889
																																																																																																																															Int:0
																																																																																																																															Get Ta817.3888 Ti818.3889
																																																																																																																													Get Ta816.3886 Ti819.3887
																																																																																																																											Let Tu157.3864
																																																																																																																												Let Ta820.3885
																																																																																																																													App d_vec.2776dirvec.3003 
																																																																																																																													App get_nvector.2981obj.3863 Ta820.3885 
																																																																																																																												Let Tu156.3865
																																																																																																																													Let Ta821.3884
																																																																																																																														ExtArray 552
																																																																																																																														App utexture.2984obj.3863 Ta821.3884 
																																																																																																																													Let Tb826.3866
																																																																																																																														Let Ti822.3880
																																																																																																																															Int:0
																																																																																																																															Let Ta825.3881
																																																																																																																																Let Ta823.3882
																																																																																																																																	ExtArray 536
																																																																																																																																	Let Ti824.3883
																																																																																																																																		Int:0
																																																																																																																																		Get Ta823.3882 Ti824.3883
																																																																																																																																App shadow_check_one_or_matrix.2944Ti822.3880 Ta825.3881 
																																																																																																																														Let Ti827.3867
																																																																																																																															Int:0
																																																																																																																															IfEq Tb826.3866 Ti827.3867
																																																																																																																																Let br.3868
																																																																																																																																	Let Td830.3877
																																																																																																																																		Let Ta828.3878
																																																																																																																																			ExtArray 568
																																																																																																																																			Let Ta829.3879
																																																																																																																																				ExtArray 312
																																																																																																																																				App veciprod.2690Ta828.3878 Ta829.3879 
																																																																																																																																		App fneg.2639Td830.3877 
																																																																																																																																	Let bright.3869
																																																																																																																																		Let Tb831.3875
																																																																																																																																			App fispos.2641br.3868 
																																																																																																																																			Let Ti832.3876
																																																																																																																																				Int:0
																																																																																																																																				IfEq Tb831.3875 Ti832.3876
																																																																																																																																					Float:0.000000
																																																																																																																																					Var br.3868
																																																																																																																																		Let Ta833.3870
																																																																																																																																			ExtArray 592
																																																																																																																																			Let Td836.3871
																																																																																																																																				Let Td834.3873
																																																																																																																																					FMul energy.3004 bright.3869
																																																																																																																																					Let Td835.3874
																																																																																																																																						App o_diffuse.2739obj.3863 
																																																																																																																																						FMul Td834.3873 Td835.3874
																																																																																																																																				Let Ta837.3872
																																																																																																																																					ExtArray 580
																																																																																																																																					App vecaccum.2698Ta833.3870 Td836.3871 Ta837.3872 
																																																																																																																																Unit
																																																																																																																							LetRec iter_trace_diffuse_rays.3005 dirvec_group.3006 nvector.3007 org.3008 index.3009 
																																																																																																																								Let Ti797.3842
																																																																																																																									Int:0
																																																																																																																									IfLE Ti797.3842 index.3009
																																																																																																																										Let p.3843
																																																																																																																											Let Ta799.3859
																																																																																																																												Let Tt798.3860
																																																																																																																													Get dirvec_group.3006 index.3009
																																																																																																																													App d_vec.2776Tt798.3860 
																																																																																																																												App veciprod.2690Ta799.3859 nvector.3007 
																																																																																																																											Let Tu158.3844
																																																																																																																												Let Tb800.3847
																																																																																																																													App fisneg.2643p.3843 
																																																																																																																													Let Ti801.3848
																																																																																																																														Int:0
																																																																																																																														IfEq Tb800.3847 Ti801.3848
																																																																																																																															Let Tt802.3855
																																																																																																																																Get dirvec_group.3006 index.3009
																																																																																																																																Let Td805.3856
																																																																																																																																	Let Td803.3857
																																																																																																																																		Float:150.000000
																																																																																																																																		Let Td804.3858
																																																																																																																																			FReciprocal Td803.3857
																																																																																																																																			FMul p.3843 Td804.3858
																																																																																																																																	App trace_diffuse_ray.3002Tt802.3855 Td805.3856 
																																																																																																																															Let Tt808.3849
																																																																																																																																Let Ti807.3853
																																																																																																																																	Let Ti806.3854
																																																																																																																																		Int:1
																																																																																																																																		Add index.3009 Ti806.3854
																																																																																																																																	Get dirvec_group.3006 Ti807.3853
																																																																																																																																Let Td811.3850
																																																																																																																																	Let Td809.3851
																																																																																																																																		Float:-150.000000
																																																																																																																																		Let Td810.3852
																																																																																																																																			FReciprocal Td809.3851
																																																																																																																																			FMul p.3843 Td810.3852
																																																																																																																																	App trace_diffuse_ray.3002Tt808.3849 Td811.3850 
																																																																																																																												Let Ti813.3845
																																																																																																																													Let Ti812.3846
																																																																																																																														Int:2
																																																																																																																														Sub index.3009 Ti812.3846
																																																																																																																													App iter_trace_diffuse_rays.3005dirvec_group.3006 nvector.3007 org.3008 Ti813.3845 
																																																																																																																										Unit
																																																																																																																								LetRec trace_diffuse_rays.3010 dirvec_group.3011 nvector.3012 org.3013 
																																																																																																																									Let Tu159.3840
																																																																																																																										App setup_startp.2910org.3013 
																																																																																																																										Let Ti796.3841
																																																																																																																											Int:118
																																																																																																																											App iter_trace_diffuse_rays.3005dirvec_group.3011 nvector.3012 org.3013 Ti796.3841 
																																																																																																																									LetRec trace_diffuse_ray_80percent.3014 group_id.3015 nvector.3016 org.3017 
																																																																																																																										Let Tu163.3816
																																																																																																																											Let Ti776.3836
																																																																																																																												Int:0
																																																																																																																												IfEq group_id.3015 Ti776.3836
																																																																																																																													Unit
																																																																																																																													Let Ta779.3837
																																																																																																																														Let Ta777.3838
																																																																																																																															ExtArray 716
																																																																																																																															Let Ti778.3839
																																																																																																																																Int:0
																																																																																																																																Get Ta777.3838 Ti778.3839
																																																																																																																														App trace_diffuse_rays.3010Ta779.3837 nvector.3016 org.3017 
																																																																																																																											Let Tu162.3817
																																																																																																																												Let Ti780.3832
																																																																																																																													Int:1
																																																																																																																													IfEq group_id.3015 Ti780.3832
																																																																																																																														Unit
																																																																																																																														Let Ta783.3833
																																																																																																																															Let Ta781.3834
																																																																																																																																ExtArray 716
																																																																																																																																Let Ti782.3835
																																																																																																																																	Int:1
																																																																																																																																	Get Ta781.3834 Ti782.3835
																																																																																																																															App trace_diffuse_rays.3010Ta783.3833 nvector.3016 org.3017 
																																																																																																																												Let Tu161.3818
																																																																																																																													Let Ti784.3828
																																																																																																																														Int:2
																																																																																																																														IfEq group_id.3015 Ti784.3828
																																																																																																																															Unit
																																																																																																																															Let Ta787.3829
																																																																																																																																Let Ta785.3830
																																																																																																																																	ExtArray 716
																																																																																																																																	Let Ti786.3831
																																																																																																																																		Int:2
																																																																																																																																		Get Ta785.3830 Ti786.3831
																																																																																																																																App trace_diffuse_rays.3010Ta787.3829 nvector.3016 org.3017 
																																																																																																																													Let Tu160.3819
																																																																																																																														Let Ti788.3824
																																																																																																																															Int:3
																																																																																																																															IfEq group_id.3015 Ti788.3824
																																																																																																																																Unit
																																																																																																																																Let Ta791.3825
																																																																																																																																	Let Ta789.3826
																																																																																																																																		ExtArray 716
																																																																																																																																		Let Ti790.3827
																																																																																																																																			Int:3
																																																																																																																																			Get Ta789.3826 Ti790.3827
																																																																																																																																	App trace_diffuse_rays.3010Ta791.3825 nvector.3016 org.3017 
																																																																																																																														Let Ti792.3820
																																																																																																																															Int:4
																																																																																																																															IfEq group_id.3015 Ti792.3820
																																																																																																																																Unit
																																																																																																																																Let Ta795.3821
																																																																																																																																	Let Ta793.3822
																																																																																																																																		ExtArray 716
																																																																																																																																		Let Ti794.3823
																																																																																																																																			Int:4
																																																																																																																																			Get Ta793.3822 Ti794.3823
																																																																																																																																	App trace_diffuse_rays.3010Ta795.3821 nvector.3016 org.3017 
																																																																																																																										LetRec calc_diffuse_using_1point.3018 pixel.3019 nref.3020 
																																																																																																																											Let ray20p.3802
																																																																																																																												App p_received_ray_20percent.2767pixel.3019 
																																																																																																																												Let nvectors.3803
																																																																																																																													App p_nvectors.2774pixel.3019 
																																																																																																																													Let intersection_points.3804
																																																																																																																														App p_intersection_points.2759pixel.3019 
																																																																																																																														Let energya.3805
																																																																																																																															App p_energy.2765pixel.3019 
																																																																																																																															Let Tu165.3806
																																																																																																																																Let Ta768.3814
																																																																																																																																	ExtArray 592
																																																																																																																																	Let Ta769.3815
																																																																																																																																		Get ray20p.3802 nref.3020
																																																																																																																																		App veccpy.2679Ta768.3814 Ta769.3815 
																																																																																																																																Let Tu164.3807
																																																																																																																																	Let Ti770.3811
																																																																																																																																		App p_group_id.2769pixel.3019 
																																																																																																																																		Let Ta771.3812
																																																																																																																																			Get nvectors.3803 nref.3020
																																																																																																																																			Let Ta772.3813
																																																																																																																																				Get intersection_points.3804 nref.3020
																																																																																																																																				App trace_diffuse_ray_80percent.3014Ti770.3811 Ta771.3812 Ta772.3813 
																																																																																																																																	Let Ta773.3808
																																																																																																																																		ExtArray 604
																																																																																																																																		Let Ta774.3809
																																																																																																																																			Get energya.3805 nref.3020
																																																																																																																																			Let Ta775.3810
																																																																																																																																				ExtArray 592
																																																																																																																																				App vecaccumv.2711Ta773.3808 Ta774.3809 Ta775.3810 
																																																																																																																											LetRec calc_diffuse_using_5points.3021 x.3022 prev.3023 cur.3024 next.3025 nref.3026 
																																																																																																																												Let r_up.3768
																																																																																																																													Let Tt745.3801
																																																																																																																														Get prev.3023 x.3022
																																																																																																																														App p_received_ray_20percent.2767Tt745.3801 
																																																																																																																													Let r_left.3769
																																																																																																																														Let Tt748.3798
																																																																																																																															Let Ti747.3799
																																																																																																																																Let Ti746.3800
																																																																																																																																	Int:1
																																																																																																																																	Sub x.3022 Ti746.3800
																																																																																																																																Get cur.3024 Ti747.3799
																																																																																																																															App p_received_ray_20percent.2767Tt748.3798 
																																																																																																																														Let r_center.3770
																																																																																																																															Let Tt749.3797
																																																																																																																																Get cur.3024 x.3022
																																																																																																																																App p_received_ray_20percent.2767Tt749.3797 
																																																																																																																															Let r_right.3771
																																																																																																																																Let Tt752.3794
																																																																																																																																	Let Ti751.3795
																																																																																																																																		Let Ti750.3796
																																																																																																																																			Int:1
																																																																																																																																			Add x.3022 Ti750.3796
																																																																																																																																		Get cur.3024 Ti751.3795
																																																																																																																																	App p_received_ray_20percent.2767Tt752.3794 
																																																																																																																																Let r_down.3772
																																																																																																																																	Let Tt753.3793
																																																																																																																																		Get next.3025 x.3022
																																																																																																																																		App p_received_ray_20percent.2767Tt753.3793 
																																																																																																																																	Let Tu170.3773
																																																																																																																																		Let Ta754.3791
																																																																																																																																			ExtArray 592
																																																																																																																																			Let Ta755.3792
																																																																																																																																				Get r_up.3768 nref.3026
																																																																																																																																				App veccpy.2679Ta754.3791 Ta755.3792 
																																																																																																																																		Let Tu169.3774
																																																																																																																																			Let Ta756.3789
																																																																																																																																				ExtArray 592
																																																																																																																																				Let Ta757.3790
																																																																																																																																					Get r_left.3769 nref.3026
																																																																																																																																					App vecadd.2702Ta756.3789 Ta757.3790 
																																																																																																																																			Let Tu168.3775
																																																																																																																																				Let Ta758.3787
																																																																																																																																					ExtArray 592
																																																																																																																																					Let Ta759.3788
																																																																																																																																						Get r_center.3770 nref.3026
																																																																																																																																						App vecadd.2702Ta758.3787 Ta759.3788 
																																																																																																																																				Let Tu167.3776
																																																																																																																																					Let Ta760.3785
																																																																																																																																						ExtArray 592
																																																																																																																																						Let Ta761.3786
																																																																																																																																							Get r_right.3771 nref.3026
																																																																																																																																							App vecadd.2702Ta760.3785 Ta761.3786 
																																																																																																																																					Let Tu166.3777
																																																																																																																																						Let Ta762.3783
																																																																																																																																							ExtArray 592
																																																																																																																																							Let Ta763.3784
																																																																																																																																								Get r_down.3772 nref.3026
																																																																																																																																								App vecadd.2702Ta762.3783 Ta763.3784 
																																																																																																																																						Let energya.3778
																																																																																																																																							Let Tt764.3782
																																																																																																																																								Get cur.3024 x.3022
																																																																																																																																								App p_energy.2765Tt764.3782 
																																																																																																																																							Let Ta765.3779
																																																																																																																																								ExtArray 604
																																																																																																																																								Let Ta766.3780
																																																																																																																																									Get energya.3778 nref.3026
																																																																																																																																									Let Ta767.3781
																																																																																																																																										ExtArray 592
																																																																																																																																										App vecaccumv.2711Ta765.3779 Ta766.3780 Ta767.3781 
																																																																																																																												LetRec do_without_neighbors.3027 pixel.3028 nref.3029 
																																																																																																																													Let Ti738.3758
																																																																																																																														Int:4
																																																																																																																														IfLE nref.3029 Ti738.3758
																																																																																																																															Let surface_ids.3759
																																																																																																																																App p_surface_ids.2761pixel.3028 
																																																																																																																																Let Ti739.3760
																																																																																																																																	Int:0
																																																																																																																																	Let Ti740.3761
																																																																																																																																		Get surface_ids.3759 nref.3029
																																																																																																																																		IfLE Ti739.3760 Ti740.3761
																																																																																																																																			Let calc_diffuse.3762
																																																																																																																																				App p_calc_diffuse.2763pixel.3028 
																																																																																																																																				Let Tu171.3763
																																																																																																																																					Let Tb741.3766
																																																																																																																																						Get calc_diffuse.3762 nref.3029
																																																																																																																																						Let Ti742.3767
																																																																																																																																							Int:0
																																																																																																																																							IfEq Tb741.3766 Ti742.3767
																																																																																																																																								Unit
																																																																																																																																								App calc_diffuse_using_1point.3018pixel.3028 nref.3029 
																																																																																																																																					Let Ti744.3764
																																																																																																																																						Let Ti743.3765
																																																																																																																																							Int:1
																																																																																																																																							Add nref.3029 Ti743.3765
																																																																																																																																						App do_without_neighbors.3027pixel.3028 Ti744.3764 
																																																																																																																																			Unit
																																																																																																																															Unit
																																																																																																																													LetRec neighbors_exist.3030 x.3031 y.3032 next.3033 
																																																																																																																														Let Ti728.3746
																																																																																																																															Let Ta726.3756
																																																																																																																																ExtArray 616
																																																																																																																																Let Ti727.3757
																																																																																																																																	Int:1
																																																																																																																																	Get Ta726.3756 Ti727.3757
																																																																																																																															Let Ti730.3747
																																																																																																																																Let Ti729.3755
																																																																																																																																	Int:1
																																																																																																																																	Add y.3032 Ti729.3755
																																																																																																																																IfLE Ti728.3746 Ti730.3747
																																																																																																																																	Int:0
																																																																																																																																	Let Ti731.3748
																																																																																																																																		Int:0
																																																																																																																																		IfLE y.3032 Ti731.3748
																																																																																																																																			Int:0
																																																																																																																																			Let Ti734.3749
																																																																																																																																				Let Ta732.3753
																																																																																																																																					ExtArray 616
																																																																																																																																					Let Ti733.3754
																																																																																																																																						Int:0
																																																																																																																																						Get Ta732.3753 Ti733.3754
																																																																																																																																				Let Ti736.3750
																																																																																																																																					Let Ti735.3752
																																																																																																																																						Int:1
																																																																																																																																						Add x.3031 Ti735.3752
																																																																																																																																					IfLE Ti734.3749 Ti736.3750
																																																																																																																																						Int:0
																																																																																																																																						Let Ti737.3751
																																																																																																																																							Int:0
																																																																																																																																							IfLE x.3031 Ti737.3751
																																																																																																																																								Int:0
																																																																																																																																								Int:1
																																																																																																																														LetRec get_surface_id.3034 pixel.3035 index.3036 
																																																																																																																															Let surface_ids.3745
																																																																																																																																App p_surface_ids.2761pixel.3035 
																																																																																																																																Get surface_ids.3745 index.3036
																																																																																																																															LetRec neighbors_are_available.3037 x.3038 prev.3039 cur.3040 next.3041 nref.3042 
																																																																																																																																Let sid_center.3731
																																																																																																																																	Let Tt713.3744
																																																																																																																																		Get cur.3040 x.3038
																																																																																																																																		App get_surface_id.3034Tt713.3744 nref.3042 
																																																																																																																																	Let Ti715.3732
																																																																																																																																		Let Tt714.3743
																																																																																																																																			Get prev.3039 x.3038
																																																																																																																																			App get_surface_id.3034Tt714.3743 nref.3042 
																																																																																																																																		IfEq Ti715.3732 sid_center.3731
																																																																																																																																			Let Ti717.3733
																																																																																																																																				Let Tt716.3742
																																																																																																																																					Get next.3041 x.3038
																																																																																																																																					App get_surface_id.3034Tt716.3742 nref.3042 
																																																																																																																																				IfEq Ti717.3733 sid_center.3731
																																																																																																																																					Let Ti721.3734
																																																																																																																																						Let Tt720.3739
																																																																																																																																							Let Ti719.3740
																																																																																																																																								Let Ti718.3741
																																																																																																																																									Int:1
																																																																																																																																									Sub x.3038 Ti718.3741
																																																																																																																																								Get cur.3040 Ti719.3740
																																																																																																																																							App get_surface_id.3034Tt720.3739 nref.3042 
																																																																																																																																						IfEq Ti721.3734 sid_center.3731
																																																																																																																																							Let Ti725.3735
																																																																																																																																								Let Tt724.3736
																																																																																																																																									Let Ti723.3737
																																																																																																																																										Let Ti722.3738
																																																																																																																																											Int:1
																																																																																																																																											Add x.3038 Ti722.3738
																																																																																																																																										Get cur.3040 Ti723.3737
																																																																																																																																									App get_surface_id.3034Tt724.3736 nref.3042 
																																																																																																																																								IfEq Ti725.3735 sid_center.3731
																																																																																																																																									Int:1
																																																																																																																																									Int:0
																																																																																																																																							Int:0
																																																																																																																																					Int:0
																																																																																																																																			Int:0
																																																																																																																																LetRec try_exploit_neighbors.3043 x.3044 y.3045 prev.3046 cur.3047 next.3048 nref.3049 
																																																																																																																																	Let pixel.3718
																																																																																																																																		Get cur.3047 x.3044
																																																																																																																																		Let Ti703.3719
																																																																																																																																			Int:4
																																																																																																																																			IfLE nref.3049 Ti703.3719
																																																																																																																																				Let Ti704.3720
																																																																																																																																					Int:0
																																																																																																																																					Let Ti705.3721
																																																																																																																																						App get_surface_id.3034pixel.3718 nref.3049 
																																																																																																																																						IfLE Ti704.3720 Ti705.3721
																																																																																																																																							Let Tb706.3722
																																																																																																																																								App neighbors_are_available.3037x.3044 prev.3046 cur.3047 next.3048 nref.3049 
																																																																																																																																								Let Ti707.3723
																																																																																																																																									Int:0
																																																																																																																																									IfEq Tb706.3722 Ti707.3723
																																																																																																																																										Let Tt708.3730
																																																																																																																																											Get cur.3047 x.3044
																																																																																																																																											App do_without_neighbors.3027Tt708.3730 nref.3049 
																																																																																																																																										Let calc_diffuse.3724
																																																																																																																																											App p_calc_diffuse.2763pixel.3718 
																																																																																																																																											Let Tu172.3725
																																																																																																																																												Let Tb709.3728
																																																																																																																																													Get calc_diffuse.3724 nref.3049
																																																																																																																																													Let Ti710.3729
																																																																																																																																														Int:0
																																																																																																																																														IfEq Tb709.3728 Ti710.3729
																																																																																																																																															Unit
																																																																																																																																															App calc_diffuse_using_5points.3021x.3044 prev.3046 cur.3047 next.3048 nref.3049 
																																																																																																																																												Let Ti712.3726
																																																																																																																																													Let Ti711.3727
																																																																																																																																														Int:1
																																																																																																																																														Add nref.3049 Ti711.3727
																																																																																																																																													App try_exploit_neighbors.3043x.3044 y.3045 prev.3046 cur.3047 next.3048 Ti712.3726 
																																																																																																																																							Unit
																																																																																																																																				Unit
																																																																																																																																	LetRec write_ppm_header.3050 Tu173.3051 
																																																																																																																																		Let Tu181.3695
																																																																																																																																			Let Ti688.3717
																																																																																																																																				Int:80
																																																																																																																																				ExtFunApp print_byte Ti688.3717,
																																																																																																																																			Let Tu180.3696
																																																																																																																																				Let Ti691.3714
																																																																																																																																					Let Ti689.3715
																																																																																																																																						Int:48
																																																																																																																																						Let Ti690.3716
																																																																																																																																							Int:3
																																																																																																																																							Add Ti689.3715 Ti690.3716
																																																																																																																																					ExtFunApp print_byte Ti691.3714,
																																																																																																																																				Let Tu179.3697
																																																																																																																																					Let Ti692.3713
																																																																																																																																						Int:10
																																																																																																																																						ExtFunApp print_byte Ti692.3713,
																																																																																																																																					Let Tu178.3698
																																																																																																																																						Let Ti695.3710
																																																																																																																																							Let Ta693.3711
																																																																																																																																								ExtArray 616
																																																																																																																																								Let Ti694.3712
																																																																																																																																									Int:0
																																																																																																																																									Get Ta693.3711 Ti694.3712
																																																																																																																																							ExtFunApp print_int Ti695.3710,
																																																																																																																																						Let Tu177.3699
																																																																																																																																							Let Ti696.3709
																																																																																																																																								Int:32
																																																																																																																																								ExtFunApp print_byte Ti696.3709,
																																																																																																																																							Let Tu176.3700
																																																																																																																																								Let Ti699.3706
																																																																																																																																									Let Ta697.3707
																																																																																																																																										ExtArray 616
																																																																																																																																										Let Ti698.3708
																																																																																																																																											Int:1
																																																																																																																																											Get Ta697.3707 Ti698.3708
																																																																																																																																									ExtFunApp print_int Ti699.3706,
																																																																																																																																								Let Tu175.3701
																																																																																																																																									Let Ti700.3705
																																																																																																																																										Int:32
																																																																																																																																										ExtFunApp print_byte Ti700.3705,
																																																																																																																																									Let Tu174.3702
																																																																																																																																										Let Ti701.3704
																																																																																																																																											Int:255
																																																																																																																																											ExtFunApp print_int Ti701.3704,
																																																																																																																																										Let Ti702.3703
																																																																																																																																											Int:10
																																																																																																																																											ExtFunApp print_byte Ti702.3703,
																																																																																																																																		LetRec write_rgb_element.3052 x.3053 
																																																																																																																																			Let ix.3691
																																																																																																																																				ExtFunApp int_of_float x.3053,
																																																																																																																																				Let elem.3692
																																																																																																																																					Let Ti686.3693
																																																																																																																																						Int:255
																																																																																																																																						IfLE ix.3691 Ti686.3693
																																																																																																																																							Let Ti687.3694
																																																																																																																																								Int:0
																																																																																																																																								IfLE Ti687.3694 ix.3691
																																																																																																																																									Var ix.3691
																																																																																																																																									Int:0
																																																																																																																																							Int:255
																																																																																																																																					ExtFunApp print_int elem.3692,
																																																																																																																																			LetRec write_rgb.3054 Tu182.3055 
																																																																																																																																				Let Tu187.3674
																																																																																																																																					Let Td676.3688
																																																																																																																																						Let Ta674.3689
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti675.3690
																																																																																																																																								Int:0
																																																																																																																																								Get Ta674.3689 Ti675.3690
																																																																																																																																						App write_rgb_element.3052Td676.3688 
																																																																																																																																					Let Tu186.3675
																																																																																																																																						Let Ti677.3687
																																																																																																																																							Int:32
																																																																																																																																							ExtFunApp print_byte Ti677.3687,
																																																																																																																																						Let Tu185.3676
																																																																																																																																							Let Td680.3684
																																																																																																																																								Let Ta678.3685
																																																																																																																																									ExtArray 604
																																																																																																																																									Let Ti679.3686
																																																																																																																																										Int:1
																																																																																																																																										Get Ta678.3685 Ti679.3686
																																																																																																																																								App write_rgb_element.3052Td680.3684 
																																																																																																																																							Let Tu184.3677
																																																																																																																																								Let Ti681.3683
																																																																																																																																									Int:32
																																																																																																																																									ExtFunApp print_byte Ti681.3683,
																																																																																																																																								Let Tu183.3678
																																																																																																																																									Let Td684.3680
																																																																																																																																										Let Ta682.3681
																																																																																																																																											ExtArray 604
																																																																																																																																											Let Ti683.3682
																																																																																																																																												Int:2
																																																																																																																																												Get Ta682.3681 Ti683.3682
																																																																																																																																										App write_rgb_element.3052Td684.3680 
																																																																																																																																									Let Ti685.3679
																																																																																																																																										Int:10
																																																																																																																																										ExtFunApp print_byte Ti685.3679,
																																																																																																																																				LetRec pretrace_diffuse_rays.3056 pixel.3057 nref.3058 
																																																																																																																																					Let Ti661.3652
																																																																																																																																						Int:4
																																																																																																																																						IfLE nref.3058 Ti661.3652
																																																																																																																																							Let sid.3653
																																																																																																																																								App get_surface_id.3034pixel.3057 nref.3058 
																																																																																																																																								Let Ti662.3654
																																																																																																																																									Int:0
																																																																																																																																									IfLE Ti662.3654 sid.3653
																																																																																																																																										Let calc_diffuse.3655
																																																																																																																																											App p_calc_diffuse.2763pixel.3057 
																																																																																																																																											Let Tu190.3656
																																																																																																																																												Let Tb663.3659
																																																																																																																																													Get calc_diffuse.3655 nref.3058
																																																																																																																																													Let Ti664.3660
																																																																																																																																														Int:0
																																																																																																																																														IfEq Tb663.3659 Ti664.3660
																																																																																																																																															Unit
																																																																																																																																															Let group_id.3661
																																																																																																																																																App p_group_id.2769pixel.3057 
																																																																																																																																																Let Tu189.3662
																																																																																																																																																	Let Ta665.3673
																																																																																																																																																		ExtArray 592
																																																																																																																																																		App vecbzero.2677Ta665.3673 
																																																																																																																																																	Let nvectors.3663
																																																																																																																																																		App p_nvectors.2774pixel.3057 
																																																																																																																																																		Let intersection_points.3664
																																																																																																																																																			App p_intersection_points.2759pixel.3057 
																																																																																																																																																			Let Tu188.3665
																																																																																																																																																				Let Ta667.3669
																																																																																																																																																					Let Ta666.3672
																																																																																																																																																						ExtArray 716
																																																																																																																																																						Get Ta666.3672 group_id.3661
																																																																																																																																																					Let Ta668.3670
																																																																																																																																																						Get nvectors.3663 nref.3058
																																																																																																																																																						Let Ta669.3671
																																																																																																																																																							Get intersection_points.3664 nref.3058
																																																																																																																																																							App trace_diffuse_rays.3010Ta667.3669 Ta668.3670 Ta669.3671 
																																																																																																																																																				Let ray20p.3666
																																																																																																																																																					App p_received_ray_20percent.2767pixel.3057 
																																																																																																																																																					Let Ta670.3667
																																																																																																																																																						Get ray20p.3666 nref.3058
																																																																																																																																																						Let Ta671.3668
																																																																																																																																																							ExtArray 592
																																																																																																																																																							App veccpy.2679Ta670.3667 Ta671.3668 
																																																																																																																																												Let Ti673.3657
																																																																																																																																													Let Ti672.3658
																																																																																																																																														Int:1
																																																																																																																																														Add nref.3058 Ti672.3658
																																																																																																																																													App pretrace_diffuse_rays.3056pixel.3057 Ti673.3657 
																																																																																																																																										Unit
																																																																																																																																							Unit
																																																																																																																																					LetRec pretrace_pixels.3059 line.3060 x.3061 group_id.3062 lc0.3063 lc1.3064 lc2.3065 
																																																																																																																																						Let Ti611.3591
																																																																																																																																							Int:0
																																																																																																																																							IfLE Ti611.3591 x.3061
																																																																																																																																								Let xdisp.3592
																																																																																																																																									Let Td614.3644
																																																																																																																																										Let Ta612.3650
																																																																																																																																											ExtArray 632
																																																																																																																																											Let Ti613.3651
																																																																																																																																												Int:0
																																																																																																																																												Get Ta612.3650 Ti613.3651
																																																																																																																																										Let Td619.3645
																																																																																																																																											Let Ti618.3646
																																																																																																																																												Let Ti617.3647
																																																																																																																																													Let Ta615.3648
																																																																																																																																														ExtArray 624
																																																																																																																																														Let Ti616.3649
																																																																																																																																															Int:0
																																																																																																																																															Get Ta615.3648 Ti616.3649
																																																																																																																																													Sub x.3061 Ti617.3647
																																																																																																																																												ExtFunApp float_of_int Ti618.3646,
																																																																																																																																											FMul Td614.3644 Td619.3645
																																																																																																																																									Let Tu200.3593
																																																																																																																																										Let Ta620.3637
																																																																																																																																											ExtArray 696
																																																																																																																																											Let Ti621.3638
																																																																																																																																												Int:0
																																																																																																																																												Let Td626.3639
																																																																																																																																													Let Td625.3640
																																																																																																																																														Let Td624.3641
																																																																																																																																															Let Ta622.3642
																																																																																																																																																ExtArray 660
																																																																																																																																																Let Ti623.3643
																																																																																																																																																	Int:0
																																																																																																																																																	Get Ta622.3642 Ti623.3643
																																																																																																																																															FMul xdisp.3592 Td624.3641
																																																																																																																																														FAdd Td625.3640 lc0.3063
																																																																																																																																													Put Ta620.3637 Ti621.3638 Td626.3639
																																																																																																																																										Let Tu199.3594
																																																																																																																																											Let Ta627.3630
																																																																																																																																												ExtArray 696
																																																																																																																																												Let Ti628.3631
																																																																																																																																													Int:1
																																																																																																																																													Let Td633.3632
																																																																																																																																														Let Td632.3633
																																																																																																																																															Let Td631.3634
																																																																																																																																																Let Ta629.3635
																																																																																																																																																	ExtArray 660
																																																																																																																																																	Let Ti630.3636
																																																																																																																																																		Int:1
																																																																																																																																																		Get Ta629.3635 Ti630.3636
																																																																																																																																																FMul xdisp.3592 Td631.3634
																																																																																																																																															FAdd Td632.3633 lc1.3064
																																																																																																																																														Put Ta627.3630 Ti628.3631 Td633.3632
																																																																																																																																											Let Tu198.3595
																																																																																																																																												Let Ta634.3623
																																																																																																																																													ExtArray 696
																																																																																																																																													Let Ti635.3624
																																																																																																																																														Int:2
																																																																																																																																														Let Td640.3625
																																																																																																																																															Let Td639.3626
																																																																																																																																																Let Td638.3627
																																																																																																																																																	Let Ta636.3628
																																																																																																																																																		ExtArray 660
																																																																																																																																																		Let Ti637.3629
																																																																																																																																																			Int:2
																																																																																																																																																			Get Ta636.3628 Ti637.3629
																																																																																																																																																	FMul xdisp.3592 Td638.3627
																																																																																																																																																FAdd Td639.3626 lc2.3065
																																																																																																																																															Put Ta634.3623 Ti635.3624 Td640.3625
																																																																																																																																												Let Tu197.3596
																																																																																																																																													Let Ta641.3621
																																																																																																																																														ExtArray 696
																																																																																																																																														Let Ti642.3622
																																																																																																																																															Int:0
																																																																																																																																															App vecunit_sgn.2687Ta641.3621 Ti642.3622 
																																																																																																																																													Let Tu196.3597
																																																																																																																																														Let Ta643.3620
																																																																																																																																															ExtArray 604
																																																																																																																																															App vecbzero.2677Ta643.3620 
																																																																																																																																														Let Tu195.3598
																																																																																																																																															Let Ta644.3618
																																																																																																																																																ExtArray 636
																																																																																																																																																Let Ta645.3619
																																																																																																																																																	ExtArray 300
																																																																																																																																																	App veccpy.2679Ta644.3618 Ta645.3619 
																																																																																																																																															Let Tu194.3599
																																																																																																																																																Let Ti646.3613
																																																																																																																																																	Int:0
																																																																																																																																																	Let Td647.3614
																																																																																																																																																		Float:1.000000
																																																																																																																																																		Let Ta648.3615
																																																																																																																																																			ExtArray 696
																																																																																																																																																			Let Tt649.3616
																																																																																																																																																				Get line.3060 x.3061
																																																																																																																																																				Let Td650.3617
																																																																																																																																																					Float:0.000000
																																																																																																																																																					App trace_ray.2996Ti646.3613 Td647.3614 Ta648.3615 Tt649.3616 Td650.3617 
																																																																																																																																																Let Tu193.3600
																																																																																																																																																	Let Ta652.3610
																																																																																																																																																		Let Tt651.3612
																																																																																																																																																			Get line.3060 x.3061
																																																																																																																																																			App p_rgb.2757Tt651.3612 
																																																																																																																																																		Let Ta653.3611
																																																																																																																																																			ExtArray 604
																																																																																																																																																			App veccpy.2679Ta652.3610 Ta653.3611 
																																																																																																																																																	Let Tu192.3601
																																																																																																																																																		Let Tt654.3609
																																																																																																																																																			Get line.3060 x.3061
																																																																																																																																																			App p_set_group_id.2771Tt654.3609 group_id.3062 
																																																																																																																																																		Let Tu191.3602
																																																																																																																																																			Let Tt655.3607
																																																																																																																																																				Get line.3060 x.3061
																																																																																																																																																				Let Ti656.3608
																																																																																																																																																					Int:0
																																																																																																																																																					App pretrace_diffuse_rays.3056Tt655.3607 Ti656.3608 
																																																																																																																																																			Let Ti658.3603
																																																																																																																																																				Let Ti657.3606
																																																																																																																																																					Int:1
																																																																																																																																																					Sub x.3061 Ti657.3606
																																																																																																																																																				Let Ti660.3604
																																																																																																																																																					Let Ti659.3605
																																																																																																																																																						Int:1
																																																																																																																																																						App add_mod5.2666group_id.3062 Ti659.3605 
																																																																																																																																																					App pretrace_pixels.3059line.3060 Ti658.3603 Ti660.3604 lc0.3063 lc1.3064 lc2.3065 
																																																																																																																																								Unit
																																																																																																																																						LetRec pretrace_line.3066 line.3067 y.3068 group_id.3069 
																																																																																																																																							Let ydisp.3553
																																																																																																																																								Let Td579.3583
																																																																																																																																									Let Ta577.3589
																																																																																																																																										ExtArray 632
																																																																																																																																										Let Ti578.3590
																																																																																																																																											Int:0
																																																																																																																																											Get Ta577.3589 Ti578.3590
																																																																																																																																									Let Td584.3584
																																																																																																																																										Let Ti583.3585
																																																																																																																																											Let Ti582.3586
																																																																																																																																												Let Ta580.3587
																																																																																																																																													ExtArray 624
																																																																																																																																													Let Ti581.3588
																																																																																																																																														Int:1
																																																																																																																																														Get Ta580.3587 Ti581.3588
																																																																																																																																												Sub y.3068 Ti582.3586
																																																																																																																																											ExtFunApp float_of_int Ti583.3585,
																																																																																																																																										FMul Td579.3583 Td584.3584
																																																																																																																																								Let lc0.3554
																																																																																																																																									Let Td588.3576
																																																																																																																																										Let Td587.3580
																																																																																																																																											Let Ta585.3581
																																																																																																																																												ExtArray 672
																																																																																																																																												Let Ti586.3582
																																																																																																																																													Int:0
																																																																																																																																													Get Ta585.3581 Ti586.3582
																																																																																																																																											FMul ydisp.3553 Td587.3580
																																																																																																																																										Let Td591.3577
																																																																																																																																											Let Ta589.3578
																																																																																																																																												ExtArray 684
																																																																																																																																												Let Ti590.3579
																																																																																																																																													Int:0
																																																																																																																																													Get Ta589.3578 Ti590.3579
																																																																																																																																											FAdd Td588.3576 Td591.3577
																																																																																																																																									Let lc1.3555
																																																																																																																																										Let Td595.3569
																																																																																																																																											Let Td594.3573
																																																																																																																																												Let Ta592.3574
																																																																																																																																													ExtArray 672
																																																																																																																																													Let Ti593.3575
																																																																																																																																														Int:1
																																																																																																																																														Get Ta592.3574 Ti593.3575
																																																																																																																																												FMul ydisp.3553 Td594.3573
																																																																																																																																											Let Td598.3570
																																																																																																																																												Let Ta596.3571
																																																																																																																																													ExtArray 684
																																																																																																																																													Let Ti597.3572
																																																																																																																																														Int:1
																																																																																																																																														Get Ta596.3571 Ti597.3572
																																																																																																																																												FAdd Td595.3569 Td598.3570
																																																																																																																																										Let lc2.3556
																																																																																																																																											Let Td602.3562
																																																																																																																																												Let Td601.3566
																																																																																																																																													Let Ta599.3567
																																																																																																																																														ExtArray 672
																																																																																																																																														Let Ti600.3568
																																																																																																																																															Int:2
																																																																																																																																															Get Ta599.3567 Ti600.3568
																																																																																																																																													FMul ydisp.3553 Td601.3566
																																																																																																																																												Let Td605.3563
																																																																																																																																													Let Ta603.3564
																																																																																																																																														ExtArray 684
																																																																																																																																														Let Ti604.3565
																																																																																																																																															Int:2
																																																																																																																																															Get Ta603.3564 Ti604.3565
																																																																																																																																													FAdd Td602.3562 Td605.3563
																																																																																																																																											Let Ti610.3557
																																																																																																																																												Let Ti608.3558
																																																																																																																																													Let Ta606.3560
																																																																																																																																														ExtArray 616
																																																																																																																																														Let Ti607.3561
																																																																																																																																															Int:0
																																																																																																																																															Get Ta606.3560 Ti607.3561
																																																																																																																																													Let Ti609.3559
																																																																																																																																														Int:1
																																																																																																																																														Sub Ti608.3558 Ti609.3559
																																																																																																																																												App pretrace_pixels.3059line.3067 Ti610.3557 group_id.3069 lc0.3554 lc1.3555 lc2.3556 
																																																																																																																																							LetRec scan_pixel.3070 x.3071 y.3072 prev.3073 cur.3074 next.3075 
																																																																																																																																								Let Ti565.3536
																																																																																																																																									Let Ta563.3551
																																																																																																																																										ExtArray 616
																																																																																																																																										Let Ti564.3552
																																																																																																																																											Int:0
																																																																																																																																											Get Ta563.3551 Ti564.3552
																																																																																																																																									IfLE Ti565.3536 x.3071
																																																																																																																																										Unit
																																																																																																																																										Let Tu203.3537
																																																																																																																																											Let Ta566.3548
																																																																																																																																												ExtArray 604
																																																																																																																																												Let Ta568.3549
																																																																																																																																													Let Tt567.3550
																																																																																																																																														Get cur.3074 x.3071
																																																																																																																																														App p_rgb.2757Tt567.3550 
																																																																																																																																													App veccpy.2679Ta566.3548 Ta568.3549 
																																																																																																																																											Let Tu202.3538
																																																																																																																																												Let Tb569.3543
																																																																																																																																													App neighbors_exist.3030x.3071 y.3072 next.3075 
																																																																																																																																													Let Ti570.3544
																																																																																																																																														Int:0
																																																																																																																																														IfEq Tb569.3543 Ti570.3544
																																																																																																																																															Let Tt571.3546
																																																																																																																																																Get cur.3074 x.3071
																																																																																																																																																Let Ti572.3547
																																																																																																																																																	Int:0
																																																																																																																																																	App do_without_neighbors.3027Tt571.3546 Ti572.3547 
																																																																																																																																															Let Ti573.3545
																																																																																																																																																Int:0
																																																																																																																																																App try_exploit_neighbors.3043x.3071 y.3072 prev.3073 cur.3074 next.3075 Ti573.3545 
																																																																																																																																												Let Tu201.3539
																																																																																																																																													Let Tu574.3542
																																																																																																																																														Unit
																																																																																																																																														App write_rgb.3054Tu574.3542 
																																																																																																																																													Let Ti576.3540
																																																																																																																																														Let Ti575.3541
																																																																																																																																															Int:1
																																																																																																																																															Add x.3071 Ti575.3541
																																																																																																																																														App scan_pixel.3070Ti576.3540 y.3072 prev.3073 cur.3074 next.3075 
																																																																																																																																								LetRec scan_line.3076 y.3077 prev.3078 cur.3079 next.3080 group_id.3081 
																																																																																																																																									Let Ti550.3519
																																																																																																																																										Let Ta548.3534
																																																																																																																																											ExtArray 616
																																																																																																																																											Let Ti549.3535
																																																																																																																																												Int:1
																																																																																																																																												Get Ta548.3534 Ti549.3535
																																																																																																																																										IfLE Ti550.3519 y.3077
																																																																																																																																											Unit
																																																																																																																																											Let Tu205.3520
																																																																																																																																												Let Ti555.3527
																																																																																																																																													Let Ti553.3530
																																																																																																																																														Let Ta551.3532
																																																																																																																																															ExtArray 616
																																																																																																																																															Let Ti552.3533
																																																																																																																																																Int:1
																																																																																																																																																Get Ta551.3532 Ti552.3533
																																																																																																																																														Let Ti554.3531
																																																																																																																																															Int:1
																																																																																																																																															Sub Ti553.3530 Ti554.3531
																																																																																																																																													IfLE Ti555.3527 y.3077
																																																																																																																																														Unit
																																																																																																																																														Let Ti557.3528
																																																																																																																																															Let Ti556.3529
																																																																																																																																																Int:1
																																																																																																																																																Add y.3077 Ti556.3529
																																																																																																																																															App pretrace_line.3066next.3080 Ti557.3528 group_id.3081 
																																																																																																																																												Let Tu204.3521
																																																																																																																																													Let Ti558.3526
																																																																																																																																														Int:0
																																																																																																																																														App scan_pixel.3070Ti558.3526 y.3077 prev.3078 cur.3079 next.3080 
																																																																																																																																													Let Ti560.3522
																																																																																																																																														Let Ti559.3525
																																																																																																																																															Int:1
																																																																																																																																															Add y.3077 Ti559.3525
																																																																																																																																														Let Ti562.3523
																																																																																																																																															Let Ti561.3524
																																																																																																																																																Int:2
																																																																																																																																																App add_mod5.2666group_id.3081 Ti561.3524 
																																																																																																																																															App scan_line.3076Ti560.3522 cur.3079 next.3080 prev.3078 Ti562.3523 
																																																																																																																																									LetRec create_float5x3array.3082 Tu206.3083 
																																																																																																																																										Let vec.3494
																																																																																																																																											Let Ti529.3517
																																																																																																																																												Int:3
																																																																																																																																												Let Td530.3518
																																																																																																																																													Float:0.000000
																																																																																																																																													ExtFunApp create_float_array Ti529.3517,Td530.3518,
																																																																																																																																											Let array.3495
																																																																																																																																												Let Ti531.3516
																																																																																																																																													Int:5
																																																																																																																																													ExtFunApp create_array Ti531.3516,vec.3494,
																																																																																																																																												Let Tu210.3496
																																																																																																																																													Let Ti532.3512
																																																																																																																																														Int:1
																																																																																																																																														Let Ta535.3513
																																																																																																																																															Let Ti533.3514
																																																																																																																																																Int:3
																																																																																																																																																Let Td534.3515
																																																																																																																																																	Float:0.000000
																																																																																																																																																	ExtFunApp create_float_array Ti533.3514,Td534.3515,
																																																																																																																																															Put array.3495 Ti532.3512 Ta535.3513
																																																																																																																																													Let Tu209.3497
																																																																																																																																														Let Ti536.3508
																																																																																																																																															Int:2
																																																																																																																																															Let Ta539.3509
																																																																																																																																																Let Ti537.3510
																																																																																																																																																	Int:3
																																																																																																																																																	Let Td538.3511
																																																																																																																																																		Float:0.000000
																																																																																																																																																		ExtFunApp create_float_array Ti537.3510,Td538.3511,
																																																																																																																																																Put array.3495 Ti536.3508 Ta539.3509
																																																																																																																																														Let Tu208.3498
																																																																																																																																															Let Ti540.3504
																																																																																																																																																Int:3
																																																																																																																																																Let Ta543.3505
																																																																																																																																																	Let Ti541.3506
																																																																																																																																																		Int:3
																																																																																																																																																		Let Td542.3507
																																																																																																																																																			Float:0.000000
																																																																																																																																																			ExtFunApp create_float_array Ti541.3506,Td542.3507,
																																																																																																																																																	Put array.3495 Ti540.3504 Ta543.3505
																																																																																																																																															Let Tu207.3499
																																																																																																																																																Let Ti544.3500
																																																																																																																																																	Int:4
																																																																																																																																																	Let Ta547.3501
																																																																																																																																																		Let Ti545.3502
																																																																																																																																																			Int:3
																																																																																																																																																			Let Td546.3503
																																																																																																																																																				Float:0.000000
																																																																																																																																																				ExtFunApp create_float_array Ti545.3502,Td546.3503,
																																																																																																																																																		Put array.3495 Ti544.3500 Ta547.3501
																																																																																																																																																Var array.3495
																																																																																																																																										LetRec create_pixel.3084 Tu211.3085 
																																																																																																																																											Let m_rgb.3474
																																																																																																																																												Let Ti517.3492
																																																																																																																																													Int:3
																																																																																																																																													Let Td518.3493
																																																																																																																																														Float:0.000000
																																																																																																																																														ExtFunApp create_float_array Ti517.3492,Td518.3493,
																																																																																																																																												Let m_isect_ps.3475
																																																																																																																																													Let Tu519.3491
																																																																																																																																														Unit
																																																																																																																																														App create_float5x3array.3082Tu519.3491 
																																																																																																																																													Let m_sids.3476
																																																																																																																																														Let Ti520.3489
																																																																																																																																															Int:5
																																																																																																																																															Let Ti521.3490
																																																																																																																																																Int:0
																																																																																																																																																ExtFunApp create_array Ti520.3489,Ti521.3490,
																																																																																																																																														Let m_cdif.3477
																																																																																																																																															Let Ti522.3487
																																																																																																																																																Int:5
																																																																																																																																																Let Ti523.3488
																																																																																																																																																	Int:0
																																																																																																																																																	ExtFunApp create_array Ti522.3487,Ti523.3488,
																																																																																																																																															Let m_engy.3478
																																																																																																																																																Let Tu524.3486
																																																																																																																																																	Unit
																																																																																																																																																	App create_float5x3array.3082Tu524.3486 
																																																																																																																																																Let m_r20p.3479
																																																																																																																																																	Let Tu525.3485
																																																																																																																																																		Unit
																																																																																																																																																		App create_float5x3array.3082Tu525.3485 
																																																																																																																																																	Let m_gid.3480
																																																																																																																																																		Let Ti526.3483
																																																																																																																																																			Int:1
																																																																																																																																																			Let Ti527.3484
																																																																																																																																																				Int:0
																																																																																																																																																				ExtFunApp create_array Ti526.3483,Ti527.3484,
																																																																																																																																																		Let m_nvectors.3481
																																																																																																																																																			Let Tu528.3482
																																																																																																																																																				Unit
																																																																																																																																																				App create_float5x3array.3082Tu528.3482 
																																																																																																																																																			Tuple (m_rgb.3474,m_isect_ps.3475,m_sids.3476,m_cdif.3477,m_engy.3478,m_r20p.3479,m_gid.3480,m_nvectors.3481,)
																																																																																																																																											LetRec init_line_elements.3086 line.3087 n.3088 
																																																																																																																																												Let Ti512.3468
																																																																																																																																													Int:0
																																																																																																																																													IfLE Ti512.3468 n.3088
																																																																																																																																														Let Tu212.3469
																																																																																																																																															Let Tt514.3472
																																																																																																																																																Let Tu513.3473
																																																																																																																																																	Unit
																																																																																																																																																	App create_pixel.3084Tu513.3473 
																																																																																																																																																Put line.3087 n.3088 Tt514.3472
																																																																																																																																															Let Ti516.3470
																																																																																																																																																Let Ti515.3471
																																																																																																																																																	Int:1
																																																																																																																																																	Sub n.3088 Ti515.3471
																																																																																																																																																App init_line_elements.3086line.3087 Ti516.3470 
																																																																																																																																														Var line.3087
																																																																																																																																												LetRec create_pixelline.3089 Tu213.3090 
																																																																																																																																													Let line.3457
																																																																																																																																														Let Ti504.3463
																																																																																																																																															Let Ta502.3466
																																																																																																																																																ExtArray 616
																																																																																																																																																Let Ti503.3467
																																																																																																																																																	Int:0
																																																																																																																																																	Get Ta502.3466 Ti503.3467
																																																																																																																																															Let Tt506.3464
																																																																																																																																																Let Tu505.3465
																																																																																																																																																	Unit
																																																																																																																																																	App create_pixel.3084Tu505.3465 
																																																																																																																																																ExtFunApp create_array Ti504.3463,Tt506.3464,
																																																																																																																																														Let Ti511.3458
																																																																																																																																															Let Ti509.3459
																																																																																																																																																Let Ta507.3461
																																																																																																																																																	ExtArray 616
																																																																																																																																																	Let Ti508.3462
																																																																																																																																																		Int:0
																																																																																																																																																		Get Ta507.3461 Ti508.3462
																																																																																																																																																Let Ti510.3460
																																																																																																																																																	Int:2
																																																																																																																																																	Sub Ti509.3459 Ti510.3460
																																																																																																																																															App init_line_elements.3086line.3457 Ti511.3458 
																																																																																																																																													LetRec tan.3091 x.3092 
																																																																																																																																														Let Td499.3454
																																																																																																																																															ExtFunApp sin x.3092,
																																																																																																																																															Let Td500.3455
																																																																																																																																																ExtFunApp cos x.3092,
																																																																																																																																																Let Td501.3456
																																																																																																																																																	FReciprocal Td500.3455
																																																																																																																																																	FMul Td499.3454 Td501.3456
																																																																																																																																														LetRec adjust_position.3093 h.3094 ratio.3095 
																																																																																																																																															Let l.3444
																																																																																																																																																Let Td495.3451
																																																																																																																																																	Let Td493.3452
																																																																																																																																																		FMul h.3094 h.3094
																																																																																																																																																		Let Td494.3453
																																																																																																																																																			Float:0.100000
																																																																																																																																																			FAdd Td493.3452 Td494.3453
																																																																																																																																																	ExtFunApp sqrt Td495.3451,
																																																																																																																																																Let tan_h.3445
																																																																																																																																																	Let Td496.3449
																																																																																																																																																		Float:1.000000
																																																																																																																																																		Let Td497.3450
																																																																																																																																																			FReciprocal l.3444
																																																																																																																																																			FMul Td496.3449 Td497.3450
																																																																																																																																																	Let theta_h.3446
																																																																																																																																																		ExtFunApp atan tan_h.3445,
																																																																																																																																																		Let tan_m.3447
																																																																																																																																																			Let Td498.3448
																																																																																																																																																				FMul theta_h.3446 ratio.3095
																																																																																																																																																				App tan.3091Td498.3448 
																																																																																																																																																			FMul tan_m.3447 l.3444
																																																																																																																																															LetRec calc_dirvec.3096 icount.3097 x.3098 y.3099 rx.3100 ry.3101 group_id.3102 index.3103 
																																																																																																																																																Let Ti448.3388
																																																																																																																																																	Int:5
																																																																																																																																																	IfLE Ti448.3388 icount.3097
																																																																																																																																																		Let l.3393
																																																																																																																																																			Let Td453.3439
																																																																																																																																																				Let Td451.3440
																																																																																																																																																					Let Td449.3442
																																																																																																																																																						App fsqr.2649x.3098 
																																																																																																																																																						Let Td450.3443
																																																																																																																																																							App fsqr.2649y.3099 
																																																																																																																																																							FAdd Td449.3442 Td450.3443
																																																																																																																																																					Let Td452.3441
																																																																																																																																																						Float:1.000000
																																																																																																																																																						FAdd Td451.3440 Td452.3441
																																																																																																																																																				ExtFunApp sqrt Td453.3439,
																																																																																																																																																			Let vx.3394
																																																																																																																																																				Let Td454.3438
																																																																																																																																																					FReciprocal l.3393
																																																																																																																																																					FMul x.3098 Td454.3438
																																																																																																																																																				Let vy.3395
																																																																																																																																																					Let Td455.3437
																																																																																																																																																						FReciprocal l.3393
																																																																																																																																																						FMul y.3099 Td455.3437
																																																																																																																																																					Let vz.3396
																																																																																																																																																						Let Td456.3435
																																																																																																																																																							Float:1.000000
																																																																																																																																																							Let Td457.3436
																																																																																																																																																								FReciprocal l.3393
																																																																																																																																																								FMul Td456.3435 Td457.3436
																																																																																																																																																						Let dgroup.3397
																																																																																																																																																							Let Ta458.3434
																																																																																																																																																								ExtArray 716
																																																																																																																																																								Get Ta458.3434 group_id.3102
																																																																																																																																																							Let Tu218.3398
																																																																																																																																																								Let Ta460.3432
																																																																																																																																																									Let Tt459.3433
																																																																																																																																																										Get dgroup.3397 index.3103
																																																																																																																																																										App d_vec.2776Tt459.3433 
																																																																																																																																																									App vecset.2669Ta460.3432 vx.3394 vy.3395 vz.3396 
																																																																																																																																																								Let Tu217.3399
																																																																																																																																																									Let Ta464.3427
																																																																																																																																																										Let Tt463.3429
																																																																																																																																																											Let Ti462.3430
																																																																																																																																																												Let Ti461.3431
																																																																																																																																																													Int:40
																																																																																																																																																													Add index.3103 Ti461.3431
																																																																																																																																																												Get dgroup.3397 Ti462.3430
																																																																																																																																																											App d_vec.2776Tt463.3429 
																																																																																																																																																										Let Td465.3428
																																																																																																																																																											App fneg.2639vy.3395 
																																																																																																																																																											App vecset.2669Ta464.3427 vx.3394 vz.3396 Td465.3428 
																																																																																																																																																									Let Tu216.3400
																																																																																																																																																										Let Ta469.3421
																																																																																																																																																											Let Tt468.3424
																																																																																																																																																												Let Ti467.3425
																																																																																																																																																													Let Ti466.3426
																																																																																																																																																														Int:80
																																																																																																																																																														Add index.3103 Ti466.3426
																																																																																																																																																													Get dgroup.3397 Ti467.3425
																																																																																																																																																												App d_vec.2776Tt468.3424 
																																																																																																																																																											Let Td470.3422
																																																																																																																																																												App fneg.2639vx.3394 
																																																																																																																																																												Let Td471.3423
																																																																																																																																																													App fneg.2639vy.3395 
																																																																																																																																																													App vecset.2669Ta469.3421 vz.3396 Td470.3422 Td471.3423 
																																																																																																																																																										Let Tu215.3401
																																																																																																																																																											Let Ta475.3414
																																																																																																																																																												Let Tt474.3418
																																																																																																																																																													Let Ti473.3419
																																																																																																																																																														Let Ti472.3420
																																																																																																																																																															Int:1
																																																																																																																																																															Add index.3103 Ti472.3420
																																																																																																																																																														Get dgroup.3397 Ti473.3419
																																																																																																																																																													App d_vec.2776Tt474.3418 
																																																																																																																																																												Let Td476.3415
																																																																																																																																																													App fneg.2639vx.3394 
																																																																																																																																																													Let Td477.3416
																																																																																																																																																														App fneg.2639vy.3395 
																																																																																																																																																														Let Td478.3417
																																																																																																																																																															App fneg.2639vz.3396 
																																																																																																																																																															App vecset.2669Ta475.3414 Td476.3415 Td477.3416 Td478.3417 
																																																																																																																																																											Let Tu214.3402
																																																																																																																																																												Let Ta482.3408
																																																																																																																																																													Let Tt481.3411
																																																																																																																																																														Let Ti480.3412
																																																																																																																																																															Let Ti479.3413
																																																																																																																																																																Int:41
																																																																																																																																																																Add index.3103 Ti479.3413
																																																																																																																																																															Get dgroup.3397 Ti480.3412
																																																																																																																																																														App d_vec.2776Tt481.3411 
																																																																																																																																																													Let Td483.3409
																																																																																																																																																														App fneg.2639vx.3394 
																																																																																																																																																														Let Td484.3410
																																																																																																																																																															App fneg.2639vz.3396 
																																																																																																																																																															App vecset.2669Ta482.3408 Td483.3409 Td484.3410 vy.3395 
																																																																																																																																																												Let Ta488.3403
																																																																																																																																																													Let Tt487.3405
																																																																																																																																																														Let Ti486.3406
																																																																																																																																																															Let Ti485.3407
																																																																																																																																																																Int:81
																																																																																																																																																																Add index.3103 Ti485.3407
																																																																																																																																																															Get dgroup.3397 Ti486.3406
																																																																																																																																																														App d_vec.2776Tt487.3405 
																																																																																																																																																													Let Td489.3404
																																																																																																																																																														App fneg.2639vz.3396 
																																																																																																																																																														App vecset.2669Ta488.3403 Td489.3404 vx.3394 vy.3395 
																																																																																																																																																		Let x2.3389
																																																																																																																																																			App adjust_position.3093y.3099 rx.3100 
																																																																																																																																																			Let Ti491.3390
																																																																																																																																																				Let Ti490.3392
																																																																																																																																																					Int:1
																																																																																																																																																					Add icount.3097 Ti490.3392
																																																																																																																																																				Let Td492.3391
																																																																																																																																																					App adjust_position.3093x2.3389 ry.3101 
																																																																																																																																																					App calc_dirvec.3096Ti491.3390 x2.3389 Td492.3391 rx.3100 ry.3101 group_id.3102 index.3103 
																																																																																																																																																LetRec calc_dirvecs.3104 col.3105 ry.3106 group_id.3107 index.3108 
																																																																																																																																																	Let Ti427.3363
																																																																																																																																																		Int:0
																																																																																																																																																		IfLE Ti427.3363 col.3105
																																																																																																																																																			Let rx.3364
																																																																																																																																																				Let Td430.3384
																																																																																																																																																					Let Td428.3386
																																																																																																																																																						ExtFunApp float_of_int col.3105,
																																																																																																																																																						Let Td429.3387
																																																																																																																																																							Float:0.200000
																																																																																																																																																							FMul Td428.3386 Td429.3387
																																																																																																																																																					Let Td431.3385
																																																																																																																																																						Float:0.900000
																																																																																																																																																						FSub Td430.3384 Td431.3385
																																																																																																																																																				Let Tu220.3365
																																																																																																																																																					Let Ti432.3381
																																																																																																																																																						Int:0
																																																																																																																																																						Let Td433.3382
																																																																																																																																																							Float:0.000000
																																																																																																																																																							Let Td434.3383
																																																																																																																																																								Float:0.000000
																																																																																																																																																								App calc_dirvec.3096Ti432.3381 Td433.3382 Td434.3383 rx.3364 ry.3106 group_id.3107 index.3108 
																																																																																																																																																					Let rx2.3366
																																																																																																																																																						Let Td437.3377
																																																																																																																																																							Let Td435.3379
																																																																																																																																																								ExtFunApp float_of_int col.3105,
																																																																																																																																																								Let Td436.3380
																																																																																																																																																									Float:0.200000
																																																																																																																																																									FMul Td435.3379 Td436.3380
																																																																																																																																																							Let Td438.3378
																																																																																																																																																								Float:0.100000
																																																																																																																																																								FAdd Td437.3377 Td438.3378
																																																																																																																																																						Let Tu219.3367
																																																																																																																																																							Let Ti439.3372
																																																																																																																																																								Int:0
																																																																																																																																																								Let Td440.3373
																																																																																																																																																									Float:0.000000
																																																																																																																																																									Let Td441.3374
																																																																																																																																																										Float:0.000000
																																																																																																																																																										Let Ti443.3375
																																																																																																																																																											Let Ti442.3376
																																																																																																																																																												Int:2
																																																																																																																																																												Add index.3108 Ti442.3376
																																																																																																																																																											App calc_dirvec.3096Ti439.3372 Td440.3373 Td441.3374 rx2.3366 ry.3106 group_id.3107 Ti443.3375 
																																																																																																																																																							Let Ti445.3368
																																																																																																																																																								Let Ti444.3371
																																																																																																																																																									Int:1
																																																																																																																																																									Sub col.3105 Ti444.3371
																																																																																																																																																								Let Ti447.3369
																																																																																																																																																									Let Ti446.3370
																																																																																																																																																										Int:1
																																																																																																																																																										App add_mod5.2666group_id.3107 Ti446.3370 
																																																																																																																																																									App calc_dirvecs.3104Ti445.3368 ry.3106 Ti447.3369 index.3108 
																																																																																																																																																			Unit
																																																																																																																																																	LetRec calc_dirvec_rows.3109 row.3110 group_id.3111 index.3112 
																																																																																																																																																		Let Ti415.3349
																																																																																																																																																			Int:0
																																																																																																																																																			IfLE Ti415.3349 row.3110
																																																																																																																																																				Let ry.3350
																																																																																																																																																					Let Td418.3359
																																																																																																																																																						Let Td416.3361
																																																																																																																																																							ExtFunApp float_of_int row.3110,
																																																																																																																																																							Let Td417.3362
																																																																																																																																																								Float:0.200000
																																																																																																																																																								FMul Td416.3361 Td417.3362
																																																																																																																																																						Let Td419.3360
																																																																																																																																																							Float:0.900000
																																																																																																																																																							FSub Td418.3359 Td419.3360
																																																																																																																																																					Let Tu221.3351
																																																																																																																																																						Let Ti420.3358
																																																																																																																																																							Int:4
																																																																																																																																																							App calc_dirvecs.3104Ti420.3358 ry.3350 group_id.3111 index.3112 
																																																																																																																																																						Let Ti422.3352
																																																																																																																																																							Let Ti421.3357
																																																																																																																																																								Int:1
																																																																																																																																																								Sub row.3110 Ti421.3357
																																																																																																																																																							Let Ti424.3353
																																																																																																																																																								Let Ti423.3356
																																																																																																																																																									Int:2
																																																																																																																																																									App add_mod5.2666group_id.3111 Ti423.3356 
																																																																																																																																																								Let Ti426.3354
																																																																																																																																																									Let Ti425.3355
																																																																																																																																																										Int:4
																																																																																																																																																										Add index.3112 Ti425.3355
																																																																																																																																																									App calc_dirvec_rows.3109Ti422.3352 Ti424.3353 Ti426.3354 
																																																																																																																																																				Unit
																																																																																																																																																		LetRec create_dirvec.3113 Tu222.3114 
																																																																																																																																																			Let v3.3342
																																																																																																																																																				Let Ti410.3347
																																																																																																																																																					Int:3
																																																																																																																																																					Let Td411.3348
																																																																																																																																																						Float:0.000000
																																																																																																																																																						ExtFunApp create_float_array Ti410.3347,Td411.3348,
																																																																																																																																																				Let consts.3343
																																																																																																																																																					Let Ti414.3344
																																																																																																																																																						Let Ta412.3345
																																																																																																																																																							ExtArray 0
																																																																																																																																																							Let Ti413.3346
																																																																																																																																																								Int:0
																																																																																																																																																								Get Ta412.3345 Ti413.3346
																																																																																																																																																						ExtFunApp create_array Ti414.3344,v3.3342,
																																																																																																																																																					Tuple (v3.3342,consts.3343,)
																																																																																																																																																			LetRec create_dirvec_elements.3115 d.3116 index.3117 
																																																																																																																																																				Let Ti405.3336
																																																																																																																																																					Int:0
																																																																																																																																																					IfLE Ti405.3336 index.3117
																																																																																																																																																						Let Tu223.3337
																																																																																																																																																							Let Tt407.3340
																																																																																																																																																								Let Tu406.3341
																																																																																																																																																									Unit
																																																																																																																																																									App create_dirvec.3113Tu406.3341 
																																																																																																																																																								Put d.3116 index.3117 Tt407.3340
																																																																																																																																																							Let Ti409.3338
																																																																																																																																																								Let Ti408.3339
																																																																																																																																																									Int:1
																																																																																																																																																									Sub index.3117 Ti408.3339
																																																																																																																																																								App create_dirvec_elements.3115d.3116 Ti409.3338 
																																																																																																																																																						Unit
																																																																																																																																																				LetRec create_dirvecs.3118 index.3119 
																																																																																																																																																					Let Ti394.3323
																																																																																																																																																						Int:0
																																																																																																																																																						IfLE Ti394.3323 index.3119
																																																																																																																																																							Let Tu225.3324
																																																																																																																																																								Let Ta395.3331
																																																																																																																																																									ExtArray 716
																																																																																																																																																									Let Ta399.3332
																																																																																																																																																										Let Ti396.3333
																																																																																																																																																											Int:120
																																																																																																																																																											Let Tt398.3334
																																																																																																																																																												Let Tu397.3335
																																																																																																																																																													Unit
																																																																																																																																																													App create_dirvec.3113Tu397.3335 
																																																																																																																																																												ExtFunApp create_array Ti396.3333,Tt398.3334,
																																																																																																																																																										Put Ta395.3331 index.3119 Ta399.3332
																																																																																																																																																								Let Tu224.3325
																																																																																																																																																									Let Ta401.3328
																																																																																																																																																										Let Ta400.3330
																																																																																																																																																											ExtArray 716
																																																																																																																																																											Get Ta400.3330 index.3119
																																																																																																																																																										Let Ti402.3329
																																																																																																																																																											Int:118
																																																																																																																																																											App create_dirvec_elements.3115Ta401.3328 Ti402.3329 
																																																																																																																																																									Let Ti404.3326
																																																																																																																																																										Let Ti403.3327
																																																																																																																																																											Int:1
																																																																																																																																																											Sub index.3119 Ti403.3327
																																																																																																																																																										App create_dirvecs.3118Ti404.3326 
																																																																																																																																																							Unit
																																																																																																																																																					LetRec init_dirvec_constants.3120 vecset.3121 index.3122 
																																																																																																																																																						Let Ti390.3318
																																																																																																																																																							Int:0
																																																																																																																																																							IfLE Ti390.3318 index.3122
																																																																																																																																																								Let Tu226.3319
																																																																																																																																																									Let Tt391.3322
																																																																																																																																																										Get vecset.3121 index.3122
																																																																																																																																																										App setup_dirvec_constants.2905Tt391.3322 
																																																																																																																																																									Let Ti393.3320
																																																																																																																																																										Let Ti392.3321
																																																																																																																																																											Int:1
																																																																																																																																																											Sub index.3122 Ti392.3321
																																																																																																																																																										App init_dirvec_constants.3120vecset.3121 Ti393.3320 
																																																																																																																																																								Unit
																																																																																																																																																						LetRec init_vecset_constants.3123 index.3124 
																																																																																																																																																							Let Ti384.3311
																																																																																																																																																								Int:0
																																																																																																																																																								IfLE Ti384.3311 index.3124
																																																																																																																																																									Let Tu227.3312
																																																																																																																																																										Let Ta386.3315
																																																																																																																																																											Let Ta385.3317
																																																																																																																																																												ExtArray 716
																																																																																																																																																												Get Ta385.3317 index.3124
																																																																																																																																																											Let Ti387.3316
																																																																																																																																																												Int:119
																																																																																																																																																												App init_dirvec_constants.3120Ta386.3315 Ti387.3316 
																																																																																																																																																										Let Ti389.3313
																																																																																																																																																											Let Ti388.3314
																																																																																																																																																												Int:1
																																																																																																																																																												Sub index.3124 Ti388.3314
																																																																																																																																																											App init_vecset_constants.3123Ti389.3313 
																																																																																																																																																									Unit
																																																																																																																																																							LetRec init_dirvecs.3125 Tu228.3126 
																																																																																																																																																								Let Tu230.3304
																																																																																																																																																									Let Ti379.3310
																																																																																																																																																										Int:4
																																																																																																																																																										App create_dirvecs.3118Ti379.3310 
																																																																																																																																																									Let Tu229.3305
																																																																																																																																																										Let Ti380.3307
																																																																																																																																																											Int:9
																																																																																																																																																											Let Ti381.3308
																																																																																																																																																												Int:0
																																																																																																																																																												Let Ti382.3309
																																																																																																																																																													Int:0
																																																																																																																																																													App calc_dirvec_rows.3109Ti380.3307 Ti381.3308 Ti382.3309 
																																																																																																																																																										Let Ti383.3306
																																																																																																																																																											Int:4
																																																																																																																																																											App init_vecset_constants.3123Ti383.3306 
																																																																																																																																																								LetRec add_reflection.3127 index.3128 surface_id.3129 bright.3130 v0.3131 v1.3132 v2.3133 
																																																																																																																																																									Let dvec.3297
																																																																																																																																																										Let Tu375.3303
																																																																																																																																																											Unit
																																																																																																																																																											App create_dirvec.3113Tu375.3303 
																																																																																																																																																										Let Tu232.3298
																																																																																																																																																											Let Ta376.3302
																																																																																																																																																												App d_vec.2776dvec.3297 
																																																																																																																																																												App vecset.2669Ta376.3302 v0.3131 v1.3132 v2.3133 
																																																																																																																																																											Let Tu231.3299
																																																																																																																																																												App setup_dirvec_constants.2905dvec.3297 
																																																																																																																																																												Let Ta377.3300
																																																																																																																																																													ExtArray 1016
																																																																																																																																																													Let Tt378.3301
																																																																																																																																																														Tuple (surface_id.3129,dvec.3297,bright.3130,)
																																																																																																																																																														Put Ta377.3300 index.3128 Tt378.3301
																																																																																																																																																									LetRec setup_rect_reflection.3134 obj_id.3135 obj.3136 
																																																																																																																																																										Let sid.3252
																																																																																																																																																											ShiftL2 obj_id.3135
																																																																																																																																																											Let nr.3253
																																																																																																																																																												Let Ta339.3295
																																																																																																																																																													ExtArray 1736
																																																																																																																																																													Let Ti340.3296
																																																																																																																																																														Int:0
																																																																																																																																																														Get Ta339.3295 Ti340.3296
																																																																																																																																																												Let br.3254
																																																																																																																																																													Let Td341.3293
																																																																																																																																																														Float:1.000000
																																																																																																																																																														Let Td342.3294
																																																																																																																																																															App o_diffuse.2739obj.3136 
																																																																																																																																																															FSub Td341.3293 Td342.3294
																																																																																																																																																													Let n0.3255
																																																																																																																																																														Let Td345.3290
																																																																																																																																																															Let Ta343.3291
																																																																																																																																																																ExtArray 312
																																																																																																																																																																Let Ti344.3292
																																																																																																																																																																	Int:0
																																																																																																																																																																	Get Ta343.3291 Ti344.3292
																																																																																																																																																															App fneg.2639Td345.3290 
																																																																																																																																																														Let n1.3256
																																																																																																																																																															Let Td348.3287
																																																																																																																																																																Let Ta346.3288
																																																																																																																																																																	ExtArray 312
																																																																																																																																																																	Let Ti347.3289
																																																																																																																																																																		Int:1
																																																																																																																																																																		Get Ta346.3288 Ti347.3289
																																																																																																																																																																App fneg.2639Td348.3287 
																																																																																																																																																															Let n2.3257
																																																																																																																																																																Let Td351.3284
																																																																																																																																																																	Let Ta349.3285
																																																																																																																																																																		ExtArray 312
																																																																																																																																																																		Let Ti350.3286
																																																																																																																																																																			Int:2
																																																																																																																																																																			Get Ta349.3285 Ti350.3286
																																																																																																																																																																	App fneg.2639Td351.3284 
																																																																																																																																																																Let Tu235.3258
																																																																																																																																																																	Let Ti353.3279
																																																																																																																																																																		Let Ti352.3283
																																																																																																																																																																			Int:1
																																																																																																																																																																			Add sid.3252 Ti352.3283
																																																																																																																																																																		Let Td356.3280
																																																																																																																																																																			Let Ta354.3281
																																																																																																																																																																				ExtArray 312
																																																																																																																																																																				Let Ti355.3282
																																																																																																																																																																					Int:0
																																																																																																																																																																					Get Ta354.3281 Ti355.3282
																																																																																																																																																																			App add_reflection.3127nr.3253 Ti353.3279 br.3254 Td356.3280 n1.3256 n2.3257 
																																																																																																																																																																	Let Tu234.3259
																																																																																																																																																																		Let Ti358.3272
																																																																																																																																																																			Let Ti357.3278
																																																																																																																																																																				Int:1
																																																																																																																																																																				Add nr.3253 Ti357.3278
																																																																																																																																																																			Let Ti360.3273
																																																																																																																																																																				Let Ti359.3277
																																																																																																																																																																					Int:2
																																																																																																																																																																					Add sid.3252 Ti359.3277
																																																																																																																																																																				Let Td363.3274
																																																																																																																																																																					Let Ta361.3275
																																																																																																																																																																						ExtArray 312
																																																																																																																																																																						Let Ti362.3276
																																																																																																																																																																							Int:1
																																																																																																																																																																							Get Ta361.3275 Ti362.3276
																																																																																																																																																																					App add_reflection.3127Ti358.3272 Ti360.3273 br.3254 n0.3255 Td363.3274 n2.3257 
																																																																																																																																																																		Let Tu233.3260
																																																																																																																																																																			Let Ti365.3265
																																																																																																																																																																				Let Ti364.3271
																																																																																																																																																																					Int:2
																																																																																																																																																																					Add nr.3253 Ti364.3271
																																																																																																																																																																				Let Ti367.3266
																																																																																																																																																																					Let Ti366.3270
																																																																																																																																																																						Int:3
																																																																																																																																																																						Add sid.3252 Ti366.3270
																																																																																																																																																																					Let Td370.3267
																																																																																																																																																																						Let Ta368.3268
																																																																																																																																																																							ExtArray 312
																																																																																																																																																																							Let Ti369.3269
																																																																																																																																																																								Int:2
																																																																																																																																																																								Get Ta368.3268 Ti369.3269
																																																																																																																																																																						App add_reflection.3127Ti365.3265 Ti367.3266 br.3254 n0.3255 n1.3256 Td370.3267 
																																																																																																																																																																			Let Ta371.3261
																																																																																																																																																																				ExtArray 1736
																																																																																																																																																																				Let Ti372.3262
																																																																																																																																																																					Int:0
																																																																																																																																																																					Let Ti374.3263
																																																																																																																																																																						Let Ti373.3264
																																																																																																																																																																							Int:3
																																																																																																																																																																							Add nr.3253 Ti373.3264
																																																																																																																																																																						Put Ta371.3261 Ti372.3262 Ti374.3263
																																																																																																																																																										LetRec setup_surface_reflection.3137 obj_id.3138 obj.3139 
																																																																																																																																																											Let sid.3211
																																																																																																																																																												Let Ti303.3250
																																																																																																																																																													ShiftL2 obj_id.3138
																																																																																																																																																													Let Ti304.3251
																																																																																																																																																														Int:1
																																																																																																																																																														Add Ti303.3250 Ti304.3251
																																																																																																																																																												Let nr.3212
																																																																																																																																																													Let Ta305.3248
																																																																																																																																																														ExtArray 1736
																																																																																																																																																														Let Ti306.3249
																																																																																																																																																															Int:0
																																																																																																																																																															Get Ta305.3248 Ti306.3249
																																																																																																																																																													Let br.3213
																																																																																																																																																														Let Td307.3246
																																																																																																																																																															Float:1.000000
																																																																																																																																																															Let Td308.3247
																																																																																																																																																																App o_diffuse.2739obj.3139 
																																																																																																																																																																FSub Td307.3246 Td308.3247
																																																																																																																																																														Let p.3214
																																																																																																																																																															Let Ta309.3244
																																																																																																																																																																ExtArray 312
																																																																																																																																																																Let Ta310.3245
																																																																																																																																																																	App o_param_abc.2731obj.3139 
																																																																																																																																																																	App veciprod.2690Ta309.3244 Ta310.3245 
																																																																																																																																																															Let Tu236.3215
																																																																																																																																																																Let Td318.3220
																																																																																																																																																																	Let Td314.3237
																																																																																																																																																																		Let Td313.3241
																																																																																																																																																																			Let Td311.3242
																																																																																																																																																																				Float:2.000000
																																																																																																																																																																				Let Td312.3243
																																																																																																																																																																					App o_param_a.2725obj.3139 
																																																																																																																																																																					FMul Td311.3242 Td312.3243
																																																																																																																																																																			FMul Td313.3241 p.3214
																																																																																																																																																																		Let Td317.3238
																																																																																																																																																																			Let Ta315.3239
																																																																																																																																																																				ExtArray 312
																																																																																																																																																																				Let Ti316.3240
																																																																																																																																																																					Int:0
																																																																																																																																																																					Get Ta315.3239 Ti316.3240
																																																																																																																																																																			FSub Td314.3237 Td317.3238
																																																																																																																																																																	Let Td326.3221
																																																																																																																																																																		Let Td322.3230
																																																																																																																																																																			Let Td321.3234
																																																																																																																																																																				Let Td319.3235
																																																																																																																																																																					Float:2.000000
																																																																																																																																																																					Let Td320.3236
																																																																																																																																																																						App o_param_b.2727obj.3139 
																																																																																																																																																																						FMul Td319.3235 Td320.3236
																																																																																																																																																																				FMul Td321.3234 p.3214
																																																																																																																																																																			Let Td325.3231
																																																																																																																																																																				Let Ta323.3232
																																																																																																																																																																					ExtArray 312
																																																																																																																																																																					Let Ti324.3233
																																																																																																																																																																						Int:1
																																																																																																																																																																						Get Ta323.3232 Ti324.3233
																																																																																																																																																																				FSub Td322.3230 Td325.3231
																																																																																																																																																																		Let Td334.3222
																																																																																																																																																																			Let Td330.3223
																																																																																																																																																																				Let Td329.3227
																																																																																																																																																																					Let Td327.3228
																																																																																																																																																																						Float:2.000000
																																																																																																																																																																						Let Td328.3229
																																																																																																																																																																							App o_param_c.2729obj.3139 
																																																																																																																																																																							FMul Td327.3228 Td328.3229
																																																																																																																																																																					FMul Td329.3227 p.3214
																																																																																																																																																																				Let Td333.3224
																																																																																																																																																																					Let Ta331.3225
																																																																																																																																																																						ExtArray 312
																																																																																																																																																																						Let Ti332.3226
																																																																																																																																																																							Int:2
																																																																																																																																																																							Get Ta331.3225 Ti332.3226
																																																																																																																																																																					FSub Td330.3223 Td333.3224
																																																																																																																																																																			App add_reflection.3127nr.3212 sid.3211 br.3213 Td318.3220 Td326.3221 Td334.3222 
																																																																																																																																																																Let Ta335.3216
																																																																																																																																																																	ExtArray 1736
																																																																																																																																																																	Let Ti336.3217
																																																																																																																																																																		Int:0
																																																																																																																																																																		Let Ti338.3218
																																																																																																																																																																			Let Ti337.3219
																																																																																																																																																																				Int:1
																																																																																																																																																																				Add nr.3212 Ti337.3219
																																																																																																																																																																			Put Ta335.3216 Ti336.3217 Ti338.3218
																																																																																																																																																											LetRec setup_reflections.3140 obj_id.3141 
																																																																																																																																																												Let Ti293.3199
																																																																																																																																																													Int:0
																																																																																																																																																													IfLE Ti293.3199 obj_id.3141
																																																																																																																																																														Let obj.3200
																																																																																																																																																															Let Ta294.3210
																																																																																																																																																																ExtArray 48
																																																																																																																																																																Get Ta294.3210 obj_id.3141
																																																																																																																																																															Let Ti295.3201
																																																																																																																																																																App o_reflectiontype.2719obj.3200 
																																																																																																																																																																Let Ti296.3202
																																																																																																																																																																	Int:2
																																																																																																																																																																	IfEq Ti295.3201 Ti296.3202
																																																																																																																																																																		Let Tb299.3203
																																																																																																																																																																			Let Td297.3208
																																																																																																																																																																				App o_diffuse.2739obj.3200 
																																																																																																																																																																				Let Td298.3209
																																																																																																																																																																					Float:1.000000
																																																																																																																																																																					App fless.2653Td297.3208 Td298.3209 
																																																																																																																																																																			Let Ti300.3204
																																																																																																																																																																				Int:0
																																																																																																																																																																				IfEq Tb299.3203 Ti300.3204
																																																																																																																																																																					Unit
																																																																																																																																																																					Let m_shape.3205
																																																																																																																																																																						App o_form.2717obj.3200 
																																																																																																																																																																						Let Ti301.3206
																																																																																																																																																																							Int:1
																																																																																																																																																																							IfEq m_shape.3205 Ti301.3206
																																																																																																																																																																								App setup_rect_reflection.3134obj_id.3141 obj.3200 
																																																																																																																																																																								Let Ti302.3207
																																																																																																																																																																									Int:2
																																																																																																																																																																									IfEq m_shape.3205 Ti302.3207
																																																																																																																																																																										App setup_surface_reflection.3137obj_id.3141 obj.3200 
																																																																																																																																																																										Unit
																																																																																																																																																																		Unit
																																																																																																																																																														Unit
																																																																																																																																																												LetRec rt.3142 size_x.3143 size_y.3144 
																																																																																																																																																													Let Tu248.3149
																																																																																																																																																														Let Ta258.3197
																																																																																																																																																															ExtArray 616
																																																																																																																																																															Let Ti259.3198
																																																																																																																																																																Int:0
																																																																																																																																																																Put Ta258.3197 Ti259.3198 size_x.3143
																																																																																																																																																														Let Tu247.3150
																																																																																																																																																															Let Ta260.3195
																																																																																																																																																																ExtArray 616
																																																																																																																																																																Let Ti261.3196
																																																																																																																																																																	Int:1
																																																																																																																																																																	Put Ta260.3195 Ti261.3196 size_y.3144
																																																																																																																																																															Let Tu246.3151
																																																																																																																																																																Let Ta262.3192
																																																																																																																																																																	ExtArray 624
																																																																																																																																																																	Let Ti263.3193
																																																																																																																																																																		Int:0
																																																																																																																																																																		Let Ti264.3194
																																																																																																																																																																			ShiftR1 size_x.3143
																																																																																																																																																																			Put Ta262.3192 Ti263.3193 Ti264.3194
																																																																																																																																																																Let Tu245.3152
																																																																																																																																																																	Let Ta265.3189
																																																																																																																																																																		ExtArray 624
																																																																																																																																																																		Let Ti266.3190
																																																																																																																																																																			Int:1
																																																																																																																																																																			Let Ti267.3191
																																																																																																																																																																				ShiftR1 size_y.3144
																																																																																																																																																																				Put Ta265.3189 Ti266.3190 Ti267.3191
																																																																																																																																																																	Let Tu244.3153
																																																																																																																																																																		Let Ta268.3183
																																																																																																																																																																			ExtArray 632
																																																																																																																																																																			Let Ti269.3184
																																																																																																																																																																				Int:0
																																																																																																																																																																				Let Td273.3185
																																																																																																																																																																					Let Td270.3186
																																																																																																																																																																						Float:128.000000
																																																																																																																																																																						Let Td271.3187
																																																																																																																																																																							ExtFunApp float_of_int size_x.3143,
																																																																																																																																																																							Let Td272.3188
																																																																																																																																																																								FReciprocal Td271.3187
																																																																																																																																																																								FMul Td270.3186 Td272.3188
																																																																																																																																																																					Put Ta268.3183 Ti269.3184 Td273.3185
																																																																																																																																																																		Let prev.3154
																																																																																																																																																																			Let Tu274.3182
																																																																																																																																																																				Unit
																																																																																																																																																																				App create_pixelline.3089Tu274.3182 
																																																																																																																																																																			Let cur.3155
																																																																																																																																																																				Let Tu275.3181
																																																																																																																																																																					Unit
																																																																																																																																																																					App create_pixelline.3089Tu275.3181 
																																																																																																																																																																				Let next.3156
																																																																																																																																																																					Let Tu276.3180
																																																																																																																																																																						Unit
																																																																																																																																																																						App create_pixelline.3089Tu276.3180 
																																																																																																																																																																					Let Tu243.3157
																																																																																																																																																																						Let Tu277.3179
																																																																																																																																																																							Unit
																																																																																																																																																																							App read_parameter.2807Tu277.3179 
																																																																																																																																																																						Let Tu242.3158
																																																																																																																																																																							Let Tu278.3178
																																																																																																																																																																								Unit
																																																																																																																																																																								App write_ppm_header.3050Tu278.3178 
																																																																																																																																																																							Let Tu241.3159
																																																																																																																																																																								Let Tu279.3177
																																																																																																																																																																									Unit
																																																																																																																																																																									App init_dirvecs.3125Tu279.3177 
																																																																																																																																																																								Let Tu240.3160
																																																																																																																																																																									Let Ta281.3174
																																																																																																																																																																										Let Tt280.3176
																																																																																																																																																																											ExtTuple 988
																																																																																																																																																																											App d_vec.2776Tt280.3176 
																																																																																																																																																																										Let Ta282.3175
																																																																																																																																																																											ExtArray 312
																																																																																																																																																																											App veccpy.2679Ta281.3174 Ta282.3175 
																																																																																																																																																																									Let Tu239.3161
																																																																																																																																																																										Let Tt283.3173
																																																																																																																																																																											ExtTuple 988
																																																																																																																																																																											App setup_dirvec_constants.2905Tt283.3173 
																																																																																																																																																																										Let Tu238.3162
																																																																																																																																																																											Let Ti288.3168
																																																																																																																																																																												Let Ti286.3169
																																																																																																																																																																													Let Ta284.3171
																																																																																																																																																																														ExtArray 0
																																																																																																																																																																														Let Ti285.3172
																																																																																																																																																																															Int:0
																																																																																																																																																																															Get Ta284.3171 Ti285.3172
																																																																																																																																																																													Let Ti287.3170
																																																																																																																																																																														Int:1
																																																																																																																																																																														Sub Ti286.3169 Ti287.3170
																																																																																																																																																																												App setup_reflections.3140Ti288.3168 
																																																																																																																																																																											Let Tu237.3163
																																																																																																																																																																												Let Ti289.3166
																																																																																																																																																																													Int:0
																																																																																																																																																																													Let Ti290.3167
																																																																																																																																																																														Int:0
																																																																																																																																																																														App pretrace_line.3066cur.3155 Ti289.3166 Ti290.3167 
																																																																																																																																																																												Let Ti291.3164
																																																																																																																																																																													Int:0
																																																																																																																																																																													Let Ti292.3165
																																																																																																																																																																														Int:2
																																																																																																																																																																														App scan_line.3076Ti291.3164 prev.3154 cur.3155 next.3156 Ti292.3165 
																																																																																																																																																													Let Tu249.3145
																																																																																																																																																														Let Ti255.3147
																																																																																																																																																															Int:128
																																																																																																																																																															Let Ti256.3148
																																																																																																																																																																Int:128
																																																																																																																																																																App rt.3142Ti255.3147 Ti256.3148 
																																																																																																																																																														Let Ti257.3146
																																																																																																																																																															Int:0
																																																																																																																																																															ExtFunApp print_float Ti257.3146,
