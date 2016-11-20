Let n_objects
	Let Ti241
		Int:1
		Let Ti242
			Int:0
			ExtFunApp create_array Ti241,Ti242,
	Let objects
		Let dummy
			Let Ti243
				Int:0
				Let Td244
					Float:0.000000
					ExtFunApp create_float_array Ti243,Td244,
			Let Ti245
				Int:60
				Let Tt251
					Let Ti246
						Int:0
						Let Ti247
							Int:0
							Let Ti248
								Int:0
								Let Ti249
									Int:0
									Let Ti250
										Int:0
										Tuple (Ti246,Ti247,Ti248,Ti249,dummy,dummy,Ti250,dummy,dummy,dummy,dummy,)
					ExtFunApp create_array Ti245,Tt251,
		Let screen
			Let Ti252
				Int:3
				Let Td253
					Float:0.000000
					ExtFunApp create_float_array Ti252,Td253,
			Let viewpoint
				Let Ti254
					Int:3
					Let Td255
						Float:0.000000
						ExtFunApp create_float_array Ti254,Td255,
				Let light
					Let Ti256
						Int:3
						Let Td257
							Float:0.000000
							ExtFunApp create_float_array Ti256,Td257,
					Let beam
						Let Ti258
							Int:1
							Let Td259
								Float:255.000000
								ExtFunApp create_float_array Ti258,Td259,
						Let and_net
							Let Ti260
								Int:50
								Let Ta264
									Let Ti261
										Int:1
										Let Ti263
											Let Ti262
												Int:1
												Neg Ti262
											ExtFunApp create_array Ti261,Ti263,
									ExtFunApp create_array Ti260,Ta264,
							Let or_net
								Let Ti265
									Int:1
									Let Ta269
										Let Ti266
											Int:1
											Let Ta268
												Let Ti267
													Int:0
													Get and_net Ti267
												ExtFunApp create_array Ti266,Ta268,
										ExtFunApp create_array Ti265,Ta269,
								Let solver_dist
									Let Ti270
										Int:1
										Let Td271
											Float:0.000000
											ExtFunApp create_float_array Ti270,Td271,
									Let intsec_rectside
										Let Ti272
											Int:1
											Let Ti273
												Int:0
												ExtFunApp create_array Ti272,Ti273,
										Let tmin
											Let Ti274
												Int:1
												Let Td275
													Float:1000000000.000000
													ExtFunApp create_float_array Ti274,Td275,
											Let intersection_point
												Let Ti276
													Int:3
													Let Td277
														Float:0.000000
														ExtFunApp create_float_array Ti276,Td277,
												Let intersected_object_id
													Let Ti278
														Int:1
														Let Ti279
															Int:0
															ExtFunApp create_array Ti278,Ti279,
													Let nvector
														Let Ti280
															Int:3
															Let Td281
																Float:0.000000
																ExtFunApp create_float_array Ti280,Td281,
														Let texture_color
															Let Ti282
																Int:3
																Let Td283
																	Float:0.000000
																	ExtFunApp create_float_array Ti282,Td283,
															Let diffuse_ray
																Let Ti284
																	Int:3
																	Let Td285
																		Float:0.000000
																		ExtFunApp create_float_array Ti284,Td285,
																Let rgb
																	Let Ti286
																		Int:3
																		Let Td287
																			Float:0.000000
																			ExtFunApp create_float_array Ti286,Td287,
																	Let image_size
																		Let Ti288
																			Int:2
																			Let Ti289
																				Int:0
																				ExtFunApp create_array Ti288,Ti289,
																		Let image_center
																			Let Ti290
																				Int:2
																				Let Ti291
																					Int:0
																					ExtFunApp create_array Ti290,Ti291,
																			Let scan_pitch
																				Let Ti292
																					Int:1
																					Let Td293
																						Float:0.000000
																						ExtFunApp create_float_array Ti292,Td293,
																				Let startp
																					Let Ti294
																						Int:3
																						Let Td295
																							Float:0.000000
																							ExtFunApp create_float_array Ti294,Td295,
																					Let startp_fast
																						Let Ti296
																							Int:3
																							Let Td297
																								Float:0.000000
																								ExtFunApp create_float_array Ti296,Td297,
																						Let screenx_dir
																							Let Ti298
																								Int:3
																								Let Td299
																									Float:0.000000
																									ExtFunApp create_float_array Ti298,Td299,
																							Let screeny_dir
																								Let Ti300
																									Int:3
																									Let Td301
																										Float:0.000000
																										ExtFunApp create_float_array Ti300,Td301,
																								Let screenz_dir
																									Let Ti302
																										Int:3
																										Let Td303
																											Float:0.000000
																											ExtFunApp create_float_array Ti302,Td303,
																									Let ptrace_dirvec
																										Let Ti304
																											Int:3
																											Let Td305
																												Float:0.000000
																												ExtFunApp create_float_array Ti304,Td305,
																										Let dirvecs
																											Let dummyf
																												Let Ti306
																													Int:0
																													Let Td307
																														Float:0.000000
																														ExtFunApp create_float_array Ti306,Td307,
																												Let dummyff
																													Let Ti308
																														Int:0
																														ExtFunApp create_array Ti308,dummyf,
																													Let dummy_vs
																														Let Ti309
																															Int:0
																															Let Tt310
																																Tuple (dummyf,dummyff,)
																																ExtFunApp create_array Ti309,Tt310,
																														Let Ti311
																															Int:5
																															ExtFunApp create_array Ti311,dummy_vs,
																											Let light_dirvec
																												Let dummyf2
																													Let Ti312
																														Int:0
																														Let Td313
																															Float:0.000000
																															ExtFunApp create_float_array Ti312,Td313,
																													Let v3
																														Let Ti314
																															Int:3
																															Let Td315
																																Float:0.000000
																																ExtFunApp create_float_array Ti314,Td315,
																														Let consts
																															Let Ti316
																																Int:60
																																ExtFunApp create_array Ti316,dummyf2,
																															Tuple (v3,consts,)
																												Let reflections
																													Let dummyf3
																														Let Ti317
																															Int:0
																															Let Td318
																																Float:0.000000
																																ExtFunApp create_float_array Ti317,Td318,
																														Let dummyff3
																															Let Ti319
																																Int:0
																																ExtFunApp create_array Ti319,dummyf3,
																															Let dummydv
																																Tuple (dummyf3,dummyff3,)
																																Let Ti320
																																	Int:180
																																	Let Tt323
																																		Let Ti321
																																			Int:0
																																			Let Td322
																																				Float:0.000000
																																				Tuple (Ti321,dummydv,Td322,)
																																		ExtFunApp create_array Ti320,Tt323,
																													Let n_reflections
																														Let Ti324
																															Int:1
																															Let Ti325
																																Int:0
																																ExtFunApp create_array Ti324,Ti325,
																														LetRec fneg x 
																															FNeg x
																															LetRec fispos x 
																																Let Td2442
																																	Float:0.000000
																																	IfLE x Td2442
																																		Int:0
																																		Int:1
																																LetRec fisneg x 
																																	Let Td2441
																																		Float:0.000000
																																		IfLE Td2441 x
																																			Int:0
																																			Int:1
																																	LetRec fiszero x 
																																		Let Td2440
																																			Float:0.000000
																																			IfEq x Td2440
																																				Int:1
																																				Int:0
																																		LetRec fhalf x 
																																			Let Td2439
																																				Float:0.500000
																																				FMul x Td2439
																																			LetRec fsqr x 
																																				FMul x x
																																				LetRec fabs x 
																																					Let Td2438
																																						Float:0.000000
																																						IfLE x Td2438
																																							App fnegx 
																																							Var x
																																					LetRec fless x y 
																																						Let z
																																							FSub x y
																																							App fisnegz 
																																						LetRec xor x y 
																																							Let Ti2436
																																								Int:0
																																								IfEq x Ti2436
																																									Var y
																																									Let Ti2437
																																										Int:0
																																										IfEq y Ti2437
																																											Int:1
																																											Int:0
																																							LetRec sgn x 
																																								Let Tb2432
																																									App fiszerox 
																																									Let Ti2433
																																										Int:0
																																										IfEq Tb2432 Ti2433
																																											Let Tb2434
																																												App fisposx 
																																												Let Ti2435
																																													Int:0
																																													IfEq Tb2434 Ti2435
																																														Float:-1.000000
																																														Float:1.000000
																																											Float:0.000000
																																								LetRec fneg_cond cond x 
																																									Let Ti2431
																																										Int:0
																																										IfEq cond Ti2431
																																											App fnegx 
																																											Var x
																																									LetRec add_mod5 x y 
																																										Let sum
																																											Add x y
																																											Let Ti2429
																																												Int:5
																																												IfLE Ti2429 sum
																																													Let Ti2430
																																														Int:5
																																														Sub sum Ti2430
																																													Var sum
																																										LetRec vecset v x y z 
																																											Let Tu2
																																												Let Ti2426
																																													Int:0
																																													Put v Ti2426 x
																																												Let Tu1
																																													Let Ti2427
																																														Int:1
																																														Put v Ti2427 y
																																													Let Ti2428
																																														Int:2
																																														Put v Ti2428 z
																																											LetRec vecfill v elem 
																																												Let Tu4
																																													Let Ti2423
																																														Int:0
																																														Put v Ti2423 elem
																																													Let Tu3
																																														Let Ti2424
																																															Int:1
																																															Put v Ti2424 elem
																																														Let Ti2425
																																															Int:2
																																															Put v Ti2425 elem
																																												LetRec vecbzero v 
																																													Let Td2422
																																														Float:0.000000
																																														App vecfillv Td2422 
																																													LetRec veccpy dest src 
																																														Let Tu6
																																															Let Ti2413
																																																Int:0
																																																Let Td2415
																																																	Let Ti2414
																																																		Int:0
																																																		Get src Ti2414
																																																	Put dest Ti2413 Td2415
																																															Let Tu5
																																																Let Ti2416
																																																	Int:1
																																																	Let Td2418
																																																		Let Ti2417
																																																			Int:1
																																																			Get src Ti2417
																																																		Put dest Ti2416 Td2418
																																																Let Ti2419
																																																	Int:2
																																																	Let Td2421
																																																		Let Ti2420
																																																			Int:2
																																																			Get src Ti2420
																																																		Put dest Ti2419 Td2421
																																														LetRec vecdist2 p q 
																																															Let Td2406
																																																Let Td2399
																																																	Let Td2398
																																																		Let Td2395
																																																			Let Ti2394
																																																				Int:0
																																																				Get p Ti2394
																																																			Let Td2397
																																																				Let Ti2396
																																																					Int:0
																																																					Get q Ti2396
																																																				FSub Td2395 Td2397
																																																		App fsqrTd2398 
																																																	Let Td2405
																																																		Let Td2404
																																																			Let Td2401
																																																				Let Ti2400
																																																					Int:1
																																																					Get p Ti2400
																																																				Let Td2403
																																																					Let Ti2402
																																																						Int:1
																																																						Get q Ti2402
																																																					FSub Td2401 Td2403
																																																			App fsqrTd2404 
																																																		FAdd Td2399 Td2405
																																																Let Td2412
																																																	Let Td2411
																																																		Let Td2408
																																																			Let Ti2407
																																																				Int:2
																																																				Get p Ti2407
																																																			Let Td2410
																																																				Let Ti2409
																																																					Int:2
																																																					Get q Ti2409
																																																				FSub Td2408 Td2410
																																																		App fsqrTd2411 
																																																	FAdd Td2406 Td2412
																																															LetRec vecunit v 
																																																Let il
																																																	Let Td2368
																																																		Float:1.000000
																																																		Let Td2380
																																																			Let Td2379
																																																				Let Td2375
																																																					Let Td2371
																																																						Let Td2370
																																																							Let Ti2369
																																																								Int:0
																																																								Get v Ti2369
																																																							App fsqrTd2370 
																																																						Let Td2374
																																																							Let Td2373
																																																								Let Ti2372
																																																									Int:1
																																																									Get v Ti2372
																																																								App fsqrTd2373 
																																																							FAdd Td2371 Td2374
																																																					Let Td2378
																																																						Let Td2377
																																																							Let Ti2376
																																																								Int:2
																																																								Get v Ti2376
																																																							App fsqrTd2377 
																																																						FAdd Td2375 Td2378
																																																				ExtFunApp sqrt Td2379,
																																																			Let Td2381
																																																				FReciprocal Td2380
																																																				FMul Td2368 Td2381
																																																	Let Tu8
																																																		Let Ti2382
																																																			Int:0
																																																			Let Td2385
																																																				Let Td2384
																																																					Let Ti2383
																																																						Int:0
																																																						Get v Ti2383
																																																					FMul Td2384 il
																																																				Put v Ti2382 Td2385
																																																		Let Tu7
																																																			Let Ti2386
																																																				Int:1
																																																				Let Td2389
																																																					Let Td2388
																																																						Let Ti2387
																																																							Int:1
																																																							Get v Ti2387
																																																						FMul Td2388 il
																																																					Put v Ti2386 Td2389
																																																			Let Ti2390
																																																				Int:2
																																																				Let Td2393
																																																					Let Td2392
																																																						Let Ti2391
																																																							Int:2
																																																							Get v Ti2391
																																																						FMul Td2392 il
																																																					Put v Ti2390 Td2393
																																																LetRec vecunit_sgn v inv 
																																																	Let l
																																																		Let Td2348
																																																			Let Td2344
																																																				Let Td2340
																																																					Let Td2339
																																																						Let Ti2338
																																																							Int:0
																																																							Get v Ti2338
																																																						App fsqrTd2339 
																																																					Let Td2343
																																																						Let Td2342
																																																							Let Ti2341
																																																								Int:1
																																																								Get v Ti2341
																																																							App fsqrTd2342 
																																																						FAdd Td2340 Td2343
																																																				Let Td2347
																																																					Let Td2346
																																																						Let Ti2345
																																																							Int:2
																																																							Get v Ti2345
																																																						App fsqrTd2346 
																																																					FAdd Td2344 Td2347
																																																			ExtFunApp sqrt Td2348,
																																																		Let il
																																																			Let Tb2349
																																																				App fiszerol 
																																																				Let Ti2350
																																																					Int:0
																																																					IfEq Tb2349 Ti2350
																																																						Let Ti2351
																																																							Int:0
																																																							IfEq inv Ti2351
																																																								Let Td2352
																																																									Float:1.000000
																																																									Let Td2353
																																																										FReciprocal l
																																																										FMul Td2352 Td2353
																																																								Let Td2354
																																																									Float:-1.000000
																																																									Let Td2355
																																																										FReciprocal l
																																																										FMul Td2354 Td2355
																																																						Float:1.000000
																																																			Let Tu10
																																																				Let Ti2356
																																																					Int:0
																																																					Let Td2359
																																																						Let Td2358
																																																							Let Ti2357
																																																								Int:0
																																																								Get v Ti2357
																																																							FMul Td2358 il
																																																						Put v Ti2356 Td2359
																																																				Let Tu9
																																																					Let Ti2360
																																																						Int:1
																																																						Let Td2363
																																																							Let Td2362
																																																								Let Ti2361
																																																									Int:1
																																																									Get v Ti2361
																																																								FMul Td2362 il
																																																							Put v Ti2360 Td2363
																																																					Let Ti2364
																																																						Int:2
																																																						Let Td2367
																																																							Let Td2366
																																																								Let Ti2365
																																																									Int:2
																																																									Get v Ti2365
																																																								FMul Td2366 il
																																																							Put v Ti2364 Td2367
																																																	LetRec veciprod v w 
																																																		Let Td2332
																																																			Let Td2326
																																																				Let Td2323
																																																					Let Ti2322
																																																						Int:0
																																																						Get v Ti2322
																																																					Let Td2325
																																																						Let Ti2324
																																																							Int:0
																																																							Get w Ti2324
																																																						FMul Td2323 Td2325
																																																				Let Td2331
																																																					Let Td2328
																																																						Let Ti2327
																																																							Int:1
																																																							Get v Ti2327
																																																						Let Td2330
																																																							Let Ti2329
																																																								Int:1
																																																								Get w Ti2329
																																																							FMul Td2328 Td2330
																																																					FAdd Td2326 Td2331
																																																			Let Td2337
																																																				Let Td2334
																																																					Let Ti2333
																																																						Int:2
																																																						Get v Ti2333
																																																					Let Td2336
																																																						Let Ti2335
																																																							Int:2
																																																							Get w Ti2335
																																																						FMul Td2334 Td2336
																																																				FAdd Td2332 Td2337
																																																		LetRec veciprod2 v w0 w1 w2 
																																																			Let Td2318
																																																				Let Td2314
																																																					Let Td2313
																																																						Let Ti2312
																																																							Int:0
																																																							Get v Ti2312
																																																						FMul Td2313 w0
																																																					Let Td2317
																																																						Let Td2316
																																																							Let Ti2315
																																																								Int:1
																																																								Get v Ti2315
																																																							FMul Td2316 w1
																																																						FAdd Td2314 Td2317
																																																				Let Td2321
																																																					Let Td2320
																																																						Let Ti2319
																																																							Int:2
																																																							Get v Ti2319
																																																						FMul Td2320 w2
																																																					FAdd Td2318 Td2321
																																																			LetRec vecaccum dest scale v 
																																																				Let Tu12
																																																					Let Ti2291
																																																						Int:0
																																																						Let Td2297
																																																							Let Td2293
																																																								Let Ti2292
																																																									Int:0
																																																									Get dest Ti2292
																																																								Let Td2296
																																																									Let Td2295
																																																										Let Ti2294
																																																											Int:0
																																																											Get v Ti2294
																																																										FMul scale Td2295
																																																									FAdd Td2293 Td2296
																																																							Put dest Ti2291 Td2297
																																																					Let Tu11
																																																						Let Ti2298
																																																							Int:1
																																																							Let Td2304
																																																								Let Td2300
																																																									Let Ti2299
																																																										Int:1
																																																										Get dest Ti2299
																																																									Let Td2303
																																																										Let Td2302
																																																											Let Ti2301
																																																												Int:1
																																																												Get v Ti2301
																																																											FMul scale Td2302
																																																										FAdd Td2300 Td2303
																																																								Put dest Ti2298 Td2304
																																																						Let Ti2305
																																																							Int:2
																																																							Let Td2311
																																																								Let Td2307
																																																									Let Ti2306
																																																										Int:2
																																																										Get dest Ti2306
																																																									Let Td2310
																																																										Let Td2309
																																																											Let Ti2308
																																																												Int:2
																																																												Get v Ti2308
																																																											FMul scale Td2309
																																																										FAdd Td2307 Td2310
																																																								Put dest Ti2305 Td2311
																																																				LetRec vecadd dest v 
																																																					Let Tu14
																																																						Let Ti2273
																																																							Int:0
																																																							Let Td2278
																																																								Let Td2275
																																																									Let Ti2274
																																																										Int:0
																																																										Get dest Ti2274
																																																									Let Td2277
																																																										Let Ti2276
																																																											Int:0
																																																											Get v Ti2276
																																																										FAdd Td2275 Td2277
																																																								Put dest Ti2273 Td2278
																																																						Let Tu13
																																																							Let Ti2279
																																																								Int:1
																																																								Let Td2284
																																																									Let Td2281
																																																										Let Ti2280
																																																											Int:1
																																																											Get dest Ti2280
																																																										Let Td2283
																																																											Let Ti2282
																																																												Int:1
																																																												Get v Ti2282
																																																											FAdd Td2281 Td2283
																																																									Put dest Ti2279 Td2284
																																																							Let Ti2285
																																																								Int:2
																																																								Let Td2290
																																																									Let Td2287
																																																										Let Ti2286
																																																											Int:2
																																																											Get dest Ti2286
																																																										Let Td2289
																																																											Let Ti2288
																																																												Int:2
																																																												Get v Ti2288
																																																											FAdd Td2287 Td2289
																																																									Put dest Ti2285 Td2290
																																																					LetRec vecmul dest v 
																																																						Let Tu16
																																																							Let Ti2255
																																																								Int:0
																																																								Let Td2260
																																																									Let Td2257
																																																										Let Ti2256
																																																											Int:0
																																																											Get dest Ti2256
																																																										Let Td2259
																																																											Let Ti2258
																																																												Int:0
																																																												Get v Ti2258
																																																											FMul Td2257 Td2259
																																																									Put dest Ti2255 Td2260
																																																							Let Tu15
																																																								Let Ti2261
																																																									Int:1
																																																									Let Td2266
																																																										Let Td2263
																																																											Let Ti2262
																																																												Int:1
																																																												Get dest Ti2262
																																																											Let Td2265
																																																												Let Ti2264
																																																													Int:1
																																																													Get v Ti2264
																																																												FMul Td2263 Td2265
																																																										Put dest Ti2261 Td2266
																																																								Let Ti2267
																																																									Int:2
																																																									Let Td2272
																																																										Let Td2269
																																																											Let Ti2268
																																																												Int:2
																																																												Get dest Ti2268
																																																											Let Td2271
																																																												Let Ti2270
																																																													Int:2
																																																													Get v Ti2270
																																																												FMul Td2269 Td2271
																																																										Put dest Ti2267 Td2272
																																																						LetRec vecscale dest scale 
																																																							Let Tu18
																																																								Let Ti2243
																																																									Int:0
																																																									Let Td2246
																																																										Let Td2245
																																																											Let Ti2244
																																																												Int:0
																																																												Get dest Ti2244
																																																											FMul Td2245 scale
																																																										Put dest Ti2243 Td2246
																																																								Let Tu17
																																																									Let Ti2247
																																																										Int:1
																																																										Let Td2250
																																																											Let Td2249
																																																												Let Ti2248
																																																													Int:1
																																																													Get dest Ti2248
																																																												FMul Td2249 scale
																																																											Put dest Ti2247 Td2250
																																																									Let Ti2251
																																																										Int:2
																																																										Let Td2254
																																																											Let Td2253
																																																												Let Ti2252
																																																													Int:2
																																																													Get dest Ti2252
																																																												FMul Td2253 scale
																																																											Put dest Ti2251 Td2254
																																																							LetRec vecaccumv dest v w 
																																																								Let Tu20
																																																									Let Ti2216
																																																										Int:0
																																																										Let Td2224
																																																											Let Td2218
																																																												Let Ti2217
																																																													Int:0
																																																													Get dest Ti2217
																																																												Let Td2223
																																																													Let Td2220
																																																														Let Ti2219
																																																															Int:0
																																																															Get v Ti2219
																																																														Let Td2222
																																																															Let Ti2221
																																																																Int:0
																																																																Get w Ti2221
																																																															FMul Td2220 Td2222
																																																													FAdd Td2218 Td2223
																																																											Put dest Ti2216 Td2224
																																																									Let Tu19
																																																										Let Ti2225
																																																											Int:1
																																																											Let Td2233
																																																												Let Td2227
																																																													Let Ti2226
																																																														Int:1
																																																														Get dest Ti2226
																																																													Let Td2232
																																																														Let Td2229
																																																															Let Ti2228
																																																																Int:1
																																																																Get v Ti2228
																																																															Let Td2231
																																																																Let Ti2230
																																																																	Int:1
																																																																	Get w Ti2230
																																																																FMul Td2229 Td2231
																																																														FAdd Td2227 Td2232
																																																												Put dest Ti2225 Td2233
																																																										Let Ti2234
																																																											Int:2
																																																											Let Td2242
																																																												Let Td2236
																																																													Let Ti2235
																																																														Int:2
																																																														Get dest Ti2235
																																																													Let Td2241
																																																														Let Td2238
																																																															Let Ti2237
																																																																Int:2
																																																																Get v Ti2237
																																																															Let Td2240
																																																																Let Ti2239
																																																																	Int:2
																																																																	Get w Ti2239
																																																																FMul Td2238 Td2240
																																																														FAdd Td2236 Td2241
																																																												Put dest Ti2234 Td2242
																																																								LetRec o_texturetype m 
																																																									LetTuple (m_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																										Var m_tex
																																																									LetRec o_form m 
																																																										LetTuple (xm_tex,m_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																											Var m_shape
																																																										LetRec o_reflectiontype m 
																																																											LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																												Var m_surface
																																																											LetRec o_isinvert m 
																																																												LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,m_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																													Var m_invert
																																																												LetRec o_isrot m 
																																																													LetTuple (xm_tex,xm_shape,xm_surface,m_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																														Var m_isrot
																																																													LetRec o_param_a m 
																																																														LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																															Let Ti2215
																																																																Int:0
																																																																Get m_abc Ti2215
																																																														LetRec o_param_b m 
																																																															LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																																Let Ti2214
																																																																	Int:1
																																																																	Get m_abc Ti2214
																																																															LetRec o_param_c m 
																																																																LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																																	Let Ti2213
																																																																		Int:2
																																																																		Get m_abc Ti2213
																																																																LetRec o_param_abc m 
																																																																	LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																																		Var m_abc
																																																																	LetRec o_param_x m 
																																																																		LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																																			Let Ti2212
																																																																				Int:0
																																																																				Get m_xyz Ti2212
																																																																		LetRec o_param_y m 
																																																																			LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																																				Let Ti2211
																																																																					Int:1
																																																																					Get m_xyz Ti2211
																																																																			LetRec o_param_z m 
																																																																				LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																																					Let Ti2210
																																																																						Int:2
																																																																						Get m_xyz Ti2210
																																																																				LetRec o_diffuse m 
																																																																					LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																																						Let Ti2209
																																																																							Int:0
																																																																							Get m_surfparams Ti2209
																																																																					LetRec o_hilight m 
																																																																						LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																																							Let Ti2208
																																																																								Int:1
																																																																								Get m_surfparams Ti2208
																																																																						LetRec o_color_red m 
																																																																							LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																																																								Let Ti2207
																																																																									Int:0
																																																																									Get m_color Ti2207
																																																																							LetRec o_color_green m 
																																																																								LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																																																									Let Ti2206
																																																																										Int:1
																																																																										Get m_color Ti2206
																																																																								LetRec o_color_blue m 
																																																																									LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																																																										Let Ti2205
																																																																											Int:2
																																																																											Get m_color Ti2205
																																																																									LetRec o_param_r1 m 
																																																																										LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																																																											Let Ti2204
																																																																												Int:0
																																																																												Get m_rot123 Ti2204
																																																																										LetRec o_param_r2 m 
																																																																											LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																																																												Let Ti2203
																																																																													Int:1
																																																																													Get m_rot123 Ti2203
																																																																											LetRec o_param_r3 m 
																																																																												LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																																																													Let Ti2202
																																																																														Int:2
																																																																														Get m_rot123 Ti2202
																																																																												LetRec o_param_ctbl m 
																																																																													LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,m_ctbl,)
 m
																																																																														Var m_ctbl
																																																																													LetRec p_rgb pixel 
																																																																														LetTuple (m_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,xm_gid,xm_nvectors,)
 pixel
																																																																															Var m_rgb
																																																																														LetRec p_intersection_points pixel 
																																																																															LetTuple (xm_rgb,m_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,xm_gid,xm_nvectors,)
 pixel
																																																																																Var m_isect_ps
																																																																															LetRec p_surface_ids pixel 
																																																																																LetTuple (xm_rgb,xm_isect_ps,m_sids,xm_cdif,xm_engy,xm_r20p,xm_gid,xm_nvectors,)
 pixel
																																																																																	Var m_sids
																																																																																LetRec p_calc_diffuse pixel 
																																																																																	LetTuple (xm_rgb,xm_isect_ps,xm_sids,m_cdif,xm_engy,xm_r20p,xm_gid,xm_nvectors,)
 pixel
																																																																																		Var m_cdif
																																																																																	LetRec p_energy pixel 
																																																																																		LetTuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,m_engy,xm_r20p,xm_gid,xm_nvectors,)
 pixel
																																																																																			Var m_engy
																																																																																		LetRec p_received_ray_20percent pixel 
																																																																																			LetTuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,m_r20p,xm_gid,xm_nvectors,)
 pixel
																																																																																				Var m_r20p
																																																																																			LetRec p_group_id pixel 
																																																																																				LetTuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,m_gid,xm_nvectors,)
 pixel
																																																																																					Let Ti2201
																																																																																						Int:0
																																																																																						Get m_gid Ti2201
																																																																																				LetRec p_set_group_id pixel id 
																																																																																					LetTuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,m_gid,xm_nvectors,)
 pixel
																																																																																						Let Ti2200
																																																																																							Int:0
																																																																																							Put m_gid Ti2200 id
																																																																																					LetRec p_nvectors pixel 
																																																																																						LetTuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,xm_gid,m_nvectors,)
 pixel
																																																																																							Var m_nvectors
																																																																																						LetRec d_vec d 
																																																																																							LetTuple (m_vec,xm_const,)
 d
																																																																																								Var m_vec
																																																																																							LetRec d_const d 
																																																																																								LetTuple (dm_vec,m_const,)
 d
																																																																																									Var m_const
																																																																																								LetRec r_surface_id r 
																																																																																									LetTuple (m_sid,xm_dvec,xm_br,)
 r
																																																																																										Var m_sid
																																																																																									LetRec r_dvec r 
																																																																																										LetTuple (xm_sid,m_dvec,xm_br,)
 r
																																																																																											Var m_dvec
																																																																																										LetRec r_bright r 
																																																																																											LetTuple (xm_sid,xm_dvec,m_br,)
 r
																																																																																												Var m_br
																																																																																											LetRec rad x 
																																																																																												Let Td2199
																																																																																													Float:0.017453
																																																																																													FMul x Td2199
																																																																																												LetRec read_screen_settings Tu21 
																																																																																													Let Tu35
																																																																																														Let Ti2144
																																																																																															Int:0
																																																																																															Let Td2146
																																																																																																Let Tu2145
																																																																																																	Unit
																																																																																																	ExtFunApp read_float Tu2145,
																																																																																																Put screen Ti2144 Td2146
																																																																																														Let Tu34
																																																																																															Let Ti2147
																																																																																																Int:1
																																																																																																Let Td2149
																																																																																																	Let Tu2148
																																																																																																		Unit
																																																																																																		ExtFunApp read_float Tu2148,
																																																																																																	Put screen Ti2147 Td2149
																																																																																															Let Tu33
																																																																																																Let Ti2150
																																																																																																	Int:2
																																																																																																	Let Td2152
																																																																																																		Let Tu2151
																																																																																																			Unit
																																																																																																			ExtFunApp read_float Tu2151,
																																																																																																		Put screen Ti2150 Td2152
																																																																																																Let v1
																																																																																																	Let Td2154
																																																																																																		Let Tu2153
																																																																																																			Unit
																																																																																																			ExtFunApp read_float Tu2153,
																																																																																																		App radTd2154 
																																																																																																	Let cos_v1
																																																																																																		ExtFunApp cos v1,
																																																																																																		Let sin_v1
																																																																																																			ExtFunApp sin v1,
																																																																																																			Let v2
																																																																																																				Let Td2156
																																																																																																					Let Tu2155
																																																																																																						Unit
																																																																																																						ExtFunApp read_float Tu2155,
																																																																																																					App radTd2156 
																																																																																																				Let cos_v2
																																																																																																					ExtFunApp cos v2,
																																																																																																					Let sin_v2
																																																																																																						ExtFunApp sin v2,
																																																																																																						Let Tu32
																																																																																																							Let Ti2157
																																																																																																								Int:0
																																																																																																								Let Td2160
																																																																																																									Let Td2158
																																																																																																										FMul cos_v1 sin_v2
																																																																																																										Let Td2159
																																																																																																											Float:200.000000
																																																																																																											FMul Td2158 Td2159
																																																																																																									Put screenz_dir Ti2157 Td2160
																																																																																																							Let Tu31
																																																																																																								Let Ti2161
																																																																																																									Int:1
																																																																																																									Let Td2163
																																																																																																										Let Td2162
																																																																																																											Float:-200.000000
																																																																																																											FMul sin_v1 Td2162
																																																																																																										Put screenz_dir Ti2161 Td2163
																																																																																																								Let Tu30
																																																																																																									Let Ti2164
																																																																																																										Int:2
																																																																																																										Let Td2167
																																																																																																											Let Td2165
																																																																																																												FMul cos_v1 cos_v2
																																																																																																												Let Td2166
																																																																																																													Float:200.000000
																																																																																																													FMul Td2165 Td2166
																																																																																																											Put screenz_dir Ti2164 Td2167
																																																																																																									Let Tu29
																																																																																																										Let Ti2168
																																																																																																											Int:0
																																																																																																											Put screenx_dir Ti2168 cos_v2
																																																																																																										Let Tu28
																																																																																																											Let Ti2169
																																																																																																												Int:1
																																																																																																												Let Td2170
																																																																																																													Float:0.000000
																																																																																																													Put screenx_dir Ti2169 Td2170
																																																																																																											Let Tu27
																																																																																																												Let Ti2171
																																																																																																													Int:2
																																																																																																													Let Td2172
																																																																																																														App fnegsin_v2 
																																																																																																														Put screenx_dir Ti2171 Td2172
																																																																																																												Let Tu26
																																																																																																													Let Ti2173
																																																																																																														Int:0
																																																																																																														Let Td2175
																																																																																																															Let Td2174
																																																																																																																App fnegsin_v1 
																																																																																																																FMul Td2174 sin_v2
																																																																																																															Put screeny_dir Ti2173 Td2175
																																																																																																													Let Tu25
																																																																																																														Let Ti2176
																																																																																																															Int:1
																																																																																																															Let Td2177
																																																																																																																App fnegcos_v1 
																																																																																																																Put screeny_dir Ti2176 Td2177
																																																																																																														Let Tu24
																																																																																																															Let Ti2178
																																																																																																																Int:2
																																																																																																																Let Td2180
																																																																																																																	Let Td2179
																																																																																																																		App fnegsin_v1 
																																																																																																																		FMul Td2179 cos_v2
																																																																																																																	Put screeny_dir Ti2178 Td2180
																																																																																																															Let Tu23
																																																																																																																Let Ti2181
																																																																																																																	Int:0
																																																																																																																	Let Td2186
																																																																																																																		Let Td2183
																																																																																																																			Let Ti2182
																																																																																																																				Int:0
																																																																																																																				Get screen Ti2182
																																																																																																																			Let Td2185
																																																																																																																				Let Ti2184
																																																																																																																					Int:0
																																																																																																																					Get screenz_dir Ti2184
																																																																																																																				FSub Td2183 Td2185
																																																																																																																		Put viewpoint Ti2181 Td2186
																																																																																																																Let Tu22
																																																																																																																	Let Ti2187
																																																																																																																		Int:1
																																																																																																																		Let Td2192
																																																																																																																			Let Td2189
																																																																																																																				Let Ti2188
																																																																																																																					Int:1
																																																																																																																					Get screen Ti2188
																																																																																																																				Let Td2191
																																																																																																																					Let Ti2190
																																																																																																																						Int:1
																																																																																																																						Get screenz_dir Ti2190
																																																																																																																					FSub Td2189 Td2191
																																																																																																																			Put viewpoint Ti2187 Td2192
																																																																																																																	Let Ti2193
																																																																																																																		Int:2
																																																																																																																		Let Td2198
																																																																																																																			Let Td2195
																																																																																																																				Let Ti2194
																																																																																																																					Int:2
																																																																																																																					Get screen Ti2194
																																																																																																																				Let Td2197
																																																																																																																					Let Ti2196
																																																																																																																						Int:2
																																																																																																																						Get screenz_dir Ti2196
																																																																																																																					FSub Td2195 Td2197
																																																																																																																			Put viewpoint Ti2193 Td2198
																																																																																													LetRec read_light Tu36 
																																																																																														Let nl
																																																																																															Let Tu2130
																																																																																																Unit
																																																																																																ExtFunApp read_int Tu2130,
																																																																																															Let l1
																																																																																																Let Td2132
																																																																																																	Let Tu2131
																																																																																																		Unit
																																																																																																		ExtFunApp read_float Tu2131,
																																																																																																	App radTd2132 
																																																																																																Let sl1
																																																																																																	ExtFunApp sin l1,
																																																																																																	Let Tu39
																																																																																																		Let Ti2133
																																																																																																			Int:1
																																																																																																			Let Td2134
																																																																																																				App fnegsl1 
																																																																																																				Put light Ti2133 Td2134
																																																																																																		Let l2
																																																																																																			Let Td2136
																																																																																																				Let Tu2135
																																																																																																					Unit
																																																																																																					ExtFunApp read_float Tu2135,
																																																																																																				App radTd2136 
																																																																																																			Let cl1
																																																																																																				ExtFunApp cos l1,
																																																																																																				Let sl2
																																																																																																					ExtFunApp sin l2,
																																																																																																					Let Tu38
																																																																																																						Let Ti2137
																																																																																																							Int:0
																																																																																																							Let Td2138
																																																																																																								FMul cl1 sl2
																																																																																																								Put light Ti2137 Td2138
																																																																																																						Let cl2
																																																																																																							ExtFunApp cos l2,
																																																																																																							Let Tu37
																																																																																																								Let Ti2139
																																																																																																									Int:2
																																																																																																									Let Td2140
																																																																																																										FMul cl1 cl2
																																																																																																										Put light Ti2139 Td2140
																																																																																																								Let Ti2141
																																																																																																									Int:0
																																																																																																									Let Td2143
																																																																																																										Let Tu2142
																																																																																																											Unit
																																																																																																											ExtFunApp read_float Tu2142,
																																																																																																										Put beam Ti2141 Td2143
																																																																																														LetRec rotate_quadratic_matrix abc rot 
																																																																																															Let cos_x
																																																																																																Let Td2044
																																																																																																	Let Ti2043
																																																																																																		Int:0
																																																																																																		Get rot Ti2043
																																																																																																	ExtFunApp cos Td2044,
																																																																																																Let sin_x
																																																																																																	Let Td2046
																																																																																																		Let Ti2045
																																																																																																			Int:0
																																																																																																			Get rot Ti2045
																																																																																																		ExtFunApp sin Td2046,
																																																																																																	Let cos_y
																																																																																																		Let Td2048
																																																																																																			Let Ti2047
																																																																																																				Int:1
																																																																																																				Get rot Ti2047
																																																																																																			ExtFunApp cos Td2048,
																																																																																																		Let sin_y
																																																																																																			Let Td2050
																																																																																																				Let Ti2049
																																																																																																					Int:1
																																																																																																					Get rot Ti2049
																																																																																																				ExtFunApp sin Td2050,
																																																																																																			Let cos_z
																																																																																																				Let Td2052
																																																																																																					Let Ti2051
																																																																																																						Int:2
																																																																																																						Get rot Ti2051
																																																																																																					ExtFunApp cos Td2052,
																																																																																																				Let sin_z
																																																																																																					Let Td2054
																																																																																																						Let Ti2053
																																																																																																							Int:2
																																																																																																							Get rot Ti2053
																																																																																																						ExtFunApp sin Td2054,
																																																																																																					Let m00
																																																																																																						FMul cos_y cos_z
																																																																																																						Let m01
																																																																																																							Let Td2056
																																																																																																								Let Td2055
																																																																																																									FMul sin_x sin_y
																																																																																																									FMul Td2055 cos_z
																																																																																																								Let Td2057
																																																																																																									FMul cos_x sin_z
																																																																																																									FSub Td2056 Td2057
																																																																																																							Let m02
																																																																																																								Let Td2059
																																																																																																									Let Td2058
																																																																																																										FMul cos_x sin_y
																																																																																																										FMul Td2058 cos_z
																																																																																																									Let Td2060
																																																																																																										FMul sin_x sin_z
																																																																																																										FAdd Td2059 Td2060
																																																																																																								Let m10
																																																																																																									FMul cos_y sin_z
																																																																																																									Let m11
																																																																																																										Let Td2062
																																																																																																											Let Td2061
																																																																																																												FMul sin_x sin_y
																																																																																																												FMul Td2061 sin_z
																																																																																																											Let Td2063
																																																																																																												FMul cos_x cos_z
																																																																																																												FAdd Td2062 Td2063
																																																																																																										Let m12
																																																																																																											Let Td2065
																																																																																																												Let Td2064
																																																																																																													FMul cos_x sin_y
																																																																																																													FMul Td2064 sin_z
																																																																																																												Let Td2066
																																																																																																													FMul sin_x cos_z
																																																																																																													FSub Td2065 Td2066
																																																																																																											Let m20
																																																																																																												App fnegsin_y 
																																																																																																												Let m21
																																																																																																													FMul sin_x cos_y
																																																																																																													Let m22
																																																																																																														FMul cos_x cos_y
																																																																																																														Let ao
																																																																																																															Let Ti2067
																																																																																																																Int:0
																																																																																																																Get abc Ti2067
																																																																																																															Let bo
																																																																																																																Let Ti2068
																																																																																																																	Int:1
																																																																																																																	Get abc Ti2068
																																																																																																																Let co
																																																																																																																	Let Ti2069
																																																																																																																		Int:2
																																																																																																																		Get abc Ti2069
																																																																																																																	Let Tu44
																																																																																																																		Let Ti2070
																																																																																																																			Int:0
																																																																																																																			Let Td2078
																																																																																																																				Let Td2075
																																																																																																																					Let Td2072
																																																																																																																						Let Td2071
																																																																																																																							App fsqrm00 
																																																																																																																							FMul ao Td2071
																																																																																																																						Let Td2074
																																																																																																																							Let Td2073
																																																																																																																								App fsqrm10 
																																																																																																																								FMul bo Td2073
																																																																																																																							FAdd Td2072 Td2074
																																																																																																																					Let Td2077
																																																																																																																						Let Td2076
																																																																																																																							App fsqrm20 
																																																																																																																							FMul co Td2076
																																																																																																																						FAdd Td2075 Td2077
																																																																																																																				Put abc Ti2070 Td2078
																																																																																																																		Let Tu43
																																																																																																																			Let Ti2079
																																																																																																																				Int:1
																																																																																																																				Let Td2087
																																																																																																																					Let Td2084
																																																																																																																						Let Td2081
																																																																																																																							Let Td2080
																																																																																																																								App fsqrm01 
																																																																																																																								FMul ao Td2080
																																																																																																																							Let Td2083
																																																																																																																								Let Td2082
																																																																																																																									App fsqrm11 
																																																																																																																									FMul bo Td2082
																																																																																																																								FAdd Td2081 Td2083
																																																																																																																						Let Td2086
																																																																																																																							Let Td2085
																																																																																																																								App fsqrm21 
																																																																																																																								FMul co Td2085
																																																																																																																							FAdd Td2084 Td2086
																																																																																																																					Put abc Ti2079 Td2087
																																																																																																																			Let Tu42
																																																																																																																				Let Ti2088
																																																																																																																					Int:2
																																																																																																																					Let Td2096
																																																																																																																						Let Td2093
																																																																																																																							Let Td2090
																																																																																																																								Let Td2089
																																																																																																																									App fsqrm02 
																																																																																																																									FMul ao Td2089
																																																																																																																								Let Td2092
																																																																																																																									Let Td2091
																																																																																																																										App fsqrm12 
																																																																																																																										FMul bo Td2091
																																																																																																																									FAdd Td2090 Td2092
																																																																																																																							Let Td2095
																																																																																																																								Let Td2094
																																																																																																																									App fsqrm22 
																																																																																																																									FMul co Td2094
																																																																																																																								FAdd Td2093 Td2095
																																																																																																																						Put abc Ti2088 Td2096
																																																																																																																				Let Tu41
																																																																																																																					Let Ti2097
																																																																																																																						Int:0
																																																																																																																						Let Td2107
																																																																																																																							Let Td2098
																																																																																																																								Float:2.000000
																																																																																																																								Let Td2106
																																																																																																																									Let Td2103
																																																																																																																										Let Td2100
																																																																																																																											Let Td2099
																																																																																																																												FMul ao m01
																																																																																																																												FMul Td2099 m02
																																																																																																																											Let Td2102
																																																																																																																												Let Td2101
																																																																																																																													FMul bo m11
																																																																																																																													FMul Td2101 m12
																																																																																																																												FAdd Td2100 Td2102
																																																																																																																										Let Td2105
																																																																																																																											Let Td2104
																																																																																																																												FMul co m21
																																																																																																																												FMul Td2104 m22
																																																																																																																											FAdd Td2103 Td2105
																																																																																																																									FMul Td2098 Td2106
																																																																																																																							Put rot Ti2097 Td2107
																																																																																																																					Let Tu40
																																																																																																																						Let Ti2108
																																																																																																																							Int:1
																																																																																																																							Let Td2118
																																																																																																																								Let Td2109
																																																																																																																									Float:2.000000
																																																																																																																									Let Td2117
																																																																																																																										Let Td2114
																																																																																																																											Let Td2111
																																																																																																																												Let Td2110
																																																																																																																													FMul ao m00
																																																																																																																													FMul Td2110 m02
																																																																																																																												Let Td2113
																																																																																																																													Let Td2112
																																																																																																																														FMul bo m10
																																																																																																																														FMul Td2112 m12
																																																																																																																													FAdd Td2111 Td2113
																																																																																																																											Let Td2116
																																																																																																																												Let Td2115
																																																																																																																													FMul co m20
																																																																																																																													FMul Td2115 m22
																																																																																																																												FAdd Td2114 Td2116
																																																																																																																										FMul Td2109 Td2117
																																																																																																																								Put rot Ti2108 Td2118
																																																																																																																						Let Ti2119
																																																																																																																							Int:2
																																																																																																																							Let Td2129
																																																																																																																								Let Td2120
																																																																																																																									Float:2.000000
																																																																																																																									Let Td2128
																																																																																																																										Let Td2125
																																																																																																																											Let Td2122
																																																																																																																												Let Td2121
																																																																																																																													FMul ao m00
																																																																																																																													FMul Td2121 m01
																																																																																																																												Let Td2124
																																																																																																																													Let Td2123
																																																																																																																														FMul bo m10
																																																																																																																														FMul Td2123 m11
																																																																																																																													FAdd Td2122 Td2124
																																																																																																																											Let Td2127
																																																																																																																												Let Td2126
																																																																																																																													FMul co m20
																																																																																																																													FMul Td2126 m21
																																																																																																																												FAdd Td2125 Td2127
																																																																																																																										FMul Td2120 Td2128
																																																																																																																								Put rot Ti2119 Td2129
																																																																																															LetRec read_nth_object n 
																																																																																																Let texture
																																																																																																	Let Tu1947
																																																																																																		Unit
																																																																																																		ExtFunApp read_int Tu1947,
																																																																																																	Let Ti1949
																																																																																																		Let Ti1948
																																																																																																			Int:1
																																																																																																			Neg Ti1948
																																																																																																		IfEq texture Ti1949
																																																																																																			Int:0
																																																																																																			Let form
																																																																																																				Let Tu1950
																																																																																																					Unit
																																																																																																					ExtFunApp read_int Tu1950,
																																																																																																				Let refltype
																																																																																																					Let Tu1951
																																																																																																						Unit
																																																																																																						ExtFunApp read_int Tu1951,
																																																																																																					Let isrot_p
																																																																																																						Let Tu1952
																																																																																																							Unit
																																																																																																							ExtFunApp read_int Tu1952,
																																																																																																						Let abc
																																																																																																							Let Ti1953
																																																																																																								Int:3
																																																																																																								Let Td1954
																																																																																																									Float:0.000000
																																																																																																									ExtFunApp create_float_array Ti1953,Td1954,
																																																																																																							Let Tu63
																																																																																																								Let Ti1955
																																																																																																									Int:0
																																																																																																									Let Td1957
																																																																																																										Let Tu1956
																																																																																																											Unit
																																																																																																											ExtFunApp read_float Tu1956,
																																																																																																										Put abc Ti1955 Td1957
																																																																																																								Let Tu62
																																																																																																									Let Ti1958
																																																																																																										Int:1
																																																																																																										Let Td1960
																																																																																																											Let Tu1959
																																																																																																												Unit
																																																																																																												ExtFunApp read_float Tu1959,
																																																																																																											Put abc Ti1958 Td1960
																																																																																																									Let Tu61
																																																																																																										Let Ti1961
																																																																																																											Int:2
																																																																																																											Let Td1963
																																																																																																												Let Tu1962
																																																																																																													Unit
																																																																																																													ExtFunApp read_float Tu1962,
																																																																																																												Put abc Ti1961 Td1963
																																																																																																										Let xyz
																																																																																																											Let Ti1964
																																																																																																												Int:3
																																																																																																												Let Td1965
																																																																																																													Float:0.000000
																																																																																																													ExtFunApp create_float_array Ti1964,Td1965,
																																																																																																											Let Tu60
																																																																																																												Let Ti1966
																																																																																																													Int:0
																																																																																																													Let Td1968
																																																																																																														Let Tu1967
																																																																																																															Unit
																																																																																																															ExtFunApp read_float Tu1967,
																																																																																																														Put xyz Ti1966 Td1968
																																																																																																												Let Tu59
																																																																																																													Let Ti1969
																																																																																																														Int:1
																																																																																																														Let Td1971
																																																																																																															Let Tu1970
																																																																																																																Unit
																																																																																																																ExtFunApp read_float Tu1970,
																																																																																																															Put xyz Ti1969 Td1971
																																																																																																													Let Tu58
																																																																																																														Let Ti1972
																																																																																																															Int:2
																																																																																																															Let Td1974
																																																																																																																Let Tu1973
																																																																																																																	Unit
																																																																																																																	ExtFunApp read_float Tu1973,
																																																																																																																Put xyz Ti1972 Td1974
																																																																																																														Let m_invert
																																																																																																															Let Td1976
																																																																																																																Let Tu1975
																																																																																																																	Unit
																																																																																																																	ExtFunApp read_float Tu1975,
																																																																																																																App fisnegTd1976 
																																																																																																															Let reflparam
																																																																																																																Let Ti1977
																																																																																																																	Int:2
																																																																																																																	Let Td1978
																																																																																																																		Float:0.000000
																																																																																																																		ExtFunApp create_float_array Ti1977,Td1978,
																																																																																																																Let Tu57
																																																																																																																	Let Ti1979
																																																																																																																		Int:0
																																																																																																																		Let Td1981
																																																																																																																			Let Tu1980
																																																																																																																				Unit
																																																																																																																				ExtFunApp read_float Tu1980,
																																																																																																																			Put reflparam Ti1979 Td1981
																																																																																																																	Let Tu56
																																																																																																																		Let Ti1982
																																																																																																																			Int:1
																																																																																																																			Let Td1984
																																																																																																																				Let Tu1983
																																																																																																																					Unit
																																																																																																																					ExtFunApp read_float Tu1983,
																																																																																																																				Put reflparam Ti1982 Td1984
																																																																																																																		Let color
																																																																																																																			Let Ti1985
																																																																																																																				Int:3
																																																																																																																				Let Td1986
																																																																																																																					Float:0.000000
																																																																																																																					ExtFunApp create_float_array Ti1985,Td1986,
																																																																																																																			Let Tu55
																																																																																																																				Let Ti1987
																																																																																																																					Int:0
																																																																																																																					Let Td1989
																																																																																																																						Let Tu1988
																																																																																																																							Unit
																																																																																																																							ExtFunApp read_float Tu1988,
																																																																																																																						Put color Ti1987 Td1989
																																																																																																																				Let Tu54
																																																																																																																					Let Ti1990
																																																																																																																						Int:1
																																																																																																																						Let Td1992
																																																																																																																							Let Tu1991
																																																																																																																								Unit
																																																																																																																								ExtFunApp read_float Tu1991,
																																																																																																																							Put color Ti1990 Td1992
																																																																																																																					Let Tu53
																																																																																																																						Let Ti1993
																																																																																																																							Int:2
																																																																																																																							Let Td1995
																																																																																																																								Let Tu1994
																																																																																																																									Unit
																																																																																																																									ExtFunApp read_float Tu1994,
																																																																																																																								Put color Ti1993 Td1995
																																																																																																																						Let rotation
																																																																																																																							Let Ti1996
																																																																																																																								Int:3
																																																																																																																								Let Td1997
																																																																																																																									Float:0.000000
																																																																																																																									ExtFunApp create_float_array Ti1996,Td1997,
																																																																																																																							Let Tu52
																																																																																																																								Let Ti1998
																																																																																																																									Int:0
																																																																																																																									IfEq isrot_p Ti1998
																																																																																																																										Unit
																																																																																																																										Let Tu46
																																																																																																																											Let Ti1999
																																																																																																																												Int:0
																																																																																																																												Let Td2002
																																																																																																																													Let Td2001
																																																																																																																														Let Tu2000
																																																																																																																															Unit
																																																																																																																															ExtFunApp read_float Tu2000,
																																																																																																																														App radTd2001 
																																																																																																																													Put rotation Ti1999 Td2002
																																																																																																																											Let Tu45
																																																																																																																												Let Ti2003
																																																																																																																													Int:1
																																																																																																																													Let Td2006
																																																																																																																														Let Td2005
																																																																																																																															Let Tu2004
																																																																																																																																Unit
																																																																																																																																ExtFunApp read_float Tu2004,
																																																																																																																															App radTd2005 
																																																																																																																														Put rotation Ti2003 Td2006
																																																																																																																												Let Ti2007
																																																																																																																													Int:2
																																																																																																																													Let Td2010
																																																																																																																														Let Td2009
																																																																																																																															Let Tu2008
																																																																																																																																Unit
																																																																																																																																ExtFunApp read_float Tu2008,
																																																																																																																															App radTd2009 
																																																																																																																														Put rotation Ti2007 Td2010
																																																																																																																								Let m_invert2
																																																																																																																									Let Ti2011
																																																																																																																										Int:2
																																																																																																																										IfEq form Ti2011
																																																																																																																											Int:1
																																																																																																																											Var m_invert
																																																																																																																									Let ctbl
																																																																																																																										Let Ti2012
																																																																																																																											Int:4
																																																																																																																											Let Td2013
																																																																																																																												Float:0.000000
																																																																																																																												ExtFunApp create_float_array Ti2012,Td2013,
																																																																																																																										Let obj
																																																																																																																											Tuple (texture,form,refltype,isrot_p,abc,xyz,m_invert2,reflparam,color,rotation,ctbl,)
																																																																																																																											Let Tu51
																																																																																																																												Put objects n obj
																																																																																																																												Let Tu50
																																																																																																																													Let Ti2014
																																																																																																																														Int:3
																																																																																																																														IfEq form Ti2014
																																																																																																																															Let a
																																																																																																																																Let Ti2015
																																																																																																																																	Int:0
																																																																																																																																	Get abc Ti2015
																																																																																																																																Let Tu48
																																																																																																																																	Let Ti2016
																																																																																																																																		Int:0
																																																																																																																																		Let Td2022
																																																																																																																																			Let Tb2017
																																																																																																																																				App fiszeroa 
																																																																																																																																				Let Ti2018
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb2017 Ti2018
																																																																																																																																						Let Td2019
																																																																																																																																							App sgna 
																																																																																																																																							Let Td2020
																																																																																																																																								App fsqra 
																																																																																																																																								Let Td2021
																																																																																																																																									FReciprocal Td2020
																																																																																																																																									FMul Td2019 Td2021
																																																																																																																																						Float:0.000000
																																																																																																																																			Put abc Ti2016 Td2022
																																																																																																																																	Let b
																																																																																																																																		Let Ti2023
																																																																																																																																			Int:1
																																																																																																																																			Get abc Ti2023
																																																																																																																																		Let Tu47
																																																																																																																																			Let Ti2024
																																																																																																																																				Int:1
																																																																																																																																				Let Td2030
																																																																																																																																					Let Tb2025
																																																																																																																																						App fiszerob 
																																																																																																																																						Let Ti2026
																																																																																																																																							Int:0
																																																																																																																																							IfEq Tb2025 Ti2026
																																																																																																																																								Let Td2027
																																																																																																																																									App sgnb 
																																																																																																																																									Let Td2028
																																																																																																																																										App fsqrb 
																																																																																																																																										Let Td2029
																																																																																																																																											FReciprocal Td2028
																																																																																																																																											FMul Td2027 Td2029
																																																																																																																																								Float:0.000000
																																																																																																																																					Put abc Ti2024 Td2030
																																																																																																																																			Let c
																																																																																																																																				Let Ti2031
																																																																																																																																					Int:2
																																																																																																																																					Get abc Ti2031
																																																																																																																																				Let Ti2032
																																																																																																																																					Int:2
																																																																																																																																					Let Td2038
																																																																																																																																						Let Tb2033
																																																																																																																																							App fiszeroc 
																																																																																																																																							Let Ti2034
																																																																																																																																								Int:0
																																																																																																																																								IfEq Tb2033 Ti2034
																																																																																																																																									Let Td2035
																																																																																																																																										App sgnc 
																																																																																																																																										Let Td2036
																																																																																																																																											App fsqrc 
																																																																																																																																											Let Td2037
																																																																																																																																												FReciprocal Td2036
																																																																																																																																												FMul Td2035 Td2037
																																																																																																																																									Float:0.000000
																																																																																																																																						Put abc Ti2032 Td2038
																																																																																																																															Let Ti2039
																																																																																																																																Int:2
																																																																																																																																IfEq form Ti2039
																																																																																																																																	Let Ti2041
																																																																																																																																		Let Ti2040
																																																																																																																																			Int:0
																																																																																																																																			IfEq m_invert Ti2040
																																																																																																																																				Int:1
																																																																																																																																				Int:0
																																																																																																																																		App vecunit_sgnabc Ti2041 
																																																																																																																																	Unit
																																																																																																																													Let Tu49
																																																																																																																														Let Ti2042
																																																																																																																															Int:0
																																																																																																																															IfEq isrot_p Ti2042
																																																																																																																																Unit
																																																																																																																																App rotate_quadratic_matrixabc rotation 
																																																																																																																														Int:1
																																																																																																LetRec read_object n 
																																																																																																	Let Ti1941
																																																																																																		Int:60
																																																																																																		IfLE Ti1941 n
																																																																																																			Unit
																																																																																																			Let Tb1942
																																																																																																				App read_nth_objectn 
																																																																																																				Let Ti1943
																																																																																																					Int:0
																																																																																																					IfEq Tb1942 Ti1943
																																																																																																						Let Ti1944
																																																																																																							Int:0
																																																																																																							Put n_objects Ti1944 n
																																																																																																						Let Ti1946
																																																																																																							Let Ti1945
																																																																																																								Int:1
																																																																																																								Add n Ti1945
																																																																																																							App read_objectTi1946 
																																																																																																	LetRec read_all_object Tu64 
																																																																																																		Let Ti1940
																																																																																																			Int:0
																																																																																																			App read_objectTi1940 
																																																																																																		LetRec read_net_item length 
																																																																																																			Let item
																																																																																																				Let Tu1931
																																																																																																					Unit
																																																																																																					ExtFunApp read_int Tu1931,
																																																																																																				Let Ti1933
																																																																																																					Let Ti1932
																																																																																																						Int:1
																																																																																																						Neg Ti1932
																																																																																																					IfEq item Ti1933
																																																																																																						Let Ti1935
																																																																																																							Let Ti1934
																																																																																																								Int:1
																																																																																																								Add length Ti1934
																																																																																																							Let Ti1937
																																																																																																								Let Ti1936
																																																																																																									Int:1
																																																																																																									Neg Ti1936
																																																																																																								ExtFunApp create_array Ti1935,Ti1937,
																																																																																																						Let v
																																																																																																							Let Ti1939
																																																																																																								Let Ti1938
																																																																																																									Int:1
																																																																																																									Add length Ti1938
																																																																																																								App read_net_itemTi1939 
																																																																																																							Let Tu65
																																																																																																								Put v length item
																																																																																																								Var v
																																																																																																			LetRec read_or_network length 
																																																																																																				Let net
																																																																																																					Let Ti1922
																																																																																																						Int:0
																																																																																																						App read_net_itemTi1922 
																																																																																																					Let Ti1924
																																																																																																						Let Ti1923
																																																																																																							Int:0
																																																																																																							Get net Ti1923
																																																																																																						Let Ti1926
																																																																																																							Let Ti1925
																																																																																																								Int:1
																																																																																																								Neg Ti1925
																																																																																																							IfEq Ti1924 Ti1926
																																																																																																								Let Ti1928
																																																																																																									Let Ti1927
																																																																																																										Int:1
																																																																																																										Add length Ti1927
																																																																																																									ExtFunApp create_array Ti1928,net,
																																																																																																								Let v
																																																																																																									Let Ti1930
																																																																																																										Let Ti1929
																																																																																																											Int:1
																																																																																																											Add length Ti1929
																																																																																																										App read_or_networkTi1930 
																																																																																																									Let Tu66
																																																																																																										Put v length net
																																																																																																										Var v
																																																																																																				LetRec read_and_network n 
																																																																																																					Let net
																																																																																																						Let Ti1915
																																																																																																							Int:0
																																																																																																							App read_net_itemTi1915 
																																																																																																						Let Ti1917
																																																																																																							Let Ti1916
																																																																																																								Int:0
																																																																																																								Get net Ti1916
																																																																																																							Let Ti1919
																																																																																																								Let Ti1918
																																																																																																									Int:1
																																																																																																									Neg Ti1918
																																																																																																								IfEq Ti1917 Ti1919
																																																																																																									Unit
																																																																																																									Let Tu67
																																																																																																										Put and_net n net
																																																																																																										Let Ti1921
																																																																																																											Let Ti1920
																																																																																																												Int:1
																																																																																																												Add n Ti1920
																																																																																																											App read_and_networkTi1921 
																																																																																																					LetRec read_parameter Tu68 
																																																																																																						Let Tu72
																																																																																																							Let Tu1908
																																																																																																								Unit
																																																																																																								App read_screen_settingsTu1908 
																																																																																																							Let Tu71
																																																																																																								Let Tu1909
																																																																																																									Unit
																																																																																																									App read_lightTu1909 
																																																																																																								Let Tu70
																																																																																																									Let Tu1910
																																																																																																										Unit
																																																																																																										App read_all_objectTu1910 
																																																																																																									Let Tu69
																																																																																																										Let Ti1911
																																																																																																											Int:0
																																																																																																											App read_and_networkTi1911 
																																																																																																										Let Ti1912
																																																																																																											Int:0
																																																																																																											Let Ta1914
																																																																																																												Let Ti1913
																																																																																																													Int:0
																																																																																																													App read_or_networkTi1913 
																																																																																																												Put or_net Ti1912 Ta1914
																																																																																																						LetRec solver_rect_surface m dirvec b0 b1 b2 i0 i1 i2 
																																																																																																							Let Tb1883
																																																																																																								Let Td1882
																																																																																																									Get dirvec i0
																																																																																																									App fiszeroTd1882 
																																																																																																								Let Ti1884
																																																																																																									Int:0
																																																																																																									IfEq Tb1883 Ti1884
																																																																																																										Let abc
																																																																																																											App o_param_abcm 
																																																																																																											Let d
																																																																																																												Let Tb1888
																																																																																																													Let Tb1885
																																																																																																														App o_isinvertm 
																																																																																																														Let Tb1887
																																																																																																															Let Td1886
																																																																																																																Get dirvec i0
																																																																																																																App fisnegTd1886 
																																																																																																															App xorTb1885 Tb1887 
																																																																																																													Let Td1889
																																																																																																														Get abc i0
																																																																																																														App fneg_condTb1888 Td1889 
																																																																																																												Let d2
																																																																																																													Let Td1890
																																																																																																														FSub d b0
																																																																																																														Let Td1891
																																																																																																															Get dirvec i0
																																																																																																															Let Td1892
																																																																																																																FReciprocal Td1891
																																																																																																																FMul Td1890 Td1892
																																																																																																													Let Tb1898
																																																																																																														Let Td1896
																																																																																																															Let Td1895
																																																																																																																Let Td1894
																																																																																																																	Let Td1893
																																																																																																																		Get dirvec i1
																																																																																																																		FMul d2 Td1893
																																																																																																																	FAdd Td1894 b1
																																																																																																																App fabsTd1895 
																																																																																																															Let Td1897
																																																																																																																Get abc i1
																																																																																																																App flessTd1896 Td1897 
																																																																																																														Let Ti1899
																																																																																																															Int:0
																																																																																																															IfEq Tb1898 Ti1899
																																																																																																																Int:0
																																																																																																																Let Tb1905
																																																																																																																	Let Td1903
																																																																																																																		Let Td1902
																																																																																																																			Let Td1901
																																																																																																																				Let Td1900
																																																																																																																					Get dirvec i2
																																																																																																																					FMul d2 Td1900
																																																																																																																				FAdd Td1901 b2
																																																																																																																			App fabsTd1902 
																																																																																																																		Let Td1904
																																																																																																																			Get abc i2
																																																																																																																			App flessTd1903 Td1904 
																																																																																																																	Let Ti1906
																																																																																																																		Int:0
																																																																																																																		IfEq Tb1905 Ti1906
																																																																																																																			Int:0
																																																																																																																			Let Tu73
																																																																																																																				Let Ti1907
																																																																																																																					Int:0
																																																																																																																					Put solver_dist Ti1907 d2
																																																																																																																				Int:1
																																																																																																										Int:0
																																																																																																							LetRec solver_rect m dirvec b0 b1 b2 
																																																																																																								Let Tb1870
																																																																																																									Let Ti1867
																																																																																																										Int:0
																																																																																																										Let Ti1868
																																																																																																											Int:1
																																																																																																											Let Ti1869
																																																																																																												Int:2
																																																																																																												App solver_rect_surfacem dirvec b0 b1 b2 Ti1867 Ti1868 Ti1869 
																																																																																																									Let Ti1871
																																																																																																										Int:0
																																																																																																										IfEq Tb1870 Ti1871
																																																																																																											Let Tb1875
																																																																																																												Let Ti1872
																																																																																																													Int:1
																																																																																																													Let Ti1873
																																																																																																														Int:2
																																																																																																														Let Ti1874
																																																																																																															Int:0
																																																																																																															App solver_rect_surfacem dirvec b1 b2 b0 Ti1872 Ti1873 Ti1874 
																																																																																																												Let Ti1876
																																																																																																													Int:0
																																																																																																													IfEq Tb1875 Ti1876
																																																																																																														Let Tb1880
																																																																																																															Let Ti1877
																																																																																																																Int:2
																																																																																																																Let Ti1878
																																																																																																																	Int:0
																																																																																																																	Let Ti1879
																																																																																																																		Int:1
																																																																																																																		App solver_rect_surfacem dirvec b2 b0 b1 Ti1877 Ti1878 Ti1879 
																																																																																																															Let Ti1881
																																																																																																																Int:0
																																																																																																																IfEq Tb1880 Ti1881
																																																																																																																	Int:0
																																																																																																																	Int:3
																																																																																																														Int:2
																																																																																																											Int:1
																																																																																																								LetRec solver_surface m dirvec b0 b1 b2 
																																																																																																									Let abc
																																																																																																										App o_param_abcm 
																																																																																																										Let d
																																																																																																											App veciproddirvec abc 
																																																																																																											Let Tb1860
																																																																																																												App fisposd 
																																																																																																												Let Ti1861
																																																																																																													Int:0
																																																																																																													IfEq Tb1860 Ti1861
																																																																																																														Int:0
																																																																																																														Let Tu74
																																																																																																															Let Ti1862
																																																																																																																Int:0
																																																																																																																Let Td1866
																																																																																																																	Let Td1864
																																																																																																																		Let Td1863
																																																																																																																			App veciprod2abc b0 b1 b2 
																																																																																																																			App fnegTd1863 
																																																																																																																		Let Td1865
																																																																																																																			FReciprocal d
																																																																																																																			FMul Td1864 Td1865
																																																																																																																	Put solver_dist Ti1862 Td1866
																																																																																																															Int:1
																																																																																																									LetRec quadratic m v0 v1 v2 
																																																																																																										Let diag_part
																																																																																																											Let Td1843
																																																																																																												Let Td1839
																																																																																																													Let Td1837
																																																																																																														App fsqrv0 
																																																																																																														Let Td1838
																																																																																																															App o_param_am 
																																																																																																															FMul Td1837 Td1838
																																																																																																													Let Td1842
																																																																																																														Let Td1840
																																																																																																															App fsqrv1 
																																																																																																															Let Td1841
																																																																																																																App o_param_bm 
																																																																																																																FMul Td1840 Td1841
																																																																																																														FAdd Td1839 Td1842
																																																																																																												Let Td1846
																																																																																																													Let Td1844
																																																																																																														App fsqrv2 
																																																																																																														Let Td1845
																																																																																																															App o_param_cm 
																																																																																																															FMul Td1844 Td1845
																																																																																																													FAdd Td1843 Td1846
																																																																																																											Let Ti1847
																																																																																																												App o_isrotm 
																																																																																																												Let Ti1848
																																																																																																													Int:0
																																																																																																													IfEq Ti1847 Ti1848
																																																																																																														Var diag_part
																																																																																																														Let Td1856
																																																																																																															Let Td1852
																																																																																																																Let Td1851
																																																																																																																	Let Td1849
																																																																																																																		FMul v1 v2
																																																																																																																		Let Td1850
																																																																																																																			App o_param_r1m 
																																																																																																																			FMul Td1849 Td1850
																																																																																																																	FAdd diag_part Td1851
																																																																																																																Let Td1855
																																																																																																																	Let Td1853
																																																																																																																		FMul v2 v0
																																																																																																																		Let Td1854
																																																																																																																			App o_param_r2m 
																																																																																																																			FMul Td1853 Td1854
																																																																																																																	FAdd Td1852 Td1855
																																																																																																															Let Td1859
																																																																																																																Let Td1857
																																																																																																																	FMul v0 v1
																																																																																																																	Let Td1858
																																																																																																																		App o_param_r3m 
																																																																																																																		FMul Td1857 Td1858
																																																																																																																FAdd Td1856 Td1859
																																																																																																										LetRec bilinear m v0 v1 v2 w0 w1 w2 
																																																																																																											Let diag_part
																																																																																																												Let Td1813
																																																																																																													Let Td1809
																																																																																																														Let Td1807
																																																																																																															FMul v0 w0
																																																																																																															Let Td1808
																																																																																																																App o_param_am 
																																																																																																																FMul Td1807 Td1808
																																																																																																														Let Td1812
																																																																																																															Let Td1810
																																																																																																																FMul v1 w1
																																																																																																																Let Td1811
																																																																																																																	App o_param_bm 
																																																																																																																	FMul Td1810 Td1811
																																																																																																															FAdd Td1809 Td1812
																																																																																																													Let Td1816
																																																																																																														Let Td1814
																																																																																																															FMul v2 w2
																																																																																																															Let Td1815
																																																																																																																App o_param_cm 
																																																																																																																FMul Td1814 Td1815
																																																																																																														FAdd Td1813 Td1816
																																																																																																												Let Ti1817
																																																																																																													App o_isrotm 
																																																																																																													Let Ti1818
																																																																																																														Int:0
																																																																																																														IfEq Ti1817 Ti1818
																																																																																																															Var diag_part
																																																																																																															Let Td1836
																																																																																																																Let Td1835
																																																																																																																	Let Td1829
																																																																																																																		Let Td1823
																																																																																																																			Let Td1821
																																																																																																																				Let Td1819
																																																																																																																					FMul v2 w1
																																																																																																																					Let Td1820
																																																																																																																						FMul v1 w2
																																																																																																																						FAdd Td1819 Td1820
																																																																																																																				Let Td1822
																																																																																																																					App o_param_r1m 
																																																																																																																					FMul Td1821 Td1822
																																																																																																																			Let Td1828
																																																																																																																				Let Td1826
																																																																																																																					Let Td1824
																																																																																																																						FMul v0 w2
																																																																																																																						Let Td1825
																																																																																																																							FMul v2 w0
																																																																																																																							FAdd Td1824 Td1825
																																																																																																																					Let Td1827
																																																																																																																						App o_param_r2m 
																																																																																																																						FMul Td1826 Td1827
																																																																																																																				FAdd Td1823 Td1828
																																																																																																																		Let Td1834
																																																																																																																			Let Td1832
																																																																																																																				Let Td1830
																																																																																																																					FMul v0 w1
																																																																																																																					Let Td1831
																																																																																																																						FMul v1 w0
																																																																																																																						FAdd Td1830 Td1831
																																																																																																																				Let Td1833
																																																																																																																					App o_param_r3m 
																																																																																																																					FMul Td1832 Td1833
																																																																																																																			FAdd Td1829 Td1834
																																																																																																																	App fhalfTd1835 
																																																																																																																FAdd diag_part Td1836
																																																																																																											LetRec solver_second m dirvec b0 b1 b2 
																																																																																																												Let aa
																																																																																																													Let Td1781
																																																																																																														Let Ti1780
																																																																																																															Int:0
																																																																																																															Get dirvec Ti1780
																																																																																																														Let Td1783
																																																																																																															Let Ti1782
																																																																																																																Int:1
																																																																																																																Get dirvec Ti1782
																																																																																																															Let Td1785
																																																																																																																Let Ti1784
																																																																																																																	Int:2
																																																																																																																	Get dirvec Ti1784
																																																																																																																App quadraticm Td1781 Td1783 Td1785 
																																																																																																													Let Tb1786
																																																																																																														App fiszeroaa 
																																																																																																														Let Ti1787
																																																																																																															Int:0
																																																																																																															IfEq Tb1786 Ti1787
																																																																																																																Let bb
																																																																																																																	Let Td1789
																																																																																																																		Let Ti1788
																																																																																																																			Int:0
																																																																																																																			Get dirvec Ti1788
																																																																																																																		Let Td1791
																																																																																																																			Let Ti1790
																																																																																																																				Int:1
																																																																																																																				Get dirvec Ti1790
																																																																																																																			Let Td1793
																																																																																																																				Let Ti1792
																																																																																																																					Int:2
																																																																																																																					Get dirvec Ti1792
																																																																																																																				App bilinearm Td1789 Td1791 Td1793 b0 b1 b2 
																																																																																																																	Let cc0
																																																																																																																		App quadraticm b0 b1 b2 
																																																																																																																		Let cc
																																																																																																																			Let Ti1794
																																																																																																																				App o_formm 
																																																																																																																				Let Ti1795
																																																																																																																					Int:3
																																																																																																																					IfEq Ti1794 Ti1795
																																																																																																																						Let Td1796
																																																																																																																							Float:1.000000
																																																																																																																							FSub cc0 Td1796
																																																																																																																						Var cc0
																																																																																																																			Let d
																																																																																																																				Let Td1797
																																																																																																																					App fsqrbb 
																																																																																																																					Let Td1798
																																																																																																																						FMul aa cc
																																																																																																																						FSub Td1797 Td1798
																																																																																																																				Let Tb1799
																																																																																																																					App fisposd 
																																																																																																																					Let Ti1800
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1799 Ti1800
																																																																																																																							Int:0
																																																																																																																							Let sd
																																																																																																																								ExtFunApp sqrt d,
																																																																																																																								Let t1
																																																																																																																									Let Tb1801
																																																																																																																										App o_isinvertm 
																																																																																																																										Let Ti1802
																																																																																																																											Int:0
																																																																																																																											IfEq Tb1801 Ti1802
																																																																																																																												App fnegsd 
																																																																																																																												Var sd
																																																																																																																									Let Tu75
																																																																																																																										Let Ti1803
																																																																																																																											Int:0
																																																																																																																											Let Td1806
																																																																																																																												Let Td1804
																																																																																																																													FSub t1 bb
																																																																																																																													Let Td1805
																																																																																																																														FReciprocal aa
																																																																																																																														FMul Td1804 Td1805
																																																																																																																												Put solver_dist Ti1803 Td1806
																																																																																																																										Int:1
																																																																																																																Int:0
																																																																																																												LetRec solver index dirvec org 
																																																																																																													Let m
																																																																																																														Get objects index
																																																																																																														Let b0
																																																																																																															Let Td1770
																																																																																																																Let Ti1769
																																																																																																																	Int:0
																																																																																																																	Get org Ti1769
																																																																																																																Let Td1771
																																																																																																																	App o_param_xm 
																																																																																																																	FSub Td1770 Td1771
																																																																																																															Let b1
																																																																																																																Let Td1773
																																																																																																																	Let Ti1772
																																																																																																																		Int:1
																																																																																																																		Get org Ti1772
																																																																																																																	Let Td1774
																																																																																																																		App o_param_ym 
																																																																																																																		FSub Td1773 Td1774
																																																																																																																Let b2
																																																																																																																	Let Td1776
																																																																																																																		Let Ti1775
																																																																																																																			Int:2
																																																																																																																			Get org Ti1775
																																																																																																																		Let Td1777
																																																																																																																			App o_param_zm 
																																																																																																																			FSub Td1776 Td1777
																																																																																																																	Let m_shape
																																																																																																																		App o_formm 
																																																																																																																		Let Ti1778
																																																																																																																			Int:1
																																																																																																																			IfEq m_shape Ti1778
																																																																																																																				App solver_rectm dirvec b0 b1 b2 
																																																																																																																				Let Ti1779
																																																																																																																					Int:2
																																																																																																																					IfEq m_shape Ti1779
																																																																																																																						App solver_surfacem dirvec b0 b1 b2 
																																																																																																																						App solver_secondm dirvec b0 b1 b2 
																																																																																																													LetRec solver_rect_fast m v dconst b0 b1 b2 
																																																																																																														Let d0
																																																																																																															Let Td1687
																																																																																																																Let Td1686
																																																																																																																	Let Ti1685
																																																																																																																		Int:0
																																																																																																																		Get dconst Ti1685
																																																																																																																	FSub Td1686 b0
																																																																																																																Let Td1689
																																																																																																																	Let Ti1688
																																																																																																																		Int:1
																																																																																																																		Get dconst Ti1688
																																																																																																																	FMul Td1687 Td1689
																																																																																																															Let Ti1710
																																																																																																																Let Tb1696
																																																																																																																	Let Td1694
																																																																																																																		Let Td1693
																																																																																																																			Let Td1692
																																																																																																																				Let Td1691
																																																																																																																					Let Ti1690
																																																																																																																						Int:1
																																																																																																																						Get v Ti1690
																																																																																																																					FMul d0 Td1691
																																																																																																																				FAdd Td1692 b1
																																																																																																																			App fabsTd1693 
																																																																																																																		Let Td1695
																																																																																																																			App o_param_bm 
																																																																																																																			App flessTd1694 Td1695 
																																																																																																																	Let Ti1697
																																																																																																																		Int:0
																																																																																																																		IfEq Tb1696 Ti1697
																																																																																																																			Int:0
																																																																																																																			Let Tb1704
																																																																																																																				Let Td1702
																																																																																																																					Let Td1701
																																																																																																																						Let Td1700
																																																																																																																							Let Td1699
																																																																																																																								Let Ti1698
																																																																																																																									Int:2
																																																																																																																									Get v Ti1698
																																																																																																																								FMul d0 Td1699
																																																																																																																							FAdd Td1700 b2
																																																																																																																						App fabsTd1701 
																																																																																																																					Let Td1703
																																																																																																																						App o_param_cm 
																																																																																																																						App flessTd1702 Td1703 
																																																																																																																				Let Ti1705
																																																																																																																					Int:0
																																																																																																																					IfEq Tb1704 Ti1705
																																																																																																																						Int:0
																																																																																																																						Let Tb1708
																																																																																																																							Let Td1707
																																																																																																																								Let Ti1706
																																																																																																																									Int:1
																																																																																																																									Get dconst Ti1706
																																																																																																																								App fiszeroTd1707 
																																																																																																																							Let Ti1709
																																																																																																																								Int:0
																																																																																																																								IfEq Tb1708 Ti1709
																																																																																																																									Int:1
																																																																																																																									Int:0
																																																																																																																Let Ti1711
																																																																																																																	Int:0
																																																																																																																	IfEq Ti1710 Ti1711
																																																																																																																		Let d1
																																																																																																																			Let Td1714
																																																																																																																				Let Td1713
																																																																																																																					Let Ti1712
																																																																																																																						Int:2
																																																																																																																						Get dconst Ti1712
																																																																																																																					FSub Td1713 b1
																																																																																																																				Let Td1716
																																																																																																																					Let Ti1715
																																																																																																																						Int:3
																																																																																																																						Get dconst Ti1715
																																																																																																																					FMul Td1714 Td1716
																																																																																																																			Let Ti1737
																																																																																																																				Let Tb1723
																																																																																																																					Let Td1721
																																																																																																																						Let Td1720
																																																																																																																							Let Td1719
																																																																																																																								Let Td1718
																																																																																																																									Let Ti1717
																																																																																																																										Int:0
																																																																																																																										Get v Ti1717
																																																																																																																									FMul d1 Td1718
																																																																																																																								FAdd Td1719 b0
																																																																																																																							App fabsTd1720 
																																																																																																																						Let Td1722
																																																																																																																							App o_param_am 
																																																																																																																							App flessTd1721 Td1722 
																																																																																																																					Let Ti1724
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1723 Ti1724
																																																																																																																							Int:0
																																																																																																																							Let Tb1731
																																																																																																																								Let Td1729
																																																																																																																									Let Td1728
																																																																																																																										Let Td1727
																																																																																																																											Let Td1726
																																																																																																																												Let Ti1725
																																																																																																																													Int:2
																																																																																																																													Get v Ti1725
																																																																																																																												FMul d1 Td1726
																																																																																																																											FAdd Td1727 b2
																																																																																																																										App fabsTd1728 
																																																																																																																									Let Td1730
																																																																																																																										App o_param_cm 
																																																																																																																										App flessTd1729 Td1730 
																																																																																																																								Let Ti1732
																																																																																																																									Int:0
																																																																																																																									IfEq Tb1731 Ti1732
																																																																																																																										Int:0
																																																																																																																										Let Tb1735
																																																																																																																											Let Td1734
																																																																																																																												Let Ti1733
																																																																																																																													Int:3
																																																																																																																													Get dconst Ti1733
																																																																																																																												App fiszeroTd1734 
																																																																																																																											Let Ti1736
																																																																																																																												Int:0
																																																																																																																												IfEq Tb1735 Ti1736
																																																																																																																													Int:1
																																																																																																																													Int:0
																																																																																																																				Let Ti1738
																																																																																																																					Int:0
																																																																																																																					IfEq Ti1737 Ti1738
																																																																																																																						Let d2
																																																																																																																							Let Td1741
																																																																																																																								Let Td1740
																																																																																																																									Let Ti1739
																																																																																																																										Int:4
																																																																																																																										Get dconst Ti1739
																																																																																																																									FSub Td1740 b2
																																																																																																																								Let Td1743
																																																																																																																									Let Ti1742
																																																																																																																										Int:5
																																																																																																																										Get dconst Ti1742
																																																																																																																									FMul Td1741 Td1743
																																																																																																																							Let Ti1764
																																																																																																																								Let Tb1750
																																																																																																																									Let Td1748
																																																																																																																										Let Td1747
																																																																																																																											Let Td1746
																																																																																																																												Let Td1745
																																																																																																																													Let Ti1744
																																																																																																																														Int:0
																																																																																																																														Get v Ti1744
																																																																																																																													FMul d2 Td1745
																																																																																																																												FAdd Td1746 b0
																																																																																																																											App fabsTd1747 
																																																																																																																										Let Td1749
																																																																																																																											App o_param_am 
																																																																																																																											App flessTd1748 Td1749 
																																																																																																																									Let Ti1751
																																																																																																																										Int:0
																																																																																																																										IfEq Tb1750 Ti1751
																																																																																																																											Int:0
																																																																																																																											Let Tb1758
																																																																																																																												Let Td1756
																																																																																																																													Let Td1755
																																																																																																																														Let Td1754
																																																																																																																															Let Td1753
																																																																																																																																Let Ti1752
																																																																																																																																	Int:1
																																																																																																																																	Get v Ti1752
																																																																																																																																FMul d2 Td1753
																																																																																																																															FAdd Td1754 b1
																																																																																																																														App fabsTd1755 
																																																																																																																													Let Td1757
																																																																																																																														App o_param_bm 
																																																																																																																														App flessTd1756 Td1757 
																																																																																																																												Let Ti1759
																																																																																																																													Int:0
																																																																																																																													IfEq Tb1758 Ti1759
																																																																																																																														Int:0
																																																																																																																														Let Tb1762
																																																																																																																															Let Td1761
																																																																																																																																Let Ti1760
																																																																																																																																	Int:5
																																																																																																																																	Get dconst Ti1760
																																																																																																																																App fiszeroTd1761 
																																																																																																																															Let Ti1763
																																																																																																																																Int:0
																																																																																																																																IfEq Tb1762 Ti1763
																																																																																																																																	Int:1
																																																																																																																																	Int:0
																																																																																																																								Let Ti1765
																																																																																																																									Int:0
																																																																																																																									IfEq Ti1764 Ti1765
																																																																																																																										Int:0
																																																																																																																										Let Tu78
																																																																																																																											Let Ti1766
																																																																																																																												Int:0
																																																																																																																												Put solver_dist Ti1766 d2
																																																																																																																											Int:3
																																																																																																																						Let Tu77
																																																																																																																							Let Ti1767
																																																																																																																								Int:0
																																																																																																																								Put solver_dist Ti1767 d1
																																																																																																																							Int:2
																																																																																																																		Let Tu76
																																																																																																																			Let Ti1768
																																																																																																																				Int:0
																																																																																																																				Put solver_dist Ti1768 d0
																																																																																																																			Int:1
																																																																																																														LetRec solver_surface_fast m dconst b0 b1 b2 
																																																																																																															Let Tb1671
																																																																																																																Let Td1670
																																																																																																																	Let Ti1669
																																																																																																																		Int:0
																																																																																																																		Get dconst Ti1669
																																																																																																																	App fisnegTd1670 
																																																																																																																Let Ti1672
																																																																																																																	Int:0
																																																																																																																	IfEq Tb1671 Ti1672
																																																																																																																		Int:0
																																																																																																																		Let Tu79
																																																																																																																			Let Ti1673
																																																																																																																				Int:0
																																																																																																																				Let Td1684
																																																																																																																					Let Td1680
																																																																																																																						Let Td1676
																																																																																																																							Let Td1675
																																																																																																																								Let Ti1674
																																																																																																																									Int:1
																																																																																																																									Get dconst Ti1674
																																																																																																																								FMul Td1675 b0
																																																																																																																							Let Td1679
																																																																																																																								Let Td1678
																																																																																																																									Let Ti1677
																																																																																																																										Int:2
																																																																																																																										Get dconst Ti1677
																																																																																																																									FMul Td1678 b1
																																																																																																																								FAdd Td1676 Td1679
																																																																																																																						Let Td1683
																																																																																																																							Let Td1682
																																																																																																																								Let Ti1681
																																																																																																																									Int:3
																																																																																																																									Get dconst Ti1681
																																																																																																																								FMul Td1682 b2
																																																																																																																							FAdd Td1680 Td1683
																																																																																																																					Put solver_dist Ti1673 Td1684
																																																																																																																			Int:1
																																																																																																															LetRec solver_second_fast m dconst b0 b1 b2 
																																																																																																																Let aa
																																																																																																																	Let Ti1635
																																																																																																																		Int:0
																																																																																																																		Get dconst Ti1635
																																																																																																																	Let Tb1636
																																																																																																																		App fiszeroaa 
																																																																																																																		Let Ti1637
																																																																																																																			Int:0
																																																																																																																			IfEq Tb1636 Ti1637
																																																																																																																				Let neg_bb
																																																																																																																					Let Td1644
																																																																																																																						Let Td1640
																																																																																																																							Let Td1639
																																																																																																																								Let Ti1638
																																																																																																																									Int:1
																																																																																																																									Get dconst Ti1638
																																																																																																																								FMul Td1639 b0
																																																																																																																							Let Td1643
																																																																																																																								Let Td1642
																																																																																																																									Let Ti1641
																																																																																																																										Int:2
																																																																																																																										Get dconst Ti1641
																																																																																																																									FMul Td1642 b1
																																																																																																																								FAdd Td1640 Td1643
																																																																																																																						Let Td1647
																																																																																																																							Let Td1646
																																																																																																																								Let Ti1645
																																																																																																																									Int:3
																																																																																																																									Get dconst Ti1645
																																																																																																																								FMul Td1646 b2
																																																																																																																							FAdd Td1644 Td1647
																																																																																																																					Let cc0
																																																																																																																						App quadraticm b0 b1 b2 
																																																																																																																						Let cc
																																																																																																																							Let Ti1648
																																																																																																																								App o_formm 
																																																																																																																								Let Ti1649
																																																																																																																									Int:3
																																																																																																																									IfEq Ti1648 Ti1649
																																																																																																																										Let Td1650
																																																																																																																											Float:1.000000
																																																																																																																											FSub cc0 Td1650
																																																																																																																										Var cc0
																																																																																																																							Let d
																																																																																																																								Let Td1651
																																																																																																																									App fsqrneg_bb 
																																																																																																																									Let Td1652
																																																																																																																										FMul aa cc
																																																																																																																										FSub Td1651 Td1652
																																																																																																																								Let Tb1653
																																																																																																																									App fisposd 
																																																																																																																									Let Ti1654
																																																																																																																										Int:0
																																																																																																																										IfEq Tb1653 Ti1654
																																																																																																																											Int:0
																																																																																																																											Let Tu80
																																																																																																																												Let Tb1655
																																																																																																																													App o_isinvertm 
																																																																																																																													Let Ti1656
																																																																																																																														Int:0
																																																																																																																														IfEq Tb1655 Ti1656
																																																																																																																															Let Ti1657
																																																																																																																																Int:0
																																																																																																																																Let Td1662
																																																																																																																																	Let Td1659
																																																																																																																																		Let Td1658
																																																																																																																																			ExtFunApp sqrt d,
																																																																																																																																			FSub neg_bb Td1658
																																																																																																																																		Let Td1661
																																																																																																																																			Let Ti1660
																																																																																																																																				Int:4
																																																																																																																																				Get dconst Ti1660
																																																																																																																																			FMul Td1659 Td1661
																																																																																																																																	Put solver_dist Ti1657 Td1662
																																																																																																																															Let Ti1663
																																																																																																																																Int:0
																																																																																																																																Let Td1668
																																																																																																																																	Let Td1665
																																																																																																																																		Let Td1664
																																																																																																																																			ExtFunApp sqrt d,
																																																																																																																																			FAdd neg_bb Td1664
																																																																																																																																		Let Td1667
																																																																																																																																			Let Ti1666
																																																																																																																																				Int:4
																																																																																																																																				Get dconst Ti1666
																																																																																																																																			FMul Td1665 Td1667
																																																																																																																																	Put solver_dist Ti1663 Td1668
																																																																																																																												Int:1
																																																																																																																				Int:0
																																																																																																																LetRec solver_fast index dirvec org 
																																																																																																																	Let m
																																																																																																																		Get objects index
																																																																																																																		Let b0
																																																																																																																			Let Td1624
																																																																																																																				Let Ti1623
																																																																																																																					Int:0
																																																																																																																					Get org Ti1623
																																																																																																																				Let Td1625
																																																																																																																					App o_param_xm 
																																																																																																																					FSub Td1624 Td1625
																																																																																																																			Let b1
																																																																																																																				Let Td1627
																																																																																																																					Let Ti1626
																																																																																																																						Int:1
																																																																																																																						Get org Ti1626
																																																																																																																					Let Td1628
																																																																																																																						App o_param_ym 
																																																																																																																						FSub Td1627 Td1628
																																																																																																																				Let b2
																																																																																																																					Let Td1630
																																																																																																																						Let Ti1629
																																																																																																																							Int:2
																																																																																																																							Get org Ti1629
																																																																																																																						Let Td1631
																																																																																																																							App o_param_zm 
																																																																																																																							FSub Td1630 Td1631
																																																																																																																					Let dconsts
																																																																																																																						App d_constdirvec 
																																																																																																																						Let dconst
																																																																																																																							Get dconsts index
																																																																																																																							Let m_shape
																																																																																																																								App o_formm 
																																																																																																																								Let Ti1632
																																																																																																																									Int:1
																																																																																																																									IfEq m_shape Ti1632
																																																																																																																										Let Ta1633
																																																																																																																											App d_vecdirvec 
																																																																																																																											App solver_rect_fastm Ta1633 dconst b0 b1 b2 
																																																																																																																										Let Ti1634
																																																																																																																											Int:2
																																																																																																																											IfEq m_shape Ti1634
																																																																																																																												App solver_surface_fastm dconst b0 b1 b2 
																																																																																																																												App solver_second_fastm dconst b0 b1 b2 
																																																																																																																	LetRec solver_surface_fast2 m dconst sconst b0 b1 b2 
																																																																																																																		Let Tb1615
																																																																																																																			Let Td1614
																																																																																																																				Let Ti1613
																																																																																																																					Int:0
																																																																																																																					Get dconst Ti1613
																																																																																																																				App fisnegTd1614 
																																																																																																																			Let Ti1616
																																																																																																																				Int:0
																																																																																																																				IfEq Tb1615 Ti1616
																																																																																																																					Int:0
																																																																																																																					Let Tu81
																																																																																																																						Let Ti1617
																																																																																																																							Int:0
																																																																																																																							Let Td1622
																																																																																																																								Let Td1619
																																																																																																																									Let Ti1618
																																																																																																																										Int:0
																																																																																																																										Get dconst Ti1618
																																																																																																																									Let Td1621
																																																																																																																										Let Ti1620
																																																																																																																											Int:3
																																																																																																																											Get sconst Ti1620
																																																																																																																										FMul Td1619 Td1621
																																																																																																																								Put solver_dist Ti1617 Td1622
																																																																																																																						Int:1
																																																																																																																		LetRec solver_second_fast2 m dconst sconst b0 b1 b2 
																																																																																																																			Let aa
																																																																																																																				Let Ti1581
																																																																																																																					Int:0
																																																																																																																					Get dconst Ti1581
																																																																																																																				Let Tb1582
																																																																																																																					App fiszeroaa 
																																																																																																																					Let Ti1583
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1582 Ti1583
																																																																																																																							Let neg_bb
																																																																																																																								Let Td1590
																																																																																																																									Let Td1586
																																																																																																																										Let Td1585
																																																																																																																											Let Ti1584
																																																																																																																												Int:1
																																																																																																																												Get dconst Ti1584
																																																																																																																											FMul Td1585 b0
																																																																																																																										Let Td1589
																																																																																																																											Let Td1588
																																																																																																																												Let Ti1587
																																																																																																																													Int:2
																																																																																																																													Get dconst Ti1587
																																																																																																																												FMul Td1588 b1
																																																																																																																											FAdd Td1586 Td1589
																																																																																																																									Let Td1593
																																																																																																																										Let Td1592
																																																																																																																											Let Ti1591
																																																																																																																												Int:3
																																																																																																																												Get dconst Ti1591
																																																																																																																											FMul Td1592 b2
																																																																																																																										FAdd Td1590 Td1593
																																																																																																																								Let cc
																																																																																																																									Let Ti1594
																																																																																																																										Int:3
																																																																																																																										Get sconst Ti1594
																																																																																																																									Let d
																																																																																																																										Let Td1595
																																																																																																																											App fsqrneg_bb 
																																																																																																																											Let Td1596
																																																																																																																												FMul aa cc
																																																																																																																												FSub Td1595 Td1596
																																																																																																																										Let Tb1597
																																																																																																																											App fisposd 
																																																																																																																											Let Ti1598
																																																																																																																												Int:0
																																																																																																																												IfEq Tb1597 Ti1598
																																																																																																																													Int:0
																																																																																																																													Let Tu82
																																																																																																																														Let Tb1599
																																																																																																																															App o_isinvertm 
																																																																																																																															Let Ti1600
																																																																																																																																Int:0
																																																																																																																																IfEq Tb1599 Ti1600
																																																																																																																																	Let Ti1601
																																																																																																																																		Int:0
																																																																																																																																		Let Td1606
																																																																																																																																			Let Td1603
																																																																																																																																				Let Td1602
																																																																																																																																					ExtFunApp sqrt d,
																																																																																																																																					FSub neg_bb Td1602
																																																																																																																																				Let Td1605
																																																																																																																																					Let Ti1604
																																																																																																																																						Int:4
																																																																																																																																						Get dconst Ti1604
																																																																																																																																					FMul Td1603 Td1605
																																																																																																																																			Put solver_dist Ti1601 Td1606
																																																																																																																																	Let Ti1607
																																																																																																																																		Int:0
																																																																																																																																		Let Td1612
																																																																																																																																			Let Td1609
																																																																																																																																				Let Td1608
																																																																																																																																					ExtFunApp sqrt d,
																																																																																																																																					FAdd neg_bb Td1608
																																																																																																																																				Let Td1611
																																																																																																																																					Let Ti1610
																																																																																																																																						Int:4
																																																																																																																																						Get dconst Ti1610
																																																																																																																																					FMul Td1609 Td1611
																																																																																																																																			Put solver_dist Ti1607 Td1612
																																																																																																																														Int:1
																																																																																																																							Int:0
																																																																																																																			LetRec solver_fast2 index dirvec 
																																																																																																																				Let m
																																																																																																																					Get objects index
																																																																																																																					Let sconst
																																																																																																																						App o_param_ctblm 
																																																																																																																						Let b0
																																																																																																																							Let Ti1575
																																																																																																																								Int:0
																																																																																																																								Get sconst Ti1575
																																																																																																																							Let b1
																																																																																																																								Let Ti1576
																																																																																																																									Int:1
																																																																																																																									Get sconst Ti1576
																																																																																																																								Let b2
																																																																																																																									Let Ti1577
																																																																																																																										Int:2
																																																																																																																										Get sconst Ti1577
																																																																																																																									Let dconsts
																																																																																																																										App d_constdirvec 
																																																																																																																										Let dconst
																																																																																																																											Get dconsts index
																																																																																																																											Let m_shape
																																																																																																																												App o_formm 
																																																																																																																												Let Ti1578
																																																																																																																													Int:1
																																																																																																																													IfEq m_shape Ti1578
																																																																																																																														Let Ta1579
																																																																																																																															App d_vecdirvec 
																																																																																																																															App solver_rect_fastm Ta1579 dconst b0 b1 b2 
																																																																																																																														Let Ti1580
																																																																																																																															Int:2
																																																																																																																															IfEq m_shape Ti1580
																																																																																																																																App solver_surface_fast2m dconst sconst b0 b1 b2 
																																																																																																																																App solver_second_fast2m dconst sconst b0 b1 b2 
																																																																																																																				LetRec setup_rect_table vec m 
																																																																																																																					Let const
																																																																																																																						Let Ti1513
																																																																																																																							Int:6
																																																																																																																							Let Td1514
																																																																																																																								Float:0.000000
																																																																																																																								ExtFunApp create_float_array Ti1513,Td1514,
																																																																																																																						Let Tu88
																																																																																																																							Let Tb1517
																																																																																																																								Let Td1516
																																																																																																																									Let Ti1515
																																																																																																																										Int:0
																																																																																																																										Get vec Ti1515
																																																																																																																									App fiszeroTd1516 
																																																																																																																								Let Ti1518
																																																																																																																									Int:0
																																																																																																																									IfEq Tb1517 Ti1518
																																																																																																																										Let Tu83
																																																																																																																											Let Ti1519
																																																																																																																												Int:0
																																																																																																																												Let Td1526
																																																																																																																													Let Tb1524
																																																																																																																														Let Tb1520
																																																																																																																															App o_isinvertm 
																																																																																																																															Let Tb1523
																																																																																																																																Let Td1522
																																																																																																																																	Let Ti1521
																																																																																																																																		Int:0
																																																																																																																																		Get vec Ti1521
																																																																																																																																	App fisnegTd1522 
																																																																																																																																App xorTb1520 Tb1523 
																																																																																																																														Let Td1525
																																																																																																																															App o_param_am 
																																																																																																																															App fneg_condTb1524 Td1525 
																																																																																																																													Put const Ti1519 Td1526
																																																																																																																											Let Ti1527
																																																																																																																												Int:1
																																																																																																																												Let Td1532
																																																																																																																													Let Td1528
																																																																																																																														Float:1.000000
																																																																																																																														Let Td1530
																																																																																																																															Let Ti1529
																																																																																																																																Int:0
																																																																																																																																Get vec Ti1529
																																																																																																																															Let Td1531
																																																																																																																																FReciprocal Td1530
																																																																																																																																FMul Td1528 Td1531
																																																																																																																													Put const Ti1527 Td1532
																																																																																																																										Let Ti1533
																																																																																																																											Int:1
																																																																																																																											Let Td1534
																																																																																																																												Float:0.000000
																																																																																																																												Put const Ti1533 Td1534
																																																																																																																							Let Tu87
																																																																																																																								Let Tb1537
																																																																																																																									Let Td1536
																																																																																																																										Let Ti1535
																																																																																																																											Int:1
																																																																																																																											Get vec Ti1535
																																																																																																																										App fiszeroTd1536 
																																																																																																																									Let Ti1538
																																																																																																																										Int:0
																																																																																																																										IfEq Tb1537 Ti1538
																																																																																																																											Let Tu84
																																																																																																																												Let Ti1539
																																																																																																																													Int:2
																																																																																																																													Let Td1546
																																																																																																																														Let Tb1544
																																																																																																																															Let Tb1540
																																																																																																																																App o_isinvertm 
																																																																																																																																Let Tb1543
																																																																																																																																	Let Td1542
																																																																																																																																		Let Ti1541
																																																																																																																																			Int:1
																																																																																																																																			Get vec Ti1541
																																																																																																																																		App fisnegTd1542 
																																																																																																																																	App xorTb1540 Tb1543 
																																																																																																																															Let Td1545
																																																																																																																																App o_param_bm 
																																																																																																																																App fneg_condTb1544 Td1545 
																																																																																																																														Put const Ti1539 Td1546
																																																																																																																												Let Ti1547
																																																																																																																													Int:3
																																																																																																																													Let Td1552
																																																																																																																														Let Td1548
																																																																																																																															Float:1.000000
																																																																																																																															Let Td1550
																																																																																																																																Let Ti1549
																																																																																																																																	Int:1
																																																																																																																																	Get vec Ti1549
																																																																																																																																Let Td1551
																																																																																																																																	FReciprocal Td1550
																																																																																																																																	FMul Td1548 Td1551
																																																																																																																														Put const Ti1547 Td1552
																																																																																																																											Let Ti1553
																																																																																																																												Int:3
																																																																																																																												Let Td1554
																																																																																																																													Float:0.000000
																																																																																																																													Put const Ti1553 Td1554
																																																																																																																								Let Tu86
																																																																																																																									Let Tb1557
																																																																																																																										Let Td1556
																																																																																																																											Let Ti1555
																																																																																																																												Int:2
																																																																																																																												Get vec Ti1555
																																																																																																																											App fiszeroTd1556 
																																																																																																																										Let Ti1558
																																																																																																																											Int:0
																																																																																																																											IfEq Tb1557 Ti1558
																																																																																																																												Let Tu85
																																																																																																																													Let Ti1559
																																																																																																																														Int:4
																																																																																																																														Let Td1566
																																																																																																																															Let Tb1564
																																																																																																																																Let Tb1560
																																																																																																																																	App o_isinvertm 
																																																																																																																																	Let Tb1563
																																																																																																																																		Let Td1562
																																																																																																																																			Let Ti1561
																																																																																																																																				Int:2
																																																																																																																																				Get vec Ti1561
																																																																																																																																			App fisnegTd1562 
																																																																																																																																		App xorTb1560 Tb1563 
																																																																																																																																Let Td1565
																																																																																																																																	App o_param_cm 
																																																																																																																																	App fneg_condTb1564 Td1565 
																																																																																																																															Put const Ti1559 Td1566
																																																																																																																													Let Ti1567
																																																																																																																														Int:5
																																																																																																																														Let Td1572
																																																																																																																															Let Td1568
																																																																																																																																Float:1.000000
																																																																																																																																Let Td1570
																																																																																																																																	Let Ti1569
																																																																																																																																		Int:2
																																																																																																																																		Get vec Ti1569
																																																																																																																																	Let Td1571
																																																																																																																																		FReciprocal Td1570
																																																																																																																																		FMul Td1568 Td1571
																																																																																																																															Put const Ti1567 Td1572
																																																																																																																												Let Ti1573
																																																																																																																													Int:5
																																																																																																																													Let Td1574
																																																																																																																														Float:0.000000
																																																																																																																														Put const Ti1573 Td1574
																																																																																																																									Var const
																																																																																																																					LetRec setup_surface_table vec m 
																																																																																																																						Let const
																																																																																																																							Let Ti1475
																																																																																																																								Int:4
																																																																																																																								Let Td1476
																																																																																																																									Float:0.000000
																																																																																																																									ExtFunApp create_float_array Ti1475,Td1476,
																																																																																																																							Let d
																																																																																																																								Let Td1485
																																																																																																																									Let Td1480
																																																																																																																										Let Td1478
																																																																																																																											Let Ti1477
																																																																																																																												Int:0
																																																																																																																												Get vec Ti1477
																																																																																																																											Let Td1479
																																																																																																																												App o_param_am 
																																																																																																																												FMul Td1478 Td1479
																																																																																																																										Let Td1484
																																																																																																																											Let Td1482
																																																																																																																												Let Ti1481
																																																																																																																													Int:1
																																																																																																																													Get vec Ti1481
																																																																																																																												Let Td1483
																																																																																																																													App o_param_bm 
																																																																																																																													FMul Td1482 Td1483
																																																																																																																											FAdd Td1480 Td1484
																																																																																																																									Let Td1489
																																																																																																																										Let Td1487
																																																																																																																											Let Ti1486
																																																																																																																												Int:2
																																																																																																																												Get vec Ti1486
																																																																																																																											Let Td1488
																																																																																																																												App o_param_cm 
																																																																																																																												FMul Td1487 Td1488
																																																																																																																										FAdd Td1485 Td1489
																																																																																																																								Let Tu92
																																																																																																																									Let Tb1490
																																																																																																																										App fisposd 
																																																																																																																										Let Ti1491
																																																																																																																											Int:0
																																																																																																																											IfEq Tb1490 Ti1491
																																																																																																																												Let Ti1492
																																																																																																																													Int:0
																																																																																																																													Let Td1493
																																																																																																																														Float:0.000000
																																																																																																																														Put const Ti1492 Td1493
																																																																																																																												Let Tu91
																																																																																																																													Let Ti1494
																																																																																																																														Int:0
																																																																																																																														Let Td1497
																																																																																																																															Let Td1495
																																																																																																																																Float:-1.000000
																																																																																																																																Let Td1496
																																																																																																																																	FReciprocal d
																																																																																																																																	FMul Td1495 Td1496
																																																																																																																															Put const Ti1494 Td1497
																																																																																																																													Let Tu90
																																																																																																																														Let Ti1498
																																																																																																																															Int:1
																																																																																																																															Let Td1502
																																																																																																																																Let Td1501
																																																																																																																																	Let Td1499
																																																																																																																																		App o_param_am 
																																																																																																																																		Let Td1500
																																																																																																																																			FReciprocal d
																																																																																																																																			FMul Td1499 Td1500
																																																																																																																																	App fnegTd1501 
																																																																																																																																Put const Ti1498 Td1502
																																																																																																																														Let Tu89
																																																																																																																															Let Ti1503
																																																																																																																																Int:2
																																																																																																																																Let Td1507
																																																																																																																																	Let Td1506
																																																																																																																																		Let Td1504
																																																																																																																																			App o_param_bm 
																																																																																																																																			Let Td1505
																																																																																																																																				FReciprocal d
																																																																																																																																				FMul Td1504 Td1505
																																																																																																																																		App fnegTd1506 
																																																																																																																																	Put const Ti1503 Td1507
																																																																																																																															Let Ti1508
																																																																																																																																Int:3
																																																																																																																																Let Td1512
																																																																																																																																	Let Td1511
																																																																																																																																		Let Td1509
																																																																																																																																			App o_param_cm 
																																																																																																																																			Let Td1510
																																																																																																																																				FReciprocal d
																																																																																																																																				FMul Td1509 Td1510
																																																																																																																																		App fnegTd1511 
																																																																																																																																	Put const Ti1508 Td1512
																																																																																																																									Var const
																																																																																																																						LetRec setup_second_table v m 
																																																																																																																							Let const
																																																																																																																								Let Ti1407
																																																																																																																									Int:5
																																																																																																																									Let Td1408
																																																																																																																										Float:0.000000
																																																																																																																										ExtFunApp create_float_array Ti1407,Td1408,
																																																																																																																								Let aa
																																																																																																																									Let Td1410
																																																																																																																										Let Ti1409
																																																																																																																											Int:0
																																																																																																																											Get v Ti1409
																																																																																																																										Let Td1412
																																																																																																																											Let Ti1411
																																																																																																																												Int:1
																																																																																																																												Get v Ti1411
																																																																																																																											Let Td1414
																																																																																																																												Let Ti1413
																																																																																																																													Int:2
																																																																																																																													Get v Ti1413
																																																																																																																												App quadraticm Td1410 Td1412 Td1414 
																																																																																																																									Let c1
																																																																																																																										Let Td1418
																																																																																																																											Let Td1416
																																																																																																																												Let Ti1415
																																																																																																																													Int:0
																																																																																																																													Get v Ti1415
																																																																																																																												Let Td1417
																																																																																																																													App o_param_am 
																																																																																																																													FMul Td1416 Td1417
																																																																																																																											App fnegTd1418 
																																																																																																																										Let c2
																																																																																																																											Let Td1422
																																																																																																																												Let Td1420
																																																																																																																													Let Ti1419
																																																																																																																														Int:1
																																																																																																																														Get v Ti1419
																																																																																																																													Let Td1421
																																																																																																																														App o_param_bm 
																																																																																																																														FMul Td1420 Td1421
																																																																																																																												App fnegTd1422 
																																																																																																																											Let c3
																																																																																																																												Let Td1426
																																																																																																																													Let Td1424
																																																																																																																														Let Ti1423
																																																																																																																															Int:2
																																																																																																																															Get v Ti1423
																																																																																																																														Let Td1425
																																																																																																																															App o_param_cm 
																																																																																																																															FMul Td1424 Td1425
																																																																																																																													App fnegTd1426 
																																																																																																																												Let Tu99
																																																																																																																													Let Ti1427
																																																																																																																														Int:0
																																																																																																																														Put const Ti1427 aa
																																																																																																																													Let Tu98
																																																																																																																														Let Ti1428
																																																																																																																															App o_isrotm 
																																																																																																																															Let Ti1429
																																																																																																																																Int:0
																																																																																																																																IfEq Ti1428 Ti1429
																																																																																																																																	Let Tu96
																																																																																																																																		Let Ti1430
																																																																																																																																			Int:1
																																																																																																																																			Put const Ti1430 c1
																																																																																																																																		Let Tu95
																																																																																																																																			Let Ti1431
																																																																																																																																				Int:2
																																																																																																																																				Put const Ti1431 c2
																																																																																																																																			Let Ti1432
																																																																																																																																				Int:3
																																																																																																																																				Put const Ti1432 c3
																																																																																																																																	Let Tu94
																																																																																																																																		Let Ti1433
																																																																																																																																			Int:1
																																																																																																																																			Let Td1444
																																																																																																																																				Let Td1443
																																																																																																																																					Let Td1442
																																																																																																																																						Let Td1437
																																																																																																																																							Let Td1435
																																																																																																																																								Let Ti1434
																																																																																																																																									Int:2
																																																																																																																																									Get v Ti1434
																																																																																																																																								Let Td1436
																																																																																																																																									App o_param_r2m 
																																																																																																																																									FMul Td1435 Td1436
																																																																																																																																							Let Td1441
																																																																																																																																								Let Td1439
																																																																																																																																									Let Ti1438
																																																																																																																																										Int:1
																																																																																																																																										Get v Ti1438
																																																																																																																																									Let Td1440
																																																																																																																																										App o_param_r3m 
																																																																																																																																										FMul Td1439 Td1440
																																																																																																																																								FAdd Td1437 Td1441
																																																																																																																																						App fhalfTd1442 
																																																																																																																																					FSub c1 Td1443
																																																																																																																																				Put const Ti1433 Td1444
																																																																																																																																		Let Tu93
																																																																																																																																			Let Ti1445
																																																																																																																																				Int:2
																																																																																																																																				Let Td1456
																																																																																																																																					Let Td1455
																																																																																																																																						Let Td1454
																																																																																																																																							Let Td1449
																																																																																																																																								Let Td1447
																																																																																																																																									Let Ti1446
																																																																																																																																										Int:2
																																																																																																																																										Get v Ti1446
																																																																																																																																									Let Td1448
																																																																																																																																										App o_param_r1m 
																																																																																																																																										FMul Td1447 Td1448
																																																																																																																																								Let Td1453
																																																																																																																																									Let Td1451
																																																																																																																																										Let Ti1450
																																																																																																																																											Int:0
																																																																																																																																											Get v Ti1450
																																																																																																																																										Let Td1452
																																																																																																																																											App o_param_r3m 
																																																																																																																																											FMul Td1451 Td1452
																																																																																																																																									FAdd Td1449 Td1453
																																																																																																																																							App fhalfTd1454 
																																																																																																																																						FSub c2 Td1455
																																																																																																																																					Put const Ti1445 Td1456
																																																																																																																																			Let Ti1457
																																																																																																																																				Int:3
																																																																																																																																				Let Td1468
																																																																																																																																					Let Td1467
																																																																																																																																						Let Td1466
																																																																																																																																							Let Td1461
																																																																																																																																								Let Td1459
																																																																																																																																									Let Ti1458
																																																																																																																																										Int:1
																																																																																																																																										Get v Ti1458
																																																																																																																																									Let Td1460
																																																																																																																																										App o_param_r1m 
																																																																																																																																										FMul Td1459 Td1460
																																																																																																																																								Let Td1465
																																																																																																																																									Let Td1463
																																																																																																																																										Let Ti1462
																																																																																																																																											Int:0
																																																																																																																																											Get v Ti1462
																																																																																																																																										Let Td1464
																																																																																																																																											App o_param_r2m 
																																																																																																																																											FMul Td1463 Td1464
																																																																																																																																									FAdd Td1461 Td1465
																																																																																																																																							App fhalfTd1466 
																																																																																																																																						FSub c3 Td1467
																																																																																																																																					Put const Ti1457 Td1468
																																																																																																																														Let Tu97
																																																																																																																															Let Tb1469
																																																																																																																																App fiszeroaa 
																																																																																																																																Let Ti1470
																																																																																																																																	Int:0
																																																																																																																																	IfEq Tb1469 Ti1470
																																																																																																																																		Let Ti1471
																																																																																																																																			Int:4
																																																																																																																																			Let Td1474
																																																																																																																																				Let Td1472
																																																																																																																																					Float:1.000000
																																																																																																																																					Let Td1473
																																																																																																																																						FReciprocal aa
																																																																																																																																						FMul Td1472 Td1473
																																																																																																																																				Put const Ti1471 Td1474
																																																																																																																																		Unit
																																																																																																																															Var const
																																																																																																																							LetRec iter_setup_dirvec_constants dirvec index 
																																																																																																																								Let Ti1399
																																																																																																																									Int:0
																																																																																																																									IfLE Ti1399 index
																																																																																																																										Let m
																																																																																																																											Get objects index
																																																																																																																											Let dconst
																																																																																																																												App d_constdirvec 
																																																																																																																												Let v
																																																																																																																													App d_vecdirvec 
																																																																																																																													Let m_shape
																																																																																																																														App o_formm 
																																																																																																																														Let Tu100
																																																																																																																															Let Ti1400
																																																																																																																																Int:1
																																																																																																																																IfEq m_shape Ti1400
																																																																																																																																	Let Ta1401
																																																																																																																																		App setup_rect_tablev m 
																																																																																																																																		Put dconst index Ta1401
																																																																																																																																	Let Ti1402
																																																																																																																																		Int:2
																																																																																																																																		IfEq m_shape Ti1402
																																																																																																																																			Let Ta1403
																																																																																																																																				App setup_surface_tablev m 
																																																																																																																																				Put dconst index Ta1403
																																																																																																																																			Let Ta1404
																																																																																																																																				App setup_second_tablev m 
																																																																																																																																				Put dconst index Ta1404
																																																																																																																															Let Ti1406
																																																																																																																																Let Ti1405
																																																																																																																																	Int:1
																																																																																																																																	Sub index Ti1405
																																																																																																																																App iter_setup_dirvec_constantsdirvec Ti1406 
																																																																																																																										Unit
																																																																																																																								LetRec setup_dirvec_constants dirvec 
																																																																																																																									Let Ti1398
																																																																																																																										Let Ti1396
																																																																																																																											Let Ti1395
																																																																																																																												Int:0
																																																																																																																												Get n_objects Ti1395
																																																																																																																											Let Ti1397
																																																																																																																												Int:1
																																																																																																																												Sub Ti1396 Ti1397
																																																																																																																										App iter_setup_dirvec_constantsdirvec Ti1398 
																																																																																																																									LetRec setup_startp_constants p index 
																																																																																																																										Let Ti1356
																																																																																																																											Int:0
																																																																																																																											IfLE Ti1356 index
																																																																																																																												Let obj
																																																																																																																													Get objects index
																																																																																																																													Let sconst
																																																																																																																														App o_param_ctblobj 
																																																																																																																														Let m_shape
																																																																																																																															App o_formobj 
																																																																																																																															Let Tu104
																																																																																																																																Let Ti1357
																																																																																																																																	Int:0
																																																																																																																																	Let Td1361
																																																																																																																																		Let Td1359
																																																																																																																																			Let Ti1358
																																																																																																																																				Int:0
																																																																																																																																				Get p Ti1358
																																																																																																																																			Let Td1360
																																																																																																																																				App o_param_xobj 
																																																																																																																																				FSub Td1359 Td1360
																																																																																																																																		Put sconst Ti1357 Td1361
																																																																																																																																Let Tu103
																																																																																																																																	Let Ti1362
																																																																																																																																		Int:1
																																																																																																																																		Let Td1366
																																																																																																																																			Let Td1364
																																																																																																																																				Let Ti1363
																																																																																																																																					Int:1
																																																																																																																																					Get p Ti1363
																																																																																																																																				Let Td1365
																																																																																																																																					App o_param_yobj 
																																																																																																																																					FSub Td1364 Td1365
																																																																																																																																			Put sconst Ti1362 Td1366
																																																																																																																																	Let Tu102
																																																																																																																																		Let Ti1367
																																																																																																																																			Int:2
																																																																																																																																			Let Td1371
																																																																																																																																				Let Td1369
																																																																																																																																					Let Ti1368
																																																																																																																																						Int:2
																																																																																																																																						Get p Ti1368
																																																																																																																																					Let Td1370
																																																																																																																																						App o_param_zobj 
																																																																																																																																						FSub Td1369 Td1370
																																																																																																																																				Put sconst Ti1367 Td1371
																																																																																																																																		Let Tu101
																																																																																																																																			Let Ti1372
																																																																																																																																				Int:2
																																																																																																																																				IfEq m_shape Ti1372
																																																																																																																																					Let Ti1373
																																																																																																																																						Int:3
																																																																																																																																						Let Td1381
																																																																																																																																							Let Ta1374
																																																																																																																																								App o_param_abcobj 
																																																																																																																																								Let Td1376
																																																																																																																																									Let Ti1375
																																																																																																																																										Int:0
																																																																																																																																										Get sconst Ti1375
																																																																																																																																									Let Td1378
																																																																																																																																										Let Ti1377
																																																																																																																																											Int:1
																																																																																																																																											Get sconst Ti1377
																																																																																																																																										Let Td1380
																																																																																																																																											Let Ti1379
																																																																																																																																												Int:2
																																																																																																																																												Get sconst Ti1379
																																																																																																																																											App veciprod2Ta1374 Td1376 Td1378 Td1380 
																																																																																																																																							Put sconst Ti1373 Td1381
																																																																																																																																					Let Ti1382
																																																																																																																																						Int:2
																																																																																																																																						IfLE m_shape Ti1382
																																																																																																																																							Unit
																																																																																																																																							Let cc0
																																																																																																																																								Let Td1384
																																																																																																																																									Let Ti1383
																																																																																																																																										Int:0
																																																																																																																																										Get sconst Ti1383
																																																																																																																																									Let Td1386
																																																																																																																																										Let Ti1385
																																																																																																																																											Int:1
																																																																																																																																											Get sconst Ti1385
																																																																																																																																										Let Td1388
																																																																																																																																											Let Ti1387
																																																																																																																																												Int:2
																																																																																																																																												Get sconst Ti1387
																																																																																																																																											App quadraticobj Td1384 Td1386 Td1388 
																																																																																																																																								Let Ti1389
																																																																																																																																									Int:3
																																																																																																																																									Let Td1392
																																																																																																																																										Let Ti1390
																																																																																																																																											Int:3
																																																																																																																																											IfEq m_shape Ti1390
																																																																																																																																												Let Td1391
																																																																																																																																													Float:1.000000
																																																																																																																																													FSub cc0 Td1391
																																																																																																																																												Var cc0
																																																																																																																																										Put sconst Ti1389 Td1392
																																																																																																																																			Let Ti1394
																																																																																																																																				Let Ti1393
																																																																																																																																					Int:1
																																																																																																																																					Sub index Ti1393
																																																																																																																																				App setup_startp_constantsp Ti1394 
																																																																																																																												Unit
																																																																																																																										LetRec setup_startp p 
																																																																																																																											Let Tu105
																																																																																																																												App veccpystartp_fast p 
																																																																																																																												Let Ti1355
																																																																																																																													Let Ti1353
																																																																																																																														Let Ti1352
																																																																																																																															Int:0
																																																																																																																															Get n_objects Ti1352
																																																																																																																														Let Ti1354
																																																																																																																															Int:1
																																																																																																																															Sub Ti1353 Ti1354
																																																																																																																													App setup_startp_constantsp Ti1355 
																																																																																																																											LetRec is_rect_outside m p0 p1 p2 
																																																																																																																												Let Ti1348
																																																																																																																													Let Tb1340
																																																																																																																														Let Td1338
																																																																																																																															App fabsp0 
																																																																																																																															Let Td1339
																																																																																																																																App o_param_am 
																																																																																																																																App flessTd1338 Td1339 
																																																																																																																														Let Ti1341
																																																																																																																															Int:0
																																																																																																																															IfEq Tb1340 Ti1341
																																																																																																																																Int:0
																																																																																																																																Let Tb1344
																																																																																																																																	Let Td1342
																																																																																																																																		App fabsp1 
																																																																																																																																		Let Td1343
																																																																																																																																			App o_param_bm 
																																																																																																																																			App flessTd1342 Td1343 
																																																																																																																																	Let Ti1345
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb1344 Ti1345
																																																																																																																																			Int:0
																																																																																																																																			Let Td1346
																																																																																																																																				App fabsp2 
																																																																																																																																				Let Td1347
																																																																																																																																					App o_param_cm 
																																																																																																																																					App flessTd1346 Td1347 
																																																																																																																													Let Ti1349
																																																																																																																														Int:0
																																																																																																																														IfEq Ti1348 Ti1349
																																																																																																																															Let Tb1350
																																																																																																																																App o_isinvertm 
																																																																																																																																Let Ti1351
																																																																																																																																	Int:0
																																																																																																																																	IfEq Tb1350 Ti1351
																																																																																																																																		Int:1
																																																																																																																																		Int:0
																																																																																																																															App o_isinvertm 
																																																																																																																												LetRec is_plane_outside m p0 p1 p2 
																																																																																																																													Let w
																																																																																																																														Let Ta1333
																																																																																																																															App o_param_abcm 
																																																																																																																															App veciprod2Ta1333 p0 p1 p2 
																																																																																																																														Let Tb1336
																																																																																																																															Let Tb1334
																																																																																																																																App o_isinvertm 
																																																																																																																																Let Tb1335
																																																																																																																																	App fisnegw 
																																																																																																																																	App xorTb1334 Tb1335 
																																																																																																																															Let Ti1337
																																																																																																																																Int:0
																																																																																																																																IfEq Tb1336 Ti1337
																																																																																																																																	Int:1
																																																																																																																																	Int:0
																																																																																																																													LetRec is_second_outside m p0 p1 p2 
																																																																																																																														Let w
																																																																																																																															App quadraticm p0 p1 p2 
																																																																																																																															Let w2
																																																																																																																																Let Ti1326
																																																																																																																																	App o_formm 
																																																																																																																																	Let Ti1327
																																																																																																																																		Int:3
																																																																																																																																		IfEq Ti1326 Ti1327
																																																																																																																																			Let Td1328
																																																																																																																																				Float:1.000000
																																																																																																																																				FSub w Td1328
																																																																																																																																			Var w
																																																																																																																																Let Tb1331
																																																																																																																																	Let Tb1329
																																																																																																																																		App o_isinvertm 
																																																																																																																																		Let Tb1330
																																																																																																																																			App fisnegw2 
																																																																																																																																			App xorTb1329 Tb1330 
																																																																																																																																	Let Ti1332
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb1331 Ti1332
																																																																																																																																			Int:1
																																																																																																																																			Int:0
																																																																																																																														LetRec is_outside m q0 q1 q2 
																																																																																																																															Let p0
																																																																																																																																Let Td1321
																																																																																																																																	App o_param_xm 
																																																																																																																																	FSub q0 Td1321
																																																																																																																																Let p1
																																																																																																																																	Let Td1322
																																																																																																																																		App o_param_ym 
																																																																																																																																		FSub q1 Td1322
																																																																																																																																	Let p2
																																																																																																																																		Let Td1323
																																																																																																																																			App o_param_zm 
																																																																																																																																			FSub q2 Td1323
																																																																																																																																		Let m_shape
																																																																																																																																			App o_formm 
																																																																																																																																			Let Ti1324
																																																																																																																																				Int:1
																																																																																																																																				IfEq m_shape Ti1324
																																																																																																																																					App is_rect_outsidem p0 p1 p2 
																																																																																																																																					Let Ti1325
																																																																																																																																						Int:2
																																																																																																																																						IfEq m_shape Ti1325
																																																																																																																																							App is_plane_outsidem p0 p1 p2 
																																																																																																																																							App is_second_outsidem p0 p1 p2 
																																																																																																																															LetRec check_all_inside ofs iand q0 q1 q2 
																																																																																																																																Let head
																																																																																																																																	Get iand ofs
																																																																																																																																	Let Ti1315
																																																																																																																																		Let Ti1314
																																																																																																																																			Int:1
																																																																																																																																			Neg Ti1314
																																																																																																																																		IfEq head Ti1315
																																																																																																																																			Int:1
																																																																																																																																			Let Tb1317
																																																																																																																																				Let Tt1316
																																																																																																																																					Get objects head
																																																																																																																																					App is_outsideTt1316 q0 q1 q2 
																																																																																																																																				Let Ti1318
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb1317 Ti1318
																																																																																																																																						Let Ti1320
																																																																																																																																							Let Ti1319
																																																																																																																																								Int:1
																																																																																																																																								Add ofs Ti1319
																																																																																																																																							App check_all_insideTi1320 iand q0 q1 q2 
																																																																																																																																						Int:0
																																																																																																																																LetRec shadow_check_and_group iand_ofs and_group 
																																																																																																																																	Let Ti1280
																																																																																																																																		Get and_group iand_ofs
																																																																																																																																		Let Ti1282
																																																																																																																																			Let Ti1281
																																																																																																																																				Int:1
																																																																																																																																				Neg Ti1281
																																																																																																																																			IfEq Ti1280 Ti1282
																																																																																																																																				Int:0
																																																																																																																																				Let obj
																																																																																																																																					Get and_group iand_ofs
																																																																																																																																					Let t0
																																																																																																																																						App solver_fastobj light_dirvec intersection_point 
																																																																																																																																						Let t0p
																																																																																																																																							Let Ti1283
																																																																																																																																								Int:0
																																																																																																																																								Get solver_dist Ti1283
																																																																																																																																							Let Ti1286
																																																																																																																																								Let Ti1284
																																																																																																																																									Int:0
																																																																																																																																									IfEq t0 Ti1284
																																																																																																																																										Int:0
																																																																																																																																										Let Td1285
																																																																																																																																											Float:-0.200000
																																																																																																																																											App flesst0p Td1285 
																																																																																																																																								Let Ti1287
																																																																																																																																									Int:0
																																																																																																																																									IfEq Ti1286 Ti1287
																																																																																																																																										Let Tb1289
																																																																																																																																											Let Tt1288
																																																																																																																																												Get objects obj
																																																																																																																																												App o_isinvertTt1288 
																																																																																																																																											Let Ti1290
																																																																																																																																												Int:0
																																																																																																																																												IfEq Tb1289 Ti1290
																																																																																																																																													Int:0
																																																																																																																																													Let Ti1292
																																																																																																																																														Let Ti1291
																																																																																																																																															Int:1
																																																																																																																																															Add iand_ofs Ti1291
																																																																																																																																														App shadow_check_and_groupTi1292 and_group 
																																																																																																																																										Let t
																																																																																																																																											Let Td1293
																																																																																																																																												Float:0.010000
																																																																																																																																												FAdd t0p Td1293
																																																																																																																																											Let q0
																																																																																																																																												Let Td1296
																																																																																																																																													Let Td1295
																																																																																																																																														Let Ti1294
																																																																																																																																															Int:0
																																																																																																																																															Get light Ti1294
																																																																																																																																														FMul Td1295 t
																																																																																																																																													Let Td1298
																																																																																																																																														Let Ti1297
																																																																																																																																															Int:0
																																																																																																																																															Get intersection_point Ti1297
																																																																																																																																														FAdd Td1296 Td1298
																																																																																																																																												Let q1
																																																																																																																																													Let Td1301
																																																																																																																																														Let Td1300
																																																																																																																																															Let Ti1299
																																																																																																																																																Int:1
																																																																																																																																																Get light Ti1299
																																																																																																																																															FMul Td1300 t
																																																																																																																																														Let Td1303
																																																																																																																																															Let Ti1302
																																																																																																																																																Int:1
																																																																																																																																																Get intersection_point Ti1302
																																																																																																																																															FAdd Td1301 Td1303
																																																																																																																																													Let q2
																																																																																																																																														Let Td1306
																																																																																																																																															Let Td1305
																																																																																																																																																Let Ti1304
																																																																																																																																																	Int:2
																																																																																																																																																	Get light Ti1304
																																																																																																																																																FMul Td1305 t
																																																																																																																																															Let Td1308
																																																																																																																																																Let Ti1307
																																																																																																																																																	Int:2
																																																																																																																																																	Get intersection_point Ti1307
																																																																																																																																																FAdd Td1306 Td1308
																																																																																																																																														Let Tb1310
																																																																																																																																															Let Ti1309
																																																																																																																																																Int:0
																																																																																																																																																App check_all_insideTi1309 and_group q0 q1 q2 
																																																																																																																																															Let Ti1311
																																																																																																																																																Int:0
																																																																																																																																																IfEq Tb1310 Ti1311
																																																																																																																																																	Let Ti1313
																																																																																																																																																		Let Ti1312
																																																																																																																																																			Int:1
																																																																																																																																																			Add iand_ofs Ti1312
																																																																																																																																																		App shadow_check_and_groupTi1313 and_group 
																																																																																																																																																	Int:1
																																																																																																																																	LetRec shadow_check_one_or_group ofs or_group 
																																																																																																																																		Let head
																																																																																																																																			Get or_group ofs
																																																																																																																																			Let Ti1275
																																																																																																																																				Let Ti1274
																																																																																																																																					Int:1
																																																																																																																																					Neg Ti1274
																																																																																																																																				IfEq head Ti1275
																																																																																																																																					Int:0
																																																																																																																																					Let and_group
																																																																																																																																						Get and_net head
																																																																																																																																						Let shadow_p
																																																																																																																																							Let Ti1276
																																																																																																																																								Int:0
																																																																																																																																								App shadow_check_and_groupTi1276 and_group 
																																																																																																																																							Let Ti1277
																																																																																																																																								Int:0
																																																																																																																																								IfEq shadow_p Ti1277
																																																																																																																																									Let Ti1279
																																																																																																																																										Let Ti1278
																																																																																																																																											Int:1
																																																																																																																																											Add ofs Ti1278
																																																																																																																																										App shadow_check_one_or_groupTi1279 or_group 
																																																																																																																																									Int:1
																																																																																																																																		LetRec shadow_check_one_or_matrix ofs or_matrix 
																																																																																																																																			Let head
																																																																																																																																				Get or_matrix ofs
																																																																																																																																				Let range_primitive
																																																																																																																																					Let Ti1252
																																																																																																																																						Int:0
																																																																																																																																						Get head Ti1252
																																																																																																																																					Let Ti1254
																																																																																																																																						Let Ti1253
																																																																																																																																							Int:1
																																																																																																																																							Neg Ti1253
																																																																																																																																						IfEq range_primitive Ti1254
																																																																																																																																							Int:0
																																																																																																																																							Let Ti1265
																																																																																																																																								Let Ti1255
																																																																																																																																									Int:99
																																																																																																																																									IfEq range_primitive Ti1255
																																																																																																																																										Int:1
																																																																																																																																										Let t
																																																																																																																																											App solver_fastrange_primitive light_dirvec intersection_point 
																																																																																																																																											Let Ti1256
																																																																																																																																												Int:0
																																																																																																																																												IfEq t Ti1256
																																																																																																																																													Int:0
																																																																																																																																													Let Tb1260
																																																																																																																																														Let Td1258
																																																																																																																																															Let Ti1257
																																																																																																																																																Int:0
																																																																																																																																																Get solver_dist Ti1257
																																																																																																																																															Let Td1259
																																																																																																																																																Float:-0.100000
																																																																																																																																																App flessTd1258 Td1259 
																																																																																																																																														Let Ti1261
																																																																																																																																															Int:0
																																																																																																																																															IfEq Tb1260 Ti1261
																																																																																																																																																Int:0
																																																																																																																																																Let Tb1263
																																																																																																																																																	Let Ti1262
																																																																																																																																																		Int:1
																																																																																																																																																		App shadow_check_one_or_groupTi1262 head 
																																																																																																																																																	Let Ti1264
																																																																																																																																																		Int:0
																																																																																																																																																		IfEq Tb1263 Ti1264
																																																																																																																																																			Int:0
																																																																																																																																																			Int:1
																																																																																																																																								Let Ti1266
																																																																																																																																									Int:0
																																																																																																																																									IfEq Ti1265 Ti1266
																																																																																																																																										Let Ti1268
																																																																																																																																											Let Ti1267
																																																																																																																																												Int:1
																																																																																																																																												Add ofs Ti1267
																																																																																																																																											App shadow_check_one_or_matrixTi1268 or_matrix 
																																																																																																																																										Let Tb1270
																																																																																																																																											Let Ti1269
																																																																																																																																												Int:1
																																																																																																																																												App shadow_check_one_or_groupTi1269 head 
																																																																																																																																											Let Ti1271
																																																																																																																																												Int:0
																																																																																																																																												IfEq Tb1270 Ti1271
																																																																																																																																													Let Ti1273
																																																																																																																																														Let Ti1272
																																																																																																																																															Int:1
																																																																																																																																															Add ofs Ti1272
																																																																																																																																														App shadow_check_one_or_matrixTi1273 or_matrix 
																																																																																																																																													Int:1
																																																																																																																																			LetRec solve_each_element iand_ofs and_group dirvec 
																																																																																																																																				Let iobj
																																																																																																																																					Get and_group iand_ofs
																																																																																																																																					Let Ti1213
																																																																																																																																						Let Ti1212
																																																																																																																																							Int:1
																																																																																																																																							Neg Ti1212
																																																																																																																																						IfEq iobj Ti1213
																																																																																																																																							Unit
																																																																																																																																							Let t0
																																																																																																																																								App solveriobj dirvec startp 
																																																																																																																																								Let Ti1214
																																																																																																																																									Int:0
																																																																																																																																									IfEq t0 Ti1214
																																																																																																																																										Let Tb1216
																																																																																																																																											Let Tt1215
																																																																																																																																												Get objects iobj
																																																																																																																																												App o_isinvertTt1215 
																																																																																																																																											Let Ti1217
																																																																																																																																												Int:0
																																																																																																																																												IfEq Tb1216 Ti1217
																																																																																																																																													Unit
																																																																																																																																													Let Ti1219
																																																																																																																																														Let Ti1218
																																																																																																																																															Int:1
																																																																																																																																															Add iand_ofs Ti1218
																																																																																																																																														App solve_each_elementTi1219 and_group dirvec 
																																																																																																																																										Let t0p
																																																																																																																																											Let Ti1220
																																																																																																																																												Int:0
																																																																																																																																												Get solver_dist Ti1220
																																																																																																																																											Let Tu109
																																																																																																																																												Let Tb1222
																																																																																																																																													Let Td1221
																																																																																																																																														Float:0.000000
																																																																																																																																														App flessTd1221 t0p 
																																																																																																																																													Let Ti1223
																																																																																																																																														Int:0
																																																																																																																																														IfEq Tb1222 Ti1223
																																																																																																																																															Unit
																																																																																																																																															Let Tb1226
																																																																																																																																																Let Td1225
																																																																																																																																																	Let Ti1224
																																																																																																																																																		Int:0
																																																																																																																																																		Get tmin Ti1224
																																																																																																																																																	App flesst0p Td1225 
																																																																																																																																																Let Ti1227
																																																																																																																																																	Int:0
																																																																																																																																																	IfEq Tb1226 Ti1227
																																																																																																																																																		Unit
																																																																																																																																																		Let t
																																																																																																																																																			Let Td1228
																																																																																																																																																				Float:0.010000
																																																																																																																																																				FAdd t0p Td1228
																																																																																																																																																			Let q0
																																																																																																																																																				Let Td1231
																																																																																																																																																					Let Td1230
																																																																																																																																																						Let Ti1229
																																																																																																																																																							Int:0
																																																																																																																																																							Get dirvec Ti1229
																																																																																																																																																						FMul Td1230 t
																																																																																																																																																					Let Td1233
																																																																																																																																																						Let Ti1232
																																																																																																																																																							Int:0
																																																																																																																																																							Get startp Ti1232
																																																																																																																																																						FAdd Td1231 Td1233
																																																																																																																																																				Let q1
																																																																																																																																																					Let Td1236
																																																																																																																																																						Let Td1235
																																																																																																																																																							Let Ti1234
																																																																																																																																																								Int:1
																																																																																																																																																								Get dirvec Ti1234
																																																																																																																																																							FMul Td1235 t
																																																																																																																																																						Let Td1238
																																																																																																																																																							Let Ti1237
																																																																																																																																																								Int:1
																																																																																																																																																								Get startp Ti1237
																																																																																																																																																							FAdd Td1236 Td1238
																																																																																																																																																					Let q2
																																																																																																																																																						Let Td1241
																																																																																																																																																							Let Td1240
																																																																																																																																																								Let Ti1239
																																																																																																																																																									Int:2
																																																																																																																																																									Get dirvec Ti1239
																																																																																																																																																								FMul Td1240 t
																																																																																																																																																							Let Td1243
																																																																																																																																																								Let Ti1242
																																																																																																																																																									Int:2
																																																																																																																																																									Get startp Ti1242
																																																																																																																																																								FAdd Td1241 Td1243
																																																																																																																																																						Let Tb1245
																																																																																																																																																							Let Ti1244
																																																																																																																																																								Int:0
																																																																																																																																																								App check_all_insideTi1244 and_group q0 q1 q2 
																																																																																																																																																							Let Ti1246
																																																																																																																																																								Int:0
																																																																																																																																																								IfEq Tb1245 Ti1246
																																																																																																																																																									Unit
																																																																																																																																																									Let Tu108
																																																																																																																																																										Let Ti1247
																																																																																																																																																											Int:0
																																																																																																																																																											Put tmin Ti1247 t
																																																																																																																																																										Let Tu107
																																																																																																																																																											App vecsetintersection_point q0 q1 q2 
																																																																																																																																																											Let Tu106
																																																																																																																																																												Let Ti1248
																																																																																																																																																													Int:0
																																																																																																																																																													Put intersected_object_id Ti1248 iobj
																																																																																																																																																												Let Ti1249
																																																																																																																																																													Int:0
																																																																																																																																																													Put intsec_rectside Ti1249 t0
																																																																																																																																												Let Ti1251
																																																																																																																																													Let Ti1250
																																																																																																																																														Int:1
																																																																																																																																														Add iand_ofs Ti1250
																																																																																																																																													App solve_each_elementTi1251 and_group dirvec 
																																																																																																																																				LetRec solve_one_or_network ofs or_group dirvec 
																																																																																																																																					Let head
																																																																																																																																						Get or_group ofs
																																																																																																																																						Let Ti1208
																																																																																																																																							Let Ti1207
																																																																																																																																								Int:1
																																																																																																																																								Neg Ti1207
																																																																																																																																							IfEq head Ti1208
																																																																																																																																								Unit
																																																																																																																																								Let and_group
																																																																																																																																									Get and_net head
																																																																																																																																									Let Tu110
																																																																																																																																										Let Ti1209
																																																																																																																																											Int:0
																																																																																																																																											App solve_each_elementTi1209 and_group dirvec 
																																																																																																																																										Let Ti1211
																																																																																																																																											Let Ti1210
																																																																																																																																												Int:1
																																																																																																																																												Add ofs Ti1210
																																																																																																																																											App solve_one_or_networkTi1211 or_group dirvec 
																																																																																																																																					LetRec trace_or_matrix ofs or_network dirvec 
																																																																																																																																						Let head
																																																																																																																																							Get or_network ofs
																																																																																																																																							Let range_primitive
																																																																																																																																								Let Ti1193
																																																																																																																																									Int:0
																																																																																																																																									Get head Ti1193
																																																																																																																																								Let Ti1195
																																																																																																																																									Let Ti1194
																																																																																																																																										Int:1
																																																																																																																																										Neg Ti1194
																																																																																																																																									IfEq range_primitive Ti1195
																																																																																																																																										Unit
																																																																																																																																										Let Tu111
																																																																																																																																											Let Ti1196
																																																																																																																																												Int:99
																																																																																																																																												IfEq range_primitive Ti1196
																																																																																																																																													Let Ti1197
																																																																																																																																														Int:1
																																																																																																																																														App solve_one_or_networkTi1197 head dirvec 
																																																																																																																																													Let t
																																																																																																																																														App solverrange_primitive dirvec startp 
																																																																																																																																														Let Ti1198
																																																																																																																																															Int:0
																																																																																																																																															IfEq t Ti1198
																																																																																																																																																Unit
																																																																																																																																																Let tp
																																																																																																																																																	Let Ti1199
																																																																																																																																																		Int:0
																																																																																																																																																		Get solver_dist Ti1199
																																																																																																																																																	Let Tb1202
																																																																																																																																																		Let Td1201
																																																																																																																																																			Let Ti1200
																																																																																																																																																				Int:0
																																																																																																																																																				Get tmin Ti1200
																																																																																																																																																			App flesstp Td1201 
																																																																																																																																																		Let Ti1203
																																																																																																																																																			Int:0
																																																																																																																																																			IfEq Tb1202 Ti1203
																																																																																																																																																				Unit
																																																																																																																																																				Let Ti1204
																																																																																																																																																					Int:1
																																																																																																																																																					App solve_one_or_networkTi1204 head dirvec 
																																																																																																																																											Let Ti1206
																																																																																																																																												Let Ti1205
																																																																																																																																													Int:1
																																																																																																																																													Add ofs Ti1205
																																																																																																																																												App trace_or_matrixTi1206 or_network dirvec 
																																																																																																																																						LetRec judge_intersection dirvec 
																																																																																																																																							Let Tu113
																																																																																																																																								Let Ti1183
																																																																																																																																									Int:0
																																																																																																																																									Let Td1184
																																																																																																																																										Float:1000000000.000000
																																																																																																																																										Put tmin Ti1183 Td1184
																																																																																																																																								Let Tu112
																																																																																																																																									Let Ti1185
																																																																																																																																										Int:0
																																																																																																																																										Let Ta1187
																																																																																																																																											Let Ti1186
																																																																																																																																												Int:0
																																																																																																																																												Get or_net Ti1186
																																																																																																																																											App trace_or_matrixTi1185 Ta1187 dirvec 
																																																																																																																																									Let t
																																																																																																																																										Let Ti1188
																																																																																																																																											Int:0
																																																																																																																																											Get tmin Ti1188
																																																																																																																																										Let Tb1190
																																																																																																																																											Let Td1189
																																																																																																																																												Float:-0.100000
																																																																																																																																												App flessTd1189 t 
																																																																																																																																											Let Ti1191
																																																																																																																																												Int:0
																																																																																																																																												IfEq Tb1190 Ti1191
																																																																																																																																													Int:0
																																																																																																																																													Let Td1192
																																																																																																																																														Float:100000000.000000
																																																																																																																																														App flesst Td1192 
																																																																																																																																							LetRec solve_each_element_fast iand_ofs and_group dirvec 
																																																																																																																																								Let vec
																																																																																																																																									App d_vecdirvec 
																																																																																																																																									Let iobj
																																																																																																																																										Get and_group iand_ofs
																																																																																																																																										Let Ti1144
																																																																																																																																											Let Ti1143
																																																																																																																																												Int:1
																																																																																																																																												Neg Ti1143
																																																																																																																																											IfEq iobj Ti1144
																																																																																																																																												Unit
																																																																																																																																												Let t0
																																																																																																																																													App solver_fast2iobj dirvec 
																																																																																																																																													Let Ti1145
																																																																																																																																														Int:0
																																																																																																																																														IfEq t0 Ti1145
																																																																																																																																															Let Tb1147
																																																																																																																																																Let Tt1146
																																																																																																																																																	Get objects iobj
																																																																																																																																																	App o_isinvertTt1146 
																																																																																																																																																Let Ti1148
																																																																																																																																																	Int:0
																																																																																																																																																	IfEq Tb1147 Ti1148
																																																																																																																																																		Unit
																																																																																																																																																		Let Ti1150
																																																																																																																																																			Let Ti1149
																																																																																																																																																				Int:1
																																																																																																																																																				Add iand_ofs Ti1149
																																																																																																																																																			App solve_each_element_fastTi1150 and_group dirvec 
																																																																																																																																															Let t0p
																																																																																																																																																Let Ti1151
																																																																																																																																																	Int:0
																																																																																																																																																	Get solver_dist Ti1151
																																																																																																																																																Let Tu117
																																																																																																																																																	Let Tb1153
																																																																																																																																																		Let Td1152
																																																																																																																																																			Float:0.000000
																																																																																																																																																			App flessTd1152 t0p 
																																																																																																																																																		Let Ti1154
																																																																																																																																																			Int:0
																																																																																																																																																			IfEq Tb1153 Ti1154
																																																																																																																																																				Unit
																																																																																																																																																				Let Tb1157
																																																																																																																																																					Let Td1156
																																																																																																																																																						Let Ti1155
																																																																																																																																																							Int:0
																																																																																																																																																							Get tmin Ti1155
																																																																																																																																																						App flesst0p Td1156 
																																																																																																																																																					Let Ti1158
																																																																																																																																																						Int:0
																																																																																																																																																						IfEq Tb1157 Ti1158
																																																																																																																																																							Unit
																																																																																																																																																							Let t
																																																																																																																																																								Let Td1159
																																																																																																																																																									Float:0.010000
																																																																																																																																																									FAdd t0p Td1159
																																																																																																																																																								Let q0
																																																																																																																																																									Let Td1162
																																																																																																																																																										Let Td1161
																																																																																																																																																											Let Ti1160
																																																																																																																																																												Int:0
																																																																																																																																																												Get vec Ti1160
																																																																																																																																																											FMul Td1161 t
																																																																																																																																																										Let Td1164
																																																																																																																																																											Let Ti1163
																																																																																																																																																												Int:0
																																																																																																																																																												Get startp_fast Ti1163
																																																																																																																																																											FAdd Td1162 Td1164
																																																																																																																																																									Let q1
																																																																																																																																																										Let Td1167
																																																																																																																																																											Let Td1166
																																																																																																																																																												Let Ti1165
																																																																																																																																																													Int:1
																																																																																																																																																													Get vec Ti1165
																																																																																																																																																												FMul Td1166 t
																																																																																																																																																											Let Td1169
																																																																																																																																																												Let Ti1168
																																																																																																																																																													Int:1
																																																																																																																																																													Get startp_fast Ti1168
																																																																																																																																																												FAdd Td1167 Td1169
																																																																																																																																																										Let q2
																																																																																																																																																											Let Td1172
																																																																																																																																																												Let Td1171
																																																																																																																																																													Let Ti1170
																																																																																																																																																														Int:2
																																																																																																																																																														Get vec Ti1170
																																																																																																																																																													FMul Td1171 t
																																																																																																																																																												Let Td1174
																																																																																																																																																													Let Ti1173
																																																																																																																																																														Int:2
																																																																																																																																																														Get startp_fast Ti1173
																																																																																																																																																													FAdd Td1172 Td1174
																																																																																																																																																											Let Tb1176
																																																																																																																																																												Let Ti1175
																																																																																																																																																													Int:0
																																																																																																																																																													App check_all_insideTi1175 and_group q0 q1 q2 
																																																																																																																																																												Let Ti1177
																																																																																																																																																													Int:0
																																																																																																																																																													IfEq Tb1176 Ti1177
																																																																																																																																																														Unit
																																																																																																																																																														Let Tu116
																																																																																																																																																															Let Ti1178
																																																																																																																																																																Int:0
																																																																																																																																																																Put tmin Ti1178 t
																																																																																																																																																															Let Tu115
																																																																																																																																																																App vecsetintersection_point q0 q1 q2 
																																																																																																																																																																Let Tu114
																																																																																																																																																																	Let Ti1179
																																																																																																																																																																		Int:0
																																																																																																																																																																		Put intersected_object_id Ti1179 iobj
																																																																																																																																																																	Let Ti1180
																																																																																																																																																																		Int:0
																																																																																																																																																																		Put intsec_rectside Ti1180 t0
																																																																																																																																																	Let Ti1182
																																																																																																																																																		Let Ti1181
																																																																																																																																																			Int:1
																																																																																																																																																			Add iand_ofs Ti1181
																																																																																																																																																		App solve_each_element_fastTi1182 and_group dirvec 
																																																																																																																																								LetRec solve_one_or_network_fast ofs or_group dirvec 
																																																																																																																																									Let head
																																																																																																																																										Get or_group ofs
																																																																																																																																										Let Ti1139
																																																																																																																																											Let Ti1138
																																																																																																																																												Int:1
																																																																																																																																												Neg Ti1138
																																																																																																																																											IfEq head Ti1139
																																																																																																																																												Unit
																																																																																																																																												Let and_group
																																																																																																																																													Get and_net head
																																																																																																																																													Let Tu118
																																																																																																																																														Let Ti1140
																																																																																																																																															Int:0
																																																																																																																																															App solve_each_element_fastTi1140 and_group dirvec 
																																																																																																																																														Let Ti1142
																																																																																																																																															Let Ti1141
																																																																																																																																																Int:1
																																																																																																																																																Add ofs Ti1141
																																																																																																																																															App solve_one_or_network_fastTi1142 or_group dirvec 
																																																																																																																																									LetRec trace_or_matrix_fast ofs or_network dirvec 
																																																																																																																																										Let head
																																																																																																																																											Get or_network ofs
																																																																																																																																											Let range_primitive
																																																																																																																																												Let Ti1124
																																																																																																																																													Int:0
																																																																																																																																													Get head Ti1124
																																																																																																																																												Let Ti1126
																																																																																																																																													Let Ti1125
																																																																																																																																														Int:1
																																																																																																																																														Neg Ti1125
																																																																																																																																													IfEq range_primitive Ti1126
																																																																																																																																														Unit
																																																																																																																																														Let Tu119
																																																																																																																																															Let Ti1127
																																																																																																																																																Int:99
																																																																																																																																																IfEq range_primitive Ti1127
																																																																																																																																																	Let Ti1128
																																																																																																																																																		Int:1
																																																																																																																																																		App solve_one_or_network_fastTi1128 head dirvec 
																																																																																																																																																	Let t
																																																																																																																																																		App solver_fast2range_primitive dirvec 
																																																																																																																																																		Let Ti1129
																																																																																																																																																			Int:0
																																																																																																																																																			IfEq t Ti1129
																																																																																																																																																				Unit
																																																																																																																																																				Let tp
																																																																																																																																																					Let Ti1130
																																																																																																																																																						Int:0
																																																																																																																																																						Get solver_dist Ti1130
																																																																																																																																																					Let Tb1133
																																																																																																																																																						Let Td1132
																																																																																																																																																							Let Ti1131
																																																																																																																																																								Int:0
																																																																																																																																																								Get tmin Ti1131
																																																																																																																																																							App flesstp Td1132 
																																																																																																																																																						Let Ti1134
																																																																																																																																																							Int:0
																																																																																																																																																							IfEq Tb1133 Ti1134
																																																																																																																																																								Unit
																																																																																																																																																								Let Ti1135
																																																																																																																																																									Int:1
																																																																																																																																																									App solve_one_or_network_fastTi1135 head dirvec 
																																																																																																																																															Let Ti1137
																																																																																																																																																Let Ti1136
																																																																																																																																																	Int:1
																																																																																																																																																	Add ofs Ti1136
																																																																																																																																																App trace_or_matrix_fastTi1137 or_network dirvec 
																																																																																																																																										LetRec judge_intersection_fast dirvec 
																																																																																																																																											Let Tu121
																																																																																																																																												Let Ti1114
																																																																																																																																													Int:0
																																																																																																																																													Let Td1115
																																																																																																																																														Float:1000000000.000000
																																																																																																																																														Put tmin Ti1114 Td1115
																																																																																																																																												Let Tu120
																																																																																																																																													Let Ti1116
																																																																																																																																														Int:0
																																																																																																																																														Let Ta1118
																																																																																																																																															Let Ti1117
																																																																																																																																																Int:0
																																																																																																																																																Get or_net Ti1117
																																																																																																																																															App trace_or_matrix_fastTi1116 Ta1118 dirvec 
																																																																																																																																													Let t
																																																																																																																																														Let Ti1119
																																																																																																																																															Int:0
																																																																																																																																															Get tmin Ti1119
																																																																																																																																														Let Tb1121
																																																																																																																																															Let Td1120
																																																																																																																																																Float:-0.100000
																																																																																																																																																App flessTd1120 t 
																																																																																																																																															Let Ti1122
																																																																																																																																																Int:0
																																																																																																																																																IfEq Tb1121 Ti1122
																																																																																																																																																	Int:0
																																																																																																																																																	Let Td1123
																																																																																																																																																		Float:100000000.000000
																																																																																																																																																		App flesst Td1123 
																																																																																																																																											LetRec get_nvector_rect dirvec 
																																																																																																																																												Let rectside
																																																																																																																																													Let Ti1106
																																																																																																																																														Int:0
																																																																																																																																														Get intsec_rectside Ti1106
																																																																																																																																													Let Tu122
																																																																																																																																														App vecbzeronvector 
																																																																																																																																														Let Ti1108
																																																																																																																																															Let Ti1107
																																																																																																																																																Int:1
																																																																																																																																																Sub rectside Ti1107
																																																																																																																																															Let Td1113
																																																																																																																																																Let Td1112
																																																																																																																																																	Let Td1111
																																																																																																																																																		Let Ti1110
																																																																																																																																																			Let Ti1109
																																																																																																																																																				Int:1
																																																																																																																																																				Sub rectside Ti1109
																																																																																																																																																			Get dirvec Ti1110
																																																																																																																																																		App sgnTd1111 
																																																																																																																																																	App fnegTd1112 
																																																																																																																																																Put nvector Ti1108 Td1113
																																																																																																																																												LetRec get_nvector_plane m 
																																																																																																																																													Let Tu124
																																																																																																																																														Let Ti1097
																																																																																																																																															Int:0
																																																																																																																																															Let Td1099
																																																																																																																																																Let Td1098
																																																																																																																																																	App o_param_am 
																																																																																																																																																	App fnegTd1098 
																																																																																																																																																Put nvector Ti1097 Td1099
																																																																																																																																														Let Tu123
																																																																																																																																															Let Ti1100
																																																																																																																																																Int:1
																																																																																																																																																Let Td1102
																																																																																																																																																	Let Td1101
																																																																																																																																																		App o_param_bm 
																																																																																																																																																		App fnegTd1101 
																																																																																																																																																	Put nvector Ti1100 Td1102
																																																																																																																																															Let Ti1103
																																																																																																																																																Int:2
																																																																																																																																																Let Td1105
																																																																																																																																																	Let Td1104
																																																																																																																																																		App o_param_cm 
																																																																																																																																																		App fnegTd1104 
																																																																																																																																																	Put nvector Ti1103 Td1105
																																																																																																																																													LetRec get_nvector_second m 
																																																																																																																																														Let p0
																																																																																																																																															Let Td1056
																																																																																																																																																Let Ti1055
																																																																																																																																																	Int:0
																																																																																																																																																	Get intersection_point Ti1055
																																																																																																																																																Let Td1057
																																																																																																																																																	App o_param_xm 
																																																																																																																																																	FSub Td1056 Td1057
																																																																																																																																															Let p1
																																																																																																																																																Let Td1059
																																																																																																																																																	Let Ti1058
																																																																																																																																																		Int:1
																																																																																																																																																		Get intersection_point Ti1058
																																																																																																																																																	Let Td1060
																																																																																																																																																		App o_param_ym 
																																																																																																																																																		FSub Td1059 Td1060
																																																																																																																																																Let p2
																																																																																																																																																	Let Td1062
																																																																																																																																																		Let Ti1061
																																																																																																																																																			Int:2
																																																																																																																																																			Get intersection_point Ti1061
																																																																																																																																																		Let Td1063
																																																																																																																																																			App o_param_zm 
																																																																																																																																																			FSub Td1062 Td1063
																																																																																																																																																	Let d0
																																																																																																																																																		Let Td1064
																																																																																																																																																			App o_param_am 
																																																																																																																																																			FMul p0 Td1064
																																																																																																																																																		Let d1
																																																																																																																																																			Let Td1065
																																																																																																																																																				App o_param_bm 
																																																																																																																																																				FMul p1 Td1065
																																																																																																																																																			Let d2
																																																																																																																																																				Let Td1066
																																																																																																																																																					App o_param_cm 
																																																																																																																																																					FMul p2 Td1066
																																																																																																																																																				Let Tu129
																																																																																																																																																					Let Ti1067
																																																																																																																																																						App o_isrotm 
																																																																																																																																																						Let Ti1068
																																																																																																																																																							Int:0
																																																																																																																																																							IfEq Ti1067 Ti1068
																																																																																																																																																								Let Tu126
																																																																																																																																																									Let Ti1069
																																																																																																																																																										Int:0
																																																																																																																																																										Put nvector Ti1069 d0
																																																																																																																																																									Let Tu125
																																																																																																																																																										Let Ti1070
																																																																																																																																																											Int:1
																																																																																																																																																											Put nvector Ti1070 d1
																																																																																																																																																										Let Ti1071
																																																																																																																																																											Int:2
																																																																																																																																																											Put nvector Ti1071 d2
																																																																																																																																																								Let Tu128
																																																																																																																																																									Let Ti1072
																																																																																																																																																										Int:0
																																																																																																																																																										Let Td1079
																																																																																																																																																											Let Td1078
																																																																																																																																																												Let Td1077
																																																																																																																																																													Let Td1074
																																																																																																																																																														Let Td1073
																																																																																																																																																															App o_param_r3m 
																																																																																																																																																															FMul p1 Td1073
																																																																																																																																																														Let Td1076
																																																																																																																																																															Let Td1075
																																																																																																																																																																App o_param_r2m 
																																																																																																																																																																FMul p2 Td1075
																																																																																																																																																															FAdd Td1074 Td1076
																																																																																																																																																													App fhalfTd1077 
																																																																																																																																																												FAdd d0 Td1078
																																																																																																																																																											Put nvector Ti1072 Td1079
																																																																																																																																																									Let Tu127
																																																																																																																																																										Let Ti1080
																																																																																																																																																											Int:1
																																																																																																																																																											Let Td1087
																																																																																																																																																												Let Td1086
																																																																																																																																																													Let Td1085
																																																																																																																																																														Let Td1082
																																																																																																																																																															Let Td1081
																																																																																																																																																																App o_param_r3m 
																																																																																																																																																																FMul p0 Td1081
																																																																																																																																																															Let Td1084
																																																																																																																																																																Let Td1083
																																																																																																																																																																	App o_param_r1m 
																																																																																																																																																																	FMul p2 Td1083
																																																																																																																																																																FAdd Td1082 Td1084
																																																																																																																																																														App fhalfTd1085 
																																																																																																																																																													FAdd d1 Td1086
																																																																																																																																																												Put nvector Ti1080 Td1087
																																																																																																																																																										Let Ti1088
																																																																																																																																																											Int:2
																																																																																																																																																											Let Td1095
																																																																																																																																																												Let Td1094
																																																																																																																																																													Let Td1093
																																																																																																																																																														Let Td1090
																																																																																																																																																															Let Td1089
																																																																																																																																																																App o_param_r2m 
																																																																																																																																																																FMul p0 Td1089
																																																																																																																																																															Let Td1092
																																																																																																																																																																Let Td1091
																																																																																																																																																																	App o_param_r1m 
																																																																																																																																																																	FMul p1 Td1091
																																																																																																																																																																FAdd Td1090 Td1092
																																																																																																																																																														App fhalfTd1093 
																																																																																																																																																													FAdd d2 Td1094
																																																																																																																																																												Put nvector Ti1088 Td1095
																																																																																																																																																					Let Tb1096
																																																																																																																																																						App o_isinvertm 
																																																																																																																																																						App vecunit_sgnnvector Tb1096 
																																																																																																																																														LetRec get_nvector m dirvec 
																																																																																																																																															Let m_shape
																																																																																																																																																App o_formm 
																																																																																																																																																Let Ti1053
																																																																																																																																																	Int:1
																																																																																																																																																	IfEq m_shape Ti1053
																																																																																																																																																		App get_nvector_rectdirvec 
																																																																																																																																																		Let Ti1054
																																																																																																																																																			Int:2
																																																																																																																																																			IfEq m_shape Ti1054
																																																																																																																																																				App get_nvector_planem 
																																																																																																																																																				App get_nvector_secondm 
																																																																																																																																															LetRec utexture m p 
																																																																																																																																																Let m_tex
																																																																																																																																																	App o_texturetypem 
																																																																																																																																																	Let Tu134
																																																																																																																																																		Let Ti923
																																																																																																																																																			Int:0
																																																																																																																																																			Let Td924
																																																																																																																																																				App o_color_redm 
																																																																																																																																																				Put texture_color Ti923 Td924
																																																																																																																																																		Let Tu133
																																																																																																																																																			Let Ti925
																																																																																																																																																				Int:1
																																																																																																																																																				Let Td926
																																																																																																																																																					App o_color_greenm 
																																																																																																																																																					Put texture_color Ti925 Td926
																																																																																																																																																			Let Tu132
																																																																																																																																																				Let Ti927
																																																																																																																																																					Int:2
																																																																																																																																																					Let Td928
																																																																																																																																																						App o_color_bluem 
																																																																																																																																																						Put texture_color Ti927 Td928
																																																																																																																																																				Let Ti929
																																																																																																																																																					Int:1
																																																																																																																																																					IfEq m_tex Ti929
																																																																																																																																																						Let w1
																																																																																																																																																							Let Td931
																																																																																																																																																								Let Ti930
																																																																																																																																																									Int:0
																																																																																																																																																									Get p Ti930
																																																																																																																																																								Let Td932
																																																																																																																																																									App o_param_xm 
																																																																																																																																																									FSub Td931 Td932
																																																																																																																																																							Let flag1
																																																																																																																																																								Let d1
																																																																																																																																																									Let Td935
																																																																																																																																																										Let Td934
																																																																																																																																																											Let Td933
																																																																																																																																																												Float:0.050000
																																																																																																																																																												FMul w1 Td933
																																																																																																																																																											ExtFunApp floor Td934,
																																																																																																																																																										Let Td936
																																																																																																																																																											Float:20.000000
																																																																																																																																																											FMul Td935 Td936
																																																																																																																																																									Let Td937
																																																																																																																																																										FSub w1 d1
																																																																																																																																																										Let Td938
																																																																																																																																																											Float:10.000000
																																																																																																																																																											App flessTd937 Td938 
																																																																																																																																																								Let w3
																																																																																																																																																									Let Td940
																																																																																																																																																										Let Ti939
																																																																																																																																																											Int:2
																																																																																																																																																											Get p Ti939
																																																																																																																																																										Let Td941
																																																																																																																																																											App o_param_zm 
																																																																																																																																																											FSub Td940 Td941
																																																																																																																																																									Let flag2
																																																																																																																																																										Let d2
																																																																																																																																																											Let Td944
																																																																																																																																																												Let Td943
																																																																																																																																																													Let Td942
																																																																																																																																																														Float:0.050000
																																																																																																																																																														FMul w3 Td942
																																																																																																																																																													ExtFunApp floor Td943,
																																																																																																																																																												Let Td945
																																																																																																																																																													Float:20.000000
																																																																																																																																																													FMul Td944 Td945
																																																																																																																																																											Let Td946
																																																																																																																																																												FSub w3 d2
																																																																																																																																																												Let Td947
																																																																																																																																																													Float:10.000000
																																																																																																																																																													App flessTd946 Td947 
																																																																																																																																																										Let Ti948
																																																																																																																																																											Int:1
																																																																																																																																																											Let Td952
																																																																																																																																																												Let Ti949
																																																																																																																																																													Int:0
																																																																																																																																																													IfEq flag1 Ti949
																																																																																																																																																														Let Ti950
																																																																																																																																																															Int:0
																																																																																																																																																															IfEq flag2 Ti950
																																																																																																																																																																Float:255.000000
																																																																																																																																																																Float:0.000000
																																																																																																																																																														Let Ti951
																																																																																																																																																															Int:0
																																																																																																																																																															IfEq flag2 Ti951
																																																																																																																																																																Float:0.000000
																																																																																																																																																																Float:255.000000
																																																																																																																																																												Put texture_color Ti948 Td952
																																																																																																																																																						Let Ti953
																																																																																																																																																							Int:2
																																																																																																																																																							IfEq m_tex Ti953
																																																																																																																																																								Let w2
																																																																																																																																																									Let Td958
																																																																																																																																																										Let Td957
																																																																																																																																																											Let Td955
																																																																																																																																																												Let Ti954
																																																																																																																																																													Int:1
																																																																																																																																																													Get p Ti954
																																																																																																																																																												Let Td956
																																																																																																																																																													Float:0.250000
																																																																																																																																																													FMul Td955 Td956
																																																																																																																																																											ExtFunApp sin Td957,
																																																																																																																																																										App fsqrTd958 
																																																																																																																																																									Let Tu130
																																																																																																																																																										Let Ti959
																																																																																																																																																											Int:0
																																																																																																																																																											Let Td961
																																																																																																																																																												Let Td960
																																																																																																																																																													Float:255.000000
																																																																																																																																																													FMul Td960 w2
																																																																																																																																																												Put texture_color Ti959 Td961
																																																																																																																																																										Let Ti962
																																																																																																																																																											Int:1
																																																																																																																																																											Let Td966
																																																																																																																																																												Let Td963
																																																																																																																																																													Float:255.000000
																																																																																																																																																													Let Td965
																																																																																																																																																														Let Td964
																																																																																																																																																															Float:1.000000
																																																																																																																																																															FSub Td964 w2
																																																																																																																																																														FMul Td963 Td965
																																																																																																																																																												Put texture_color Ti962 Td966
																																																																																																																																																								Let Ti967
																																																																																																																																																									Int:3
																																																																																																																																																									IfEq m_tex Ti967
																																																																																																																																																										Let w1
																																																																																																																																																											Let Td969
																																																																																																																																																												Let Ti968
																																																																																																																																																													Int:0
																																																																																																																																																													Get p Ti968
																																																																																																																																																												Let Td970
																																																																																																																																																													App o_param_xm 
																																																																																																																																																													FSub Td969 Td970
																																																																																																																																																											Let w3
																																																																																																																																																												Let Td972
																																																																																																																																																													Let Ti971
																																																																																																																																																														Int:2
																																																																																																																																																														Get p Ti971
																																																																																																																																																													Let Td973
																																																																																																																																																														App o_param_zm 
																																																																																																																																																														FSub Td972 Td973
																																																																																																																																																												Let w2
																																																																																																																																																													Let Td977
																																																																																																																																																														Let Td976
																																																																																																																																																															Let Td974
																																																																																																																																																																App fsqrw1 
																																																																																																																																																																Let Td975
																																																																																																																																																																	App fsqrw3 
																																																																																																																																																																	FAdd Td974 Td975
																																																																																																																																																															ExtFunApp sqrt Td976,
																																																																																																																																																														Let Td978
																																																																																																																																																															Float:10.000000
																																																																																																																																																															Let Td979
																																																																																																																																																																FReciprocal Td978
																																																																																																																																																																FMul Td977 Td979
																																																																																																																																																													Let w4
																																																																																																																																																														Let Td981
																																																																																																																																																															Let Td980
																																																																																																																																																																ExtFunApp floor w2,
																																																																																																																																																																FSub w2 Td980
																																																																																																																																																															Let Td982
																																																																																																																																																																Float:3.141593
																																																																																																																																																																FMul Td981 Td982
																																																																																																																																																														Let cws
																																																																																																																																																															Let Td983
																																																																																																																																																																ExtFunApp cos w4,
																																																																																																																																																																App fsqrTd983 
																																																																																																																																																															Let Tu131
																																																																																																																																																																Let Ti984
																																																																																																																																																																	Int:1
																																																																																																																																																																	Let Td986
																																																																																																																																																																		Let Td985
																																																																																																																																																																			Float:255.000000
																																																																																																																																																																			FMul cws Td985
																																																																																																																																																																		Put texture_color Ti984 Td986
																																																																																																																																																																Let Ti987
																																																																																																																																																																	Int:2
																																																																																																																																																																	Let Td991
																																																																																																																																																																		Let Td989
																																																																																																																																																																			Let Td988
																																																																																																																																																																				Float:1.000000
																																																																																																																																																																				FSub Td988 cws
																																																																																																																																																																			Let Td990
																																																																																																																																																																				Float:255.000000
																																																																																																																																																																				FMul Td989 Td990
																																																																																																																																																																		Put texture_color Ti987 Td991
																																																																																																																																																										Let Ti992
																																																																																																																																																											Int:4
																																																																																																																																																											IfEq m_tex Ti992
																																																																																																																																																												Let w1
																																																																																																																																																													Let Td996
																																																																																																																																																														Let Td994
																																																																																																																																																															Let Ti993
																																																																																																																																																																Int:0
																																																																																																																																																																Get p Ti993
																																																																																																																																																															Let Td995
																																																																																																																																																																App o_param_xm 
																																																																																																																																																																FSub Td994 Td995
																																																																																																																																																														Let Td998
																																																																																																																																																															Let Td997
																																																																																																																																																																App o_param_am 
																																																																																																																																																																ExtFunApp sqrt Td997,
																																																																																																																																																															FMul Td996 Td998
																																																																																																																																																													Let w3
																																																																																																																																																														Let Td1002
																																																																																																																																																															Let Td1000
																																																																																																																																																																Let Ti999
																																																																																																																																																																	Int:2
																																																																																																																																																																	Get p Ti999
																																																																																																																																																																Let Td1001
																																																																																																																																																																	App o_param_zm 
																																																																																																																																																																	FSub Td1000 Td1001
																																																																																																																																																															Let Td1004
																																																																																																																																																																Let Td1003
																																																																																																																																																																	App o_param_cm 
																																																																																																																																																																	ExtFunApp sqrt Td1003,
																																																																																																																																																																FMul Td1002 Td1004
																																																																																																																																																														Let w4
																																																																																																																																																															Let Td1005
																																																																																																																																																																App fsqrw1 
																																																																																																																																																																Let Td1006
																																																																																																																																																																	App fsqrw3 
																																																																																																																																																																	FAdd Td1005 Td1006
																																																																																																																																																															Let w7
																																																																																																																																																																Let Tb1009
																																																																																																																																																																	Let Td1007
																																																																																																																																																																		App fabsw1 
																																																																																																																																																																		Let Td1008
																																																																																																																																																																			Float:0.000100
																																																																																																																																																																			App flessTd1007 Td1008 
																																																																																																																																																																	Let Ti1010
																																																																																																																																																																		Int:0
																																																																																																																																																																		IfEq Tb1009 Ti1010
																																																																																																																																																																			Let w5
																																																																																																																																																																				Let Td1012
																																																																																																																																																																					Let Td1011
																																																																																																																																																																						FReciprocal w1
																																																																																																																																																																						FMul w3 Td1011
																																																																																																																																																																					App fabsTd1012 
																																																																																																																																																																				Let Td1015
																																																																																																																																																																					Let Td1013
																																																																																																																																																																						ExtFunApp atan w5,
																																																																																																																																																																						Let Td1014
																																																																																																																																																																							Float:30.000000
																																																																																																																																																																							FMul Td1013 Td1014
																																																																																																																																																																					Let Td1016
																																																																																																																																																																						Float:3.141593
																																																																																																																																																																						Let Td1017
																																																																																																																																																																							FReciprocal Td1016
																																																																																																																																																																							FMul Td1015 Td1017
																																																																																																																																																																			Float:15.000000
																																																																																																																																																																Let w9
																																																																																																																																																																	Let Td1018
																																																																																																																																																																		ExtFunApp floor w7,
																																																																																																																																																																		FSub w7 Td1018
																																																																																																																																																																	Let w2
																																																																																																																																																																		Let Td1022
																																																																																																																																																																			Let Td1020
																																																																																																																																																																				Let Ti1019
																																																																																																																																																																					Int:1
																																																																																																																																																																					Get p Ti1019
																																																																																																																																																																				Let Td1021
																																																																																																																																																																					App o_param_ym 
																																																																																																																																																																					FSub Td1020 Td1021
																																																																																																																																																																			Let Td1024
																																																																																																																																																																				Let Td1023
																																																																																																																																																																					App o_param_bm 
																																																																																																																																																																					ExtFunApp sqrt Td1023,
																																																																																																																																																																				FMul Td1022 Td1024
																																																																																																																																																																		Let w8
																																																																																																																																																																			Let Tb1027
																																																																																																																																																																				Let Td1025
																																																																																																																																																																					App fabsw4 
																																																																																																																																																																					Let Td1026
																																																																																																																																																																						Float:0.000100
																																																																																																																																																																						App flessTd1025 Td1026 
																																																																																																																																																																				Let Ti1028
																																																																																																																																																																					Int:0
																																																																																																																																																																					IfEq Tb1027 Ti1028
																																																																																																																																																																						Let w6
																																																																																																																																																																							Let Td1030
																																																																																																																																																																								Let Td1029
																																																																																																																																																																									FReciprocal w4
																																																																																																																																																																									FMul w2 Td1029
																																																																																																																																																																								App fabsTd1030 
																																																																																																																																																																							Let Td1033
																																																																																																																																																																								Let Td1031
																																																																																																																																																																									ExtFunApp atan w6,
																																																																																																																																																																									Let Td1032
																																																																																																																																																																										Float:30.000000
																																																																																																																																																																										FMul Td1031 Td1032
																																																																																																																																																																								Let Td1034
																																																																																																																																																																									Float:3.141593
																																																																																																																																																																									Let Td1035
																																																																																																																																																																										FReciprocal Td1034
																																																																																																																																																																										FMul Td1033 Td1035
																																																																																																																																																																						Float:15.000000
																																																																																																																																																																			Let w10
																																																																																																																																																																				Let Td1036
																																																																																																																																																																					ExtFunApp floor w8,
																																																																																																																																																																					FSub w8 Td1036
																																																																																																																																																																				Let w11
																																																																																																																																																																					Let Td1041
																																																																																																																																																																						Let Td1037
																																																																																																																																																																							Float:0.150000
																																																																																																																																																																							Let Td1040
																																																																																																																																																																								Let Td1039
																																																																																																																																																																									Let Td1038
																																																																																																																																																																										Float:0.500000
																																																																																																																																																																										FSub Td1038 w9
																																																																																																																																																																									App fsqrTd1039 
																																																																																																																																																																								FSub Td1037 Td1040
																																																																																																																																																																						Let Td1044
																																																																																																																																																																							Let Td1043
																																																																																																																																																																								Let Td1042
																																																																																																																																																																									Float:0.500000
																																																																																																																																																																									FSub Td1042 w10
																																																																																																																																																																								App fsqrTd1043 
																																																																																																																																																																							FSub Td1041 Td1044
																																																																																																																																																																					Let w12
																																																																																																																																																																						Let Tb1045
																																																																																																																																																																							App fisnegw11 
																																																																																																																																																																							Let Ti1046
																																																																																																																																																																								Int:0
																																																																																																																																																																								IfEq Tb1045 Ti1046
																																																																																																																																																																									Var w11
																																																																																																																																																																									Float:0.000000
																																																																																																																																																																						Let Ti1047
																																																																																																																																																																							Int:2
																																																																																																																																																																							Let Td1052
																																																																																																																																																																								Let Td1049
																																																																																																																																																																									Let Td1048
																																																																																																																																																																										Float:255.000000
																																																																																																																																																																										FMul Td1048 w12
																																																																																																																																																																									Let Td1050
																																																																																																																																																																										Float:0.300000
																																																																																																																																																																										Let Td1051
																																																																																																																																																																											FReciprocal Td1050
																																																																																																																																																																											FMul Td1049 Td1051
																																																																																																																																																																								Put texture_color Ti1047 Td1052
																																																																																																																																																												Unit
																																																																																																																																																LetRec add_light bright hilight hilight_scale 
																																																																																																																																																	Let Tu137
																																																																																																																																																		Let Tb905
																																																																																																																																																			App fisposbright 
																																																																																																																																																			Let Ti906
																																																																																																																																																				Int:0
																																																																																																																																																				IfEq Tb905 Ti906
																																																																																																																																																					Unit
																																																																																																																																																					App vecaccumrgb bright texture_color 
																																																																																																																																																		Let Tb907
																																																																																																																																																			App fisposhilight 
																																																																																																																																																			Let Ti908
																																																																																																																																																				Int:0
																																																																																																																																																				IfEq Tb907 Ti908
																																																																																																																																																					Unit
																																																																																																																																																					Let ihl
																																																																																																																																																						Let Td910
																																																																																																																																																							Let Td909
																																																																																																																																																								App fsqrhilight 
																																																																																																																																																								App fsqrTd909 
																																																																																																																																																							FMul Td910 hilight_scale
																																																																																																																																																						Let Tu136
																																																																																																																																																							Let Ti911
																																																																																																																																																								Int:0
																																																																																																																																																								Let Td914
																																																																																																																																																									Let Td913
																																																																																																																																																										Let Ti912
																																																																																																																																																											Int:0
																																																																																																																																																											Get rgb Ti912
																																																																																																																																																										FAdd Td913 ihl
																																																																																																																																																									Put rgb Ti911 Td914
																																																																																																																																																							Let Tu135
																																																																																																																																																								Let Ti915
																																																																																																																																																									Int:1
																																																																																																																																																									Let Td918
																																																																																																																																																										Let Td917
																																																																																																																																																											Let Ti916
																																																																																																																																																												Int:1
																																																																																																																																																												Get rgb Ti916
																																																																																																																																																											FAdd Td917 ihl
																																																																																																																																																										Put rgb Ti915 Td918
																																																																																																																																																								Let Ti919
																																																																																																																																																									Int:2
																																																																																																																																																									Let Td922
																																																																																																																																																										Let Td921
																																																																																																																																																											Let Ti920
																																																																																																																																																												Int:2
																																																																																																																																																												Get rgb Ti920
																																																																																																																																																											FAdd Td921 ihl
																																																																																																																																																										Put rgb Ti919 Td922
																																																																																																																																																	LetRec trace_reflections index diffuse hilight_scale dirvec 
																																																																																																																																																		Let Ti885
																																																																																																																																																			Int:0
																																																																																																																																																			IfLE Ti885 index
																																																																																																																																																				Let rinfo
																																																																																																																																																					Get reflections index
																																																																																																																																																					Let dvec
																																																																																																																																																						App r_dvecrinfo 
																																																																																																																																																						Let Tu138
																																																																																																																																																							Let Tb886
																																																																																																																																																								App judge_intersection_fastdvec 
																																																																																																																																																								Let Ti887
																																																																																																																																																									Int:0
																																																																																																																																																									IfEq Tb886 Ti887
																																																																																																																																																										Unit
																																																																																																																																																										Let surface_id
																																																																																																																																																											Let Ti890
																																																																																																																																																												Let Ti889
																																																																																																																																																													Let Ti888
																																																																																																																																																														Int:0
																																																																																																																																																														Get intersected_object_id Ti888
																																																																																																																																																													ShiftL2 Ti889
																																																																																																																																																												Let Ti892
																																																																																																																																																													Let Ti891
																																																																																																																																																														Int:0
																																																																																																																																																														Get intsec_rectside Ti891
																																																																																																																																																													Add Ti890 Ti892
																																																																																																																																																											Let Ti893
																																																																																																																																																												App r_surface_idrinfo 
																																																																																																																																																												IfEq surface_id Ti893
																																																																																																																																																													Let Tb897
																																																																																																																																																														Let Ti894
																																																																																																																																																															Int:0
																																																																																																																																																															Let Ta896
																																																																																																																																																																Let Ti895
																																																																																																																																																																	Int:0
																																																																																																																																																																	Get or_net Ti895
																																																																																																																																																																App shadow_check_one_or_matrixTi894 Ta896 
																																																																																																																																																														Let Ti898
																																																																																																																																																															Int:0
																																																																																																																																																															IfEq Tb897 Ti898
																																																																																																																																																																Let p
																																																																																																																																																																	Let Ta899
																																																																																																																																																																		App d_vecdvec 
																																																																																																																																																																		App veciprodnvector Ta899 
																																																																																																																																																																	Let scale
																																																																																																																																																																		App r_brightrinfo 
																																																																																																																																																																		Let bright
																																																																																																																																																																			Let Td900
																																																																																																																																																																				FMul scale diffuse
																																																																																																																																																																				FMul Td900 p
																																																																																																																																																																			Let hilight
																																																																																																																																																																				Let Td902
																																																																																																																																																																					Let Ta901
																																																																																																																																																																						App d_vecdvec 
																																																																																																																																																																						App veciproddirvec Ta901 
																																																																																																																																																																					FMul scale Td902
																																																																																																																																																																				App add_lightbright hilight hilight_scale 
																																																																																																																																																																Unit
																																																																																																																																																													Unit
																																																																																																																																																							Let Ti904
																																																																																																																																																								Let Ti903
																																																																																																																																																									Int:1
																																																																																																																																																									Sub index Ti903
																																																																																																																																																								App trace_reflectionsTi904 diffuse hilight_scale dirvec 
																																																																																																																																																				Unit
																																																																																																																																																		LetRec trace_ray nref energy dirvec pixel dist 
																																																																																																																																																			Let Ti806
																																																																																																																																																				Int:4
																																																																																																																																																				IfLE nref Ti806
																																																																																																																																																					Let surface_ids
																																																																																																																																																						App p_surface_idspixel 
																																																																																																																																																						Let Tb807
																																																																																																																																																							App judge_intersectiondirvec 
																																																																																																																																																							Let Ti808
																																																																																																																																																								Int:0
																																																																																																																																																								IfEq Tb807 Ti808
																																																																																																																																																									Let Tu155
																																																																																																																																																										Let Ti810
																																																																																																																																																											Let Ti809
																																																																																																																																																												Int:1
																																																																																																																																																												Neg Ti809
																																																																																																																																																											Put surface_ids nref Ti810
																																																																																																																																																										Let Ti811
																																																																																																																																																											Int:0
																																																																																																																																																											IfEq nref Ti811
																																																																																																																																																												Unit
																																																																																																																																																												Let hl
																																																																																																																																																													Let Td812
																																																																																																																																																														App veciproddirvec light 
																																																																																																																																																														App fnegTd812 
																																																																																																																																																													Let Tb813
																																																																																																																																																														App fisposhl 
																																																																																																																																																														Let Ti814
																																																																																																																																																															Int:0
																																																																																																																																																															IfEq Tb813 Ti814
																																																																																																																																																																Unit
																																																																																																																																																																Let ihl
																																																																																																																																																																	Let Td817
																																																																																																																																																																		Let Td816
																																																																																																																																																																			Let Td815
																																																																																																																																																																				App fsqrhl 
																																																																																																																																																																				FMul Td815 hl
																																																																																																																																																																			FMul Td816 energy
																																																																																																																																																																		Let Td819
																																																																																																																																																																			Let Ti818
																																																																																																																																																																				Int:0
																																																																																																																																																																				Get beam Ti818
																																																																																																																																																																			FMul Td817 Td819
																																																																																																																																																																	Let Tu154
																																																																																																																																																																		Let Ti820
																																																																																																																																																																			Int:0
																																																																																																																																																																			Let Td823
																																																																																																																																																																				Let Td822
																																																																																																																																																																					Let Ti821
																																																																																																																																																																						Int:0
																																																																																																																																																																						Get rgb Ti821
																																																																																																																																																																					FAdd Td822 ihl
																																																																																																																																																																				Put rgb Ti820 Td823
																																																																																																																																																																		Let Tu153
																																																																																																																																																																			Let Ti824
																																																																																																																																																																				Int:1
																																																																																																																																																																				Let Td827
																																																																																																																																																																					Let Td826
																																																																																																																																																																						Let Ti825
																																																																																																																																																																							Int:1
																																																																																																																																																																							Get rgb Ti825
																																																																																																																																																																						FAdd Td826 ihl
																																																																																																																																																																					Put rgb Ti824 Td827
																																																																																																																																																																			Let Ti828
																																																																																																																																																																				Int:2
																																																																																																																																																																				Let Td831
																																																																																																																																																																					Let Td830
																																																																																																																																																																						Let Ti829
																																																																																																																																																																							Int:2
																																																																																																																																																																							Get rgb Ti829
																																																																																																																																																																						FAdd Td830 ihl
																																																																																																																																																																					Put rgb Ti828 Td831
																																																																																																																																																									Let obj_id
																																																																																																																																																										Let Ti832
																																																																																																																																																											Int:0
																																																																																																																																																											Get intersected_object_id Ti832
																																																																																																																																																										Let obj
																																																																																																																																																											Get objects obj_id
																																																																																																																																																											Let m_surface
																																																																																																																																																												App o_reflectiontypeobj 
																																																																																																																																																												Let diffuse
																																																																																																																																																													Let Td833
																																																																																																																																																														App o_diffuseobj 
																																																																																																																																																														FMul Td833 energy
																																																																																																																																																													Let Tu152
																																																																																																																																																														App get_nvectorobj dirvec 
																																																																																																																																																														Let Tu151
																																																																																																																																																															App veccpystartp intersection_point 
																																																																																																																																																															Let Tu150
																																																																																																																																																																App utextureobj intersection_point 
																																																																																																																																																																Let Tu149
																																																																																																																																																																	Let Ti837
																																																																																																																																																																		Let Ti834
																																																																																																																																																																			ShiftL2 obj_id
																																																																																																																																																																			Let Ti836
																																																																																																																																																																				Let Ti835
																																																																																																																																																																					Int:0
																																																																																																																																																																					Get intsec_rectside Ti835
																																																																																																																																																																				Add Ti834 Ti836
																																																																																																																																																																		Put surface_ids nref Ti837
																																																																																																																																																																	Let intersection_points
																																																																																																																																																																		App p_intersection_pointspixel 
																																																																																																																																																																		Let Tu148
																																																																																																																																																																			Let Ta838
																																																																																																																																																																				Get intersection_points nref
																																																																																																																																																																				App veccpyTa838 intersection_point 
																																																																																																																																																																			Let calc_diffuse
																																																																																																																																																																				App p_calc_diffusepixel 
																																																																																																																																																																				Let Tu147
																																																																																																																																																																					Let Tb841
																																																																																																																																																																						Let Td839
																																																																																																																																																																							App o_diffuseobj 
																																																																																																																																																																							Let Td840
																																																																																																																																																																								Float:0.500000
																																																																																																																																																																								App flessTd839 Td840 
																																																																																																																																																																						Let Ti842
																																																																																																																																																																							Int:0
																																																																																																																																																																							IfEq Tb841 Ti842
																																																																																																																																																																								Let Tu141
																																																																																																																																																																									Let Ti843
																																																																																																																																																																										Int:1
																																																																																																																																																																										Put calc_diffuse nref Ti843
																																																																																																																																																																									Let energya
																																																																																																																																																																										App p_energypixel 
																																																																																																																																																																										Let Tu140
																																																																																																																																																																											Let Ta844
																																																																																																																																																																												Get energya nref
																																																																																																																																																																												App veccpyTa844 texture_color 
																																																																																																																																																																											Let Tu139
																																																																																																																																																																												Let Ta845
																																																																																																																																																																													Get energya nref
																																																																																																																																																																													Let Td850
																																																																																																																																																																														Let Td849
																																																																																																																																																																															Let Td846
																																																																																																																																																																																Float:1.000000
																																																																																																																																																																																Let Td847
																																																																																																																																																																																	Float:256.000000
																																																																																																																																																																																	Let Td848
																																																																																																																																																																																		FReciprocal Td847
																																																																																																																																																																																		FMul Td846 Td848
																																																																																																																																																																															FMul Td849 diffuse
																																																																																																																																																																														App vecscaleTa845 Td850 
																																																																																																																																																																												Let nvectors
																																																																																																																																																																													App p_nvectorspixel 
																																																																																																																																																																													Let Ta851
																																																																																																																																																																														Get nvectors nref
																																																																																																																																																																														App veccpyTa851 nvector 
																																																																																																																																																																								Let Ti852
																																																																																																																																																																									Int:0
																																																																																																																																																																									Put calc_diffuse nref Ti852
																																																																																																																																																																					Let w
																																																																																																																																																																						Let Td853
																																																																																																																																																																							Float:-2.000000
																																																																																																																																																																							Let Td854
																																																																																																																																																																								App veciproddirvec nvector 
																																																																																																																																																																								FMul Td853 Td854
																																																																																																																																																																						Let Tu146
																																																																																																																																																																							App vecaccumdirvec w nvector 
																																																																																																																																																																							Let hilight_scale
																																																																																																																																																																								Let Td855
																																																																																																																																																																									App o_hilightobj 
																																																																																																																																																																									FMul energy Td855
																																																																																																																																																																								Let Tu145
																																																																																																																																																																									Let Tb859
																																																																																																																																																																										Let Ti856
																																																																																																																																																																											Int:0
																																																																																																																																																																											Let Ta858
																																																																																																																																																																												Let Ti857
																																																																																																																																																																													Int:0
																																																																																																																																																																													Get or_net Ti857
																																																																																																																																																																												App shadow_check_one_or_matrixTi856 Ta858 
																																																																																																																																																																										Let Ti860
																																																																																																																																																																											Int:0
																																																																																																																																																																											IfEq Tb859 Ti860
																																																																																																																																																																												Let bright
																																																																																																																																																																													Let Td862
																																																																																																																																																																														Let Td861
																																																																																																																																																																															App veciprodnvector light 
																																																																																																																																																																															App fnegTd861 
																																																																																																																																																																														FMul Td862 diffuse
																																																																																																																																																																													Let hilight
																																																																																																																																																																														Let Td863
																																																																																																																																																																															App veciproddirvec light 
																																																																																																																																																																															App fnegTd863 
																																																																																																																																																																														App add_lightbright hilight hilight_scale 
																																																																																																																																																																												Unit
																																																																																																																																																																									Let Tu144
																																																																																																																																																																										App setup_startpintersection_point 
																																																																																																																																																																										Let Tu143
																																																																																																																																																																											Let Ti867
																																																																																																																																																																												Let Ti865
																																																																																																																																																																													Let Ti864
																																																																																																																																																																														Int:0
																																																																																																																																																																														Get n_reflections Ti864
																																																																																																																																																																													Let Ti866
																																																																																																																																																																														Int:1
																																																																																																																																																																														Sub Ti865 Ti866
																																																																																																																																																																												App trace_reflectionsTi867 diffuse hilight_scale dirvec 
																																																																																																																																																																											Let Tb869
																																																																																																																																																																												Let Td868
																																																																																																																																																																													Float:0.100000
																																																																																																																																																																													App flessTd868 energy 
																																																																																																																																																																												Let Ti870
																																																																																																																																																																													Int:0
																																																																																																																																																																													IfEq Tb869 Ti870
																																																																																																																																																																														Unit
																																																																																																																																																																														Let Tu142
																																																																																																																																																																															Let Ti871
																																																																																																																																																																																Int:4
																																																																																																																																																																																IfLE Ti871 nref
																																																																																																																																																																																	Unit
																																																																																																																																																																																	Let Ti873
																																																																																																																																																																																		Let Ti872
																																																																																																																																																																																			Int:1
																																																																																																																																																																																			Add nref Ti872
																																																																																																																																																																																		Let Ti875
																																																																																																																																																																																			Let Ti874
																																																																																																																																																																																				Int:1
																																																																																																																																																																																				Neg Ti874
																																																																																																																																																																																			Put surface_ids Ti873 Ti875
																																																																																																																																																																															Let Ti876
																																																																																																																																																																																Int:2
																																																																																																																																																																																IfEq m_surface Ti876
																																																																																																																																																																																	Let energy2
																																																																																																																																																																																		Let Td879
																																																																																																																																																																																			Let Td877
																																																																																																																																																																																				Float:1.000000
																																																																																																																																																																																				Let Td878
																																																																																																																																																																																					App o_diffuseobj 
																																																																																																																																																																																					FSub Td877 Td878
																																																																																																																																																																																			FMul energy Td879
																																																																																																																																																																																		Let Ti881
																																																																																																																																																																																			Let Ti880
																																																																																																																																																																																				Int:1
																																																																																																																																																																																				Add nref Ti880
																																																																																																																																																																																			Let Td884
																																																																																																																																																																																				Let Td883
																																																																																																																																																																																					Let Ti882
																																																																																																																																																																																						Int:0
																																																																																																																																																																																						Get tmin Ti882
																																																																																																																																																																																					FAdd dist Td883
																																																																																																																																																																																				App trace_rayTi881 energy2 dirvec pixel Td884 
																																																																																																																																																																																	Unit
																																																																																																																																																					Unit
																																																																																																																																																			LetRec trace_diffuse_ray dirvec energy 
																																																																																																																																																				Let Tb790
																																																																																																																																																					App judge_intersection_fastdirvec 
																																																																																																																																																					Let Ti791
																																																																																																																																																						Int:0
																																																																																																																																																						IfEq Tb790 Ti791
																																																																																																																																																							Unit
																																																																																																																																																							Let obj
																																																																																																																																																								Let Ti793
																																																																																																																																																									Let Ti792
																																																																																																																																																										Int:0
																																																																																																																																																										Get intersected_object_id Ti792
																																																																																																																																																									Get objects Ti793
																																																																																																																																																								Let Tu157
																																																																																																																																																									Let Ta794
																																																																																																																																																										App d_vecdirvec 
																																																																																																																																																										App get_nvectorobj Ta794 
																																																																																																																																																									Let Tu156
																																																																																																																																																										App utextureobj intersection_point 
																																																																																																																																																										Let Tb798
																																																																																																																																																											Let Ti795
																																																																																																																																																												Int:0
																																																																																																																																																												Let Ta797
																																																																																																																																																													Let Ti796
																																																																																																																																																														Int:0
																																																																																																																																																														Get or_net Ti796
																																																																																																																																																													App shadow_check_one_or_matrixTi795 Ta797 
																																																																																																																																																											Let Ti799
																																																																																																																																																												Int:0
																																																																																																																																																												IfEq Tb798 Ti799
																																																																																																																																																													Let br
																																																																																																																																																														Let Td800
																																																																																																																																																															App veciprodnvector light 
																																																																																																																																																															App fnegTd800 
																																																																																																																																																														Let bright
																																																																																																																																																															Let Tb801
																																																																																																																																																																App fisposbr 
																																																																																																																																																																Let Ti802
																																																																																																																																																																	Int:0
																																																																																																																																																																	IfEq Tb801 Ti802
																																																																																																																																																																		Float:0.000000
																																																																																																																																																																		Var br
																																																																																																																																																															Let Td805
																																																																																																																																																																Let Td803
																																																																																																																																																																	FMul energy bright
																																																																																																																																																																	Let Td804
																																																																																																																																																																		App o_diffuseobj 
																																																																																																																																																																		FMul Td803 Td804
																																																																																																																																																																App vecaccumdiffuse_ray Td805 texture_color 
																																																																																																																																																													Unit
																																																																																																																																																				LetRec iter_trace_diffuse_rays dirvec_group nvector org index 
																																																																																																																																																					Let Ti773
																																																																																																																																																						Int:0
																																																																																																																																																						IfLE Ti773 index
																																																																																																																																																							Let p
																																																																																																																																																								Let Ta775
																																																																																																																																																									Let Tt774
																																																																																																																																																										Get dirvec_group index
																																																																																																																																																										App d_vecTt774 
																																																																																																																																																									App veciprodTa775 nvector 
																																																																																																																																																								Let Tu158
																																																																																																																																																									Let Tb776
																																																																																																																																																										App fisnegp 
																																																																																																																																																										Let Ti777
																																																																																																																																																											Int:0
																																																																																																																																																											IfEq Tb776 Ti777
																																																																																																																																																												Let Tt778
																																																																																																																																																													Get dirvec_group index
																																																																																																																																																													Let Td781
																																																																																																																																																														Let Td779
																																																																																																																																																															Float:150.000000
																																																																																																																																																															Let Td780
																																																																																																																																																																FReciprocal Td779
																																																																																																																																																																FMul p Td780
																																																																																																																																																														App trace_diffuse_rayTt778 Td781 
																																																																																																																																																												Let Tt784
																																																																																																																																																													Let Ti783
																																																																																																																																																														Let Ti782
																																																																																																																																																															Int:1
																																																																																																																																																															Add index Ti782
																																																																																																																																																														Get dirvec_group Ti783
																																																																																																																																																													Let Td787
																																																																																																																																																														Let Td785
																																																																																																																																																															Float:-150.000000
																																																																																																																																																															Let Td786
																																																																																																																																																																FReciprocal Td785
																																																																																																																																																																FMul p Td786
																																																																																																																																																														App trace_diffuse_rayTt784 Td787 
																																																																																																																																																									Let Ti789
																																																																																																																																																										Let Ti788
																																																																																																																																																											Int:2
																																																																																																																																																											Sub index Ti788
																																																																																																																																																										App iter_trace_diffuse_raysdirvec_group nvector org Ti789 
																																																																																																																																																							Unit
																																																																																																																																																					LetRec trace_diffuse_rays dirvec_group nvector org 
																																																																																																																																																						Let Tu159
																																																																																																																																																							App setup_startporg 
																																																																																																																																																							Let Ti772
																																																																																																																																																								Int:118
																																																																																																																																																								App iter_trace_diffuse_raysdirvec_group nvector org Ti772 
																																																																																																																																																						LetRec trace_diffuse_ray_80percent group_id nvector org 
																																																																																																																																																							Let Tu163
																																																																																																																																																								Let Ti757
																																																																																																																																																									Int:0
																																																																																																																																																									IfEq group_id Ti757
																																																																																																																																																										Unit
																																																																																																																																																										Let Ta759
																																																																																																																																																											Let Ti758
																																																																																																																																																												Int:0
																																																																																																																																																												Get dirvecs Ti758
																																																																																																																																																											App trace_diffuse_raysTa759 nvector org 
																																																																																																																																																								Let Tu162
																																																																																																																																																									Let Ti760
																																																																																																																																																										Int:1
																																																																																																																																																										IfEq group_id Ti760
																																																																																																																																																											Unit
																																																																																																																																																											Let Ta762
																																																																																																																																																												Let Ti761
																																																																																																																																																													Int:1
																																																																																																																																																													Get dirvecs Ti761
																																																																																																																																																												App trace_diffuse_raysTa762 nvector org 
																																																																																																																																																									Let Tu161
																																																																																																																																																										Let Ti763
																																																																																																																																																											Int:2
																																																																																																																																																											IfEq group_id Ti763
																																																																																																																																																												Unit
																																																																																																																																																												Let Ta765
																																																																																																																																																													Let Ti764
																																																																																																																																																														Int:2
																																																																																																																																																														Get dirvecs Ti764
																																																																																																																																																													App trace_diffuse_raysTa765 nvector org 
																																																																																																																																																										Let Tu160
																																																																																																																																																											Let Ti766
																																																																																																																																																												Int:3
																																																																																																																																																												IfEq group_id Ti766
																																																																																																																																																													Unit
																																																																																																																																																													Let Ta768
																																																																																																																																																														Let Ti767
																																																																																																																																																															Int:3
																																																																																																																																																															Get dirvecs Ti767
																																																																																																																																																														App trace_diffuse_raysTa768 nvector org 
																																																																																																																																																											Let Ti769
																																																																																																																																																												Int:4
																																																																																																																																																												IfEq group_id Ti769
																																																																																																																																																													Unit
																																																																																																																																																													Let Ta771
																																																																																																																																																														Let Ti770
																																																																																																																																																															Int:4
																																																																																																																																																															Get dirvecs Ti770
																																																																																																																																																														App trace_diffuse_raysTa771 nvector org 
																																																																																																																																																							LetRec calc_diffuse_using_1point pixel nref 
																																																																																																																																																								Let ray20p
																																																																																																																																																									App p_received_ray_20percentpixel 
																																																																																																																																																									Let nvectors
																																																																																																																																																										App p_nvectorspixel 
																																																																																																																																																										Let intersection_points
																																																																																																																																																											App p_intersection_pointspixel 
																																																																																																																																																											Let energya
																																																																																																																																																												App p_energypixel 
																																																																																																																																																												Let Tu165
																																																																																																																																																													Let Ta752
																																																																																																																																																														Get ray20p nref
																																																																																																																																																														App veccpydiffuse_ray Ta752 
																																																																																																																																																													Let Tu164
																																																																																																																																																														Let Ti753
																																																																																																																																																															App p_group_idpixel 
																																																																																																																																																															Let Ta754
																																																																																																																																																																Get nvectors nref
																																																																																																																																																																Let Ta755
																																																																																																																																																																	Get intersection_points nref
																																																																																																																																																																	App trace_diffuse_ray_80percentTi753 Ta754 Ta755 
																																																																																																																																																														Let Ta756
																																																																																																																																																															Get energya nref
																																																																																																																																																															App vecaccumvrgb Ta756 diffuse_ray 
																																																																																																																																																								LetRec calc_diffuse_using_5points x prev cur next nref 
																																																																																																																																																									Let r_up
																																																																																																																																																										Let Tt736
																																																																																																																																																											Get prev x
																																																																																																																																																											App p_received_ray_20percentTt736 
																																																																																																																																																										Let r_left
																																																																																																																																																											Let Tt739
																																																																																																																																																												Let Ti738
																																																																																																																																																													Let Ti737
																																																																																																																																																														Int:1
																																																																																																																																																														Sub x Ti737
																																																																																																																																																													Get cur Ti738
																																																																																																																																																												App p_received_ray_20percentTt739 
																																																																																																																																																											Let r_center
																																																																																																																																																												Let Tt740
																																																																																																																																																													Get cur x
																																																																																																																																																													App p_received_ray_20percentTt740 
																																																																																																																																																												Let r_right
																																																																																																																																																													Let Tt743
																																																																																																																																																														Let Ti742
																																																																																																																																																															Let Ti741
																																																																																																																																																																Int:1
																																																																																																																																																																Add x Ti741
																																																																																																																																																															Get cur Ti742
																																																																																																																																																														App p_received_ray_20percentTt743 
																																																																																																																																																													Let r_down
																																																																																																																																																														Let Tt744
																																																																																																																																																															Get next x
																																																																																																																																																															App p_received_ray_20percentTt744 
																																																																																																																																																														Let Tu170
																																																																																																																																																															Let Ta745
																																																																																																																																																																Get r_up nref
																																																																																																																																																																App veccpydiffuse_ray Ta745 
																																																																																																																																																															Let Tu169
																																																																																																																																																																Let Ta746
																																																																																																																																																																	Get r_left nref
																																																																																																																																																																	App vecadddiffuse_ray Ta746 
																																																																																																																																																																Let Tu168
																																																																																																																																																																	Let Ta747
																																																																																																																																																																		Get r_center nref
																																																																																																																																																																		App vecadddiffuse_ray Ta747 
																																																																																																																																																																	Let Tu167
																																																																																																																																																																		Let Ta748
																																																																																																																																																																			Get r_right nref
																																																																																																																																																																			App vecadddiffuse_ray Ta748 
																																																																																																																																																																		Let Tu166
																																																																																																																																																																			Let Ta749
																																																																																																																																																																				Get r_down nref
																																																																																																																																																																				App vecadddiffuse_ray Ta749 
																																																																																																																																																																			Let energya
																																																																																																																																																																				Let Tt750
																																																																																																																																																																					Get cur x
																																																																																																																																																																					App p_energyTt750 
																																																																																																																																																																				Let Ta751
																																																																																																																																																																					Get energya nref
																																																																																																																																																																					App vecaccumvrgb Ta751 diffuse_ray 
																																																																																																																																																									LetRec do_without_neighbors pixel nref 
																																																																																																																																																										Let Ti729
																																																																																																																																																											Int:4
																																																																																																																																																											IfLE nref Ti729
																																																																																																																																																												Let surface_ids
																																																																																																																																																													App p_surface_idspixel 
																																																																																																																																																													Let Ti730
																																																																																																																																																														Int:0
																																																																																																																																																														Let Ti731
																																																																																																																																																															Get surface_ids nref
																																																																																																																																																															IfLE Ti730 Ti731
																																																																																																																																																																Let calc_diffuse
																																																																																																																																																																	App p_calc_diffusepixel 
																																																																																																																																																																	Let Tu171
																																																																																																																																																																		Let Tb732
																																																																																																																																																																			Get calc_diffuse nref
																																																																																																																																																																			Let Ti733
																																																																																																																																																																				Int:0
																																																																																																																																																																				IfEq Tb732 Ti733
																																																																																																																																																																					Unit
																																																																																																																																																																					App calc_diffuse_using_1pointpixel nref 
																																																																																																																																																																		Let Ti735
																																																																																																																																																																			Let Ti734
																																																																																																																																																																				Int:1
																																																																																																																																																																				Add nref Ti734
																																																																																																																																																																			App do_without_neighborspixel Ti735 
																																																																																																																																																																Unit
																																																																																																																																																												Unit
																																																																																																																																																										LetRec neighbors_exist x y next 
																																																																																																																																																											Let Ti720
																																																																																																																																																												Let Ti719
																																																																																																																																																													Int:1
																																																																																																																																																													Get image_size Ti719
																																																																																																																																																												Let Ti722
																																																																																																																																																													Let Ti721
																																																																																																																																																														Int:1
																																																																																																																																																														Add y Ti721
																																																																																																																																																													IfLE Ti720 Ti722
																																																																																																																																																														Int:0
																																																																																																																																																														Let Ti723
																																																																																																																																																															Int:0
																																																																																																																																																															IfLE y Ti723
																																																																																																																																																																Int:0
																																																																																																																																																																Let Ti725
																																																																																																																																																																	Let Ti724
																																																																																																																																																																		Int:0
																																																																																																																																																																		Get image_size Ti724
																																																																																																																																																																	Let Ti727
																																																																																																																																																																		Let Ti726
																																																																																																																																																																			Int:1
																																																																																																																																																																			Add x Ti726
																																																																																																																																																																		IfLE Ti725 Ti727
																																																																																																																																																																			Int:0
																																																																																																																																																																			Let Ti728
																																																																																																																																																																				Int:0
																																																																																																																																																																				IfLE x Ti728
																																																																																																																																																																					Int:0
																																																																																																																																																																					Int:1
																																																																																																																																																											LetRec get_surface_id pixel index 
																																																																																																																																																												Let surface_ids
																																																																																																																																																													App p_surface_idspixel 
																																																																																																																																																													Get surface_ids index
																																																																																																																																																												LetRec neighbors_are_available x prev cur next nref 
																																																																																																																																																													Let sid_center
																																																																																																																																																														Let Tt706
																																																																																																																																																															Get cur x
																																																																																																																																																															App get_surface_idTt706 nref 
																																																																																																																																																														Let Ti708
																																																																																																																																																															Let Tt707
																																																																																																																																																																Get prev x
																																																																																																																																																																App get_surface_idTt707 nref 
																																																																																																																																																															IfEq Ti708 sid_center
																																																																																																																																																																Let Ti710
																																																																																																																																																																	Let Tt709
																																																																																																																																																																		Get next x
																																																																																																																																																																		App get_surface_idTt709 nref 
																																																																																																																																																																	IfEq Ti710 sid_center
																																																																																																																																																																		Let Ti714
																																																																																																																																																																			Let Tt713
																																																																																																																																																																				Let Ti712
																																																																																																																																																																					Let Ti711
																																																																																																																																																																						Int:1
																																																																																																																																																																						Sub x Ti711
																																																																																																																																																																					Get cur Ti712
																																																																																																																																																																				App get_surface_idTt713 nref 
																																																																																																																																																																			IfEq Ti714 sid_center
																																																																																																																																																																				Let Ti718
																																																																																																																																																																					Let Tt717
																																																																																																																																																																						Let Ti716
																																																																																																																																																																							Let Ti715
																																																																																																																																																																								Int:1
																																																																																																																																																																								Add x Ti715
																																																																																																																																																																							Get cur Ti716
																																																																																																																																																																						App get_surface_idTt717 nref 
																																																																																																																																																																					IfEq Ti718 sid_center
																																																																																																																																																																						Int:1
																																																																																																																																																																						Int:0
																																																																																																																																																																				Int:0
																																																																																																																																																																		Int:0
																																																																																																																																																																Int:0
																																																																																																																																																													LetRec try_exploit_neighbors x y prev cur next nref 
																																																																																																																																																														Let pixel
																																																																																																																																																															Get cur x
																																																																																																																																																															Let Ti696
																																																																																																																																																																Int:4
																																																																																																																																																																IfLE nref Ti696
																																																																																																																																																																	Let Ti697
																																																																																																																																																																		Int:0
																																																																																																																																																																		Let Ti698
																																																																																																																																																																			App get_surface_idpixel nref 
																																																																																																																																																																			IfLE Ti697 Ti698
																																																																																																																																																																				Let Tb699
																																																																																																																																																																					App neighbors_are_availablex prev cur next nref 
																																																																																																																																																																					Let Ti700
																																																																																																																																																																						Int:0
																																																																																																																																																																						IfEq Tb699 Ti700
																																																																																																																																																																							Let Tt701
																																																																																																																																																																								Get cur x
																																																																																																																																																																								App do_without_neighborsTt701 nref 
																																																																																																																																																																							Let calc_diffuse
																																																																																																																																																																								App p_calc_diffusepixel 
																																																																																																																																																																								Let Tu172
																																																																																																																																																																									Let Tb702
																																																																																																																																																																										Get calc_diffuse nref
																																																																																																																																																																										Let Ti703
																																																																																																																																																																											Int:0
																																																																																																																																																																											IfEq Tb702 Ti703
																																																																																																																																																																												Unit
																																																																																																																																																																												App calc_diffuse_using_5pointsx prev cur next nref 
																																																																																																																																																																									Let Ti705
																																																																																																																																																																										Let Ti704
																																																																																																																																																																											Int:1
																																																																																																																																																																											Add nref Ti704
																																																																																																																																																																										App try_exploit_neighborsx y prev cur next Ti705 
																																																																																																																																																																				Unit
																																																																																																																																																																	Unit
																																																																																																																																																														LetRec write_ppm_header Tu173 
																																																																																																																																																															Let Tu175
																																																																																																																																																																Let Ti692
																																																																																																																																																																	Let Ti691
																																																																																																																																																																		Int:0
																																																																																																																																																																		Get image_size Ti691
																																																																																																																																																																	ExtFunApp print_int Ti692,
																																																																																																																																																																Let Tu174
																																																																																																																																																																	Let Ti694
																																																																																																																																																																		Let Ti693
																																																																																																																																																																			Int:1
																																																																																																																																																																			Get image_size Ti693
																																																																																																																																																																		ExtFunApp print_int Ti694,
																																																																																																																																																																	Let Ti695
																																																																																																																																																																		Int:255
																																																																																																																																																																		ExtFunApp print_int Ti695,
																																																																																																																																																															LetRec write_rgb_element x 
																																																																																																																																																																Let ix
																																																																																																																																																																	ExtFunApp int_of_float x,
																																																																																																																																																																	Let elem
																																																																																																																																																																		Let Ti689
																																																																																																																																																																			Int:255
																																																																																																																																																																			IfLE ix Ti689
																																																																																																																																																																				Let Ti690
																																																																																																																																																																					Int:0
																																																																																																																																																																					IfLE Ti690 ix
																																																																																																																																																																						Var ix
																																																																																																																																																																						Int:0
																																																																																																																																																																				Int:255
																																																																																																																																																																		ExtFunApp print_int elem,
																																																																																																																																																																LetRec write_rgb Tu176 
																																																																																																																																																																	Let Tu178
																																																																																																																																																																		Let Td684
																																																																																																																																																																			Let Ti683
																																																																																																																																																																				Int:0
																																																																																																																																																																				Get rgb Ti683
																																																																																																																																																																			App write_rgb_elementTd684 
																																																																																																																																																																		Let Tu177
																																																																																																																																																																			Let Td686
																																																																																																																																																																				Let Ti685
																																																																																																																																																																					Int:1
																																																																																																																																																																					Get rgb Ti685
																																																																																																																																																																				App write_rgb_elementTd686 
																																																																																																																																																																			Let Td688
																																																																																																																																																																				Let Ti687
																																																																																																																																																																					Int:2
																																																																																																																																																																					Get rgb Ti687
																																																																																																																																																																				App write_rgb_elementTd688 
																																																																																																																																																																	LetRec pretrace_diffuse_rays pixel nref 
																																																																																																																																																																		Let Ti673
																																																																																																																																																																			Int:4
																																																																																																																																																																			IfLE nref Ti673
																																																																																																																																																																				Let sid
																																																																																																																																																																					App get_surface_idpixel nref 
																																																																																																																																																																					Let Ti674
																																																																																																																																																																						Int:0
																																																																																																																																																																						IfLE Ti674 sid
																																																																																																																																																																							Let calc_diffuse
																																																																																																																																																																								App p_calc_diffusepixel 
																																																																																																																																																																								Let Tu181
																																																																																																																																																																									Let Tb675
																																																																																																																																																																										Get calc_diffuse nref
																																																																																																																																																																										Let Ti676
																																																																																																																																																																											Int:0
																																																																																																																																																																											IfEq Tb675 Ti676
																																																																																																																																																																												Unit
																																																																																																																																																																												Let group_id
																																																																																																																																																																													App p_group_idpixel 
																																																																																																																																																																													Let Tu180
																																																																																																																																																																														App vecbzerodiffuse_ray 
																																																																																																																																																																														Let nvectors
																																																																																																																																																																															App p_nvectorspixel 
																																																																																																																																																																															Let intersection_points
																																																																																																																																																																																App p_intersection_pointspixel 
																																																																																																																																																																																Let Tu179
																																																																																																																																																																																	Let Ta677
																																																																																																																																																																																		Get dirvecs group_id
																																																																																																																																																																																		Let Ta678
																																																																																																																																																																																			Get nvectors nref
																																																																																																																																																																																			Let Ta679
																																																																																																																																																																																				Get intersection_points nref
																																																																																																																																																																																				App trace_diffuse_raysTa677 Ta678 Ta679 
																																																																																																																																																																																	Let ray20p
																																																																																																																																																																																		App p_received_ray_20percentpixel 
																																																																																																																																																																																		Let Ta680
																																																																																																																																																																																			Get ray20p nref
																																																																																																																																																																																			App veccpyTa680 diffuse_ray 
																																																																																																																																																																									Let Ti682
																																																																																																																																																																										Let Ti681
																																																																																																																																																																											Int:1
																																																																																																																																																																											Add nref Ti681
																																																																																																																																																																										App pretrace_diffuse_rayspixel Ti682 
																																																																																																																																																																							Unit
																																																																																																																																																																				Unit
																																																																																																																																																																		LetRec pretrace_pixels line x group_id lc0 lc1 lc2 
																																																																																																																																																																			Let Ti637
																																																																																																																																																																				Int:0
																																																																																																																																																																				IfLE Ti637 x
																																																																																																																																																																					Let xdisp
																																																																																																																																																																						Let Td639
																																																																																																																																																																							Let Ti638
																																																																																																																																																																								Int:0
																																																																																																																																																																								Get scan_pitch Ti638
																																																																																																																																																																							Let Td643
																																																																																																																																																																								Let Ti642
																																																																																																																																																																									Let Ti641
																																																																																																																																																																										Let Ti640
																																																																																																																																																																											Int:0
																																																																																																																																																																											Get image_center Ti640
																																																																																																																																																																										Sub x Ti641
																																																																																																																																																																									ExtFunApp float_of_int Ti642,
																																																																																																																																																																								FMul Td639 Td643
																																																																																																																																																																						Let Tu191
																																																																																																																																																																							Let Ti644
																																																																																																																																																																								Int:0
																																																																																																																																																																								Let Td648
																																																																																																																																																																									Let Td647
																																																																																																																																																																										Let Td646
																																																																																																																																																																											Let Ti645
																																																																																																																																																																												Int:0
																																																																																																																																																																												Get screenx_dir Ti645
																																																																																																																																																																											FMul xdisp Td646
																																																																																																																																																																										FAdd Td647 lc0
																																																																																																																																																																									Put ptrace_dirvec Ti644 Td648
																																																																																																																																																																							Let Tu190
																																																																																																																																																																								Let Ti649
																																																																																																																																																																									Int:1
																																																																																																																																																																									Let Td653
																																																																																																																																																																										Let Td652
																																																																																																																																																																											Let Td651
																																																																																																																																																																												Let Ti650
																																																																																																																																																																													Int:1
																																																																																																																																																																													Get screenx_dir Ti650
																																																																																																																																																																												FMul xdisp Td651
																																																																																																																																																																											FAdd Td652 lc1
																																																																																																																																																																										Put ptrace_dirvec Ti649 Td653
																																																																																																																																																																								Let Tu189
																																																																																																																																																																									Let Ti654
																																																																																																																																																																										Int:2
																																																																																																																																																																										Let Td658
																																																																																																																																																																											Let Td657
																																																																																																																																																																												Let Td656
																																																																																																																																																																													Let Ti655
																																																																																																																																																																														Int:2
																																																																																																																																																																														Get screenx_dir Ti655
																																																																																																																																																																													FMul xdisp Td656
																																																																																																																																																																												FAdd Td657 lc2
																																																																																																																																																																											Put ptrace_dirvec Ti654 Td658
																																																																																																																																																																									Let Tu188
																																																																																																																																																																										Let Ti659
																																																																																																																																																																											Int:0
																																																																																																																																																																											App vecunit_sgnptrace_dirvec Ti659 
																																																																																																																																																																										Let Tu187
																																																																																																																																																																											App vecbzerorgb 
																																																																																																																																																																											Let Tu186
																																																																																																																																																																												App veccpystartp viewpoint 
																																																																																																																																																																												Let Tu185
																																																																																																																																																																													Let Ti660
																																																																																																																																																																														Int:0
																																																																																																																																																																														Let Td661
																																																																																																																																																																															Float:1.000000
																																																																																																																																																																															Let Tt662
																																																																																																																																																																																Get line x
																																																																																																																																																																																Let Td663
																																																																																																																																																																																	Float:0.000000
																																																																																																																																																																																	App trace_rayTi660 Td661 ptrace_dirvec Tt662 Td663 
																																																																																																																																																																													Let Tu184
																																																																																																																																																																														Let Ta665
																																																																																																																																																																															Let Tt664
																																																																																																																																																																																Get line x
																																																																																																																																																																																App p_rgbTt664 
																																																																																																																																																																															App veccpyTa665 rgb 
																																																																																																																																																																														Let Tu183
																																																																																																																																																																															Let Tt666
																																																																																																																																																																																Get line x
																																																																																																																																																																																App p_set_group_idTt666 group_id 
																																																																																																																																																																															Let Tu182
																																																																																																																																																																																Let Tt667
																																																																																																																																																																																	Get line x
																																																																																																																																																																																	Let Ti668
																																																																																																																																																																																		Int:0
																																																																																																																																																																																		App pretrace_diffuse_raysTt667 Ti668 
																																																																																																																																																																																Let Ti670
																																																																																																																																																																																	Let Ti669
																																																																																																																																																																																		Int:1
																																																																																																																																																																																		Sub x Ti669
																																																																																																																																																																																	Let Ti672
																																																																																																																																																																																		Let Ti671
																																																																																																																																																																																			Int:1
																																																																																																																																																																																			App add_mod5group_id Ti671 
																																																																																																																																																																																		App pretrace_pixelsline Ti670 Ti672 lc0 lc1 lc2 
																																																																																																																																																																					Unit
																																																																																																																																																																			LetRec pretrace_line line y group_id 
																																																																																																																																																																				Let ydisp
																																																																																																																																																																					Let Td613
																																																																																																																																																																						Let Ti612
																																																																																																																																																																							Int:0
																																																																																																																																																																							Get scan_pitch Ti612
																																																																																																																																																																						Let Td617
																																																																																																																																																																							Let Ti616
																																																																																																																																																																								Let Ti615
																																																																																																																																																																									Let Ti614
																																																																																																																																																																										Int:1
																																																																																																																																																																										Get image_center Ti614
																																																																																																																																																																									Sub y Ti615
																																																																																																																																																																								ExtFunApp float_of_int Ti616,
																																																																																																																																																																							FMul Td613 Td617
																																																																																																																																																																					Let lc0
																																																																																																																																																																						Let Td620
																																																																																																																																																																							Let Td619
																																																																																																																																																																								Let Ti618
																																																																																																																																																																									Int:0
																																																																																																																																																																									Get screeny_dir Ti618
																																																																																																																																																																								FMul ydisp Td619
																																																																																																																																																																							Let Td622
																																																																																																																																																																								Let Ti621
																																																																																																																																																																									Int:0
																																																																																																																																																																									Get screenz_dir Ti621
																																																																																																																																																																								FAdd Td620 Td622
																																																																																																																																																																						Let lc1
																																																																																																																																																																							Let Td625
																																																																																																																																																																								Let Td624
																																																																																																																																																																									Let Ti623
																																																																																																																																																																										Int:1
																																																																																																																																																																										Get screeny_dir Ti623
																																																																																																																																																																									FMul ydisp Td624
																																																																																																																																																																								Let Td627
																																																																																																																																																																									Let Ti626
																																																																																																																																																																										Int:1
																																																																																																																																																																										Get screenz_dir Ti626
																																																																																																																																																																									FAdd Td625 Td627
																																																																																																																																																																							Let lc2
																																																																																																																																																																								Let Td630
																																																																																																																																																																									Let Td629
																																																																																																																																																																										Let Ti628
																																																																																																																																																																											Int:2
																																																																																																																																																																											Get screeny_dir Ti628
																																																																																																																																																																										FMul ydisp Td629
																																																																																																																																																																									Let Td632
																																																																																																																																																																										Let Ti631
																																																																																																																																																																											Int:2
																																																																																																																																																																											Get screenz_dir Ti631
																																																																																																																																																																										FAdd Td630 Td632
																																																																																																																																																																								Let Ti636
																																																																																																																																																																									Let Ti634
																																																																																																																																																																										Let Ti633
																																																																																																																																																																											Int:0
																																																																																																																																																																											Get image_size Ti633
																																																																																																																																																																										Let Ti635
																																																																																																																																																																											Int:1
																																																																																																																																																																											Sub Ti634 Ti635
																																																																																																																																																																									App pretrace_pixelsline Ti636 group_id lc0 lc1 lc2 
																																																																																																																																																																				LetRec scan_pixel x y prev cur next 
																																																																																																																																																																					Let Ti601
																																																																																																																																																																						Let Ti600
																																																																																																																																																																							Int:0
																																																																																																																																																																							Get image_size Ti600
																																																																																																																																																																						IfLE Ti601 x
																																																																																																																																																																							Unit
																																																																																																																																																																							Let Tu194
																																																																																																																																																																								Let Ta603
																																																																																																																																																																									Let Tt602
																																																																																																																																																																										Get cur x
																																																																																																																																																																										App p_rgbTt602 
																																																																																																																																																																									App veccpyrgb Ta603 
																																																																																																																																																																								Let Tu193
																																																																																																																																																																									Let Tb604
																																																																																																																																																																										App neighbors_existx y next 
																																																																																																																																																																										Let Ti605
																																																																																																																																																																											Int:0
																																																																																																																																																																											IfEq Tb604 Ti605
																																																																																																																																																																												Let Tt606
																																																																																																																																																																													Get cur x
																																																																																																																																																																													Let Ti607
																																																																																																																																																																														Int:0
																																																																																																																																																																														App do_without_neighborsTt606 Ti607 
																																																																																																																																																																												Let Ti608
																																																																																																																																																																													Int:0
																																																																																																																																																																													App try_exploit_neighborsx y prev cur next Ti608 
																																																																																																																																																																									Let Tu192
																																																																																																																																																																										Let Tu609
																																																																																																																																																																											Unit
																																																																																																																																																																											App write_rgbTu609 
																																																																																																																																																																										Let Ti611
																																																																																																																																																																											Let Ti610
																																																																																																																																																																												Int:1
																																																																																																																																																																												Add x Ti610
																																																																																																																																																																											App scan_pixelTi611 y prev cur next 
																																																																																																																																																																					LetRec scan_line y prev cur next group_id 
																																																																																																																																																																						Let Ti588
																																																																																																																																																																							Let Ti587
																																																																																																																																																																								Int:1
																																																																																																																																																																								Get image_size Ti587
																																																																																																																																																																							IfLE Ti588 y
																																																																																																																																																																								Unit
																																																																																																																																																																								Let Tu196
																																																																																																																																																																									Let Ti592
																																																																																																																																																																										Let Ti590
																																																																																																																																																																											Let Ti589
																																																																																																																																																																												Int:1
																																																																																																																																																																												Get image_size Ti589
																																																																																																																																																																											Let Ti591
																																																																																																																																																																												Int:1
																																																																																																																																																																												Sub Ti590 Ti591
																																																																																																																																																																										IfLE Ti592 y
																																																																																																																																																																											Unit
																																																																																																																																																																											Let Ti594
																																																																																																																																																																												Let Ti593
																																																																																																																																																																													Int:1
																																																																																																																																																																													Add y Ti593
																																																																																																																																																																												App pretrace_linenext Ti594 group_id 
																																																																																																																																																																									Let Tu195
																																																																																																																																																																										Let Ti595
																																																																																																																																																																											Int:0
																																																																																																																																																																											App scan_pixelTi595 y prev cur next 
																																																																																																																																																																										Let Ti597
																																																																																																																																																																											Let Ti596
																																																																																																																																																																												Int:1
																																																																																																																																																																												Add y Ti596
																																																																																																																																																																											Let Ti599
																																																																																																																																																																												Let Ti598
																																																																																																																																																																													Int:2
																																																																																																																																																																													App add_mod5group_id Ti598 
																																																																																																																																																																												App scan_lineTi597 cur next prev Ti599 
																																																																																																																																																																						LetRec create_float5x3array Tu197 
																																																																																																																																																																							Let vec
																																																																																																																																																																								Let Ti568
																																																																																																																																																																									Int:3
																																																																																																																																																																									Let Td569
																																																																																																																																																																										Float:0.000000
																																																																																																																																																																										ExtFunApp create_float_array Ti568,Td569,
																																																																																																																																																																								Let array
																																																																																																																																																																									Let Ti570
																																																																																																																																																																										Int:5
																																																																																																																																																																										ExtFunApp create_array Ti570,vec,
																																																																																																																																																																									Let Tu201
																																																																																																																																																																										Let Ti571
																																																																																																																																																																											Int:1
																																																																																																																																																																											Let Ta574
																																																																																																																																																																												Let Ti572
																																																																																																																																																																													Int:3
																																																																																																																																																																													Let Td573
																																																																																																																																																																														Float:0.000000
																																																																																																																																																																														ExtFunApp create_float_array Ti572,Td573,
																																																																																																																																																																												Put array Ti571 Ta574
																																																																																																																																																																										Let Tu200
																																																																																																																																																																											Let Ti575
																																																																																																																																																																												Int:2
																																																																																																																																																																												Let Ta578
																																																																																																																																																																													Let Ti576
																																																																																																																																																																														Int:3
																																																																																																																																																																														Let Td577
																																																																																																																																																																															Float:0.000000
																																																																																																																																																																															ExtFunApp create_float_array Ti576,Td577,
																																																																																																																																																																													Put array Ti575 Ta578
																																																																																																																																																																											Let Tu199
																																																																																																																																																																												Let Ti579
																																																																																																																																																																													Int:3
																																																																																																																																																																													Let Ta582
																																																																																																																																																																														Let Ti580
																																																																																																																																																																															Int:3
																																																																																																																																																																															Let Td581
																																																																																																																																																																																Float:0.000000
																																																																																																																																																																																ExtFunApp create_float_array Ti580,Td581,
																																																																																																																																																																														Put array Ti579 Ta582
																																																																																																																																																																												Let Tu198
																																																																																																																																																																													Let Ti583
																																																																																																																																																																														Int:4
																																																																																																																																																																														Let Ta586
																																																																																																																																																																															Let Ti584
																																																																																																																																																																																Int:3
																																																																																																																																																																																Let Td585
																																																																																																																																																																																	Float:0.000000
																																																																																																																																																																																	ExtFunApp create_float_array Ti584,Td585,
																																																																																																																																																																															Put array Ti583 Ta586
																																																																																																																																																																													Var array
																																																																																																																																																																							LetRec create_pixel Tu202 
																																																																																																																																																																								Let m_rgb
																																																																																																																																																																									Let Ti556
																																																																																																																																																																										Int:3
																																																																																																																																																																										Let Td557
																																																																																																																																																																											Float:0.000000
																																																																																																																																																																											ExtFunApp create_float_array Ti556,Td557,
																																																																																																																																																																									Let m_isect_ps
																																																																																																																																																																										Let Tu558
																																																																																																																																																																											Unit
																																																																																																																																																																											App create_float5x3arrayTu558 
																																																																																																																																																																										Let m_sids
																																																																																																																																																																											Let Ti559
																																																																																																																																																																												Int:5
																																																																																																																																																																												Let Ti560
																																																																																																																																																																													Int:0
																																																																																																																																																																													ExtFunApp create_array Ti559,Ti560,
																																																																																																																																																																											Let m_cdif
																																																																																																																																																																												Let Ti561
																																																																																																																																																																													Int:5
																																																																																																																																																																													Let Ti562
																																																																																																																																																																														Int:0
																																																																																																																																																																														ExtFunApp create_array Ti561,Ti562,
																																																																																																																																																																												Let m_engy
																																																																																																																																																																													Let Tu563
																																																																																																																																																																														Unit
																																																																																																																																																																														App create_float5x3arrayTu563 
																																																																																																																																																																													Let m_r20p
																																																																																																																																																																														Let Tu564
																																																																																																																																																																															Unit
																																																																																																																																																																															App create_float5x3arrayTu564 
																																																																																																																																																																														Let m_gid
																																																																																																																																																																															Let Ti565
																																																																																																																																																																																Int:1
																																																																																																																																																																																Let Ti566
																																																																																																																																																																																	Int:0
																																																																																																																																																																																	ExtFunApp create_array Ti565,Ti566,
																																																																																																																																																																															Let m_nvectors
																																																																																																																																																																																Let Tu567
																																																																																																																																																																																	Unit
																																																																																																																																																																																	App create_float5x3arrayTu567 
																																																																																																																																																																																Tuple (m_rgb,m_isect_ps,m_sids,m_cdif,m_engy,m_r20p,m_gid,m_nvectors,)
																																																																																																																																																																								LetRec init_line_elements line n 
																																																																																																																																																																									Let Ti551
																																																																																																																																																																										Int:0
																																																																																																																																																																										IfLE Ti551 n
																																																																																																																																																																											Let Tu203
																																																																																																																																																																												Let Tt553
																																																																																																																																																																													Let Tu552
																																																																																																																																																																														Unit
																																																																																																																																																																														App create_pixelTu552 
																																																																																																																																																																													Put line n Tt553
																																																																																																																																																																												Let Ti555
																																																																																																																																																																													Let Ti554
																																																																																																																																																																														Int:1
																																																																																																																																																																														Sub n Ti554
																																																																																																																																																																													App init_line_elementsline Ti555 
																																																																																																																																																																											Var line
																																																																																																																																																																									LetRec create_pixelline Tu204 
																																																																																																																																																																										Let line
																																																																																																																																																																											Let Ti544
																																																																																																																																																																												Let Ti543
																																																																																																																																																																													Int:0
																																																																																																																																																																													Get image_size Ti543
																																																																																																																																																																												Let Tt546
																																																																																																																																																																													Let Tu545
																																																																																																																																																																														Unit
																																																																																																																																																																														App create_pixelTu545 
																																																																																																																																																																													ExtFunApp create_array Ti544,Tt546,
																																																																																																																																																																											Let Ti550
																																																																																																																																																																												Let Ti548
																																																																																																																																																																													Let Ti547
																																																																																																																																																																														Int:0
																																																																																																																																																																														Get image_size Ti547
																																																																																																																																																																													Let Ti549
																																																																																																																																																																														Int:2
																																																																																																																																																																														Sub Ti548 Ti549
																																																																																																																																																																												App init_line_elementsline Ti550 
																																																																																																																																																																										LetRec tan x 
																																																																																																																																																																											Let Td540
																																																																																																																																																																												ExtFunApp sin x,
																																																																																																																																																																												Let Td541
																																																																																																																																																																													ExtFunApp cos x,
																																																																																																																																																																													Let Td542
																																																																																																																																																																														FReciprocal Td541
																																																																																																																																																																														FMul Td540 Td542
																																																																																																																																																																											LetRec adjust_position h ratio 
																																																																																																																																																																												Let l
																																																																																																																																																																													Let Td536
																																																																																																																																																																														Let Td534
																																																																																																																																																																															FMul h h
																																																																																																																																																																															Let Td535
																																																																																																																																																																																Float:0.100000
																																																																																																																																																																																FAdd Td534 Td535
																																																																																																																																																																														ExtFunApp sqrt Td536,
																																																																																																																																																																													Let tan_h
																																																																																																																																																																														Let Td537
																																																																																																																																																																															Float:1.000000
																																																																																																																																																																															Let Td538
																																																																																																																																																																																FReciprocal l
																																																																																																																																																																																FMul Td537 Td538
																																																																																																																																																																														Let theta_h
																																																																																																																																																																															ExtFunApp atan tan_h,
																																																																																																																																																																															Let tan_m
																																																																																																																																																																																Let Td539
																																																																																																																																																																																	FMul theta_h ratio
																																																																																																																																																																																	App tanTd539 
																																																																																																																																																																																FMul tan_m l
																																																																																																																																																																												LetRec calc_dirvec icount x y rx ry group_id index 
																																																																																																																																																																													Let Ti490
																																																																																																																																																																														Int:5
																																																																																																																																																																														IfLE Ti490 icount
																																																																																																																																																																															Let l
																																																																																																																																																																																Let Td495
																																																																																																																																																																																	Let Td493
																																																																																																																																																																																		Let Td491
																																																																																																																																																																																			App fsqrx 
																																																																																																																																																																																			Let Td492
																																																																																																																																																																																				App fsqry 
																																																																																																																																																																																				FAdd Td491 Td492
																																																																																																																																																																																		Let Td494
																																																																																																																																																																																			Float:1.000000
																																																																																																																																																																																			FAdd Td493 Td494
																																																																																																																																																																																	ExtFunApp sqrt Td495,
																																																																																																																																																																																Let vx
																																																																																																																																																																																	Let Td496
																																																																																																																																																																																		FReciprocal l
																																																																																																																																																																																		FMul x Td496
																																																																																																																																																																																	Let vy
																																																																																																																																																																																		Let Td497
																																																																																																																																																																																			FReciprocal l
																																																																																																																																																																																			FMul y Td497
																																																																																																																																																																																		Let vz
																																																																																																																																																																																			Let Td498
																																																																																																																																																																																				Float:1.000000
																																																																																																																																																																																				Let Td499
																																																																																																																																																																																					FReciprocal l
																																																																																																																																																																																					FMul Td498 Td499
																																																																																																																																																																																			Let dgroup
																																																																																																																																																																																				Get dirvecs group_id
																																																																																																																																																																																				Let Tu209
																																																																																																																																																																																					Let Ta501
																																																																																																																																																																																						Let Tt500
																																																																																																																																																																																							Get dgroup index
																																																																																																																																																																																							App d_vecTt500 
																																																																																																																																																																																						App vecsetTa501 vx vy vz 
																																																																																																																																																																																					Let Tu208
																																																																																																																																																																																						Let Ta505
																																																																																																																																																																																							Let Tt504
																																																																																																																																																																																								Let Ti503
																																																																																																																																																																																									Let Ti502
																																																																																																																																																																																										Int:40
																																																																																																																																																																																										Add index Ti502
																																																																																																																																																																																									Get dgroup Ti503
																																																																																																																																																																																								App d_vecTt504 
																																																																																																																																																																																							Let Td506
																																																																																																																																																																																								App fnegvy 
																																																																																																																																																																																								App vecsetTa505 vx vz Td506 
																																																																																																																																																																																						Let Tu207
																																																																																																																																																																																							Let Ta510
																																																																																																																																																																																								Let Tt509
																																																																																																																																																																																									Let Ti508
																																																																																																																																																																																										Let Ti507
																																																																																																																																																																																											Int:80
																																																																																																																																																																																											Add index Ti507
																																																																																																																																																																																										Get dgroup Ti508
																																																																																																																																																																																									App d_vecTt509 
																																																																																																																																																																																								Let Td511
																																																																																																																																																																																									App fnegvx 
																																																																																																																																																																																									Let Td512
																																																																																																																																																																																										App fnegvy 
																																																																																																																																																																																										App vecsetTa510 vz Td511 Td512 
																																																																																																																																																																																							Let Tu206
																																																																																																																																																																																								Let Ta516
																																																																																																																																																																																									Let Tt515
																																																																																																																																																																																										Let Ti514
																																																																																																																																																																																											Let Ti513
																																																																																																																																																																																												Int:1
																																																																																																																																																																																												Add index Ti513
																																																																																																																																																																																											Get dgroup Ti514
																																																																																																																																																																																										App d_vecTt515 
																																																																																																																																																																																									Let Td517
																																																																																																																																																																																										App fnegvx 
																																																																																																																																																																																										Let Td518
																																																																																																																																																																																											App fnegvy 
																																																																																																																																																																																											Let Td519
																																																																																																																																																																																												App fnegvz 
																																																																																																																																																																																												App vecsetTa516 Td517 Td518 Td519 
																																																																																																																																																																																								Let Tu205
																																																																																																																																																																																									Let Ta523
																																																																																																																																																																																										Let Tt522
																																																																																																																																																																																											Let Ti521
																																																																																																																																																																																												Let Ti520
																																																																																																																																																																																													Int:41
																																																																																																																																																																																													Add index Ti520
																																																																																																																																																																																												Get dgroup Ti521
																																																																																																																																																																																											App d_vecTt522 
																																																																																																																																																																																										Let Td524
																																																																																																																																																																																											App fnegvx 
																																																																																																																																																																																											Let Td525
																																																																																																																																																																																												App fnegvz 
																																																																																																																																																																																												App vecsetTa523 Td524 Td525 vy 
																																																																																																																																																																																									Let Ta529
																																																																																																																																																																																										Let Tt528
																																																																																																																																																																																											Let Ti527
																																																																																																																																																																																												Let Ti526
																																																																																																																																																																																													Int:81
																																																																																																																																																																																													Add index Ti526
																																																																																																																																																																																												Get dgroup Ti527
																																																																																																																																																																																											App d_vecTt528 
																																																																																																																																																																																										Let Td530
																																																																																																																																																																																											App fnegvz 
																																																																																																																																																																																											App vecsetTa529 Td530 vx vy 
																																																																																																																																																																															Let x2
																																																																																																																																																																																App adjust_positiony rx 
																																																																																																																																																																																Let Ti532
																																																																																																																																																																																	Let Ti531
																																																																																																																																																																																		Int:1
																																																																																																																																																																																		Add icount Ti531
																																																																																																																																																																																	Let Td533
																																																																																																																																																																																		App adjust_positionx2 ry 
																																																																																																																																																																																		App calc_dirvecTi532 x2 Td533 rx ry group_id index 
																																																																																																																																																																													LetRec calc_dirvecs col ry group_id index 
																																																																																																																																																																														Let Ti469
																																																																																																																																																																															Int:0
																																																																																																																																																																															IfLE Ti469 col
																																																																																																																																																																																Let rx
																																																																																																																																																																																	Let Td472
																																																																																																																																																																																		Let Td470
																																																																																																																																																																																			ExtFunApp float_of_int col,
																																																																																																																																																																																			Let Td471
																																																																																																																																																																																				Float:0.200000
																																																																																																																																																																																				FMul Td470 Td471
																																																																																																																																																																																		Let Td473
																																																																																																																																																																																			Float:0.900000
																																																																																																																																																																																			FSub Td472 Td473
																																																																																																																																																																																	Let Tu211
																																																																																																																																																																																		Let Ti474
																																																																																																																																																																																			Int:0
																																																																																																																																																																																			Let Td475
																																																																																																																																																																																				Float:0.000000
																																																																																																																																																																																				Let Td476
																																																																																																																																																																																					Float:0.000000
																																																																																																																																																																																					App calc_dirvecTi474 Td475 Td476 rx ry group_id index 
																																																																																																																																																																																		Let rx2
																																																																																																																																																																																			Let Td479
																																																																																																																																																																																				Let Td477
																																																																																																																																																																																					ExtFunApp float_of_int col,
																																																																																																																																																																																					Let Td478
																																																																																																																																																																																						Float:0.200000
																																																																																																																																																																																						FMul Td477 Td478
																																																																																																																																																																																				Let Td480
																																																																																																																																																																																					Float:0.100000
																																																																																																																																																																																					FAdd Td479 Td480
																																																																																																																																																																																			Let Tu210
																																																																																																																																																																																				Let Ti481
																																																																																																																																																																																					Int:0
																																																																																																																																																																																					Let Td482
																																																																																																																																																																																						Float:0.000000
																																																																																																																																																																																						Let Td483
																																																																																																																																																																																							Float:0.000000
																																																																																																																																																																																							Let Ti485
																																																																																																																																																																																								Let Ti484
																																																																																																																																																																																									Int:2
																																																																																																																																																																																									Add index Ti484
																																																																																																																																																																																								App calc_dirvecTi481 Td482 Td483 rx2 ry group_id Ti485 
																																																																																																																																																																																				Let Ti487
																																																																																																																																																																																					Let Ti486
																																																																																																																																																																																						Int:1
																																																																																																																																																																																						Sub col Ti486
																																																																																																																																																																																					Let Ti489
																																																																																																																																																																																						Let Ti488
																																																																																																																																																																																							Int:1
																																																																																																																																																																																							App add_mod5group_id Ti488 
																																																																																																																																																																																						App calc_dirvecsTi487 ry Ti489 index 
																																																																																																																																																																																Unit
																																																																																																																																																																														LetRec calc_dirvec_rows row group_id index 
																																																																																																																																																																															Let Ti457
																																																																																																																																																																																Int:0
																																																																																																																																																																																IfLE Ti457 row
																																																																																																																																																																																	Let ry
																																																																																																																																																																																		Let Td460
																																																																																																																																																																																			Let Td458
																																																																																																																																																																																				ExtFunApp float_of_int row,
																																																																																																																																																																																				Let Td459
																																																																																																																																																																																					Float:0.200000
																																																																																																																																																																																					FMul Td458 Td459
																																																																																																																																																																																			Let Td461
																																																																																																																																																																																				Float:0.900000
																																																																																																																																																																																				FSub Td460 Td461
																																																																																																																																																																																		Let Tu212
																																																																																																																																																																																			Let Ti462
																																																																																																																																																																																				Int:4
																																																																																																																																																																																				App calc_dirvecsTi462 ry group_id index 
																																																																																																																																																																																			Let Ti464
																																																																																																																																																																																				Let Ti463
																																																																																																																																																																																					Int:1
																																																																																																																																																																																					Sub row Ti463
																																																																																																																																																																																				Let Ti466
																																																																																																																																																																																					Let Ti465
																																																																																																																																																																																						Int:2
																																																																																																																																																																																						App add_mod5group_id Ti465 
																																																																																																																																																																																					Let Ti468
																																																																																																																																																																																						Let Ti467
																																																																																																																																																																																							Int:4
																																																																																																																																																																																							Add index Ti467
																																																																																																																																																																																						App calc_dirvec_rowsTi464 Ti466 Ti468 
																																																																																																																																																																																	Unit
																																																																																																																																																																															LetRec create_dirvec Tu213 
																																																																																																																																																																																Let v3
																																																																																																																																																																																	Let Ti453
																																																																																																																																																																																		Int:3
																																																																																																																																																																																		Let Td454
																																																																																																																																																																																			Float:0.000000
																																																																																																																																																																																			ExtFunApp create_float_array Ti453,Td454,
																																																																																																																																																																																	Let consts
																																																																																																																																																																																		Let Ti456
																																																																																																																																																																																			Let Ti455
																																																																																																																																																																																				Int:0
																																																																																																																																																																																				Get n_objects Ti455
																																																																																																																																																																																			ExtFunApp create_array Ti456,v3,
																																																																																																																																																																																		Tuple (v3,consts,)
																																																																																																																																																																																LetRec create_dirvec_elements d index 
																																																																																																																																																																																	Let Ti448
																																																																																																																																																																																		Int:0
																																																																																																																																																																																		IfLE Ti448 index
																																																																																																																																																																																			Let Tu214
																																																																																																																																																																																				Let Tt450
																																																																																																																																																																																					Let Tu449
																																																																																																																																																																																						Unit
																																																																																																																																																																																						App create_dirvecTu449 
																																																																																																																																																																																					Put d index Tt450
																																																																																																																																																																																				Let Ti452
																																																																																																																																																																																					Let Ti451
																																																																																																																																																																																						Int:1
																																																																																																																																																																																						Sub index Ti451
																																																																																																																																																																																					App create_dirvec_elementsd Ti452 
																																																																																																																																																																																			Unit
																																																																																																																																																																																	LetRec create_dirvecs index 
																																																																																																																																																																																		Let Ti439
																																																																																																																																																																																			Int:0
																																																																																																																																																																																			IfLE Ti439 index
																																																																																																																																																																																				Let Tu216
																																																																																																																																																																																					Let Ta443
																																																																																																																																																																																						Let Ti440
																																																																																																																																																																																							Int:120
																																																																																																																																																																																							Let Tt442
																																																																																																																																																																																								Let Tu441
																																																																																																																																																																																									Unit
																																																																																																																																																																																									App create_dirvecTu441 
																																																																																																																																																																																								ExtFunApp create_array Ti440,Tt442,
																																																																																																																																																																																						Put dirvecs index Ta443
																																																																																																																																																																																					Let Tu215
																																																																																																																																																																																						Let Ta444
																																																																																																																																																																																							Get dirvecs index
																																																																																																																																																																																							Let Ti445
																																																																																																																																																																																								Int:118
																																																																																																																																																																																								App create_dirvec_elementsTa444 Ti445 
																																																																																																																																																																																						Let Ti447
																																																																																																																																																																																							Let Ti446
																																																																																																																																																																																								Int:1
																																																																																																																																																																																								Sub index Ti446
																																																																																																																																																																																							App create_dirvecsTi447 
																																																																																																																																																																																				Unit
																																																																																																																																																																																		LetRec init_dirvec_constants vecset index 
																																																																																																																																																																																			Let Ti435
																																																																																																																																																																																				Int:0
																																																																																																																																																																																				IfLE Ti435 index
																																																																																																																																																																																					Let Tu217
																																																																																																																																																																																						Let Tt436
																																																																																																																																																																																							Get vecset index
																																																																																																																																																																																							App setup_dirvec_constantsTt436 
																																																																																																																																																																																						Let Ti438
																																																																																																																																																																																							Let Ti437
																																																																																																																																																																																								Int:1
																																																																																																																																																																																								Sub index Ti437
																																																																																																																																																																																							App init_dirvec_constantsvecset Ti438 
																																																																																																																																																																																					Unit
																																																																																																																																																																																			LetRec init_vecset_constants index 
																																																																																																																																																																																				Let Ti430
																																																																																																																																																																																					Int:0
																																																																																																																																																																																					IfLE Ti430 index
																																																																																																																																																																																						Let Tu218
																																																																																																																																																																																							Let Ta431
																																																																																																																																																																																								Get dirvecs index
																																																																																																																																																																																								Let Ti432
																																																																																																																																																																																									Int:119
																																																																																																																																																																																									App init_dirvec_constantsTa431 Ti432 
																																																																																																																																																																																							Let Ti434
																																																																																																																																																																																								Let Ti433
																																																																																																																																																																																									Int:1
																																																																																																																																																																																									Sub index Ti433
																																																																																																																																																																																								App init_vecset_constantsTi434 
																																																																																																																																																																																						Unit
																																																																																																																																																																																				LetRec init_dirvecs Tu219 
																																																																																																																																																																																					Let Tu221
																																																																																																																																																																																						Let Ti425
																																																																																																																																																																																							Int:4
																																																																																																																																																																																							App create_dirvecsTi425 
																																																																																																																																																																																						Let Tu220
																																																																																																																																																																																							Let Ti426
																																																																																																																																																																																								Int:9
																																																																																																																																																																																								Let Ti427
																																																																																																																																																																																									Int:0
																																																																																																																																																																																									Let Ti428
																																																																																																																																																																																										Int:0
																																																																																																																																																																																										App calc_dirvec_rowsTi426 Ti427 Ti428 
																																																																																																																																																																																							Let Ti429
																																																																																																																																																																																								Int:4
																																																																																																																																																																																								App init_vecset_constantsTi429 
																																																																																																																																																																																					LetRec add_reflection index surface_id bright v0 v1 v2 
																																																																																																																																																																																						Let dvec
																																																																																																																																																																																							Let Tu422
																																																																																																																																																																																								Unit
																																																																																																																																																																																								App create_dirvecTu422 
																																																																																																																																																																																							Let Tu223
																																																																																																																																																																																								Let Ta423
																																																																																																																																																																																									App d_vecdvec 
																																																																																																																																																																																									App vecsetTa423 v0 v1 v2 
																																																																																																																																																																																								Let Tu222
																																																																																																																																																																																									App setup_dirvec_constantsdvec 
																																																																																																																																																																																									Let Tt424
																																																																																																																																																																																										Tuple (surface_id,dvec,bright,)
																																																																																																																																																																																										Put reflections index Tt424
																																																																																																																																																																																						LetRec setup_rect_reflection obj_id obj 
																																																																																																																																																																																							Let sid
																																																																																																																																																																																								ShiftL2 obj_id
																																																																																																																																																																																								Let nr
																																																																																																																																																																																									Let Ti394
																																																																																																																																																																																										Int:0
																																																																																																																																																																																										Get n_reflections Ti394
																																																																																																																																																																																									Let br
																																																																																																																																																																																										Let Td395
																																																																																																																																																																																											Float:1.000000
																																																																																																																																																																																											Let Td396
																																																																																																																																																																																												App o_diffuseobj 
																																																																																																																																																																																												FSub Td395 Td396
																																																																																																																																																																																										Let n0
																																																																																																																																																																																											Let Td398
																																																																																																																																																																																												Let Ti397
																																																																																																																																																																																													Int:0
																																																																																																																																																																																													Get light Ti397
																																																																																																																																																																																												App fnegTd398 
																																																																																																																																																																																											Let n1
																																																																																																																																																																																												Let Td400
																																																																																																																																																																																													Let Ti399
																																																																																																																																																																																														Int:1
																																																																																																																																																																																														Get light Ti399
																																																																																																																																																																																													App fnegTd400 
																																																																																																																																																																																												Let n2
																																																																																																																																																																																													Let Td402
																																																																																																																																																																																														Let Ti401
																																																																																																																																																																																															Int:2
																																																																																																																																																																																															Get light Ti401
																																																																																																																																																																																														App fnegTd402 
																																																																																																																																																																																													Let Tu226
																																																																																																																																																																																														Let Ti404
																																																																																																																																																																																															Let Ti403
																																																																																																																																																																																																Int:1
																																																																																																																																																																																																Add sid Ti403
																																																																																																																																																																																															Let Td406
																																																																																																																																																																																																Let Ti405
																																																																																																																																																																																																	Int:0
																																																																																																																																																																																																	Get light Ti405
																																																																																																																																																																																																App add_reflectionnr Ti404 br Td406 n1 n2 
																																																																																																																																																																																														Let Tu225
																																																																																																																																																																																															Let Ti408
																																																																																																																																																																																																Let Ti407
																																																																																																																																																																																																	Int:1
																																																																																																																																																																																																	Add nr Ti407
																																																																																																																																																																																																Let Ti410
																																																																																																																																																																																																	Let Ti409
																																																																																																																																																																																																		Int:2
																																																																																																																																																																																																		Add sid Ti409
																																																																																																																																																																																																	Let Td412
																																																																																																																																																																																																		Let Ti411
																																																																																																																																																																																																			Int:1
																																																																																																																																																																																																			Get light Ti411
																																																																																																																																																																																																		App add_reflectionTi408 Ti410 br n0 Td412 n2 
																																																																																																																																																																																															Let Tu224
																																																																																																																																																																																																Let Ti414
																																																																																																																																																																																																	Let Ti413
																																																																																																																																																																																																		Int:2
																																																																																																																																																																																																		Add nr Ti413
																																																																																																																																																																																																	Let Ti416
																																																																																																																																																																																																		Let Ti415
																																																																																																																																																																																																			Int:3
																																																																																																																																																																																																			Add sid Ti415
																																																																																																																																																																																																		Let Td418
																																																																																																																																																																																																			Let Ti417
																																																																																																																																																																																																				Int:2
																																																																																																																																																																																																				Get light Ti417
																																																																																																																																																																																																			App add_reflectionTi414 Ti416 br n0 n1 Td418 
																																																																																																																																																																																																Let Ti419
																																																																																																																																																																																																	Int:0
																																																																																																																																																																																																	Let Ti421
																																																																																																																																																																																																		Let Ti420
																																																																																																																																																																																																			Int:3
																																																																																																																																																																																																			Add nr Ti420
																																																																																																																																																																																																		Put n_reflections Ti419 Ti421
																																																																																																																																																																																							LetRec setup_surface_reflection obj_id obj 
																																																																																																																																																																																								Let sid
																																																																																																																																																																																									Let Ti364
																																																																																																																																																																																										ShiftL2 obj_id
																																																																																																																																																																																										Let Ti365
																																																																																																																																																																																											Int:1
																																																																																																																																																																																											Add Ti364 Ti365
																																																																																																																																																																																									Let nr
																																																																																																																																																																																										Let Ti366
																																																																																																																																																																																											Int:0
																																																																																																																																																																																											Get n_reflections Ti366
																																																																																																																																																																																										Let br
																																																																																																																																																																																											Let Td367
																																																																																																																																																																																												Float:1.000000
																																																																																																																																																																																												Let Td368
																																																																																																																																																																																													App o_diffuseobj 
																																																																																																																																																																																													FSub Td367 Td368
																																																																																																																																																																																											Let p
																																																																																																																																																																																												Let Ta369
																																																																																																																																																																																													App o_param_abcobj 
																																																																																																																																																																																													App veciprodlight Ta369 
																																																																																																																																																																																												Let Tu227
																																																																																																																																																																																													Let Td376
																																																																																																																																																																																														Let Td373
																																																																																																																																																																																															Let Td372
																																																																																																																																																																																																Let Td370
																																																																																																																																																																																																	Float:2.000000
																																																																																																																																																																																																	Let Td371
																																																																																																																																																																																																		App o_param_aobj 
																																																																																																																																																																																																		FMul Td370 Td371
																																																																																																																																																																																																FMul Td372 p
																																																																																																																																																																																															Let Td375
																																																																																																																																																																																																Let Ti374
																																																																																																																																																																																																	Int:0
																																																																																																																																																																																																	Get light Ti374
																																																																																																																																																																																																FSub Td373 Td375
																																																																																																																																																																																														Let Td383
																																																																																																																																																																																															Let Td380
																																																																																																																																																																																																Let Td379
																																																																																																																																																																																																	Let Td377
																																																																																																																																																																																																		Float:2.000000
																																																																																																																																																																																																		Let Td378
																																																																																																																																																																																																			App o_param_bobj 
																																																																																																																																																																																																			FMul Td377 Td378
																																																																																																																																																																																																	FMul Td379 p
																																																																																																																																																																																																Let Td382
																																																																																																																																																																																																	Let Ti381
																																																																																																																																																																																																		Int:1
																																																																																																																																																																																																		Get light Ti381
																																																																																																																																																																																																	FSub Td380 Td382
																																																																																																																																																																																															Let Td390
																																																																																																																																																																																																Let Td387
																																																																																																																																																																																																	Let Td386
																																																																																																																																																																																																		Let Td384
																																																																																																																																																																																																			Float:2.000000
																																																																																																																																																																																																			Let Td385
																																																																																																																																																																																																				App o_param_cobj 
																																																																																																																																																																																																				FMul Td384 Td385
																																																																																																																																																																																																		FMul Td386 p
																																																																																																																																																																																																	Let Td389
																																																																																																																																																																																																		Let Ti388
																																																																																																																																																																																																			Int:2
																																																																																																																																																																																																			Get light Ti388
																																																																																																																																																																																																		FSub Td387 Td389
																																																																																																																																																																																																App add_reflectionnr sid br Td376 Td383 Td390 
																																																																																																																																																																																													Let Ti391
																																																																																																																																																																																														Int:0
																																																																																																																																																																																														Let Ti393
																																																																																																																																																																																															Let Ti392
																																																																																																																																																																																																Int:1
																																																																																																																																																																																																Add nr Ti392
																																																																																																																																																																																															Put n_reflections Ti391 Ti393
																																																																																																																																																																																								LetRec setup_reflections obj_id 
																																																																																																																																																																																									Let Ti355
																																																																																																																																																																																										Int:0
																																																																																																																																																																																										IfLE Ti355 obj_id
																																																																																																																																																																																											Let obj
																																																																																																																																																																																												Get objects obj_id
																																																																																																																																																																																												Let Ti356
																																																																																																																																																																																													App o_reflectiontypeobj 
																																																																																																																																																																																													Let Ti357
																																																																																																																																																																																														Int:2
																																																																																																																																																																																														IfEq Ti356 Ti357
																																																																																																																																																																																															Let Tb360
																																																																																																																																																																																																Let Td358
																																																																																																																																																																																																	App o_diffuseobj 
																																																																																																																																																																																																	Let Td359
																																																																																																																																																																																																		Float:1.000000
																																																																																																																																																																																																		App flessTd358 Td359 
																																																																																																																																																																																																Let Ti361
																																																																																																																																																																																																	Int:0
																																																																																																																																																																																																	IfEq Tb360 Ti361
																																																																																																																																																																																																		Unit
																																																																																																																																																																																																		Let m_shape
																																																																																																																																																																																																			App o_formobj 
																																																																																																																																																																																																			Let Ti362
																																																																																																																																																																																																				Int:1
																																																																																																																																																																																																				IfEq m_shape Ti362
																																																																																																																																																																																																					App setup_rect_reflectionobj_id obj 
																																																																																																																																																																																																					Let Ti363
																																																																																																																																																																																																						Int:2
																																																																																																																																																																																																						IfEq m_shape Ti363
																																																																																																																																																																																																							App setup_surface_reflectionobj_id obj 
																																																																																																																																																																																																							Unit
																																																																																																																																																																																															Unit
																																																																																																																																																																																											Unit
																																																																																																																																																																																									LetRec rt size_x size_y 
																																																																																																																																																																																										Let Tu239
																																																																																																																																																																																											Let Ti329
																																																																																																																																																																																												Int:0
																																																																																																																																																																																												Put image_size Ti329 size_x
																																																																																																																																																																																											Let Tu238
																																																																																																																																																																																												Let Ti330
																																																																																																																																																																																													Int:1
																																																																																																																																																																																													Put image_size Ti330 size_y
																																																																																																																																																																																												Let Tu237
																																																																																																																																																																																													Let Ti331
																																																																																																																																																																																														Int:0
																																																																																																																																																																																														Let Ti332
																																																																																																																																																																																															ShiftR1 size_x
																																																																																																																																																																																															Put image_center Ti331 Ti332
																																																																																																																																																																																													Let Tu236
																																																																																																																																																																																														Let Ti333
																																																																																																																																																																																															Int:1
																																																																																																																																																																																															Let Ti334
																																																																																																																																																																																																ShiftR1 size_y
																																																																																																																																																																																																Put image_center Ti333 Ti334
																																																																																																																																																																																														Let Tu235
																																																																																																																																																																																															Let Ti335
																																																																																																																																																																																																Int:0
																																																																																																																																																																																																Let Td339
																																																																																																																																																																																																	Let Td336
																																																																																																																																																																																																		Float:128.000000
																																																																																																																																																																																																		Let Td337
																																																																																																																																																																																																			ExtFunApp float_of_int size_x,
																																																																																																																																																																																																			Let Td338
																																																																																																																																																																																																				FReciprocal Td337
																																																																																																																																																																																																				FMul Td336 Td338
																																																																																																																																																																																																	Put scan_pitch Ti335 Td339
																																																																																																																																																																																															Let prev
																																																																																																																																																																																																Let Tu340
																																																																																																																																																																																																	Unit
																																																																																																																																																																																																	App create_pixellineTu340 
																																																																																																																																																																																																Let cur
																																																																																																																																																																																																	Let Tu341
																																																																																																																																																																																																		Unit
																																																																																																																																																																																																		App create_pixellineTu341 
																																																																																																																																																																																																	Let next
																																																																																																																																																																																																		Let Tu342
																																																																																																																																																																																																			Unit
																																																																																																																																																																																																			App create_pixellineTu342 
																																																																																																																																																																																																		Let Tu234
																																																																																																																																																																																																			Let Tu343
																																																																																																																																																																																																				Unit
																																																																																																																																																																																																				App read_parameterTu343 
																																																																																																																																																																																																			Let Tu233
																																																																																																																																																																																																				Let Tu344
																																																																																																																																																																																																					Unit
																																																																																																																																																																																																					App write_ppm_headerTu344 
																																																																																																																																																																																																				Let Tu232
																																																																																																																																																																																																					Let Tu345
																																																																																																																																																																																																						Unit
																																																																																																																																																																																																						App init_dirvecsTu345 
																																																																																																																																																																																																					Let Tu231
																																																																																																																																																																																																						Let Ta346
																																																																																																																																																																																																							App d_veclight_dirvec 
																																																																																																																																																																																																							App veccpyTa346 light 
																																																																																																																																																																																																						Let Tu230
																																																																																																																																																																																																							App setup_dirvec_constantslight_dirvec 
																																																																																																																																																																																																							Let Tu229
																																																																																																																																																																																																								Let Ti350
																																																																																																																																																																																																									Let Ti348
																																																																																																																																																																																																										Let Ti347
																																																																																																																																																																																																											Int:0
																																																																																																																																																																																																											Get n_objects Ti347
																																																																																																																																																																																																										Let Ti349
																																																																																																																																																																																																											Int:1
																																																																																																																																																																																																											Sub Ti348 Ti349
																																																																																																																																																																																																									App setup_reflectionsTi350 
																																																																																																																																																																																																								Let Tu228
																																																																																																																																																																																																									Let Ti351
																																																																																																																																																																																																										Int:0
																																																																																																																																																																																																										Let Ti352
																																																																																																																																																																																																											Int:0
																																																																																																																																																																																																											App pretrace_linecur Ti351 Ti352 
																																																																																																																																																																																																									Let Ti353
																																																																																																																																																																																																										Int:0
																																																																																																																																																																																																										Let Ti354
																																																																																																																																																																																																											Int:2
																																																																																																																																																																																																											App scan_lineTi353 prev cur next Ti354 
																																																																																																																																																																																										Let Tu240
																																																																																																																																																																																											Let Ti326
																																																																																																																																																																																												Int:128
																																																																																																																																																																																												Let Ti327
																																																																																																																																																																																													Int:128
																																																																																																																																																																																													App rtTi326 Ti327 
																																																																																																																																																																																											Let Ti328
																																																																																																																																																																																												Int:0
																																																																																																																																																																																												ExtFunApp print_int Ti328,
