LetRec fneg x 
	FNeg x
	LetRec fhalf x 
		Let Td2593
			Float:0.500000
			FMul x Td2593
		LetRec fsqr x 
			FMul x x
			LetRec fflag a 
				Let Td2591
					Float:0.000000
					IfLE Td2591 a
						Int:1
						Let Ti2592
							Int:1
							Neg Ti2592
				LetRec fflag2 a 
					Let Td2589
						Float:0.000000
						IfLE Td2589 a
							Float:1.000000
							Let Td2590
								Float:1.000000
								FNeg Td2590
					LetRec countn a b c 
						IfLE b a
							Let Ti2586
								Sub a b
								Let Ti2588
									Let Ti2587
										Int:1
										Add c Ti2587
									App countnTi2586 b Ti2588 
							Var c
						LetRec print_int a 
							Let b
								Let Ti2548
									Int:0
									IfLE Ti2548 a
										Var a
										Let Tu1
											Let Ti2549
												Int:45
												printchar Ti2549
											Neg a
								Let x
									Let Ti2550
										Int:10000
										Let Ti2551
											Int:0
											App countnb Ti2550 Ti2551 
									Let b
										Let Ti2553
											Let Ti2552
												Int:10000
												Mul x Ti2552
											Sub b Ti2553
										Let flag
											Let Ti2554
												Int:0
												IfLE x Ti2554
													Int:0
													Let Tu2
														Let Ti2556
															Let Ti2555
																Int:48
																Add Ti2555 x
															printchar Ti2556
														Int:1
											Let x
												Let Ti2557
													Int:1000
													Let Ti2558
														Int:0
														App countnb Ti2557 Ti2558 
												Let b
													Let Ti2560
														Let Ti2559
															Int:1000
															Mul x Ti2559
														Sub b Ti2560
													Let flag
														Let Ti2561
															Int:0
															IfLE x Ti2561
																Let Ti2562
																	Int:1
																	IfEq flag Ti2562
																		Let Tu4
																			Let Ti2563
																				Int:48
																				printchar Ti2563
																			Int:1
																		Int:0
																Let Tu3
																	Let Ti2565
																		Let Ti2564
																			Int:48
																			Add Ti2564 x
																		printchar Ti2565
																	Int:1
														Let x
															Let Ti2566
																Int:100
																Let Ti2567
																	Int:0
																	App countnb Ti2566 Ti2567 
															Let b
																Let Ti2569
																	Let Ti2568
																		Int:100
																		Mul x Ti2568
																	Sub b Ti2569
																Let flag
																	Let Ti2570
																		Int:0
																		IfLE x Ti2570
																			Let Ti2571
																				Int:1
																				IfEq flag Ti2571
																					Let Tu6
																						Let Ti2572
																							Int:48
																							printchar Ti2572
																						Int:1
																					Int:0
																			Let Tu5
																				Let Ti2574
																					Let Ti2573
																						Int:48
																						Add Ti2573 x
																					printchar Ti2574
																				Int:1
																	Let x
																		Let Ti2575
																			Int:10
																			Let Ti2576
																				Int:0
																				App countnb Ti2575 Ti2576 
																		Let b
																			Let Ti2578
																				Let Ti2577
																					Int:10
																					Mul x Ti2577
																				Sub b Ti2578
																			Let flag
																				Let Ti2579
																					Int:0
																					IfLE x Ti2579
																						Let Ti2580
																							Int:1
																							IfEq flag Ti2580
																								Let Tu8
																									Let Ti2581
																										Int:48
																										printchar Ti2581
																									Int:1
																								Int:0
																						Let Tu7
																							Let Ti2583
																								Let Ti2582
																									Int:48
																									Add Ti2582 x
																								printchar Ti2583
																							Int:1
																				Let Ti2585
																					Let Ti2584
																						Int:48
																						Add Ti2584 b
																					printchar Ti2585
							LetRec int_of_float a 
								Let abs
									fabs a
									Let flag
										App fflaga 
										LetRec ftoi_ret a 
											LetRec div2like a 
												LetRec div2like_sub a b 
													Let Td2543
														Float:2.000000
														IfLE Td2543 a
															Let Td2545
																Let Td2544
																	Float:2.000000
																	FSub a Td2544
																Let Td2547
																	Let Td2546
																		Float:1.000000
																		FAdd b Td2546
																	App div2like_subTd2545 Td2547 
															Var b
													Let Td2542
														Float:0.000000
														App div2like_suba Td2542 
												LetRec ftoi_ret_sub a b c 
													Let a_sub
														App div2likea 
														Let Td2535
															Float:1.000000
															IfLE Td2535 a
																Let Td2536
																	Float:1.000000
																	Let Td2538
																		Let Td2537
																			FSub a a_sub
																			FSub Td2537 a_sub
																		IfLE Td2536 Td2538
																			Let Ti2539
																				Add b c
																				Let Ti2540
																					Add c c
																					App ftoi_ret_suba_sub Ti2539 Ti2540 
																			Let Ti2541
																				Add c c
																				App ftoi_ret_suba_sub b Ti2541 
																Var b
													Let Ti2533
														Int:0
														Let Ti2534
															Int:1
															App ftoi_ret_suba Ti2533 Ti2534 
											LetRec ftoi_big a b 
												Let a_sub
													Let Td2529
														Float:8388608.000000
														FSub a Td2529
													Let b_sub
														Let Ti2530
															Int:8388608
															Add b Ti2530
														Let Td2531
															Float:8388608.000000
															IfLE Td2531 a_sub
																App ftoi_biga_sub b_sub 
																Let Ti2532
																	App ftoi_reta_sub 
																	Add b_sub Ti2532
												Let Ti2522
													Int:1
													IfEq flag Ti2522
														Let Td2523
															Float:8388608.000000
															IfLE abs Td2523
																App ftoi_retabs 
																Let Ti2524
																	Int:0
																	App ftoi_bigabs Ti2524 
														Let Td2525
															Float:8388608.000000
															IfLE abs Td2525
																Let Ti2526
																	App ftoi_retabs 
																	Neg Ti2526
																Let Ti2528
																	Let Ti2527
																		Int:0
																		App ftoi_bigabs Ti2527 
																	Neg Ti2528
								LetRec float_of_int a 
									Let abs
										Let Ti2497
											Int:0
											IfLE a Ti2497
												Neg a
												Var a
										Let flag
											Let Ti2498
												Int:0
												IfLE a Ti2498
													Let Ti2499
														Int:1
														Neg Ti2499
													Int:1
											LetRec itof_ret a 
												LetRec itof_ret_sub a b c 
													Let a_sub
														ShiftR1 a
														Let Ti2513
															Int:0
															IfEq a Ti2513
																Var b
																Let Ti2515
																	Let Ti2514
																		Sub a a_sub
																		Sub Ti2514 a_sub
																	Let Ti2516
																		Int:0
																		IfLE Ti2515 Ti2516
																			Let Td2518
																				Let Td2517
																					Float:2.000000
																					FMul c Td2517
																				App itof_ret_suba_sub b Td2518 
																			Let Td2519
																				FAdd b c
																				Let Td2521
																					Let Td2520
																						Float:2.000000
																						FMul c Td2520
																					App itof_ret_suba_sub Td2519 Td2521 
													Let Td2511
														Float:0.000000
														Let Td2512
															Float:1.000000
															App itof_ret_suba Td2511 Td2512 
												LetRec itof_big a b 
													Let a_sub
														Let Ti2507
															Int:8388608
															Sub a Ti2507
														Let b_sub
															Let Td2508
																Float:8388608.000000
																FAdd b Td2508
															Let Ti2509
																Int:8388608
																IfLE Ti2509 a_sub
																	App itof_biga_sub b_sub 
																	Let Td2510
																		App itof_reta_sub 
																		FAdd b_sub Td2510
													Let Ti2500
														Int:1
														IfEq flag Ti2500
															Let Ti2501
																Int:8388608
																IfLE abs Ti2501
																	App itof_retabs 
																	Let Td2502
																		Float:0.000000
																		App itof_bigabs Td2502 
															Let Ti2503
																Int:8388608
																IfLE abs Ti2503
																	Let Td2504
																		App itof_retabs 
																		FNeg Td2504
																	Let Td2506
																		Let Td2505
																			Float:0.000000
																			App itof_bigabs Td2505 
																		FNeg Td2506
									LetRec floor a 
										Let abs
											fabs a
											LetRec floor_pos_ker a 
												Let Td2496
													Float:1.000000
													FSub a Td2496
												LetRec floor_pos_small a 
													Let b
														Let Td2494
															Float:8388608.000000
															FAdd a Td2494
														Let c
															Let Td2495
																Float:8388608.000000
																FSub b Td2495
															IfLE c a
																Var c
																App floor_pos_kerc 
													LetRec floor_pos a 
														Let Td2493
															Float:8388608.000000
															IfLE a Td2493
																App floor_pos_smalla 
																App floor_pos_kera 
														LetRec floor_neg_ker a 
															Let Td2492
																Float:1.000000
																FAdd a Td2492
															LetRec floor_neg_small a 
																Let b
																	Let Td2489
																		Float:8388608.000000
																		FAdd a Td2489
																	Let c
																		Let Td2490
																			Float:8388608.000000
																			FSub b Td2490
																		IfLE a c
																			FNeg c
																			Let Td2491
																				App floor_neg_kerc 
																				FNeg Td2491
																LetRec floor_neg a 
																	Let Td2487
																		Float:8388608.000000
																		IfLE a Td2487
																			App floor_neg_smalla 
																			Let Td2488
																				App floor_neg_kera 
																				FNeg Td2488
																	Let Td2486
																		Float:0.000000
																		IfLE a Td2486
																			App floor_negabs 
																			App floor_posabs 
										LetRec reduction_pi2 a 
											Let pidouble
												Float:6.283185
												IfLE a pidouble
													Var a
													Let Td2485
														FSub a pidouble
														App reduction_pi2Td2485 
											LetRec addflag c flag 
												FMul c flag
												LetRec sin_kernel a 
													Let a3
														Let Td2475
															FMul a a
															FMul Td2475 a
														Let a5
															Let Td2476
																FMul a3 a
																FMul Td2476 a
															Let a7
																Let Td2477
																	FMul a5 a
																	FMul Td2477 a
																Let Td2482
																	Let Td2480
																		Let Td2479
																			Let Td2478
																				Float:0.166667
																				FMul Td2478 a3
																			FSub a Td2479
																		Let Td2481
																			Float:0.008333
																			FDiv Td2481 a5 Td2480
																	Let Td2484
																		Let Td2483
																			Float:0.000196
																			FMul Td2483 a7
																		FSub Td2482 Td2484
													LetRec cos_kernel a 
														Let a2
															FMul a a
															Let a4
																Let Td2465
																	FMul a2 a
																	FMul Td2465 a
																Let a6
																	Let Td2466
																		FMul a4 a
																		FMul Td2466 a
																	Let Td2472
																		Let Td2470
																			Let Td2467
																				Float:1.000000
																				Let Td2469
																					Let Td2468
																						Float:0.500000
																						FMul Td2468 a2
																					FSub Td2467 Td2469
																			Let Td2471
																				Float:0.041664
																				FDiv Td2471 a4 Td2470
																		Let Td2474
																			Let Td2473
																				Float:0.001370
																				FMul Td2473 a6
																			FSub Td2472 Td2474
														LetRec sin a 
															Let pi
																Float:3.141593
																LetRec sin3 a flag 
																	Let pi
																		Float:3.141593
																		Let Td2462
																			Let Td2461
																				Float:0.250000
																				FMul pi Td2461
																			IfLE a Td2462
																				Let tmp
																					App sin_kernela 
																					App addflagtmp flag 
																				Let tmp
																					Let Td2464
																						Let Td2463
																							Float:0.500000
																							FMSub pi Td2463 a
																						App cos_kernelTd2464 
																					App addflagtmp flag 
																	LetRec sin2 a flag 
																		Let pi
																			Float:3.141593
																			Let Td2459
																				Let Td2458
																					Float:0.500000
																					FMul pi Td2458
																				IfLE Td2459 a
																					Let Td2460
																						FSub pi a
																						App sin3Td2460 flag 
																					App sin3a flag 
																		Let abs
																			fabs a
																			Let flag
																				App fflag2a 
																				Let r_abs
																					App reduction_pi2abs 
																					IfLE pi r_abs
																						Let Td2456
																							FSub r_abs pi
																							Let Td2457
																								FNeg flag
																								App sin2Td2456 Td2457 
																						App sin2r_abs flag 
															LetRec cos a 
																Let pi
																	Float:3.141593
																	LetRec cos3 a flag 
																		Let pi
																			Float:3.141593
																			Let Td2453
																				Let Td2452
																					Float:0.250000
																					FMul pi Td2452
																				IfLE a Td2453
																					Let tmp
																						App cos_kernela 
																						App addflagtmp flag 
																					Let tmp
																						Let Td2455
																							Let Td2454
																								Float:0.500000
																								FMSub pi Td2454 a
																							App sin_kernelTd2455 
																						App addflagtmp flag 
																		LetRec cos2 a flag 
																			Let pi
																				Float:3.141593
																				Let Td2449
																					Let Td2448
																						Float:0.500000
																						FMul pi Td2448
																					IfLE Td2449 a
																						Let Td2450
																							FSub pi a
																							Let Td2451
																								FNeg flag
																								App cos3Td2450 Td2451 
																						App cos3a flag 
																			Let abs
																				fabs a
																				Let r_abs
																					App reduction_pi2abs 
																					IfLE pi r_abs
																						Let Td2444
																							FSub r_abs pi
																							Let Td2446
																								Let Td2445
																									Float:1.000000
																									FNeg Td2445
																								App cos2Td2444 Td2446 
																						Let Td2447
																							Float:1.000000
																							App cos2r_abs Td2447 
																LetRec atan a 
																	Let pi
																		Float:3.141593
																		Let abs
																			fabs a
																			Let flag
																				App fflag2a 
																				LetRec atan_kernel a 
																					Let pi
																						Float:3.141593
																						Let a1
																							Let Td2431
																								Let Td2430
																									Float:0.060035
																									FMul Td2430 a
																								Let Td2432
																									Float:0.089764
																									FMSub Td2431 a Td2432
																							Let a2
																								Let Td2433
																									Float:0.111111
																									Let Td2434
																										FMul a1 a
																										FDiv Td2434 a Td2433
																								Let a3
																									Let Td2435
																										FMul a2 a
																										Let Td2436
																											Float:0.142857
																											FMSub Td2435 a Td2436
																									Let a4
																										Let Td2437
																											FMul a3 a
																											Let Td2438
																												Float:0.200000
																												FDiv Td2437 a Td2438
																										Let a5
																											Let Td2439
																												FMul a4 a
																												Let Td2440
																													Float:0.333333
																													FMSub Td2439 a Td2440
																											Let Td2443
																												Let Td2441
																													Float:1.000000
																													Let Td2442
																														FMul a5 a
																														FDiv Td2442 a Td2441
																												FMul a Td2443
																					Let Td2405
																						Float:0.437500
																						IfLE Td2405 abs
																							Let Td2406
																								Float:1.000000
																								IfLE Td2406 abs
																									Let Td2407
																										Float:2.437500
																										IfLE Td2407 abs
																											Let Td2412
																												Let Td2408
																													Float:0.500000
																													Let Td2411
																														Let Td2410
																															Let Td2409
																																Float:1.000000
																																FDiv Td2409 abs
																															App atan_kernelTd2410 
																														FMSub pi Td2408 Td2411
																												App addflagTd2412 flag 
																											Let Td2420
																												Let Td2413
																													Float:0.250000
																													Let Td2419
																														Let Td2418
																															Let Td2415
																																Let Td2414
																																	Float:1.000000
																																	FSub Td2414 abs
																																Let Td2417
																																	Let Td2416
																																		Float:1.000000
																																		FAdd abs Td2416
																																	FDiv Td2415 Td2417
																															App atan_kernelTd2418 
																														FMSub pi Td2413 Td2419
																												App addflagTd2420 flag 
																									Let Td2428
																										Let Td2421
																											Float:0.250000
																											Let Td2427
																												Let Td2426
																													Let Td2423
																														Let Td2422
																															Float:1.000000
																															FSub Td2422 abs
																														Let Td2425
																															Let Td2424
																																Float:1.000000
																																FAdd abs Td2424
																															FDiv Td2423 Td2425
																													App atan_kernelTd2426 
																												FMSub pi Td2421 Td2427
																										App addflagTd2428 flag 
																							Let Td2429
																								App atan_kernelabs 
																								App addflagTd2429 flag 
																	LetRec sgn x 
																		Let Td2403
																			Float:0.000000
																			IfEq x Td2403
																				Float:0.000000
																				Let Td2404
																					Float:0.000000
																					IfLE x Td2404
																						Float:-1.000000
																						Float:1.000000
																		LetRec fneg_cond cond x 
																			Let Ti2402
																				Int:0
																				IfEq cond Ti2402
																					App fnegx 
																					Var x
																			LetRec add_mod5 x y 
																				Let sum
																					Add x y
																					Let Ti2400
																						Int:5
																						IfLE Ti2400 sum
																							Let Ti2401
																								Int:5
																								Sub sum Ti2401
																							Var sum
																				LetRec vecset v x y z 
																					Let Tu10
																						Let Ti2397
																							Int:0
																							Put v Ti2397 x
																						Let Tu9
																							Let Ti2398
																								Int:1
																								Put v Ti2398 y
																							Let Ti2399
																								Int:2
																								Put v Ti2399 z
																					LetRec vecfill v elem 
																						Let Tu12
																							Let Ti2394
																								Int:0
																								Put v Ti2394 elem
																							Let Tu11
																								Let Ti2395
																									Int:1
																									Put v Ti2395 elem
																								Let Ti2396
																									Int:2
																									Put v Ti2396 elem
																						LetRec vecbzero v 
																							Let Td2393
																								Float:0.000000
																								App vecfillv Td2393 
																							LetRec veccpy dest src 
																								Let Tu14
																									Let Ti2384
																										Int:0
																										Let Td2386
																											Let Ti2385
																												Int:0
																												Get src Ti2385
																											Put dest Ti2384 Td2386
																									Let Tu13
																										Let Ti2387
																											Int:1
																											Let Td2389
																												Let Ti2388
																													Int:1
																													Get src Ti2388
																												Put dest Ti2387 Td2389
																										Let Ti2390
																											Int:2
																											Let Td2392
																												Let Ti2391
																													Int:2
																													Get src Ti2391
																												Put dest Ti2390 Td2392
																								LetRec vecdist2 p q 
																									Let Td2377
																										Let Td2370
																											Let Td2369
																												Let Td2366
																													Let Ti2365
																														Int:0
																														Get p Ti2365
																													Let Td2368
																														Let Ti2367
																															Int:0
																															Get q Ti2367
																														FSub Td2366 Td2368
																												App fsqrTd2369 
																											Let Td2376
																												Let Td2375
																													Let Td2372
																														Let Ti2371
																															Int:1
																															Get p Ti2371
																														Let Td2374
																															Let Ti2373
																																Int:1
																																Get q Ti2373
																															FSub Td2372 Td2374
																													App fsqrTd2375 
																												FAdd Td2370 Td2376
																										Let Td2383
																											Let Td2382
																												Let Td2379
																													Let Ti2378
																														Int:2
																														Get p Ti2378
																													Let Td2381
																														Let Ti2380
																															Int:2
																															Get q Ti2380
																														FSub Td2379 Td2381
																												App fsqrTd2382 
																											FAdd Td2377 Td2383
																									LetRec vecunit v 
																										Let il
																											Let Td2340
																												Float:1.000000
																												Let Td2352
																													Let Td2351
																														Let Td2347
																															Let Td2343
																																Let Td2342
																																	Let Ti2341
																																		Int:0
																																		Get v Ti2341
																																	App fsqrTd2342 
																																Let Td2346
																																	Let Td2345
																																		Let Ti2344
																																			Int:1
																																			Get v Ti2344
																																		App fsqrTd2345 
																																	FAdd Td2343 Td2346
																															Let Td2350
																																Let Td2349
																																	Let Ti2348
																																		Int:2
																																		Get v Ti2348
																																	App fsqrTd2349 
																																FAdd Td2347 Td2350
																														sqrt Td2351
																													FDiv Td2340 Td2352
																											Let Tu16
																												Let Ti2353
																													Int:0
																													Let Td2356
																														Let Td2355
																															Let Ti2354
																																Int:0
																																Get v Ti2354
																															FMul Td2355 il
																														Put v Ti2353 Td2356
																												Let Tu15
																													Let Ti2357
																														Int:1
																														Let Td2360
																															Let Td2359
																																Let Ti2358
																																	Int:1
																																	Get v Ti2358
																																FMul Td2359 il
																															Put v Ti2357 Td2360
																													Let Ti2361
																														Int:2
																														Let Td2364
																															Let Td2363
																																Let Ti2362
																																	Int:2
																																	Get v Ti2362
																																FMul Td2363 il
																															Put v Ti2361 Td2364
																										LetRec vecunit_sgn v inv 
																											Let l
																												Let Td2323
																													Let Td2319
																														Let Td2315
																															Let Td2314
																																Let Ti2313
																																	Int:0
																																	Get v Ti2313
																																App fsqrTd2314 
																															Let Td2318
																																Let Td2317
																																	Let Ti2316
																																		Int:1
																																		Get v Ti2316
																																	App fsqrTd2317 
																																FAdd Td2315 Td2318
																														Let Td2322
																															Let Td2321
																																Let Ti2320
																																	Int:2
																																	Get v Ti2320
																																App fsqrTd2321 
																															FAdd Td2319 Td2322
																													sqrt Td2323
																												Let il
																													Let Td2324
																														Float:0.000000
																														IfEq l Td2324
																															Float:1.000000
																															Let Ti2325
																																Int:0
																																IfEq inv Ti2325
																																	Let Td2326
																																		Float:1.000000
																																		FDiv Td2326 l
																																	Let Td2327
																																		Float:-1.000000
																																		FDiv Td2327 l
																													Let Tu18
																														Let Ti2328
																															Int:0
																															Let Td2331
																																Let Td2330
																																	Let Ti2329
																																		Int:0
																																		Get v Ti2329
																																	FMul Td2330 il
																																Put v Ti2328 Td2331
																														Let Tu17
																															Let Ti2332
																																Int:1
																																Let Td2335
																																	Let Td2334
																																		Let Ti2333
																																			Int:1
																																			Get v Ti2333
																																		FMul Td2334 il
																																	Put v Ti2332 Td2335
																															Let Ti2336
																																Int:2
																																Let Td2339
																																	Let Td2338
																																		Let Ti2337
																																			Int:2
																																			Get v Ti2337
																																		FMul Td2338 il
																																	Put v Ti2336 Td2339
																											LetRec veciprod v w 
																												Let Td2308
																													Let Td2300
																														Let Ti2299
																															Int:0
																															Get v Ti2299
																														Let Td2302
																															Let Ti2301
																																Int:0
																																Get w Ti2301
																															Let Td2307
																																Let Td2304
																																	Let Ti2303
																																		Int:1
																																		Get v Ti2303
																																	Let Td2306
																																		Let Ti2305
																																			Int:1
																																			Get w Ti2305
																																		FMul Td2304 Td2306
																																FDiv Td2300 Td2302 Td2307
																													Let Td2310
																														Let Ti2309
																															Int:2
																															Get v Ti2309
																														Let Td2312
																															Let Ti2311
																																Int:2
																																Get w Ti2311
																															FDiv Td2310 Td2312 Td2308
																												LetRec veciprod2 v w0 w1 w2 
																													Let Td2296
																														Let Td2292
																															Let Ti2291
																																Int:0
																																Get v Ti2291
																															Let Td2295
																																Let Td2294
																																	Let Ti2293
																																		Int:1
																																		Get v Ti2293
																																	FMul Td2294 w1
																																FDiv Td2292 w0 Td2295
																														Let Td2298
																															Let Ti2297
																																Int:2
																																Get v Ti2297
																															FDiv Td2298 w2 Td2296
																													LetRec vecaccum dest scale v 
																														Let Tu20
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
																																			FDiv scale Td2277 Td2275
																																	Put dest Ti2273 Td2278
																															Let Tu19
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
																																				FDiv scale Td2283 Td2281
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
																																				FDiv scale Td2289 Td2287
																																		Put dest Ti2285 Td2290
																														LetRec vecadd dest v 
																															Let Tu22
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
																																				FAdd Td2257 Td2259
																																		Put dest Ti2255 Td2260
																																Let Tu21
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
																																					FAdd Td2263 Td2265
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
																																					FAdd Td2269 Td2271
																																			Put dest Ti2267 Td2272
																															LetRec vecmul dest v 
																																Let Tu24
																																	Let Ti2237
																																		Int:0
																																		Let Td2242
																																			Let Td2239
																																				Let Ti2238
																																					Int:0
																																					Get dest Ti2238
																																				Let Td2241
																																					Let Ti2240
																																						Int:0
																																						Get v Ti2240
																																					FMul Td2239 Td2241
																																			Put dest Ti2237 Td2242
																																	Let Tu23
																																		Let Ti2243
																																			Int:1
																																			Let Td2248
																																				Let Td2245
																																					Let Ti2244
																																						Int:1
																																						Get dest Ti2244
																																					Let Td2247
																																						Let Ti2246
																																							Int:1
																																							Get v Ti2246
																																						FMul Td2245 Td2247
																																				Put dest Ti2243 Td2248
																																		Let Ti2249
																																			Int:2
																																			Let Td2254
																																				Let Td2251
																																					Let Ti2250
																																						Int:2
																																						Get dest Ti2250
																																					Let Td2253
																																						Let Ti2252
																																							Int:2
																																							Get v Ti2252
																																						FMul Td2251 Td2253
																																				Put dest Ti2249 Td2254
																																LetRec vecscale dest scale 
																																	Let Tu26
																																		Let Ti2225
																																			Int:0
																																			Let Td2228
																																				Let Td2227
																																					Let Ti2226
																																						Int:0
																																						Get dest Ti2226
																																					FMul Td2227 scale
																																				Put dest Ti2225 Td2228
																																		Let Tu25
																																			Let Ti2229
																																				Int:1
																																				Let Td2232
																																					Let Td2231
																																						Let Ti2230
																																							Int:1
																																							Get dest Ti2230
																																						FMul Td2231 scale
																																					Put dest Ti2229 Td2232
																																			Let Ti2233
																																				Int:2
																																				Let Td2236
																																					Let Td2235
																																						Let Ti2234
																																							Int:2
																																							Get dest Ti2234
																																						FMul Td2235 scale
																																					Put dest Ti2233 Td2236
																																	LetRec vecaccumv dest v w 
																																		Let Tu28
																																			Let Ti2201
																																				Int:0
																																				Let Td2208
																																					Let Td2203
																																						Let Ti2202
																																							Int:0
																																							Get dest Ti2202
																																						Let Td2205
																																							Let Ti2204
																																								Int:0
																																								Get v Ti2204
																																							Let Td2207
																																								Let Ti2206
																																									Int:0
																																									Get w Ti2206
																																								FDiv Td2205 Td2207 Td2203
																																					Put dest Ti2201 Td2208
																																			Let Tu27
																																				Let Ti2209
																																					Int:1
																																					Let Td2216
																																						Let Td2211
																																							Let Ti2210
																																								Int:1
																																								Get dest Ti2210
																																							Let Td2213
																																								Let Ti2212
																																									Int:1
																																									Get v Ti2212
																																								Let Td2215
																																									Let Ti2214
																																										Int:1
																																										Get w Ti2214
																																									FDiv Td2213 Td2215 Td2211
																																						Put dest Ti2209 Td2216
																																				Let Ti2217
																																					Int:2
																																					Let Td2224
																																						Let Td2219
																																							Let Ti2218
																																								Int:2
																																								Get dest Ti2218
																																							Let Td2221
																																								Let Ti2220
																																									Int:2
																																									Get v Ti2220
																																								Let Td2223
																																									Let Ti2222
																																										Int:2
																																										Get w Ti2222
																																									FDiv Td2221 Td2223 Td2219
																																						Put dest Ti2217 Td2224
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
																																									Let Ti2200
																																										Int:0
																																										Get m_abc Ti2200
																																								LetRec o_param_b m 
																																									LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																										Let Ti2199
																																											Int:1
																																											Get m_abc Ti2199
																																									LetRec o_param_c m 
																																										LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																											Let Ti2198
																																												Int:2
																																												Get m_abc Ti2198
																																										LetRec o_param_abc m 
																																											LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																												Var m_abc
																																											LetRec o_param_x m 
																																												LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																													Let Ti2197
																																														Int:0
																																														Get m_xyz Ti2197
																																												LetRec o_param_y m 
																																													LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																														Let Ti2196
																																															Int:1
																																															Get m_xyz Ti2196
																																													LetRec o_param_z m 
																																														LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																															Let Ti2195
																																																Int:2
																																																Get m_xyz Ti2195
																																														LetRec o_diffuse m 
																																															LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																Let Ti2194
																																																	Int:0
																																																	Get m_surfparams Ti2194
																																															LetRec o_hilight m 
																																																LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																																	Let Ti2193
																																																		Int:1
																																																		Get m_surfparams Ti2193
																																																LetRec o_color_red m 
																																																	LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																																		Let Ti2192
																																																			Int:0
																																																			Get m_color Ti2192
																																																	LetRec o_color_green m 
																																																		LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																																			Let Ti2191
																																																				Int:1
																																																				Get m_color Ti2191
																																																		LetRec o_color_blue m 
																																																			LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																																				Let Ti2190
																																																					Int:2
																																																					Get m_color Ti2190
																																																			LetRec o_param_r1 m 
																																																				LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																																					Let Ti2189
																																																						Int:0
																																																						Get m_rot123 Ti2189
																																																				LetRec o_param_r2 m 
																																																					LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																																						Let Ti2188
																																																							Int:1
																																																							Get m_rot123 Ti2188
																																																					LetRec o_param_r3 m 
																																																						LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																																							Let Ti2187
																																																								Int:2
																																																								Get m_rot123 Ti2187
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
																																																															Let Ti2186
																																																																Int:0
																																																																Get m_gid Ti2186
																																																														LetRec p_set_group_id pixel id 
																																																															LetTuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,m_gid,xm_nvectors,)
 pixel
																																																																Let Ti2185
																																																																	Int:0
																																																																	Put m_gid Ti2185 id
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
																																																																						Let Td2184
																																																																							Float:0.017453
																																																																							FMul x Td2184
																																																																						LetRec read_screen_settings Tu29 
																																																																							Let Tu43
																																																																								Let Ta2113
																																																																									ExtArray 72
																																																																									Let Ti2114
																																																																										Int:0
																																																																										Let Td2115
																																																																											Readfloat
																																																																											Put Ta2113 Ti2114 Td2115
																																																																								Let Tu42
																																																																									Let Ta2116
																																																																										ExtArray 72
																																																																										Let Ti2117
																																																																											Int:1
																																																																											Let Td2118
																																																																												Readfloat
																																																																												Put Ta2116 Ti2117 Td2118
																																																																									Let Tu41
																																																																										Let Ta2119
																																																																											ExtArray 72
																																																																											Let Ti2120
																																																																												Int:2
																																																																												Let Td2121
																																																																													Readfloat
																																																																													Put Ta2119 Ti2120 Td2121
																																																																										Let v1
																																																																											Let Td2122
																																																																												Readfloat
																																																																												App radTd2122 
																																																																											Let cos_v1
																																																																												App cosv1 
																																																																												Let sin_v1
																																																																													App sinv1 
																																																																													Let v2
																																																																														Let Td2123
																																																																															Readfloat
																																																																															App radTd2123 
																																																																														Let cos_v2
																																																																															App cosv2 
																																																																															Let sin_v2
																																																																																App sinv2 
																																																																																Let Tu40
																																																																																	Let Ta2124
																																																																																		ExtArray 171
																																																																																		Let Ti2125
																																																																																			Int:0
																																																																																			Let Td2128
																																																																																				Let Td2126
																																																																																					FMul cos_v1 sin_v2
																																																																																					Let Td2127
																																																																																						Float:200.000000
																																																																																						FMul Td2126 Td2127
																																																																																				Put Ta2124 Ti2125 Td2128
																																																																																	Let Tu39
																																																																																		Let Ta2129
																																																																																			ExtArray 171
																																																																																			Let Ti2130
																																																																																				Int:1
																																																																																				Let Td2132
																																																																																					Let Td2131
																																																																																						Float:-200.000000
																																																																																						FMul sin_v1 Td2131
																																																																																					Put Ta2129 Ti2130 Td2132
																																																																																		Let Tu38
																																																																																			Let Ta2133
																																																																																				ExtArray 171
																																																																																				Let Ti2134
																																																																																					Int:2
																																																																																					Let Td2137
																																																																																						Let Td2135
																																																																																							FMul cos_v1 cos_v2
																																																																																							Let Td2136
																																																																																								Float:200.000000
																																																																																								FMul Td2135 Td2136
																																																																																						Put Ta2133 Ti2134 Td2137
																																																																																			Let Tu37
																																																																																				Let Ta2138
																																																																																					ExtArray 165
																																																																																					Let Ti2139
																																																																																						Int:0
																																																																																						Put Ta2138 Ti2139 cos_v2
																																																																																				Let Tu36
																																																																																					Let Ta2140
																																																																																						ExtArray 165
																																																																																						Let Ti2141
																																																																																							Int:1
																																																																																							Let Td2142
																																																																																								Float:0.000000
																																																																																								Put Ta2140 Ti2141 Td2142
																																																																																					Let Tu35
																																																																																						Let Ta2143
																																																																																							ExtArray 165
																																																																																							Let Ti2144
																																																																																								Int:2
																																																																																								Let Td2145
																																																																																									App fnegsin_v2 
																																																																																									Put Ta2143 Ti2144 Td2145
																																																																																						Let Tu34
																																																																																							Let Ta2146
																																																																																								ExtArray 168
																																																																																								Let Ti2147
																																																																																									Int:0
																																																																																									Let Td2149
																																																																																										Let Td2148
																																																																																											App fnegsin_v1 
																																																																																											FMul Td2148 sin_v2
																																																																																										Put Ta2146 Ti2147 Td2149
																																																																																							Let Tu33
																																																																																								Let Ta2150
																																																																																									ExtArray 168
																																																																																									Let Ti2151
																																																																																										Int:1
																																																																																										Let Td2152
																																																																																											App fnegcos_v1 
																																																																																											Put Ta2150 Ti2151 Td2152
																																																																																								Let Tu32
																																																																																									Let Ta2153
																																																																																										ExtArray 168
																																																																																										Let Ti2154
																																																																																											Int:2
																																																																																											Let Td2156
																																																																																												Let Td2155
																																																																																													App fnegsin_v1 
																																																																																													FMul Td2155 cos_v2
																																																																																												Put Ta2153 Ti2154 Td2156
																																																																																									Let Tu31
																																																																																										Let Ta2157
																																																																																											ExtArray 75
																																																																																											Let Ti2158
																																																																																												Int:0
																																																																																												Let Td2165
																																																																																													Let Td2161
																																																																																														Let Ta2159
																																																																																															ExtArray 72
																																																																																															Let Ti2160
																																																																																																Int:0
																																																																																																Get Ta2159 Ti2160
																																																																																														Let Td2164
																																																																																															Let Ta2162
																																																																																																ExtArray 171
																																																																																																Let Ti2163
																																																																																																	Int:0
																																																																																																	Get Ta2162 Ti2163
																																																																																															FSub Td2161 Td2164
																																																																																													Put Ta2157 Ti2158 Td2165
																																																																																										Let Tu30
																																																																																											Let Ta2166
																																																																																												ExtArray 75
																																																																																												Let Ti2167
																																																																																													Int:1
																																																																																													Let Td2174
																																																																																														Let Td2170
																																																																																															Let Ta2168
																																																																																																ExtArray 72
																																																																																																Let Ti2169
																																																																																																	Int:1
																																																																																																	Get Ta2168 Ti2169
																																																																																															Let Td2173
																																																																																																Let Ta2171
																																																																																																	ExtArray 171
																																																																																																	Let Ti2172
																																																																																																		Int:1
																																																																																																		Get Ta2171 Ti2172
																																																																																																FSub Td2170 Td2173
																																																																																														Put Ta2166 Ti2167 Td2174
																																																																																											Let Ta2175
																																																																																												ExtArray 75
																																																																																												Let Ti2176
																																																																																													Int:2
																																																																																													Let Td2183
																																																																																														Let Td2179
																																																																																															Let Ta2177
																																																																																																ExtArray 72
																																																																																																Let Ti2178
																																																																																																	Int:2
																																																																																																	Get Ta2177 Ti2178
																																																																																															Let Td2182
																																																																																																Let Ta2180
																																																																																																	ExtArray 171
																																																																																																	Let Ti2181
																																																																																																		Int:2
																																																																																																		Get Ta2180 Ti2181
																																																																																																FSub Td2179 Td2182
																																																																																														Put Ta2175 Ti2176 Td2183
																																																																							LetRec read_light Tu44 
																																																																								Let nl
																																																																									Readint
																																																																									Let l1
																																																																										Let Td2099
																																																																											Readfloat
																																																																											App radTd2099 
																																																																										Let sl1
																																																																											App sinl1 
																																																																											Let Tu47
																																																																												Let Ta2100
																																																																													ExtArray 78
																																																																													Let Ti2101
																																																																														Int:1
																																																																														Let Td2102
																																																																															App fnegsl1 
																																																																															Put Ta2100 Ti2101 Td2102
																																																																												Let l2
																																																																													Let Td2103
																																																																														Readfloat
																																																																														App radTd2103 
																																																																													Let cl1
																																																																														App cosl1 
																																																																														Let sl2
																																																																															App sinl2 
																																																																															Let Tu46
																																																																																Let Ta2104
																																																																																	ExtArray 78
																																																																																	Let Ti2105
																																																																																		Int:0
																																																																																		Let Td2106
																																																																																			FMul cl1 sl2
																																																																																			Put Ta2104 Ti2105 Td2106
																																																																																Let cl2
																																																																																	App cosl2 
																																																																																	Let Tu45
																																																																																		Let Ta2107
																																																																																			ExtArray 78
																																																																																			Let Ti2108
																																																																																				Int:2
																																																																																				Let Td2109
																																																																																					FMul cl1 cl2
																																																																																					Put Ta2107 Ti2108 Td2109
																																																																																		Let Ta2110
																																																																																			ExtArray 81
																																																																																			Let Ti2111
																																																																																				Int:0
																																																																																				Let Td2112
																																																																																					Readfloat
																																																																																					Put Ta2110 Ti2111 Td2112
																																																																								LetRec rotate_quadratic_matrix abc rot 
																																																																									Let cos_x
																																																																										Let Td2029
																																																																											Let Ti2028
																																																																												Int:0
																																																																												Get rot Ti2028
																																																																											App cosTd2029 
																																																																										Let sin_x
																																																																											Let Td2031
																																																																												Let Ti2030
																																																																													Int:0
																																																																													Get rot Ti2030
																																																																												App sinTd2031 
																																																																											Let cos_y
																																																																												Let Td2033
																																																																													Let Ti2032
																																																																														Int:1
																																																																														Get rot Ti2032
																																																																													App cosTd2033 
																																																																												Let sin_y
																																																																													Let Td2035
																																																																														Let Ti2034
																																																																															Int:1
																																																																															Get rot Ti2034
																																																																														App sinTd2035 
																																																																													Let cos_z
																																																																														Let Td2037
																																																																															Let Ti2036
																																																																																Int:2
																																																																																Get rot Ti2036
																																																																															App cosTd2037 
																																																																														Let sin_z
																																																																															Let Td2039
																																																																																Let Ti2038
																																																																																	Int:2
																																																																																	Get rot Ti2038
																																																																																App sinTd2039 
																																																																															Let m00
																																																																																FMul cos_y cos_z
																																																																																Let m01
																																																																																	Let Td2040
																																																																																		FMul sin_x sin_y
																																																																																		Let Td2041
																																																																																			FMul cos_x sin_z
																																																																																			FMSub Td2040 cos_z Td2041
																																																																																	Let m02
																																																																																		Let Td2042
																																																																																			FMul cos_x sin_y
																																																																																			Let Td2043
																																																																																				FMul sin_x sin_z
																																																																																				FDiv Td2042 cos_z Td2043
																																																																																		Let m10
																																																																																			FMul cos_y sin_z
																																																																																			Let m11
																																																																																				Let Td2044
																																																																																					FMul sin_x sin_y
																																																																																					Let Td2045
																																																																																						FMul cos_x cos_z
																																																																																						FDiv Td2044 sin_z Td2045
																																																																																				Let m12
																																																																																					Let Td2046
																																																																																						FMul cos_x sin_y
																																																																																						Let Td2047
																																																																																							FMul sin_x cos_z
																																																																																							FMSub Td2046 sin_z Td2047
																																																																																					Let m20
																																																																																						App fnegsin_y 
																																																																																						Let m21
																																																																																							FMul sin_x cos_y
																																																																																							Let m22
																																																																																								FMul cos_x cos_y
																																																																																								Let ao
																																																																																									Let Ti2048
																																																																																										Int:0
																																																																																										Get abc Ti2048
																																																																																									Let bo
																																																																																										Let Ti2049
																																																																																											Int:1
																																																																																											Get abc Ti2049
																																																																																										Let co
																																																																																											Let Ti2050
																																																																																												Int:2
																																																																																												Get abc Ti2050
																																																																																											Let Tu52
																																																																																												Let Ti2051
																																																																																													Int:0
																																																																																													Let Td2057
																																																																																														Let Td2055
																																																																																															Let Td2052
																																																																																																App fsqrm00 
																																																																																																Let Td2054
																																																																																																	Let Td2053
																																																																																																		App fsqrm10 
																																																																																																		FMul bo Td2053
																																																																																																	FDiv ao Td2052 Td2054
																																																																																															Let Td2056
																																																																																																App fsqrm20 
																																																																																																FDiv co Td2056 Td2055
																																																																																														Put abc Ti2051 Td2057
																																																																																												Let Tu51
																																																																																													Let Ti2058
																																																																																														Int:1
																																																																																														Let Td2064
																																																																																															Let Td2062
																																																																																																Let Td2059
																																																																																																	App fsqrm01 
																																																																																																	Let Td2061
																																																																																																		Let Td2060
																																																																																																			App fsqrm11 
																																																																																																			FMul bo Td2060
																																																																																																		FDiv ao Td2059 Td2061
																																																																																																Let Td2063
																																																																																																	App fsqrm21 
																																																																																																	FDiv co Td2063 Td2062
																																																																																															Put abc Ti2058 Td2064
																																																																																													Let Tu50
																																																																																														Let Ti2065
																																																																																															Int:2
																																																																																															Let Td2071
																																																																																																Let Td2069
																																																																																																	Let Td2066
																																																																																																		App fsqrm02 
																																																																																																		Let Td2068
																																																																																																			Let Td2067
																																																																																																				App fsqrm12 
																																																																																																				FMul bo Td2067
																																																																																																			FDiv ao Td2066 Td2068
																																																																																																	Let Td2070
																																																																																																		App fsqrm22 
																																																																																																		FDiv co Td2070 Td2069
																																																																																																Put abc Ti2065 Td2071
																																																																																														Let Tu49
																																																																																															Let Ti2072
																																																																																																Int:0
																																																																																																Let Td2080
																																																																																																	Let Td2073
																																																																																																		Float:2.000000
																																																																																																		Let Td2079
																																																																																																			Let Td2077
																																																																																																				Let Td2074
																																																																																																					FMul ao m01
																																																																																																					Let Td2076
																																																																																																						Let Td2075
																																																																																																							FMul bo m11
																																																																																																							FMul Td2075 m12
																																																																																																						FDiv Td2074 m02 Td2076
																																																																																																				Let Td2078
																																																																																																					FMul co m21
																																																																																																					FDiv Td2078 m22 Td2077
																																																																																																			FMul Td2073 Td2079
																																																																																																	Put rot Ti2072 Td2080
																																																																																															Let Tu48
																																																																																																Let Ti2081
																																																																																																	Int:1
																																																																																																	Let Td2089
																																																																																																		Let Td2082
																																																																																																			Float:2.000000
																																																																																																			Let Td2088
																																																																																																				Let Td2086
																																																																																																					Let Td2083
																																																																																																						FMul ao m00
																																																																																																						Let Td2085
																																																																																																							Let Td2084
																																																																																																								FMul bo m10
																																																																																																								FMul Td2084 m12
																																																																																																							FDiv Td2083 m02 Td2085
																																																																																																					Let Td2087
																																																																																																						FMul co m20
																																																																																																						FDiv Td2087 m22 Td2086
																																																																																																				FMul Td2082 Td2088
																																																																																																		Put rot Ti2081 Td2089
																																																																																																Let Ti2090
																																																																																																	Int:2
																																																																																																	Let Td2098
																																																																																																		Let Td2091
																																																																																																			Float:2.000000
																																																																																																			Let Td2097
																																																																																																				Let Td2095
																																																																																																					Let Td2092
																																																																																																						FMul ao m00
																																																																																																						Let Td2094
																																																																																																							Let Td2093
																																																																																																								FMul bo m10
																																																																																																								FMul Td2093 m11
																																																																																																							FDiv Td2092 m01 Td2094
																																																																																																					Let Td2096
																																																																																																						FMul co m20
																																																																																																						FDiv Td2096 m21 Td2095
																																																																																																				FMul Td2091 Td2097
																																																																																																		Put rot Ti2090 Td2098
																																																																									LetRec read_nth_object n 
																																																																										Let texture
																																																																											Readint
																																																																											Let Ti1956
																																																																												Let Ti1955
																																																																													Int:1
																																																																													Neg Ti1955
																																																																												IfEq texture Ti1956
																																																																													Int:0
																																																																													Let form
																																																																														Readint
																																																																														Let refltype
																																																																															Readint
																																																																															Let isrot_p
																																																																																Readint
																																																																																Let abc
																																																																																	Let Ti1957
																																																																																		Int:3
																																																																																		Let Td1958
																																																																																			Float:0.000000
																																																																																			ExtFunApp create_float_array Ti1957,Td1958,
																																																																																	Let Tu71
																																																																																		Let Ti1959
																																																																																			Int:0
																																																																																			Let Td1960
																																																																																				Readfloat
																																																																																				Put abc Ti1959 Td1960
																																																																																		Let Tu70
																																																																																			Let Ti1961
																																																																																				Int:1
																																																																																				Let Td1962
																																																																																					Readfloat
																																																																																					Put abc Ti1961 Td1962
																																																																																			Let Tu69
																																																																																				Let Ti1963
																																																																																					Int:2
																																																																																					Let Td1964
																																																																																						Readfloat
																																																																																						Put abc Ti1963 Td1964
																																																																																				Let xyz
																																																																																					Let Ti1965
																																																																																						Int:3
																																																																																						Let Td1966
																																																																																							Float:0.000000
																																																																																							ExtFunApp create_float_array Ti1965,Td1966,
																																																																																					Let Tu68
																																																																																						Let Ti1967
																																																																																							Int:0
																																																																																							Let Td1968
																																																																																								Readfloat
																																																																																								Put xyz Ti1967 Td1968
																																																																																						Let Tu67
																																																																																							Let Ti1969
																																																																																								Int:1
																																																																																								Let Td1970
																																																																																									Readfloat
																																																																																									Put xyz Ti1969 Td1970
																																																																																							Let Tu66
																																																																																								Let Ti1971
																																																																																									Int:2
																																																																																									Let Td1972
																																																																																										Readfloat
																																																																																										Put xyz Ti1971 Td1972
																																																																																								Let m_invert
																																																																																									Let Td1973
																																																																																										Float:0.000000
																																																																																										Let Td1974
																																																																																											Readfloat
																																																																																											IfLE Td1973 Td1974
																																																																																												Int:0
																																																																																												Int:1
																																																																																									Let reflparam
																																																																																										Let Ti1975
																																																																																											Int:2
																																																																																											Let Td1976
																																																																																												Float:0.000000
																																																																																												ExtFunApp create_float_array Ti1975,Td1976,
																																																																																										Let Tu65
																																																																																											Let Ti1977
																																																																																												Int:0
																																																																																												Let Td1978
																																																																																													Readfloat
																																																																																													Put reflparam Ti1977 Td1978
																																																																																											Let Tu64
																																																																																												Let Ti1979
																																																																																													Int:1
																																																																																													Let Td1980
																																																																																														Readfloat
																																																																																														Put reflparam Ti1979 Td1980
																																																																																												Let color
																																																																																													Let Ti1981
																																																																																														Int:3
																																																																																														Let Td1982
																																																																																															Float:0.000000
																																																																																															ExtFunApp create_float_array Ti1981,Td1982,
																																																																																													Let Tu63
																																																																																														Let Ti1983
																																																																																															Int:0
																																																																																															Let Td1984
																																																																																																Readfloat
																																																																																																Put color Ti1983 Td1984
																																																																																														Let Tu62
																																																																																															Let Ti1985
																																																																																																Int:1
																																																																																																Let Td1986
																																																																																																	Readfloat
																																																																																																	Put color Ti1985 Td1986
																																																																																															Let Tu61
																																																																																																Let Ti1987
																																																																																																	Int:2
																																																																																																	Let Td1988
																																																																																																		Readfloat
																																																																																																		Put color Ti1987 Td1988
																																																																																																Let rotation
																																																																																																	Let Ti1989
																																																																																																		Int:3
																																																																																																		Let Td1990
																																																																																																			Float:0.000000
																																																																																																			ExtFunApp create_float_array Ti1989,Td1990,
																																																																																																	Let Tu60
																																																																																																		Let Ti1991
																																																																																																			Int:0
																																																																																																			IfEq isrot_p Ti1991
																																																																																																				Unit
																																																																																																				Let Tu54
																																																																																																					Let Ti1992
																																																																																																						Int:0
																																																																																																						Let Td1994
																																																																																																							Let Td1993
																																																																																																								Readfloat
																																																																																																								App radTd1993 
																																																																																																							Put rotation Ti1992 Td1994
																																																																																																					Let Tu53
																																																																																																						Let Ti1995
																																																																																																							Int:1
																																																																																																							Let Td1997
																																																																																																								Let Td1996
																																																																																																									Readfloat
																																																																																																									App radTd1996 
																																																																																																								Put rotation Ti1995 Td1997
																																																																																																						Let Ti1998
																																																																																																							Int:2
																																																																																																							Let Td2000
																																																																																																								Let Td1999
																																																																																																									Readfloat
																																																																																																									App radTd1999 
																																																																																																								Put rotation Ti1998 Td2000
																																																																																																		Let m_invert2
																																																																																																			Let Ti2001
																																																																																																				Int:2
																																																																																																				IfEq form Ti2001
																																																																																																					Int:1
																																																																																																					Var m_invert
																																																																																																			Let ctbl
																																																																																																				Let Ti2002
																																																																																																					Int:4
																																																																																																					Let Td2003
																																																																																																						Float:0.000000
																																																																																																						ExtFunApp create_float_array Ti2002,Td2003,
																																																																																																				Let obj
																																																																																																					Tuple (texture,form,refltype,isrot_p,abc,xyz,m_invert2,reflparam,color,rotation,ctbl,)
																																																																																																					Let Tu59
																																																																																																						Let Ta2004
																																																																																																							ExtArray 12
																																																																																																							Put Ta2004 n obj
																																																																																																						Let Tu58
																																																																																																							Let Ti2005
																																																																																																								Int:3
																																																																																																								IfEq form Ti2005
																																																																																																									Let a
																																																																																																										Let Ti2006
																																																																																																											Int:0
																																																																																																											Get abc Ti2006
																																																																																																										Let Tu56
																																																																																																											Let Ti2007
																																																																																																												Int:0
																																																																																																												Let Td2011
																																																																																																													Let Td2008
																																																																																																														Float:0.000000
																																																																																																														IfEq a Td2008
																																																																																																															Float:0.000000
																																																																																																															Let Td2009
																																																																																																																App sgna 
																																																																																																																Let Td2010
																																																																																																																	App fsqra 
																																																																																																																	FDiv Td2009 Td2010
																																																																																																													Put abc Ti2007 Td2011
																																																																																																											Let b
																																																																																																												Let Ti2012
																																																																																																													Int:1
																																																																																																													Get abc Ti2012
																																																																																																												Let Tu55
																																																																																																													Let Ti2013
																																																																																																														Int:1
																																																																																																														Let Td2017
																																																																																																															Let Td2014
																																																																																																																Float:0.000000
																																																																																																																IfEq b Td2014
																																																																																																																	Float:0.000000
																																																																																																																	Let Td2015
																																																																																																																		App sgnb 
																																																																																																																		Let Td2016
																																																																																																																			App fsqrb 
																																																																																																																			FDiv Td2015 Td2016
																																																																																																															Put abc Ti2013 Td2017
																																																																																																													Let c
																																																																																																														Let Ti2018
																																																																																																															Int:2
																																																																																																															Get abc Ti2018
																																																																																																														Let Ti2019
																																																																																																															Int:2
																																																																																																															Let Td2023
																																																																																																																Let Td2020
																																																																																																																	Float:0.000000
																																																																																																																	IfEq c Td2020
																																																																																																																		Float:0.000000
																																																																																																																		Let Td2021
																																																																																																																			App sgnc 
																																																																																																																			Let Td2022
																																																																																																																				App fsqrc 
																																																																																																																				FDiv Td2021 Td2022
																																																																																																																Put abc Ti2019 Td2023
																																																																																																									Let Ti2024
																																																																																																										Int:2
																																																																																																										IfEq form Ti2024
																																																																																																											Let Ti2026
																																																																																																												Let Ti2025
																																																																																																													Int:0
																																																																																																													IfEq m_invert Ti2025
																																																																																																														Int:1
																																																																																																														Int:0
																																																																																																												App vecunit_sgnabc Ti2026 
																																																																																																											Unit
																																																																																																							Let Tu57
																																																																																																								Let Ti2027
																																																																																																									Int:0
																																																																																																									IfEq isrot_p Ti2027
																																																																																																										Unit
																																																																																																										App rotate_quadratic_matrixabc rotation 
																																																																																																								Int:1
																																																																										LetRec read_object n 
																																																																											Let Ti1948
																																																																												Int:60
																																																																												IfLE Ti1948 n
																																																																													Unit
																																																																													Let Tb1949
																																																																														App read_nth_objectn 
																																																																														Let Ti1950
																																																																															Int:0
																																																																															IfEq Tb1949 Ti1950
																																																																																Let Ta1951
																																																																																	ExtArray 0
																																																																																	Let Ti1952
																																																																																		Int:0
																																																																																		Put Ta1951 Ti1952 n
																																																																																Let Ti1954
																																																																																	Let Ti1953
																																																																																		Int:1
																																																																																		Add n Ti1953
																																																																																	App read_objectTi1954 
																																																																											LetRec read_all_object Tu72 
																																																																												Let Ti1947
																																																																													Int:0
																																																																													App read_objectTi1947 
																																																																												LetRec read_net_item length 
																																																																													Let item
																																																																														Readint
																																																																														Let Ti1940
																																																																															Let Ti1939
																																																																																Int:1
																																																																																Neg Ti1939
																																																																															IfEq item Ti1940
																																																																																Let Ti1942
																																																																																	Let Ti1941
																																																																																		Int:1
																																																																																		Add length Ti1941
																																																																																	Let Ti1944
																																																																																		Let Ti1943
																																																																																			Int:1
																																																																																			Neg Ti1943
																																																																																		ExtFunApp create_array Ti1942,Ti1944,
																																																																																Let v
																																																																																	Let Ti1946
																																																																																		Let Ti1945
																																																																																			Int:1
																																																																																			Add length Ti1945
																																																																																		App read_net_itemTi1946 
																																																																																	Let Tu73
																																																																																		Put v length item
																																																																																		Var v
																																																																													LetRec read_or_network length 
																																																																														Let net
																																																																															Let Ti1930
																																																																																Int:0
																																																																																App read_net_itemTi1930 
																																																																															Let Ti1932
																																																																																Let Ti1931
																																																																																	Int:0
																																																																																	Get net Ti1931
																																																																																Let Ti1934
																																																																																	Let Ti1933
																																																																																		Int:1
																																																																																		Neg Ti1933
																																																																																	IfEq Ti1932 Ti1934
																																																																																		Let Ti1936
																																																																																			Let Ti1935
																																																																																				Int:1
																																																																																				Add length Ti1935
																																																																																			ExtFunApp create_array Ti1936,net,
																																																																																		Let v
																																																																																			Let Ti1938
																																																																																				Let Ti1937
																																																																																					Int:1
																																																																																					Add length Ti1937
																																																																																				App read_or_networkTi1938 
																																																																																			Let Tu74
																																																																																				Put v length net
																																																																																				Var v
																																																																														LetRec read_and_network n 
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
																																																																																			Unit
																																																																																			Let Tu75
																																																																																				Let Ta1927
																																																																																					ExtArray 83
																																																																																					Put Ta1927 n net
																																																																																				Let Ti1929
																																																																																					Let Ti1928
																																																																																						Int:1
																																																																																						Add n Ti1928
																																																																																					App read_and_networkTi1929 
																																																																															LetRec read_parameter Tu76 
																																																																																Let Tu80
																																																																																	Let Tu1914
																																																																																		Unit
																																																																																		App read_screen_settingsTu1914 
																																																																																	Let Tu79
																																																																																		Let Tu1915
																																																																																			Unit
																																																																																			App read_lightTu1915 
																																																																																		Let Tu78
																																																																																			Let Tu1916
																																																																																				Unit
																																																																																				App read_all_objectTu1916 
																																																																																			Let Tu77
																																																																																				Let Ti1917
																																																																																					Int:0
																																																																																					App read_and_networkTi1917 
																																																																																				Let Ta1918
																																																																																					ExtArray 134
																																																																																					Let Ti1919
																																																																																						Int:0
																																																																																						Let Ta1921
																																																																																							Let Ti1920
																																																																																								Int:0
																																																																																								App read_or_networkTi1920 
																																																																																							Put Ta1918 Ti1919 Ta1921
																																																																																LetRec solver_rect_surface m dirvec b0 b1 b2 i0 i1 i2 
																																																																																	Let Td1896
																																																																																		Get dirvec i0
																																																																																		Let Td1897
																																																																																			Float:0.000000
																																																																																			IfEq Td1896 Td1897
																																																																																				Int:0
																																																																																				Let abc
																																																																																					App o_param_abcm 
																																																																																					Let d
																																																																																						Let Ti1902
																																																																																							Let Tb1898
																																																																																								App o_isinvertm 
																																																																																								Let Ti1901
																																																																																									Let Td1899
																																																																																										Float:0.000000
																																																																																										Let Td1900
																																																																																											Get dirvec i0
																																																																																											IfLE Td1899 Td1900
																																																																																												Int:0
																																																																																												Int:1
																																																																																									xor Tb1898 Ti1901
																																																																																							Let Td1903
																																																																																								Get abc i0
																																																																																								App fneg_condTi1902 Td1903 
																																																																																						Let d2
																																																																																							Let Td1904
																																																																																								FSub d b0
																																																																																								Let Td1905
																																																																																									Get dirvec i0
																																																																																									FDiv Td1904 Td1905
																																																																																							Let Td1906
																																																																																								Get abc i1
																																																																																								Let Td1908
																																																																																									Let Td1907
																																																																																										Get dirvec i1
																																																																																										FDiv d2 Td1907 b1
																																																																																									IfFAbsLE Td1906 Td1908
																																																																																										Int:0
																																																																																										Let Td1909
																																																																																											Get abc i2
																																																																																											Let Td1911
																																																																																												Let Td1910
																																																																																													Get dirvec i2
																																																																																													FDiv d2 Td1910 b2
																																																																																												IfFAbsLE Td1909 Td1911
																																																																																													Int:0
																																																																																													Let Tu81
																																																																																														Let Ta1912
																																																																																															ExtArray 135
																																																																																															Let Ti1913
																																																																																																Int:0
																																																																																																Put Ta1912 Ti1913 d2
																																																																																														Int:1
																																																																																	LetRec solver_rect m dirvec b0 b1 b2 
																																																																																		Let Tb1884
																																																																																			Let Ti1881
																																																																																				Int:0
																																																																																				Let Ti1882
																																																																																					Int:1
																																																																																					Let Ti1883
																																																																																						Int:2
																																																																																						App solver_rect_surfacem dirvec b0 b1 b2 Ti1881 Ti1882 Ti1883 
																																																																																			Let Ti1885
																																																																																				Int:0
																																																																																				IfEq Tb1884 Ti1885
																																																																																					Let Tb1889
																																																																																						Let Ti1886
																																																																																							Int:1
																																																																																							Let Ti1887
																																																																																								Int:2
																																																																																								Let Ti1888
																																																																																									Int:0
																																																																																									App solver_rect_surfacem dirvec b1 b2 b0 Ti1886 Ti1887 Ti1888 
																																																																																						Let Ti1890
																																																																																							Int:0
																																																																																							IfEq Tb1889 Ti1890
																																																																																								Let Tb1894
																																																																																									Let Ti1891
																																																																																										Int:2
																																																																																										Let Ti1892
																																																																																											Int:0
																																																																																											Let Ti1893
																																																																																												Int:1
																																																																																												App solver_rect_surfacem dirvec b2 b0 b1 Ti1891 Ti1892 Ti1893 
																																																																																									Let Ti1895
																																																																																										Int:0
																																																																																										IfEq Tb1894 Ti1895
																																																																																											Int:0
																																																																																											Int:3
																																																																																								Int:2
																																																																																					Int:1
																																																																																		LetRec solver_surface m dirvec b0 b1 b2 
																																																																																			Let abc
																																																																																				App o_param_abcm 
																																																																																				Let d
																																																																																					App veciproddirvec abc 
																																																																																					Let Td1875
																																																																																						Float:0.000000
																																																																																						IfLE d Td1875
																																																																																							Int:0
																																																																																							Let Tu82
																																																																																								Let Ta1876
																																																																																									ExtArray 135
																																																																																									Let Ti1877
																																																																																										Int:0
																																																																																										Let Td1880
																																																																																											Let Td1879
																																																																																												Let Td1878
																																																																																													App veciprod2abc b0 b1 b2 
																																																																																													App fnegTd1878 
																																																																																												FDiv Td1879 d
																																																																																											Put Ta1876 Ti1877 Td1880
																																																																																								Int:1
																																																																																			LetRec quadratic m v0 v1 v2 
																																																																																				Let diag_part
																																																																																					Let Td1862
																																																																																						Let Td1857
																																																																																							App fsqrv0 
																																																																																							Let Td1858
																																																																																								App o_param_am 
																																																																																								Let Td1861
																																																																																									Let Td1859
																																																																																										App fsqrv1 
																																																																																										Let Td1860
																																																																																											App o_param_bm 
																																																																																											FMul Td1859 Td1860
																																																																																									FDiv Td1857 Td1858 Td1861
																																																																																						Let Td1863
																																																																																							App fsqrv2 
																																																																																							Let Td1864
																																																																																								App o_param_cm 
																																																																																								FDiv Td1863 Td1864 Td1862
																																																																																					Let Ti1865
																																																																																						App o_isrotm 
																																																																																						Let Ti1866
																																																																																							Int:0
																																																																																							IfEq Ti1865 Ti1866
																																																																																								Var diag_part
																																																																																								Let Td1872
																																																																																									Let Td1869
																																																																																										Let Td1867
																																																																																											FMul v1 v2
																																																																																											Let Td1868
																																																																																												App o_param_r1m 
																																																																																												FDiv Td1867 Td1868 diag_part
																																																																																										Let Td1870
																																																																																											FMul v2 v0
																																																																																											Let Td1871
																																																																																												App o_param_r2m 
																																																																																												FDiv Td1870 Td1871 Td1869
																																																																																									Let Td1873
																																																																																										FMul v0 v1
																																																																																										Let Td1874
																																																																																											App o_param_r3m 
																																																																																											FDiv Td1873 Td1874 Td1872
																																																																																				LetRec bilinear m v0 v1 v2 w0 w1 w2 
																																																																																					Let diag_part
																																																																																						Let Td1839
																																																																																							Let Td1834
																																																																																								FMul v0 w0
																																																																																								Let Td1835
																																																																																									App o_param_am 
																																																																																									Let Td1838
																																																																																										Let Td1836
																																																																																											FMul v1 w1
																																																																																											Let Td1837
																																																																																												App o_param_bm 
																																																																																												FMul Td1836 Td1837
																																																																																										FDiv Td1834 Td1835 Td1838
																																																																																							Let Td1840
																																																																																								FMul v2 w2
																																																																																								Let Td1841
																																																																																									App o_param_cm 
																																																																																									FDiv Td1840 Td1841 Td1839
																																																																																						Let Ti1842
																																																																																							App o_isrotm 
																																																																																							Let Ti1843
																																																																																								Int:0
																																																																																								IfEq Ti1842 Ti1843
																																																																																									Var diag_part
																																																																																									Let Td1856
																																																																																										Let Td1855
																																																																																											Let Td1851
																																																																																												Let Td1845
																																																																																													Let Td1844
																																																																																														FMul v1 w2
																																																																																														FDiv v2 w1 Td1844
																																																																																													Let Td1846
																																																																																														App o_param_r1m 
																																																																																														Let Td1850
																																																																																															Let Td1848
																																																																																																Let Td1847
																																																																																																	FMul v2 w0
																																																																																																	FDiv v0 w2 Td1847
																																																																																																Let Td1849
																																																																																																	App o_param_r2m 
																																																																																																	FMul Td1848 Td1849
																																																																																															FDiv Td1845 Td1846 Td1850
																																																																																												Let Td1853
																																																																																													Let Td1852
																																																																																														FMul v1 w0
																																																																																														FDiv v0 w1 Td1852
																																																																																													Let Td1854
																																																																																														App o_param_r3m 
																																																																																														FDiv Td1853 Td1854 Td1851
																																																																																											App fhalfTd1855 
																																																																																										FAdd diag_part Td1856
																																																																																					LetRec solver_second m dirvec b0 b1 b2 
																																																																																						Let aa
																																																																																							Let Td1810
																																																																																								Let Ti1809
																																																																																									Int:0
																																																																																									Get dirvec Ti1809
																																																																																								Let Td1812
																																																																																									Let Ti1811
																																																																																										Int:1
																																																																																										Get dirvec Ti1811
																																																																																									Let Td1814
																																																																																										Let Ti1813
																																																																																											Int:2
																																																																																											Get dirvec Ti1813
																																																																																										App quadraticm Td1810 Td1812 Td1814 
																																																																																							Let Td1815
																																																																																								Float:0.000000
																																																																																								IfEq aa Td1815
																																																																																									Int:0
																																																																																									Let bb
																																																																																										Let Td1817
																																																																																											Let Ti1816
																																																																																												Int:0
																																																																																												Get dirvec Ti1816
																																																																																											Let Td1819
																																																																																												Let Ti1818
																																																																																													Int:1
																																																																																													Get dirvec Ti1818
																																																																																												Let Td1821
																																																																																													Let Ti1820
																																																																																														Int:2
																																																																																														Get dirvec Ti1820
																																																																																													App bilinearm Td1817 Td1819 Td1821 b0 b1 b2 
																																																																																										Let cc0
																																																																																											App quadraticm b0 b1 b2 
																																																																																											Let cc
																																																																																												Let Ti1822
																																																																																													App o_formm 
																																																																																													Let Ti1823
																																																																																														Int:3
																																																																																														IfEq Ti1822 Ti1823
																																																																																															Let Td1824
																																																																																																Float:1.000000
																																																																																																FSub cc0 Td1824
																																																																																															Var cc0
																																																																																												Let d
																																																																																													Let Td1825
																																																																																														App fsqrbb 
																																																																																														Let Td1826
																																																																																															FMul aa cc
																																																																																															FSub Td1825 Td1826
																																																																																													Let Td1827
																																																																																														Float:0.000000
																																																																																														IfLE d Td1827
																																																																																															Int:0
																																																																																															Let sd
																																																																																																sqrt d
																																																																																																Let t1
																																																																																																	Let Tb1828
																																																																																																		App o_isinvertm 
																																																																																																		Let Ti1829
																																																																																																			Int:0
																																																																																																			IfEq Tb1828 Ti1829
																																																																																																				App fnegsd 
																																																																																																				Var sd
																																																																																																	Let Tu83
																																																																																																		Let Ta1830
																																																																																																			ExtArray 135
																																																																																																			Let Ti1831
																																																																																																				Int:0
																																																																																																				Let Td1833
																																																																																																					Let Td1832
																																																																																																						FSub t1 bb
																																																																																																						FDiv Td1832 aa
																																																																																																					Put Ta1830 Ti1831 Td1833
																																																																																																		Int:1
																																																																																						LetRec solver index dirvec org 
																																																																																							Let m
																																																																																								Let Ta1797
																																																																																									ExtArray 12
																																																																																									Get Ta1797 index
																																																																																								Let b0
																																																																																									Let Td1799
																																																																																										Let Ti1798
																																																																																											Int:0
																																																																																											Get org Ti1798
																																																																																										Let Td1800
																																																																																											App o_param_xm 
																																																																																											FSub Td1799 Td1800
																																																																																									Let b1
																																																																																										Let Td1802
																																																																																											Let Ti1801
																																																																																												Int:1
																																																																																												Get org Ti1801
																																																																																											Let Td1803
																																																																																												App o_param_ym 
																																																																																												FSub Td1802 Td1803
																																																																																										Let b2
																																																																																											Let Td1805
																																																																																												Let Ti1804
																																																																																													Int:2
																																																																																													Get org Ti1804
																																																																																												Let Td1806
																																																																																													App o_param_zm 
																																																																																													FSub Td1805 Td1806
																																																																																											Let m_shape
																																																																																												App o_formm 
																																																																																												Let Ti1807
																																																																																													Int:1
																																																																																													IfEq m_shape Ti1807
																																																																																														App solver_rectm dirvec b0 b1 b2 
																																																																																														Let Ti1808
																																																																																															Int:2
																																																																																															IfEq m_shape Ti1808
																																																																																																App solver_surfacem dirvec b0 b1 b2 
																																																																																																App solver_secondm dirvec b0 b1 b2 
																																																																																							LetRec solver_rect_fast m v dconst b0 b1 b2 
																																																																																								Let d0
																																																																																									Let Td1739
																																																																																										Let Td1738
																																																																																											Let Ti1737
																																																																																												Int:0
																																																																																												Get dconst Ti1737
																																																																																											FSub Td1738 b0
																																																																																										Let Td1741
																																																																																											Let Ti1740
																																																																																												Int:1
																																																																																												Get dconst Ti1740
																																																																																											FMul Td1739 Td1741
																																																																																									Let Ti1753
																																																																																										Let Td1742
																																																																																											App o_param_bm 
																																																																																											Let Td1745
																																																																																												Let Td1744
																																																																																													Let Ti1743
																																																																																														Int:1
																																																																																														Get v Ti1743
																																																																																													FDiv d0 Td1744 b1
																																																																																												IfFAbsLE Td1742 Td1745
																																																																																													Int:0
																																																																																													Let Td1746
																																																																																														App o_param_cm 
																																																																																														Let Td1749
																																																																																															Let Td1748
																																																																																																Let Ti1747
																																																																																																	Int:2
																																																																																																	Get v Ti1747
																																																																																																FDiv d0 Td1748 b2
																																																																																															IfFAbsLE Td1746 Td1749
																																																																																																Int:0
																																																																																																Let Td1751
																																																																																																	Let Ti1750
																																																																																																		Int:1
																																																																																																		Get dconst Ti1750
																																																																																																	Let Td1752
																																																																																																		Float:0.000000
																																																																																																		IfEq Td1751 Td1752
																																																																																																			Int:0
																																																																																																			Int:1
																																																																																										Let Ti1754
																																																																																											Int:0
																																																																																											IfEq Ti1753 Ti1754
																																																																																												Let d1
																																																																																													Let Td1757
																																																																																														Let Td1756
																																																																																															Let Ti1755
																																																																																																Int:2
																																																																																																Get dconst Ti1755
																																																																																															FSub Td1756 b1
																																																																																														Let Td1759
																																																																																															Let Ti1758
																																																																																																Int:3
																																																																																																Get dconst Ti1758
																																																																																															FMul Td1757 Td1759
																																																																																													Let Ti1771
																																																																																														Let Td1760
																																																																																															App o_param_am 
																																																																																															Let Td1763
																																																																																																Let Td1762
																																																																																																	Let Ti1761
																																																																																																		Int:0
																																																																																																		Get v Ti1761
																																																																																																	FDiv d1 Td1762 b0
																																																																																																IfFAbsLE Td1760 Td1763
																																																																																																	Int:0
																																																																																																	Let Td1764
																																																																																																		App o_param_cm 
																																																																																																		Let Td1767
																																																																																																			Let Td1766
																																																																																																				Let Ti1765
																																																																																																					Int:2
																																																																																																					Get v Ti1765
																																																																																																				FDiv d1 Td1766 b2
																																																																																																			IfFAbsLE Td1764 Td1767
																																																																																																				Int:0
																																																																																																				Let Td1769
																																																																																																					Let Ti1768
																																																																																																						Int:3
																																																																																																						Get dconst Ti1768
																																																																																																					Let Td1770
																																																																																																						Float:0.000000
																																																																																																						IfEq Td1769 Td1770
																																																																																																							Int:0
																																																																																																							Int:1
																																																																																														Let Ti1772
																																																																																															Int:0
																																																																																															IfEq Ti1771 Ti1772
																																																																																																Let d2
																																																																																																	Let Td1775
																																																																																																		Let Td1774
																																																																																																			Let Ti1773
																																																																																																				Int:4
																																																																																																				Get dconst Ti1773
																																																																																																			FSub Td1774 b2
																																																																																																		Let Td1777
																																																																																																			Let Ti1776
																																																																																																				Int:5
																																																																																																				Get dconst Ti1776
																																																																																																			FMul Td1775 Td1777
																																																																																																	Let Ti1789
																																																																																																		Let Td1778
																																																																																																			App o_param_am 
																																																																																																			Let Td1781
																																																																																																				Let Td1780
																																																																																																					Let Ti1779
																																																																																																						Int:0
																																																																																																						Get v Ti1779
																																																																																																					FDiv d2 Td1780 b0
																																																																																																				IfFAbsLE Td1778 Td1781
																																																																																																					Int:0
																																																																																																					Let Td1782
																																																																																																						App o_param_bm 
																																																																																																						Let Td1785
																																																																																																							Let Td1784
																																																																																																								Let Ti1783
																																																																																																									Int:1
																																																																																																									Get v Ti1783
																																																																																																								FDiv d2 Td1784 b1
																																																																																																							IfFAbsLE Td1782 Td1785
																																																																																																								Int:0
																																																																																																								Let Td1787
																																																																																																									Let Ti1786
																																																																																																										Int:5
																																																																																																										Get dconst Ti1786
																																																																																																									Let Td1788
																																																																																																										Float:0.000000
																																																																																																										IfEq Td1787 Td1788
																																																																																																											Int:0
																																																																																																											Int:1
																																																																																																		Let Ti1790
																																																																																																			Int:0
																																																																																																			IfEq Ti1789 Ti1790
																																																																																																				Int:0
																																																																																																				Let Tu86
																																																																																																					Let Ta1791
																																																																																																						ExtArray 135
																																																																																																						Let Ti1792
																																																																																																							Int:0
																																																																																																							Put Ta1791 Ti1792 d2
																																																																																																					Int:3
																																																																																																Let Tu85
																																																																																																	Let Ta1793
																																																																																																		ExtArray 135
																																																																																																		Let Ti1794
																																																																																																			Int:0
																																																																																																			Put Ta1793 Ti1794 d1
																																																																																																	Int:2
																																																																																												Let Tu84
																																																																																													Let Ta1795
																																																																																														ExtArray 135
																																																																																														Let Ti1796
																																																																																															Int:0
																																																																																															Put Ta1795 Ti1796 d0
																																																																																													Int:1
																																																																																								LetRec solver_surface_fast m dconst b0 b1 b2 
																																																																																									Let Td1723
																																																																																										Float:0.000000
																																																																																										Let Td1725
																																																																																											Let Ti1724
																																																																																												Int:0
																																																																																												Get dconst Ti1724
																																																																																											IfLE Td1723 Td1725
																																																																																												Int:0
																																																																																												Let Tu87
																																																																																													Let Ta1726
																																																																																														ExtArray 135
																																																																																														Let Ti1727
																																																																																															Int:0
																																																																																															Let Td1736
																																																																																																Let Td1733
																																																																																																	Let Td1729
																																																																																																		Let Ti1728
																																																																																																			Int:1
																																																																																																			Get dconst Ti1728
																																																																																																		Let Td1732
																																																																																																			Let Td1731
																																																																																																				Let Ti1730
																																																																																																					Int:2
																																																																																																					Get dconst Ti1730
																																																																																																				FMul Td1731 b1
																																																																																																			FDiv Td1729 b0 Td1732
																																																																																																	Let Td1735
																																																																																																		Let Ti1734
																																																																																																			Int:3
																																																																																																			Get dconst Ti1734
																																																																																																		FDiv Td1735 b2 Td1733
																																																																																																Put Ta1726 Ti1727 Td1736
																																																																																													Int:1
																																																																																									LetRec solver_second_fast m dconst b0 b1 b2 
																																																																																										Let aa
																																																																																											Let Ti1691
																																																																																												Int:0
																																																																																												Get dconst Ti1691
																																																																																											Let Td1692
																																																																																												Float:0.000000
																																																																																												IfEq aa Td1692
																																																																																													Int:0
																																																																																													Let neg_bb
																																																																																														Let Td1698
																																																																																															Let Td1694
																																																																																																Let Ti1693
																																																																																																	Int:1
																																																																																																	Get dconst Ti1693
																																																																																																Let Td1697
																																																																																																	Let Td1696
																																																																																																		Let Ti1695
																																																																																																			Int:2
																																																																																																			Get dconst Ti1695
																																																																																																		FMul Td1696 b1
																																																																																																	FDiv Td1694 b0 Td1697
																																																																																															Let Td1700
																																																																																																Let Ti1699
																																																																																																	Int:3
																																																																																																	Get dconst Ti1699
																																																																																																FDiv Td1700 b2 Td1698
																																																																																														Let cc0
																																																																																															App quadraticm b0 b1 b2 
																																																																																															Let cc
																																																																																																Let Ti1701
																																																																																																	App o_formm 
																																																																																																	Let Ti1702
																																																																																																		Int:3
																																																																																																		IfEq Ti1701 Ti1702
																																																																																																			Let Td1703
																																																																																																				Float:1.000000
																																																																																																				FSub cc0 Td1703
																																																																																																			Var cc0
																																																																																																Let d
																																																																																																	Let Td1704
																																																																																																		App fsqrneg_bb 
																																																																																																		Let Td1705
																																																																																																			FMul aa cc
																																																																																																			FSub Td1704 Td1705
																																																																																																	Let Td1706
																																																																																																		Float:0.000000
																																																																																																		IfLE d Td1706
																																																																																																			Int:0
																																																																																																			Let Tu88
																																																																																																				Let Tb1707
																																																																																																					App o_isinvertm 
																																																																																																					Let Ti1708
																																																																																																						Int:0
																																																																																																						IfEq Tb1707 Ti1708
																																																																																																							Let Ta1709
																																																																																																								ExtArray 135
																																																																																																								Let Ti1710
																																																																																																									Int:0
																																																																																																									Let Td1715
																																																																																																										Let Td1712
																																																																																																											Let Td1711
																																																																																																												sqrt d
																																																																																																												FSub neg_bb Td1711
																																																																																																											Let Td1714
																																																																																																												Let Ti1713
																																																																																																													Int:4
																																																																																																													Get dconst Ti1713
																																																																																																												FMul Td1712 Td1714
																																																																																																										Put Ta1709 Ti1710 Td1715
																																																																																																							Let Ta1716
																																																																																																								ExtArray 135
																																																																																																								Let Ti1717
																																																																																																									Int:0
																																																																																																									Let Td1722
																																																																																																										Let Td1719
																																																																																																											Let Td1718
																																																																																																												sqrt d
																																																																																																												FAdd neg_bb Td1718
																																																																																																											Let Td1721
																																																																																																												Let Ti1720
																																																																																																													Int:4
																																																																																																													Get dconst Ti1720
																																																																																																												FMul Td1719 Td1721
																																																																																																										Put Ta1716 Ti1717 Td1722
																																																																																																				Int:1
																																																																																										LetRec solver_fast index dirvec org 
																																																																																											Let m
																																																																																												Let Ta1678
																																																																																													ExtArray 12
																																																																																													Get Ta1678 index
																																																																																												Let b0
																																																																																													Let Td1680
																																																																																														Let Ti1679
																																																																																															Int:0
																																																																																															Get org Ti1679
																																																																																														Let Td1681
																																																																																															App o_param_xm 
																																																																																															FSub Td1680 Td1681
																																																																																													Let b1
																																																																																														Let Td1683
																																																																																															Let Ti1682
																																																																																																Int:1
																																																																																																Get org Ti1682
																																																																																															Let Td1684
																																																																																																App o_param_ym 
																																																																																																FSub Td1683 Td1684
																																																																																														Let b2
																																																																																															Let Td1686
																																																																																																Let Ti1685
																																																																																																	Int:2
																																																																																																	Get org Ti1685
																																																																																																Let Td1687
																																																																																																	App o_param_zm 
																																																																																																	FSub Td1686 Td1687
																																																																																															Let dconsts
																																																																																																App d_constdirvec 
																																																																																																Let dconst
																																																																																																	Get dconsts index
																																																																																																	Let m_shape
																																																																																																		App o_formm 
																																																																																																		Let Ti1688
																																																																																																			Int:1
																																																																																																			IfEq m_shape Ti1688
																																																																																																				Let Ta1689
																																																																																																					App d_vecdirvec 
																																																																																																					App solver_rect_fastm Ta1689 dconst b0 b1 b2 
																																																																																																				Let Ti1690
																																																																																																					Int:2
																																																																																																					IfEq m_shape Ti1690
																																																																																																						App solver_surface_fastm dconst b0 b1 b2 
																																																																																																						App solver_second_fastm dconst b0 b1 b2 
																																																																																											LetRec solver_surface_fast2 m dconst sconst b0 b1 b2 
																																																																																												Let Td1668
																																																																																													Float:0.000000
																																																																																													Let Td1670
																																																																																														Let Ti1669
																																																																																															Int:0
																																																																																															Get dconst Ti1669
																																																																																														IfLE Td1668 Td1670
																																																																																															Int:0
																																																																																															Let Tu89
																																																																																																Let Ta1671
																																																																																																	ExtArray 135
																																																																																																	Let Ti1672
																																																																																																		Int:0
																																																																																																		Let Td1677
																																																																																																			Let Td1674
																																																																																																				Let Ti1673
																																																																																																					Int:0
																																																																																																					Get dconst Ti1673
																																																																																																				Let Td1676
																																																																																																					Let Ti1675
																																																																																																						Int:3
																																																																																																						Get sconst Ti1675
																																																																																																					FMul Td1674 Td1676
																																																																																																			Put Ta1671 Ti1672 Td1677
																																																																																																Int:1
																																																																																												LetRec solver_second_fast2 m dconst sconst b0 b1 b2 
																																																																																													Let aa
																																																																																														Let Ti1638
																																																																																															Int:0
																																																																																															Get dconst Ti1638
																																																																																														Let Td1639
																																																																																															Float:0.000000
																																																																																															IfEq aa Td1639
																																																																																																Int:0
																																																																																																Let neg_bb
																																																																																																	Let Td1645
																																																																																																		Let Td1641
																																																																																																			Let Ti1640
																																																																																																				Int:1
																																																																																																				Get dconst Ti1640
																																																																																																			Let Td1644
																																																																																																				Let Td1643
																																																																																																					Let Ti1642
																																																																																																						Int:2
																																																																																																						Get dconst Ti1642
																																																																																																					FMul Td1643 b1
																																																																																																				FDiv Td1641 b0 Td1644
																																																																																																		Let Td1647
																																																																																																			Let Ti1646
																																																																																																				Int:3
																																																																																																				Get dconst Ti1646
																																																																																																			FDiv Td1647 b2 Td1645
																																																																																																	Let cc
																																																																																																		Let Ti1648
																																																																																																			Int:3
																																																																																																			Get sconst Ti1648
																																																																																																		Let d
																																																																																																			Let Td1649
																																																																																																				App fsqrneg_bb 
																																																																																																				Let Td1650
																																																																																																					FMul aa cc
																																																																																																					FSub Td1649 Td1650
																																																																																																			Let Td1651
																																																																																																				Float:0.000000
																																																																																																				IfLE d Td1651
																																																																																																					Int:0
																																																																																																					Let Tu90
																																																																																																						Let Tb1652
																																																																																																							App o_isinvertm 
																																																																																																							Let Ti1653
																																																																																																								Int:0
																																																																																																								IfEq Tb1652 Ti1653
																																																																																																									Let Ta1654
																																																																																																										ExtArray 135
																																																																																																										Let Ti1655
																																																																																																											Int:0
																																																																																																											Let Td1660
																																																																																																												Let Td1657
																																																																																																													Let Td1656
																																																																																																														sqrt d
																																																																																																														FSub neg_bb Td1656
																																																																																																													Let Td1659
																																																																																																														Let Ti1658
																																																																																																															Int:4
																																																																																																															Get dconst Ti1658
																																																																																																														FMul Td1657 Td1659
																																																																																																												Put Ta1654 Ti1655 Td1660
																																																																																																									Let Ta1661
																																																																																																										ExtArray 135
																																																																																																										Let Ti1662
																																																																																																											Int:0
																																																																																																											Let Td1667
																																																																																																												Let Td1664
																																																																																																													Let Td1663
																																																																																																														sqrt d
																																																																																																														FAdd neg_bb Td1663
																																																																																																													Let Td1666
																																																																																																														Let Ti1665
																																																																																																															Int:4
																																																																																																															Get dconst Ti1665
																																																																																																														FMul Td1664 Td1666
																																																																																																												Put Ta1661 Ti1662 Td1667
																																																																																																						Int:1
																																																																																													LetRec solver_fast2 index dirvec 
																																																																																														Let m
																																																																																															Let Ta1631
																																																																																																ExtArray 12
																																																																																																Get Ta1631 index
																																																																																															Let sconst
																																																																																																App o_param_ctblm 
																																																																																																Let b0
																																																																																																	Let Ti1632
																																																																																																		Int:0
																																																																																																		Get sconst Ti1632
																																																																																																	Let b1
																																																																																																		Let Ti1633
																																																																																																			Int:1
																																																																																																			Get sconst Ti1633
																																																																																																		Let b2
																																																																																																			Let Ti1634
																																																																																																				Int:2
																																																																																																				Get sconst Ti1634
																																																																																																			Let dconsts
																																																																																																				App d_constdirvec 
																																																																																																				Let dconst
																																																																																																					Get dconsts index
																																																																																																					Let m_shape
																																																																																																						App o_formm 
																																																																																																						Let Ti1635
																																																																																																							Int:1
																																																																																																							IfEq m_shape Ti1635
																																																																																																								Let Ta1636
																																																																																																									App d_vecdirvec 
																																																																																																									App solver_rect_fastm Ta1636 dconst b0 b1 b2 
																																																																																																								Let Ti1637
																																																																																																									Int:2
																																																																																																									IfEq m_shape Ti1637
																																																																																																										App solver_surface_fast2m dconst sconst b0 b1 b2 
																																																																																																										App solver_second_fast2m dconst sconst b0 b1 b2 
																																																																																														LetRec setup_rect_table vec m 
																																																																																															Let const
																																																																																																Let Ti1572
																																																																																																	Int:6
																																																																																																	Let Td1573
																																																																																																		Float:0.000000
																																																																																																		ExtFunApp create_float_array Ti1572,Td1573,
																																																																																																Let Tu96
																																																																																																	Let Td1575
																																																																																																		Let Ti1574
																																																																																																			Int:0
																																																																																																			Get vec Ti1574
																																																																																																		Let Td1576
																																																																																																			Float:0.000000
																																																																																																			IfEq Td1575 Td1576
																																																																																																				Let Ti1577
																																																																																																					Int:1
																																																																																																					Let Td1578
																																																																																																						Float:0.000000
																																																																																																						Put const Ti1577 Td1578
																																																																																																				Let Tu91
																																																																																																					Let Ti1579
																																																																																																						Int:0
																																																																																																						Let Td1587
																																																																																																							Let Ti1585
																																																																																																								Let Tb1580
																																																																																																									App o_isinvertm 
																																																																																																									Let Ti1584
																																																																																																										Let Td1581
																																																																																																											Float:0.000000
																																																																																																											Let Td1583
																																																																																																												Let Ti1582
																																																																																																													Int:0
																																																																																																													Get vec Ti1582
																																																																																																												IfLE Td1581 Td1583
																																																																																																													Int:0
																																																																																																													Int:1
																																																																																																										xor Tb1580 Ti1584
																																																																																																								Let Td1586
																																																																																																									App o_param_am 
																																																																																																									App fneg_condTi1585 Td1586 
																																																																																																							Put const Ti1579 Td1587
																																																																																																					Let Ti1588
																																																																																																						Int:1
																																																																																																						Let Td1592
																																																																																																							Let Td1589
																																																																																																								Float:1.000000
																																																																																																								Let Td1591
																																																																																																									Let Ti1590
																																																																																																										Int:0
																																																																																																										Get vec Ti1590
																																																																																																									FDiv Td1589 Td1591
																																																																																																							Put const Ti1588 Td1592
																																																																																																	Let Tu95
																																																																																																		Let Td1594
																																																																																																			Let Ti1593
																																																																																																				Int:1
																																																																																																				Get vec Ti1593
																																																																																																			Let Td1595
																																																																																																				Float:0.000000
																																																																																																				IfEq Td1594 Td1595
																																																																																																					Let Ti1596
																																																																																																						Int:3
																																																																																																						Let Td1597
																																																																																																							Float:0.000000
																																																																																																							Put const Ti1596 Td1597
																																																																																																					Let Tu92
																																																																																																						Let Ti1598
																																																																																																							Int:2
																																																																																																							Let Td1606
																																																																																																								Let Ti1604
																																																																																																									Let Tb1599
																																																																																																										App o_isinvertm 
																																																																																																										Let Ti1603
																																																																																																											Let Td1600
																																																																																																												Float:0.000000
																																																																																																												Let Td1602
																																																																																																													Let Ti1601
																																																																																																														Int:1
																																																																																																														Get vec Ti1601
																																																																																																													IfLE Td1600 Td1602
																																																																																																														Int:0
																																																																																																														Int:1
																																																																																																											xor Tb1599 Ti1603
																																																																																																									Let Td1605
																																																																																																										App o_param_bm 
																																																																																																										App fneg_condTi1604 Td1605 
																																																																																																								Put const Ti1598 Td1606
																																																																																																						Let Ti1607
																																																																																																							Int:3
																																																																																																							Let Td1611
																																																																																																								Let Td1608
																																																																																																									Float:1.000000
																																																																																																									Let Td1610
																																																																																																										Let Ti1609
																																																																																																											Int:1
																																																																																																											Get vec Ti1609
																																																																																																										FDiv Td1608 Td1610
																																																																																																								Put const Ti1607 Td1611
																																																																																																		Let Tu94
																																																																																																			Let Td1613
																																																																																																				Let Ti1612
																																																																																																					Int:2
																																																																																																					Get vec Ti1612
																																																																																																				Let Td1614
																																																																																																					Float:0.000000
																																																																																																					IfEq Td1613 Td1614
																																																																																																						Let Ti1615
																																																																																																							Int:5
																																																																																																							Let Td1616
																																																																																																								Float:0.000000
																																																																																																								Put const Ti1615 Td1616
																																																																																																						Let Tu93
																																																																																																							Let Ti1617
																																																																																																								Int:4
																																																																																																								Let Td1625
																																																																																																									Let Ti1623
																																																																																																										Let Tb1618
																																																																																																											App o_isinvertm 
																																																																																																											Let Ti1622
																																																																																																												Let Td1619
																																																																																																													Float:0.000000
																																																																																																													Let Td1621
																																																																																																														Let Ti1620
																																																																																																															Int:2
																																																																																																															Get vec Ti1620
																																																																																																														IfLE Td1619 Td1621
																																																																																																															Int:0
																																																																																																															Int:1
																																																																																																												xor Tb1618 Ti1622
																																																																																																										Let Td1624
																																																																																																											App o_param_cm 
																																																																																																											App fneg_condTi1623 Td1624 
																																																																																																									Put const Ti1617 Td1625
																																																																																																							Let Ti1626
																																																																																																								Int:5
																																																																																																								Let Td1630
																																																																																																									Let Td1627
																																																																																																										Float:1.000000
																																																																																																										Let Td1629
																																																																																																											Let Ti1628
																																																																																																												Int:2
																																																																																																												Get vec Ti1628
																																																																																																											FDiv Td1627 Td1629
																																																																																																									Put const Ti1626 Td1630
																																																																																																			Var const
																																																																																															LetRec setup_surface_table vec m 
																																																																																																Let const
																																																																																																	Let Ti1541
																																																																																																		Int:4
																																																																																																		Let Td1542
																																																																																																			Float:0.000000
																																																																																																			ExtFunApp create_float_array Ti1541,Td1542,
																																																																																																	Let d
																																																																																																		Let Td1550
																																																																																																			Let Td1544
																																																																																																				Let Ti1543
																																																																																																					Int:0
																																																																																																					Get vec Ti1543
																																																																																																				Let Td1545
																																																																																																					App o_param_am 
																																																																																																					Let Td1549
																																																																																																						Let Td1547
																																																																																																							Let Ti1546
																																																																																																								Int:1
																																																																																																								Get vec Ti1546
																																																																																																							Let Td1548
																																																																																																								App o_param_bm 
																																																																																																								FMul Td1547 Td1548
																																																																																																						FDiv Td1544 Td1545 Td1549
																																																																																																			Let Td1552
																																																																																																				Let Ti1551
																																																																																																					Int:2
																																																																																																					Get vec Ti1551
																																																																																																				Let Td1553
																																																																																																					App o_param_cm 
																																																																																																					FDiv Td1552 Td1553 Td1550
																																																																																																		Let Tu100
																																																																																																			Let Td1554
																																																																																																				Float:0.000000
																																																																																																				IfLE d Td1554
																																																																																																					Let Ti1555
																																																																																																						Int:0
																																																																																																						Let Td1556
																																																																																																							Float:0.000000
																																																																																																							Put const Ti1555 Td1556
																																																																																																					Let Tu99
																																																																																																						Let Ti1557
																																																																																																							Int:0
																																																																																																							Let Td1559
																																																																																																								Let Td1558
																																																																																																									Float:-1.000000
																																																																																																									FDiv Td1558 d
																																																																																																								Put const Ti1557 Td1559
																																																																																																						Let Tu98
																																																																																																							Let Ti1560
																																																																																																								Int:1
																																																																																																								Let Td1563
																																																																																																									Let Td1562
																																																																																																										Let Td1561
																																																																																																											App o_param_am 
																																																																																																											FDiv Td1561 d
																																																																																																										App fnegTd1562 
																																																																																																									Put const Ti1560 Td1563
																																																																																																							Let Tu97
																																																																																																								Let Ti1564
																																																																																																									Int:2
																																																																																																									Let Td1567
																																																																																																										Let Td1566
																																																																																																											Let Td1565
																																																																																																												App o_param_bm 
																																																																																																												FDiv Td1565 d
																																																																																																											App fnegTd1566 
																																																																																																										Put const Ti1564 Td1567
																																																																																																								Let Ti1568
																																																																																																									Int:3
																																																																																																									Let Td1571
																																																																																																										Let Td1570
																																																																																																											Let Td1569
																																																																																																												App o_param_cm 
																																																																																																												FDiv Td1569 d
																																																																																																											App fnegTd1570 
																																																																																																										Put const Ti1568 Td1571
																																																																																																			Var const
																																																																																																LetRec setup_second_table v m 
																																																																																																	Let const
																																																																																																		Let Ti1478
																																																																																																			Int:5
																																																																																																			Let Td1479
																																																																																																				Float:0.000000
																																																																																																				ExtFunApp create_float_array Ti1478,Td1479,
																																																																																																		Let aa
																																																																																																			Let Td1481
																																																																																																				Let Ti1480
																																																																																																					Int:0
																																																																																																					Get v Ti1480
																																																																																																				Let Td1483
																																																																																																					Let Ti1482
																																																																																																						Int:1
																																																																																																						Get v Ti1482
																																																																																																					Let Td1485
																																																																																																						Let Ti1484
																																																																																																							Int:2
																																																																																																							Get v Ti1484
																																																																																																						App quadraticm Td1481 Td1483 Td1485 
																																																																																																			Let c1
																																																																																																				Let Td1489
																																																																																																					Let Td1487
																																																																																																						Let Ti1486
																																																																																																							Int:0
																																																																																																							Get v Ti1486
																																																																																																						Let Td1488
																																																																																																							App o_param_am 
																																																																																																							FMul Td1487 Td1488
																																																																																																					App fnegTd1489 
																																																																																																				Let c2
																																																																																																					Let Td1493
																																																																																																						Let Td1491
																																																																																																							Let Ti1490
																																																																																																								Int:1
																																																																																																								Get v Ti1490
																																																																																																							Let Td1492
																																																																																																								App o_param_bm 
																																																																																																								FMul Td1491 Td1492
																																																																																																						App fnegTd1493 
																																																																																																					Let c3
																																																																																																						Let Td1497
																																																																																																							Let Td1495
																																																																																																								Let Ti1494
																																																																																																									Int:2
																																																																																																									Get v Ti1494
																																																																																																								Let Td1496
																																																																																																									App o_param_cm 
																																																																																																									FMul Td1495 Td1496
																																																																																																							App fnegTd1497 
																																																																																																						Let Tu107
																																																																																																							Let Ti1498
																																																																																																								Int:0
																																																																																																								Put const Ti1498 aa
																																																																																																							Let Tu106
																																																																																																								Let Ti1499
																																																																																																									App o_isrotm 
																																																																																																									Let Ti1500
																																																																																																										Int:0
																																																																																																										IfEq Ti1499 Ti1500
																																																																																																											Let Tu104
																																																																																																												Let Ti1501
																																																																																																													Int:1
																																																																																																													Put const Ti1501 c1
																																																																																																												Let Tu103
																																																																																																													Let Ti1502
																																																																																																														Int:2
																																																																																																														Put const Ti1502 c2
																																																																																																													Let Ti1503
																																																																																																														Int:3
																																																																																																														Put const Ti1503 c3
																																																																																																											Let Tu102
																																																																																																												Let Ti1504
																																																																																																													Int:1
																																																																																																													Let Td1514
																																																																																																														Let Td1513
																																																																																																															Let Td1512
																																																																																																																Let Td1506
																																																																																																																	Let Ti1505
																																																																																																																		Int:2
																																																																																																																		Get v Ti1505
																																																																																																																	Let Td1507
																																																																																																																		App o_param_r2m 
																																																																																																																		Let Td1511
																																																																																																																			Let Td1509
																																																																																																																				Let Ti1508
																																																																																																																					Int:1
																																																																																																																					Get v Ti1508
																																																																																																																				Let Td1510
																																																																																																																					App o_param_r3m 
																																																																																																																					FMul Td1509 Td1510
																																																																																																																			FDiv Td1506 Td1507 Td1511
																																																																																																																App fhalfTd1512 
																																																																																																															FSub c1 Td1513
																																																																																																														Put const Ti1504 Td1514
																																																																																																												Let Tu101
																																																																																																													Let Ti1515
																																																																																																														Int:2
																																																																																																														Let Td1525
																																																																																																															Let Td1524
																																																																																																																Let Td1523
																																																																																																																	Let Td1517
																																																																																																																		Let Ti1516
																																																																																																																			Int:2
																																																																																																																			Get v Ti1516
																																																																																																																		Let Td1518
																																																																																																																			App o_param_r1m 
																																																																																																																			Let Td1522
																																																																																																																				Let Td1520
																																																																																																																					Let Ti1519
																																																																																																																						Int:0
																																																																																																																						Get v Ti1519
																																																																																																																					Let Td1521
																																																																																																																						App o_param_r3m 
																																																																																																																						FMul Td1520 Td1521
																																																																																																																				FDiv Td1517 Td1518 Td1522
																																																																																																																	App fhalfTd1523 
																																																																																																																FSub c2 Td1524
																																																																																																															Put const Ti1515 Td1525
																																																																																																													Let Ti1526
																																																																																																														Int:3
																																																																																																														Let Td1536
																																																																																																															Let Td1535
																																																																																																																Let Td1534
																																																																																																																	Let Td1528
																																																																																																																		Let Ti1527
																																																																																																																			Int:1
																																																																																																																			Get v Ti1527
																																																																																																																		Let Td1529
																																																																																																																			App o_param_r1m 
																																																																																																																			Let Td1533
																																																																																																																				Let Td1531
																																																																																																																					Let Ti1530
																																																																																																																						Int:0
																																																																																																																						Get v Ti1530
																																																																																																																					Let Td1532
																																																																																																																						App o_param_r2m 
																																																																																																																						FMul Td1531 Td1532
																																																																																																																				FDiv Td1528 Td1529 Td1533
																																																																																																																	App fhalfTd1534 
																																																																																																																FSub c3 Td1535
																																																																																																															Put const Ti1526 Td1536
																																																																																																								Let Tu105
																																																																																																									Let Td1537
																																																																																																										Float:0.000000
																																																																																																										IfEq aa Td1537
																																																																																																											Unit
																																																																																																											Let Ti1538
																																																																																																												Int:4
																																																																																																												Let Td1540
																																																																																																													Let Td1539
																																																																																																														Float:1.000000
																																																																																																														FDiv Td1539 aa
																																																																																																													Put const Ti1538 Td1540
																																																																																																									Var const
																																																																																																	LetRec iter_setup_dirvec_constants dirvec index 
																																																																																																		Let Ti1469
																																																																																																			Int:0
																																																																																																			IfLE Ti1469 index
																																																																																																				Let m
																																																																																																					Let Ta1470
																																																																																																						ExtArray 12
																																																																																																						Get Ta1470 index
																																																																																																					Let dconst
																																																																																																						App d_constdirvec 
																																																																																																						Let v
																																																																																																							App d_vecdirvec 
																																																																																																							Let m_shape
																																																																																																								App o_formm 
																																																																																																								Let Tu108
																																																																																																									Let Ti1471
																																																																																																										Int:1
																																																																																																										IfEq m_shape Ti1471
																																																																																																											Let Ta1472
																																																																																																												App setup_rect_tablev m 
																																																																																																												Put dconst index Ta1472
																																																																																																											Let Ti1473
																																																																																																												Int:2
																																																																																																												IfEq m_shape Ti1473
																																																																																																													Let Ta1474
																																																																																																														App setup_surface_tablev m 
																																																																																																														Put dconst index Ta1474
																																																																																																													Let Ta1475
																																																																																																														App setup_second_tablev m 
																																																																																																														Put dconst index Ta1475
																																																																																																									Let Ti1477
																																																																																																										Let Ti1476
																																																																																																											Int:1
																																																																																																											Sub index Ti1476
																																																																																																										App iter_setup_dirvec_constantsdirvec Ti1477 
																																																																																																				Unit
																																																																																																		LetRec setup_dirvec_constants dirvec 
																																																																																																			Let Ti1468
																																																																																																				Let Ti1466
																																																																																																					Let Ta1464
																																																																																																						ExtArray 0
																																																																																																						Let Ti1465
																																																																																																							Int:0
																																																																																																							Get Ta1464 Ti1465
																																																																																																					Let Ti1467
																																																																																																						Int:1
																																																																																																						Sub Ti1466 Ti1467
																																																																																																				App iter_setup_dirvec_constantsdirvec Ti1468 
																																																																																																			LetRec setup_startp_constants p index 
																																																																																																				Let Ti1424
																																																																																																					Int:0
																																																																																																					IfLE Ti1424 index
																																																																																																						Let obj
																																																																																																							Let Ta1425
																																																																																																								ExtArray 12
																																																																																																								Get Ta1425 index
																																																																																																							Let sconst
																																																																																																								App o_param_ctblobj 
																																																																																																								Let m_shape
																																																																																																									App o_formobj 
																																																																																																									Let Tu112
																																																																																																										Let Ti1426
																																																																																																											Int:0
																																																																																																											Let Td1430
																																																																																																												Let Td1428
																																																																																																													Let Ti1427
																																																																																																														Int:0
																																																																																																														Get p Ti1427
																																																																																																													Let Td1429
																																																																																																														App o_param_xobj 
																																																																																																														FSub Td1428 Td1429
																																																																																																												Put sconst Ti1426 Td1430
																																																																																																										Let Tu111
																																																																																																											Let Ti1431
																																																																																																												Int:1
																																																																																																												Let Td1435
																																																																																																													Let Td1433
																																																																																																														Let Ti1432
																																																																																																															Int:1
																																																																																																															Get p Ti1432
																																																																																																														Let Td1434
																																																																																																															App o_param_yobj 
																																																																																																															FSub Td1433 Td1434
																																																																																																													Put sconst Ti1431 Td1435
																																																																																																											Let Tu110
																																																																																																												Let Ti1436
																																																																																																													Int:2
																																																																																																													Let Td1440
																																																																																																														Let Td1438
																																																																																																															Let Ti1437
																																																																																																																Int:2
																																																																																																																Get p Ti1437
																																																																																																															Let Td1439
																																																																																																																App o_param_zobj 
																																																																																																																FSub Td1438 Td1439
																																																																																																														Put sconst Ti1436 Td1440
																																																																																																												Let Tu109
																																																																																																													Let Ti1441
																																																																																																														Int:2
																																																																																																														IfEq m_shape Ti1441
																																																																																																															Let Ti1442
																																																																																																																Int:3
																																																																																																																Let Td1450
																																																																																																																	Let Ta1443
																																																																																																																		App o_param_abcobj 
																																																																																																																		Let Td1445
																																																																																																																			Let Ti1444
																																																																																																																				Int:0
																																																																																																																				Get sconst Ti1444
																																																																																																																			Let Td1447
																																																																																																																				Let Ti1446
																																																																																																																					Int:1
																																																																																																																					Get sconst Ti1446
																																																																																																																				Let Td1449
																																																																																																																					Let Ti1448
																																																																																																																						Int:2
																																																																																																																						Get sconst Ti1448
																																																																																																																					App veciprod2Ta1443 Td1445 Td1447 Td1449 
																																																																																																																	Put sconst Ti1442 Td1450
																																																																																																															Let Ti1451
																																																																																																																Int:2
																																																																																																																IfLE m_shape Ti1451
																																																																																																																	Unit
																																																																																																																	Let cc0
																																																																																																																		Let Td1453
																																																																																																																			Let Ti1452
																																																																																																																				Int:0
																																																																																																																				Get sconst Ti1452
																																																																																																																			Let Td1455
																																																																																																																				Let Ti1454
																																																																																																																					Int:1
																																																																																																																					Get sconst Ti1454
																																																																																																																				Let Td1457
																																																																																																																					Let Ti1456
																																																																																																																						Int:2
																																																																																																																						Get sconst Ti1456
																																																																																																																					App quadraticobj Td1453 Td1455 Td1457 
																																																																																																																		Let Ti1458
																																																																																																																			Int:3
																																																																																																																			Let Td1461
																																																																																																																				Let Ti1459
																																																																																																																					Int:3
																																																																																																																					IfEq m_shape Ti1459
																																																																																																																						Let Td1460
																																																																																																																							Float:1.000000
																																																																																																																							FSub cc0 Td1460
																																																																																																																						Var cc0
																																																																																																																				Put sconst Ti1458 Td1461
																																																																																																													Let Ti1463
																																																																																																														Let Ti1462
																																																																																																															Int:1
																																																																																																															Sub index Ti1462
																																																																																																														App setup_startp_constantsp Ti1463 
																																																																																																						Unit
																																																																																																				LetRec setup_startp p 
																																																																																																					Let Tu113
																																																																																																						Let Ta1418
																																																																																																							ExtArray 162
																																																																																																							App veccpyTa1418 p 
																																																																																																						Let Ti1423
																																																																																																							Let Ti1421
																																																																																																								Let Ta1419
																																																																																																									ExtArray 0
																																																																																																									Let Ti1420
																																																																																																										Int:0
																																																																																																										Get Ta1419 Ti1420
																																																																																																								Let Ti1422
																																																																																																									Int:1
																																																																																																									Sub Ti1421 Ti1422
																																																																																																							App setup_startp_constantsp Ti1423 
																																																																																																					LetRec is_rect_outside m p0 p1 p2 
																																																																																																						Let Ti1414
																																																																																																							Let Td1411
																																																																																																								App o_param_am 
																																																																																																								IfFAbsLE Td1411 p0
																																																																																																									Int:0
																																																																																																									Let Td1412
																																																																																																										App o_param_bm 
																																																																																																										IfFAbsLE Td1412 p1
																																																																																																											Int:0
																																																																																																											Let Td1413
																																																																																																												App o_param_cm 
																																																																																																												IfFAbsLE Td1413 p2
																																																																																																													Int:0
																																																																																																													Int:1
																																																																																																							Let Ti1415
																																																																																																								Int:0
																																																																																																								IfEq Ti1414 Ti1415
																																																																																																									Let Tb1416
																																																																																																										App o_isinvertm 
																																																																																																										Let Ti1417
																																																																																																											Int:0
																																																																																																											IfEq Tb1416 Ti1417
																																																																																																												Int:1
																																																																																																												Int:0
																																																																																																									App o_isinvertm 
																																																																																																						LetRec is_plane_outside m p0 p1 p2 
																																																																																																							Let w
																																																																																																								Let Ta1405
																																																																																																									App o_param_abcm 
																																																																																																									App veciprod2Ta1405 p0 p1 p2 
																																																																																																								Let Ti1409
																																																																																																									Let Tb1406
																																																																																																										App o_isinvertm 
																																																																																																										Let Ti1408
																																																																																																											Let Td1407
																																																																																																												Float:0.000000
																																																																																																												IfLE Td1407 w
																																																																																																													Int:0
																																																																																																													Int:1
																																																																																																											xor Tb1406 Ti1408
																																																																																																									Let Ti1410
																																																																																																										Int:0
																																																																																																										IfEq Ti1409 Ti1410
																																																																																																											Int:1
																																																																																																											Int:0
																																																																																																							LetRec is_second_outside m p0 p1 p2 
																																																																																																								Let w
																																																																																																									App quadraticm p0 p1 p2 
																																																																																																									Let w2
																																																																																																										Let Ti1397
																																																																																																											App o_formm 
																																																																																																											Let Ti1398
																																																																																																												Int:3
																																																																																																												IfEq Ti1397 Ti1398
																																																																																																													Let Td1399
																																																																																																														Float:1.000000
																																																																																																														FSub w Td1399
																																																																																																													Var w
																																																																																																										Let Ti1403
																																																																																																											Let Tb1400
																																																																																																												App o_isinvertm 
																																																																																																												Let Ti1402
																																																																																																													Let Td1401
																																																																																																														Float:0.000000
																																																																																																														IfLE Td1401 w2
																																																																																																															Int:0
																																																																																																															Int:1
																																																																																																													xor Tb1400 Ti1402
																																																																																																											Let Ti1404
																																																																																																												Int:0
																																																																																																												IfEq Ti1403 Ti1404
																																																																																																													Int:1
																																																																																																													Int:0
																																																																																																								LetRec is_outside m q0 q1 q2 
																																																																																																									Let p0
																																																																																																										Let Td1392
																																																																																																											App o_param_xm 
																																																																																																											FSub q0 Td1392
																																																																																																										Let p1
																																																																																																											Let Td1393
																																																																																																												App o_param_ym 
																																																																																																												FSub q1 Td1393
																																																																																																											Let p2
																																																																																																												Let Td1394
																																																																																																													App o_param_zm 
																																																																																																													FSub q2 Td1394
																																																																																																												Let m_shape
																																																																																																													App o_formm 
																																																																																																													Let Ti1395
																																																																																																														Int:1
																																																																																																														IfEq m_shape Ti1395
																																																																																																															App is_rect_outsidem p0 p1 p2 
																																																																																																															Let Ti1396
																																																																																																																Int:2
																																																																																																																IfEq m_shape Ti1396
																																																																																																																	App is_plane_outsidem p0 p1 p2 
																																																																																																																	App is_second_outsidem p0 p1 p2 
																																																																																																									LetRec check_all_inside ofs iand q0 q1 q2 
																																																																																																										Let head
																																																																																																											Get iand ofs
																																																																																																											Let Ti1385
																																																																																																												Let Ti1384
																																																																																																													Int:1
																																																																																																													Neg Ti1384
																																																																																																												IfEq head Ti1385
																																																																																																													Int:1
																																																																																																													Let Tb1388
																																																																																																														Let Tt1387
																																																																																																															Let Ta1386
																																																																																																																ExtArray 12
																																																																																																																Get Ta1386 head
																																																																																																															App is_outsideTt1387 q0 q1 q2 
																																																																																																														Let Ti1389
																																																																																																															Int:0
																																																																																																															IfEq Tb1388 Ti1389
																																																																																																																Let Ti1391
																																																																																																																	Let Ti1390
																																																																																																																		Int:1
																																																																																																																		Add ofs Ti1390
																																																																																																																	App check_all_insideTi1391 iand q0 q1 q2 
																																																																																																																Int:0
																																																																																																										LetRec shadow_check_and_group iand_ofs and_group 
																																																																																																											Let Ti1343
																																																																																																												Get and_group iand_ofs
																																																																																																												Let Ti1345
																																																																																																													Let Ti1344
																																																																																																														Int:1
																																																																																																														Neg Ti1344
																																																																																																													IfEq Ti1343 Ti1345
																																																																																																														Int:0
																																																																																																														Let obj
																																																																																																															Get and_group iand_ofs
																																																																																																															Let t0
																																																																																																																Let Tt1346
																																																																																																																	ExtTuple 247
																																																																																																																	Let Ta1347
																																																																																																																		ExtArray 138
																																																																																																																		App solver_fastobj Tt1346 Ta1347 
																																																																																																																Let t0p
																																																																																																																	Let Ta1348
																																																																																																																		ExtArray 135
																																																																																																																		Let Ti1349
																																																																																																																			Int:0
																																																																																																																			Get Ta1348 Ti1349
																																																																																																																	Let Ti1352
																																																																																																																		Let Ti1350
																																																																																																																			Int:0
																																																																																																																			IfEq t0 Ti1350
																																																																																																																				Int:0
																																																																																																																				Let Td1351
																																																																																																																					Float:-0.200000
																																																																																																																					IfLE Td1351 t0p
																																																																																																																						Int:0
																																																																																																																						Int:1
																																																																																																																		Let Ti1353
																																																																																																																			Int:0
																																																																																																																			IfEq Ti1352 Ti1353
																																																																																																																				Let Tb1356
																																																																																																																					Let Tt1355
																																																																																																																						Let Ta1354
																																																																																																																							ExtArray 12
																																																																																																																							Get Ta1354 obj
																																																																																																																						App o_isinvertTt1355 
																																																																																																																					Let Ti1357
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1356 Ti1357
																																																																																																																							Int:0
																																																																																																																							Let Ti1359
																																																																																																																								Let Ti1358
																																																																																																																									Int:1
																																																																																																																									Add iand_ofs Ti1358
																																																																																																																								App shadow_check_and_groupTi1359 and_group 
																																																																																																																				Let t
																																																																																																																					Let Td1360
																																																																																																																						Float:0.010000
																																																																																																																						FAdd t0p Td1360
																																																																																																																					Let q0
																																																																																																																						Let Td1363
																																																																																																																							Let Ta1361
																																																																																																																								ExtArray 78
																																																																																																																								Let Ti1362
																																																																																																																									Int:0
																																																																																																																									Get Ta1361 Ti1362
																																																																																																																							Let Td1366
																																																																																																																								Let Ta1364
																																																																																																																									ExtArray 138
																																																																																																																									Let Ti1365
																																																																																																																										Int:0
																																																																																																																										Get Ta1364 Ti1365
																																																																																																																								FDiv Td1363 t Td1366
																																																																																																																						Let q1
																																																																																																																							Let Td1369
																																																																																																																								Let Ta1367
																																																																																																																									ExtArray 78
																																																																																																																									Let Ti1368
																																																																																																																										Int:1
																																																																																																																										Get Ta1367 Ti1368
																																																																																																																								Let Td1372
																																																																																																																									Let Ta1370
																																																																																																																										ExtArray 138
																																																																																																																										Let Ti1371
																																																																																																																											Int:1
																																																																																																																											Get Ta1370 Ti1371
																																																																																																																									FDiv Td1369 t Td1372
																																																																																																																							Let q2
																																																																																																																								Let Td1375
																																																																																																																									Let Ta1373
																																																																																																																										ExtArray 78
																																																																																																																										Let Ti1374
																																																																																																																											Int:2
																																																																																																																											Get Ta1373 Ti1374
																																																																																																																									Let Td1378
																																																																																																																										Let Ta1376
																																																																																																																											ExtArray 138
																																																																																																																											Let Ti1377
																																																																																																																												Int:2
																																																																																																																												Get Ta1376 Ti1377
																																																																																																																										FDiv Td1375 t Td1378
																																																																																																																								Let Tb1380
																																																																																																																									Let Ti1379
																																																																																																																										Int:0
																																																																																																																										App check_all_insideTi1379 and_group q0 q1 q2 
																																																																																																																									Let Ti1381
																																																																																																																										Int:0
																																																																																																																										IfEq Tb1380 Ti1381
																																																																																																																											Let Ti1383
																																																																																																																												Let Ti1382
																																																																																																																													Int:1
																																																																																																																													Add iand_ofs Ti1382
																																																																																																																												App shadow_check_and_groupTi1383 and_group 
																																																																																																																											Int:1
																																																																																																											LetRec shadow_check_one_or_group ofs or_group 
																																																																																																												Let head
																																																																																																													Get or_group ofs
																																																																																																													Let Ti1337
																																																																																																														Let Ti1336
																																																																																																															Int:1
																																																																																																															Neg Ti1336
																																																																																																														IfEq head Ti1337
																																																																																																															Int:0
																																																																																																															Let and_group
																																																																																																																Let Ta1338
																																																																																																																	ExtArray 83
																																																																																																																	Get Ta1338 head
																																																																																																																Let shadow_p
																																																																																																																	Let Ti1339
																																																																																																																		Int:0
																																																																																																																		App shadow_check_and_groupTi1339 and_group 
																																																																																																																	Let Ti1340
																																																																																																																		Int:0
																																																																																																																		IfEq shadow_p Ti1340
																																																																																																																			Let Ti1342
																																																																																																																				Let Ti1341
																																																																																																																					Int:1
																																																																																																																					Add ofs Ti1341
																																																																																																																				App shadow_check_one_or_groupTi1342 or_group 
																																																																																																																			Int:1
																																																																																																												LetRec shadow_check_one_or_matrix ofs or_matrix 
																																																																																																													Let head
																																																																																																														Get or_matrix ofs
																																																																																																														Let range_primitive
																																																																																																															Let Ti1313
																																																																																																																Int:0
																																																																																																																Get head Ti1313
																																																																																																															Let Ti1315
																																																																																																																Let Ti1314
																																																																																																																	Int:1
																																																																																																																	Neg Ti1314
																																																																																																																IfEq range_primitive Ti1315
																																																																																																																	Int:0
																																																																																																																	Let Ti1327
																																																																																																																		Let Ti1316
																																																																																																																			Int:99
																																																																																																																			IfEq range_primitive Ti1316
																																																																																																																				Int:1
																																																																																																																				Let t
																																																																																																																					Let Tt1317
																																																																																																																						ExtTuple 247
																																																																																																																						Let Ta1318
																																																																																																																							ExtArray 138
																																																																																																																							App solver_fastrange_primitive Tt1317 Ta1318 
																																																																																																																					Let Ti1319
																																																																																																																						Int:0
																																																																																																																						IfEq t Ti1319
																																																																																																																							Int:0
																																																																																																																							Let Td1320
																																																																																																																								Float:-0.100000
																																																																																																																								Let Td1323
																																																																																																																									Let Ta1321
																																																																																																																										ExtArray 135
																																																																																																																										Let Ti1322
																																																																																																																											Int:0
																																																																																																																											Get Ta1321 Ti1322
																																																																																																																									IfLE Td1320 Td1323
																																																																																																																										Int:0
																																																																																																																										Let Tb1325
																																																																																																																											Let Ti1324
																																																																																																																												Int:1
																																																																																																																												App shadow_check_one_or_groupTi1324 head 
																																																																																																																											Let Ti1326
																																																																																																																												Int:0
																																																																																																																												IfEq Tb1325 Ti1326
																																																																																																																													Int:0
																																																																																																																													Int:1
																																																																																																																		Let Ti1328
																																																																																																																			Int:0
																																																																																																																			IfEq Ti1327 Ti1328
																																																																																																																				Let Ti1330
																																																																																																																					Let Ti1329
																																																																																																																						Int:1
																																																																																																																						Add ofs Ti1329
																																																																																																																					App shadow_check_one_or_matrixTi1330 or_matrix 
																																																																																																																				Let Tb1332
																																																																																																																					Let Ti1331
																																																																																																																						Int:1
																																																																																																																						App shadow_check_one_or_groupTi1331 head 
																																																																																																																					Let Ti1333
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1332 Ti1333
																																																																																																																							Let Ti1335
																																																																																																																								Let Ti1334
																																																																																																																									Int:1
																																																																																																																									Add ofs Ti1334
																																																																																																																								App shadow_check_one_or_matrixTi1335 or_matrix 
																																																																																																																							Int:1
																																																																																																													LetRec solve_each_element iand_ofs and_group dirvec 
																																																																																																														Let iobj
																																																																																																															Get and_group iand_ofs
																																																																																																															Let Ti1270
																																																																																																																Let Ti1269
																																																																																																																	Int:1
																																																																																																																	Neg Ti1269
																																																																																																																IfEq iobj Ti1270
																																																																																																																	Unit
																																																																																																																	Let t0
																																																																																																																		Let Ta1271
																																																																																																																			ExtArray 159
																																																																																																																			App solveriobj dirvec Ta1271 
																																																																																																																		Let Ti1272
																																																																																																																			Int:0
																																																																																																																			IfEq t0 Ti1272
																																																																																																																				Let Tb1275
																																																																																																																					Let Tt1274
																																																																																																																						Let Ta1273
																																																																																																																							ExtArray 12
																																																																																																																							Get Ta1273 iobj
																																																																																																																						App o_isinvertTt1274 
																																																																																																																					Let Ti1276
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1275 Ti1276
																																																																																																																							Unit
																																																																																																																							Let Ti1278
																																																																																																																								Let Ti1277
																																																																																																																									Int:1
																																																																																																																									Add iand_ofs Ti1277
																																																																																																																								App solve_each_elementTi1278 and_group dirvec 
																																																																																																																				Let t0p
																																																																																																																					Let Ta1279
																																																																																																																						ExtArray 135
																																																																																																																						Let Ti1280
																																																																																																																							Int:0
																																																																																																																							Get Ta1279 Ti1280
																																																																																																																					Let Tu117
																																																																																																																						Let Td1281
																																																																																																																							Float:0.000000
																																																																																																																							IfLE t0p Td1281
																																																																																																																								Unit
																																																																																																																								Let Td1284
																																																																																																																									Let Ta1282
																																																																																																																										ExtArray 137
																																																																																																																										Let Ti1283
																																																																																																																											Int:0
																																																																																																																											Get Ta1282 Ti1283
																																																																																																																									IfLE Td1284 t0p
																																																																																																																										Unit
																																																																																																																										Let t
																																																																																																																											Let Td1285
																																																																																																																												Float:0.010000
																																																																																																																												FAdd t0p Td1285
																																																																																																																											Let q0
																																																																																																																												Let Td1287
																																																																																																																													Let Ti1286
																																																																																																																														Int:0
																																																																																																																														Get dirvec Ti1286
																																																																																																																													Let Td1290
																																																																																																																														Let Ta1288
																																																																																																																															ExtArray 159
																																																																																																																															Let Ti1289
																																																																																																																																Int:0
																																																																																																																																Get Ta1288 Ti1289
																																																																																																																														FDiv Td1287 t Td1290
																																																																																																																												Let q1
																																																																																																																													Let Td1292
																																																																																																																														Let Ti1291
																																																																																																																															Int:1
																																																																																																																															Get dirvec Ti1291
																																																																																																																														Let Td1295
																																																																																																																															Let Ta1293
																																																																																																																																ExtArray 159
																																																																																																																																Let Ti1294
																																																																																																																																	Int:1
																																																																																																																																	Get Ta1293 Ti1294
																																																																																																																															FDiv Td1292 t Td1295
																																																																																																																													Let q2
																																																																																																																														Let Td1297
																																																																																																																															Let Ti1296
																																																																																																																																Int:2
																																																																																																																																Get dirvec Ti1296
																																																																																																																															Let Td1300
																																																																																																																																Let Ta1298
																																																																																																																																	ExtArray 159
																																																																																																																																	Let Ti1299
																																																																																																																																		Int:2
																																																																																																																																		Get Ta1298 Ti1299
																																																																																																																																FDiv Td1297 t Td1300
																																																																																																																														Let Tb1302
																																																																																																																															Let Ti1301
																																																																																																																																Int:0
																																																																																																																																App check_all_insideTi1301 and_group q0 q1 q2 
																																																																																																																															Let Ti1303
																																																																																																																																Int:0
																																																																																																																																IfEq Tb1302 Ti1303
																																																																																																																																	Unit
																																																																																																																																	Let Tu116
																																																																																																																																		Let Ta1304
																																																																																																																																			ExtArray 137
																																																																																																																																			Let Ti1305
																																																																																																																																				Int:0
																																																																																																																																				Put Ta1304 Ti1305 t
																																																																																																																																		Let Tu115
																																																																																																																																			Let Ta1306
																																																																																																																																				ExtArray 138
																																																																																																																																				App vecsetTa1306 q0 q1 q2 
																																																																																																																																			Let Tu114
																																																																																																																																				Let Ta1307
																																																																																																																																					ExtArray 141
																																																																																																																																					Let Ti1308
																																																																																																																																						Int:0
																																																																																																																																						Put Ta1307 Ti1308 iobj
																																																																																																																																				Let Ta1309
																																																																																																																																					ExtArray 136
																																																																																																																																					Let Ti1310
																																																																																																																																						Int:0
																																																																																																																																						Put Ta1309 Ti1310 t0
																																																																																																																						Let Ti1312
																																																																																																																							Let Ti1311
																																																																																																																								Int:1
																																																																																																																								Add iand_ofs Ti1311
																																																																																																																							App solve_each_elementTi1312 and_group dirvec 
																																																																																																														LetRec solve_one_or_network ofs or_group dirvec 
																																																																																																															Let head
																																																																																																																Get or_group ofs
																																																																																																																Let Ti1264
																																																																																																																	Let Ti1263
																																																																																																																		Int:1
																																																																																																																		Neg Ti1263
																																																																																																																	IfEq head Ti1264
																																																																																																																		Unit
																																																																																																																		Let and_group
																																																																																																																			Let Ta1265
																																																																																																																				ExtArray 83
																																																																																																																				Get Ta1265 head
																																																																																																																			Let Tu118
																																																																																																																				Let Ti1266
																																																																																																																					Int:0
																																																																																																																					App solve_each_elementTi1266 and_group dirvec 
																																																																																																																				Let Ti1268
																																																																																																																					Let Ti1267
																																																																																																																						Int:1
																																																																																																																						Add ofs Ti1267
																																																																																																																					App solve_one_or_networkTi1268 or_group dirvec 
																																																																																																															LetRec trace_or_matrix ofs or_network dirvec 
																																																																																																																Let head
																																																																																																																	Get or_network ofs
																																																																																																																	Let range_primitive
																																																																																																																		Let Ti1248
																																																																																																																			Int:0
																																																																																																																			Get head Ti1248
																																																																																																																		Let Ti1250
																																																																																																																			Let Ti1249
																																																																																																																				Int:1
																																																																																																																				Neg Ti1249
																																																																																																																			IfEq range_primitive Ti1250
																																																																																																																				Unit
																																																																																																																				Let Tu119
																																																																																																																					Let Ti1251
																																																																																																																						Int:99
																																																																																																																						IfEq range_primitive Ti1251
																																																																																																																							Let Ti1252
																																																																																																																								Int:1
																																																																																																																								App solve_one_or_networkTi1252 head dirvec 
																																																																																																																							Let t
																																																																																																																								Let Ta1253
																																																																																																																									ExtArray 159
																																																																																																																									App solverrange_primitive dirvec Ta1253 
																																																																																																																								Let Ti1254
																																																																																																																									Int:0
																																																																																																																									IfEq t Ti1254
																																																																																																																										Unit
																																																																																																																										Let tp
																																																																																																																											Let Ta1255
																																																																																																																												ExtArray 135
																																																																																																																												Let Ti1256
																																																																																																																													Int:0
																																																																																																																													Get Ta1255 Ti1256
																																																																																																																											Let Td1259
																																																																																																																												Let Ta1257
																																																																																																																													ExtArray 137
																																																																																																																													Let Ti1258
																																																																																																																														Int:0
																																																																																																																														Get Ta1257 Ti1258
																																																																																																																												IfLE Td1259 tp
																																																																																																																													Unit
																																																																																																																													Let Ti1260
																																																																																																																														Int:1
																																																																																																																														App solve_one_or_networkTi1260 head dirvec 
																																																																																																																					Let Ti1262
																																																																																																																						Let Ti1261
																																																																																																																							Int:1
																																																																																																																							Add ofs Ti1261
																																																																																																																						App trace_or_matrixTi1262 or_network dirvec 
																																																																																																																LetRec judge_intersection dirvec 
																																																																																																																	Let Tu121
																																																																																																																		Let Ta1237
																																																																																																																			ExtArray 137
																																																																																																																			Let Ti1238
																																																																																																																				Int:0
																																																																																																																				Let Td1239
																																																																																																																					Float:1000000000.000000
																																																																																																																					Put Ta1237 Ti1238 Td1239
																																																																																																																		Let Tu120
																																																																																																																			Let Ti1240
																																																																																																																				Int:0
																																																																																																																				Let Ta1243
																																																																																																																					Let Ta1241
																																																																																																																						ExtArray 134
																																																																																																																						Let Ti1242
																																																																																																																							Int:0
																																																																																																																							Get Ta1241 Ti1242
																																																																																																																					App trace_or_matrixTi1240 Ta1243 dirvec 
																																																																																																																			Let t
																																																																																																																				Let Ta1244
																																																																																																																					ExtArray 137
																																																																																																																					Let Ti1245
																																																																																																																						Int:0
																																																																																																																						Get Ta1244 Ti1245
																																																																																																																				Let Td1246
																																																																																																																					Float:-0.100000
																																																																																																																					IfLE t Td1246
																																																																																																																						Int:0
																																																																																																																						Let Td1247
																																																																																																																							Float:100000000.000000
																																																																																																																							IfLE Td1247 t
																																																																																																																								Int:0
																																																																																																																								Int:1
																																																																																																																	LetRec solve_each_element_fast iand_ofs and_group dirvec 
																																																																																																																		Let vec
																																																																																																																			App d_vecdirvec 
																																																																																																																			Let iobj
																																																																																																																				Get and_group iand_ofs
																																																																																																																				Let Ti1195
																																																																																																																					Let Ti1194
																																																																																																																						Int:1
																																																																																																																						Neg Ti1194
																																																																																																																					IfEq iobj Ti1195
																																																																																																																						Unit
																																																																																																																						Let t0
																																																																																																																							App solver_fast2iobj dirvec 
																																																																																																																							Let Ti1196
																																																																																																																								Int:0
																																																																																																																								IfEq t0 Ti1196
																																																																																																																									Let Tb1199
																																																																																																																										Let Tt1198
																																																																																																																											Let Ta1197
																																																																																																																												ExtArray 12
																																																																																																																												Get Ta1197 iobj
																																																																																																																											App o_isinvertTt1198 
																																																																																																																										Let Ti1200
																																																																																																																											Int:0
																																																																																																																											IfEq Tb1199 Ti1200
																																																																																																																												Unit
																																																																																																																												Let Ti1202
																																																																																																																													Let Ti1201
																																																																																																																														Int:1
																																																																																																																														Add iand_ofs Ti1201
																																																																																																																													App solve_each_element_fastTi1202 and_group dirvec 
																																																																																																																									Let t0p
																																																																																																																										Let Ta1203
																																																																																																																											ExtArray 135
																																																																																																																											Let Ti1204
																																																																																																																												Int:0
																																																																																																																												Get Ta1203 Ti1204
																																																																																																																										Let Tu125
																																																																																																																											Let Td1205
																																																																																																																												Float:0.000000
																																																																																																																												IfLE t0p Td1205
																																																																																																																													Unit
																																																																																																																													Let Td1208
																																																																																																																														Let Ta1206
																																																																																																																															ExtArray 137
																																																																																																																															Let Ti1207
																																																																																																																																Int:0
																																																																																																																																Get Ta1206 Ti1207
																																																																																																																														IfLE Td1208 t0p
																																																																																																																															Unit
																																																																																																																															Let t
																																																																																																																																Let Td1209
																																																																																																																																	Float:0.010000
																																																																																																																																	FAdd t0p Td1209
																																																																																																																																Let q0
																																																																																																																																	Let Td1211
																																																																																																																																		Let Ti1210
																																																																																																																																			Int:0
																																																																																																																																			Get vec Ti1210
																																																																																																																																		Let Td1214
																																																																																																																																			Let Ta1212
																																																																																																																																				ExtArray 162
																																																																																																																																				Let Ti1213
																																																																																																																																					Int:0
																																																																																																																																					Get Ta1212 Ti1213
																																																																																																																																			FDiv Td1211 t Td1214
																																																																																																																																	Let q1
																																																																																																																																		Let Td1216
																																																																																																																																			Let Ti1215
																																																																																																																																				Int:1
																																																																																																																																				Get vec Ti1215
																																																																																																																																			Let Td1219
																																																																																																																																				Let Ta1217
																																																																																																																																					ExtArray 162
																																																																																																																																					Let Ti1218
																																																																																																																																						Int:1
																																																																																																																																						Get Ta1217 Ti1218
																																																																																																																																				FDiv Td1216 t Td1219
																																																																																																																																		Let q2
																																																																																																																																			Let Td1221
																																																																																																																																				Let Ti1220
																																																																																																																																					Int:2
																																																																																																																																					Get vec Ti1220
																																																																																																																																				Let Td1224
																																																																																																																																					Let Ta1222
																																																																																																																																						ExtArray 162
																																																																																																																																						Let Ti1223
																																																																																																																																							Int:2
																																																																																																																																							Get Ta1222 Ti1223
																																																																																																																																					FDiv Td1221 t Td1224
																																																																																																																																			Let Tb1226
																																																																																																																																				Let Ti1225
																																																																																																																																					Int:0
																																																																																																																																					App check_all_insideTi1225 and_group q0 q1 q2 
																																																																																																																																				Let Ti1227
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb1226 Ti1227
																																																																																																																																						Unit
																																																																																																																																						Let Tu124
																																																																																																																																							Let Ta1228
																																																																																																																																								ExtArray 137
																																																																																																																																								Let Ti1229
																																																																																																																																									Int:0
																																																																																																																																									Put Ta1228 Ti1229 t
																																																																																																																																							Let Tu123
																																																																																																																																								Let Ta1230
																																																																																																																																									ExtArray 138
																																																																																																																																									App vecsetTa1230 q0 q1 q2 
																																																																																																																																								Let Tu122
																																																																																																																																									Let Ta1231
																																																																																																																																										ExtArray 141
																																																																																																																																										Let Ti1232
																																																																																																																																											Int:0
																																																																																																																																											Put Ta1231 Ti1232 iobj
																																																																																																																																									Let Ta1233
																																																																																																																																										ExtArray 136
																																																																																																																																										Let Ti1234
																																																																																																																																											Int:0
																																																																																																																																											Put Ta1233 Ti1234 t0
																																																																																																																											Let Ti1236
																																																																																																																												Let Ti1235
																																																																																																																													Int:1
																																																																																																																													Add iand_ofs Ti1235
																																																																																																																												App solve_each_element_fastTi1236 and_group dirvec 
																																																																																																																		LetRec solve_one_or_network_fast ofs or_group dirvec 
																																																																																																																			Let head
																																																																																																																				Get or_group ofs
																																																																																																																				Let Ti1189
																																																																																																																					Let Ti1188
																																																																																																																						Int:1
																																																																																																																						Neg Ti1188
																																																																																																																					IfEq head Ti1189
																																																																																																																						Unit
																																																																																																																						Let and_group
																																																																																																																							Let Ta1190
																																																																																																																								ExtArray 83
																																																																																																																								Get Ta1190 head
																																																																																																																							Let Tu126
																																																																																																																								Let Ti1191
																																																																																																																									Int:0
																																																																																																																									App solve_each_element_fastTi1191 and_group dirvec 
																																																																																																																								Let Ti1193
																																																																																																																									Let Ti1192
																																																																																																																										Int:1
																																																																																																																										Add ofs Ti1192
																																																																																																																									App solve_one_or_network_fastTi1193 or_group dirvec 
																																																																																																																			LetRec trace_or_matrix_fast ofs or_network dirvec 
																																																																																																																				Let head
																																																																																																																					Get or_network ofs
																																																																																																																					Let range_primitive
																																																																																																																						Let Ti1174
																																																																																																																							Int:0
																																																																																																																							Get head Ti1174
																																																																																																																						Let Ti1176
																																																																																																																							Let Ti1175
																																																																																																																								Int:1
																																																																																																																								Neg Ti1175
																																																																																																																							IfEq range_primitive Ti1176
																																																																																																																								Unit
																																																																																																																								Let Tu127
																																																																																																																									Let Ti1177
																																																																																																																										Int:99
																																																																																																																										IfEq range_primitive Ti1177
																																																																																																																											Let Ti1178
																																																																																																																												Int:1
																																																																																																																												App solve_one_or_network_fastTi1178 head dirvec 
																																																																																																																											Let t
																																																																																																																												App solver_fast2range_primitive dirvec 
																																																																																																																												Let Ti1179
																																																																																																																													Int:0
																																																																																																																													IfEq t Ti1179
																																																																																																																														Unit
																																																																																																																														Let tp
																																																																																																																															Let Ta1180
																																																																																																																																ExtArray 135
																																																																																																																																Let Ti1181
																																																																																																																																	Int:0
																																																																																																																																	Get Ta1180 Ti1181
																																																																																																																															Let Td1184
																																																																																																																																Let Ta1182
																																																																																																																																	ExtArray 137
																																																																																																																																	Let Ti1183
																																																																																																																																		Int:0
																																																																																																																																		Get Ta1182 Ti1183
																																																																																																																																IfLE Td1184 tp
																																																																																																																																	Unit
																																																																																																																																	Let Ti1185
																																																																																																																																		Int:1
																																																																																																																																		App solve_one_or_network_fastTi1185 head dirvec 
																																																																																																																									Let Ti1187
																																																																																																																										Let Ti1186
																																																																																																																											Int:1
																																																																																																																											Add ofs Ti1186
																																																																																																																										App trace_or_matrix_fastTi1187 or_network dirvec 
																																																																																																																				LetRec judge_intersection_fast dirvec 
																																																																																																																					Let Tu129
																																																																																																																						Let Ta1163
																																																																																																																							ExtArray 137
																																																																																																																							Let Ti1164
																																																																																																																								Int:0
																																																																																																																								Let Td1165
																																																																																																																									Float:1000000000.000000
																																																																																																																									Put Ta1163 Ti1164 Td1165
																																																																																																																						Let Tu128
																																																																																																																							Let Ti1166
																																																																																																																								Int:0
																																																																																																																								Let Ta1169
																																																																																																																									Let Ta1167
																																																																																																																										ExtArray 134
																																																																																																																										Let Ti1168
																																																																																																																											Int:0
																																																																																																																											Get Ta1167 Ti1168
																																																																																																																									App trace_or_matrix_fastTi1166 Ta1169 dirvec 
																																																																																																																							Let t
																																																																																																																								Let Ta1170
																																																																																																																									ExtArray 137
																																																																																																																									Let Ti1171
																																																																																																																										Int:0
																																																																																																																										Get Ta1170 Ti1171
																																																																																																																								Let Td1172
																																																																																																																									Float:-0.100000
																																																																																																																									IfLE t Td1172
																																																																																																																										Int:0
																																																																																																																										Let Td1173
																																																																																																																											Float:100000000.000000
																																																																																																																											IfLE Td1173 t
																																																																																																																												Int:0
																																																																																																																												Int:1
																																																																																																																					LetRec get_nvector_rect dirvec 
																																																																																																																						Let rectside
																																																																																																																							Let Ta1152
																																																																																																																								ExtArray 136
																																																																																																																								Let Ti1153
																																																																																																																									Int:0
																																																																																																																									Get Ta1152 Ti1153
																																																																																																																							Let Tu130
																																																																																																																								Let Ta1154
																																																																																																																									ExtArray 142
																																																																																																																									App vecbzeroTa1154 
																																																																																																																								Let Ta1155
																																																																																																																									ExtArray 142
																																																																																																																									Let Ti1157
																																																																																																																										Let Ti1156
																																																																																																																											Int:1
																																																																																																																											Sub rectside Ti1156
																																																																																																																										Let Td1162
																																																																																																																											Let Td1161
																																																																																																																												Let Td1160
																																																																																																																													Let Ti1159
																																																																																																																														Let Ti1158
																																																																																																																															Int:1
																																																																																																																															Sub rectside Ti1158
																																																																																																																														Get dirvec Ti1159
																																																																																																																													App sgnTd1160 
																																																																																																																												App fnegTd1161 
																																																																																																																											Put Ta1155 Ti1157 Td1162
																																																																																																																						LetRec get_nvector_plane m 
																																																																																																																							Let Tu132
																																																																																																																								Let Ta1140
																																																																																																																									ExtArray 142
																																																																																																																									Let Ti1141
																																																																																																																										Int:0
																																																																																																																										Let Td1143
																																																																																																																											Let Td1142
																																																																																																																												App o_param_am 
																																																																																																																												App fnegTd1142 
																																																																																																																											Put Ta1140 Ti1141 Td1143
																																																																																																																								Let Tu131
																																																																																																																									Let Ta1144
																																																																																																																										ExtArray 142
																																																																																																																										Let Ti1145
																																																																																																																											Int:1
																																																																																																																											Let Td1147
																																																																																																																												Let Td1146
																																																																																																																													App o_param_bm 
																																																																																																																													App fnegTd1146 
																																																																																																																												Put Ta1144 Ti1145 Td1147
																																																																																																																									Let Ta1148
																																																																																																																										ExtArray 142
																																																																																																																										Let Ti1149
																																																																																																																											Int:2
																																																																																																																											Let Td1151
																																																																																																																												Let Td1150
																																																																																																																													App o_param_cm 
																																																																																																																													App fnegTd1150 
																																																																																																																												Put Ta1148 Ti1149 Td1151
																																																																																																																							LetRec get_nvector_second m 
																																																																																																																								Let p0
																																																																																																																									Let Td1093
																																																																																																																										Let Ta1091
																																																																																																																											ExtArray 138
																																																																																																																											Let Ti1092
																																																																																																																												Int:0
																																																																																																																												Get Ta1091 Ti1092
																																																																																																																										Let Td1094
																																																																																																																											App o_param_xm 
																																																																																																																											FSub Td1093 Td1094
																																																																																																																									Let p1
																																																																																																																										Let Td1097
																																																																																																																											Let Ta1095
																																																																																																																												ExtArray 138
																																																																																																																												Let Ti1096
																																																																																																																													Int:1
																																																																																																																													Get Ta1095 Ti1096
																																																																																																																											Let Td1098
																																																																																																																												App o_param_ym 
																																																																																																																												FSub Td1097 Td1098
																																																																																																																										Let p2
																																																																																																																											Let Td1101
																																																																																																																												Let Ta1099
																																																																																																																													ExtArray 138
																																																																																																																													Let Ti1100
																																																																																																																														Int:2
																																																																																																																														Get Ta1099 Ti1100
																																																																																																																												Let Td1102
																																																																																																																													App o_param_zm 
																																																																																																																													FSub Td1101 Td1102
																																																																																																																											Let d0
																																																																																																																												Let Td1103
																																																																																																																													App o_param_am 
																																																																																																																													FMul p0 Td1103
																																																																																																																												Let d1
																																																																																																																													Let Td1104
																																																																																																																														App o_param_bm 
																																																																																																																														FMul p1 Td1104
																																																																																																																													Let d2
																																																																																																																														Let Td1105
																																																																																																																															App o_param_cm 
																																																																																																																															FMul p2 Td1105
																																																																																																																														Let Tu137
																																																																																																																															Let Ti1106
																																																																																																																																App o_isrotm 
																																																																																																																																Let Ti1107
																																																																																																																																	Int:0
																																																																																																																																	IfEq Ti1106 Ti1107
																																																																																																																																		Let Tu134
																																																																																																																																			Let Ta1108
																																																																																																																																				ExtArray 142
																																																																																																																																				Let Ti1109
																																																																																																																																					Int:0
																																																																																																																																					Put Ta1108 Ti1109 d0
																																																																																																																																			Let Tu133
																																																																																																																																				Let Ta1110
																																																																																																																																					ExtArray 142
																																																																																																																																					Let Ti1111
																																																																																																																																						Int:1
																																																																																																																																						Put Ta1110 Ti1111 d1
																																																																																																																																				Let Ta1112
																																																																																																																																					ExtArray 142
																																																																																																																																					Let Ti1113
																																																																																																																																						Int:2
																																																																																																																																						Put Ta1112 Ti1113 d2
																																																																																																																																		Let Tu136
																																																																																																																																			Let Ta1114
																																																																																																																																				ExtArray 142
																																																																																																																																				Let Ti1115
																																																																																																																																					Int:0
																																																																																																																																					Let Td1121
																																																																																																																																						Let Td1120
																																																																																																																																							Let Td1119
																																																																																																																																								Let Td1116
																																																																																																																																									App o_param_r3m 
																																																																																																																																									Let Td1118
																																																																																																																																										Let Td1117
																																																																																																																																											App o_param_r2m 
																																																																																																																																											FMul p2 Td1117
																																																																																																																																										FDiv p1 Td1116 Td1118
																																																																																																																																								App fhalfTd1119 
																																																																																																																																							FAdd d0 Td1120
																																																																																																																																						Put Ta1114 Ti1115 Td1121
																																																																																																																																			Let Tu135
																																																																																																																																				Let Ta1122
																																																																																																																																					ExtArray 142
																																																																																																																																					Let Ti1123
																																																																																																																																						Int:1
																																																																																																																																						Let Td1129
																																																																																																																																							Let Td1128
																																																																																																																																								Let Td1127
																																																																																																																																									Let Td1124
																																																																																																																																										App o_param_r3m 
																																																																																																																																										Let Td1126
																																																																																																																																											Let Td1125
																																																																																																																																												App o_param_r1m 
																																																																																																																																												FMul p2 Td1125
																																																																																																																																											FDiv p0 Td1124 Td1126
																																																																																																																																									App fhalfTd1127 
																																																																																																																																								FAdd d1 Td1128
																																																																																																																																							Put Ta1122 Ti1123 Td1129
																																																																																																																																				Let Ta1130
																																																																																																																																					ExtArray 142
																																																																																																																																					Let Ti1131
																																																																																																																																						Int:2
																																																																																																																																						Let Td1137
																																																																																																																																							Let Td1136
																																																																																																																																								Let Td1135
																																																																																																																																									Let Td1132
																																																																																																																																										App o_param_r2m 
																																																																																																																																										Let Td1134
																																																																																																																																											Let Td1133
																																																																																																																																												App o_param_r1m 
																																																																																																																																												FMul p1 Td1133
																																																																																																																																											FDiv p0 Td1132 Td1134
																																																																																																																																									App fhalfTd1135 
																																																																																																																																								FAdd d2 Td1136
																																																																																																																																							Put Ta1130 Ti1131 Td1137
																																																																																																																															Let Ta1138
																																																																																																																																ExtArray 142
																																																																																																																																Let Tb1139
																																																																																																																																	App o_isinvertm 
																																																																																																																																	App vecunit_sgnTa1138 Tb1139 
																																																																																																																								LetRec get_nvector m dirvec 
																																																																																																																									Let m_shape
																																																																																																																										App o_formm 
																																																																																																																										Let Ti1089
																																																																																																																											Int:1
																																																																																																																											IfEq m_shape Ti1089
																																																																																																																												App get_nvector_rectdirvec 
																																																																																																																												Let Ti1090
																																																																																																																													Int:2
																																																																																																																													IfEq m_shape Ti1090
																																																																																																																														App get_nvector_planem 
																																																																																																																														App get_nvector_secondm 
																																																																																																																									LetRec utexture m p 
																																																																																																																										Let m_tex
																																																																																																																											App o_texturetypem 
																																																																																																																											Let Tu142
																																																																																																																												Let Ta963
																																																																																																																													ExtArray 145
																																																																																																																													Let Ti964
																																																																																																																														Int:0
																																																																																																																														Let Td965
																																																																																																																															App o_color_redm 
																																																																																																																															Put Ta963 Ti964 Td965
																																																																																																																												Let Tu141
																																																																																																																													Let Ta966
																																																																																																																														ExtArray 145
																																																																																																																														Let Ti967
																																																																																																																															Int:1
																																																																																																																															Let Td968
																																																																																																																																App o_color_greenm 
																																																																																																																																Put Ta966 Ti967 Td968
																																																																																																																													Let Tu140
																																																																																																																														Let Ta969
																																																																																																																															ExtArray 145
																																																																																																																															Let Ti970
																																																																																																																																Int:2
																																																																																																																																Let Td971
																																																																																																																																	App o_color_bluem 
																																																																																																																																	Put Ta969 Ti970 Td971
																																																																																																																														Let Ti972
																																																																																																																															Int:1
																																																																																																																															IfEq m_tex Ti972
																																																																																																																																Let w1
																																																																																																																																	Let Td974
																																																																																																																																		Let Ti973
																																																																																																																																			Int:0
																																																																																																																																			Get p Ti973
																																																																																																																																		Let Td975
																																																																																																																																			App o_param_xm 
																																																																																																																																			FSub Td974 Td975
																																																																																																																																	Let flag1
																																																																																																																																		Let d1
																																																																																																																																			Let Td978
																																																																																																																																				Let Td977
																																																																																																																																					Let Td976
																																																																																																																																						Float:0.050000
																																																																																																																																						FMul w1 Td976
																																																																																																																																					App floorTd977 
																																																																																																																																				Let Td979
																																																																																																																																					Float:20.000000
																																																																																																																																					FMul Td978 Td979
																																																																																																																																			Let Td980
																																																																																																																																				Float:10.000000
																																																																																																																																				Let Td981
																																																																																																																																					FSub w1 d1
																																																																																																																																					IfLE Td980 Td981
																																																																																																																																						Int:0
																																																																																																																																						Int:1
																																																																																																																																		Let w3
																																																																																																																																			Let Td983
																																																																																																																																				Let Ti982
																																																																																																																																					Int:2
																																																																																																																																					Get p Ti982
																																																																																																																																				Let Td984
																																																																																																																																					App o_param_zm 
																																																																																																																																					FSub Td983 Td984
																																																																																																																																			Let flag2
																																																																																																																																				Let d2
																																																																																																																																					Let Td987
																																																																																																																																						Let Td986
																																																																																																																																							Let Td985
																																																																																																																																								Float:0.050000
																																																																																																																																								FMul w3 Td985
																																																																																																																																							App floorTd986 
																																																																																																																																						Let Td988
																																																																																																																																							Float:20.000000
																																																																																																																																							FMul Td987 Td988
																																																																																																																																					Let Td989
																																																																																																																																						Float:10.000000
																																																																																																																																						Let Td990
																																																																																																																																							FSub w3 d2
																																																																																																																																							IfLE Td989 Td990
																																																																																																																																								Int:0
																																																																																																																																								Int:1
																																																																																																																																				Let Ta991
																																																																																																																																					ExtArray 145
																																																																																																																																					Let Ti992
																																																																																																																																						Int:1
																																																																																																																																						Let Td996
																																																																																																																																							Let Ti993
																																																																																																																																								Int:0
																																																																																																																																								IfEq flag1 Ti993
																																																																																																																																									Let Ti994
																																																																																																																																										Int:0
																																																																																																																																										IfEq flag2 Ti994
																																																																																																																																											Float:255.000000
																																																																																																																																											Float:0.000000
																																																																																																																																									Let Ti995
																																																																																																																																										Int:0
																																																																																																																																										IfEq flag2 Ti995
																																																																																																																																											Float:0.000000
																																																																																																																																											Float:255.000000
																																																																																																																																							Put Ta991 Ti992 Td996
																																																																																																																																Let Ti997
																																																																																																																																	Int:2
																																																																																																																																	IfEq m_tex Ti997
																																																																																																																																		Let w2
																																																																																																																																			Let Td1002
																																																																																																																																				Let Td1001
																																																																																																																																					Let Td999
																																																																																																																																						Let Ti998
																																																																																																																																							Int:1
																																																																																																																																							Get p Ti998
																																																																																																																																						Let Td1000
																																																																																																																																							Float:0.250000
																																																																																																																																							FMul Td999 Td1000
																																																																																																																																					App sinTd1001 
																																																																																																																																				App fsqrTd1002 
																																																																																																																																			Let Tu138
																																																																																																																																				Let Ta1003
																																																																																																																																					ExtArray 145
																																																																																																																																					Let Ti1004
																																																																																																																																						Int:0
																																																																																																																																						Let Td1006
																																																																																																																																							Let Td1005
																																																																																																																																								Float:255.000000
																																																																																																																																								FMul Td1005 w2
																																																																																																																																							Put Ta1003 Ti1004 Td1006
																																																																																																																																				Let Ta1007
																																																																																																																																					ExtArray 145
																																																																																																																																					Let Ti1008
																																																																																																																																						Int:1
																																																																																																																																						Let Td1012
																																																																																																																																							Let Td1009
																																																																																																																																								Float:255.000000
																																																																																																																																								Let Td1011
																																																																																																																																									Let Td1010
																																																																																																																																										Float:1.000000
																																																																																																																																										FSub Td1010 w2
																																																																																																																																									FMul Td1009 Td1011
																																																																																																																																							Put Ta1007 Ti1008 Td1012
																																																																																																																																		Let Ti1013
																																																																																																																																			Int:3
																																																																																																																																			IfEq m_tex Ti1013
																																																																																																																																				Let w1
																																																																																																																																					Let Td1015
																																																																																																																																						Let Ti1014
																																																																																																																																							Int:0
																																																																																																																																							Get p Ti1014
																																																																																																																																						Let Td1016
																																																																																																																																							App o_param_xm 
																																																																																																																																							FSub Td1015 Td1016
																																																																																																																																					Let w3
																																																																																																																																						Let Td1018
																																																																																																																																							Let Ti1017
																																																																																																																																								Int:2
																																																																																																																																								Get p Ti1017
																																																																																																																																							Let Td1019
																																																																																																																																								App o_param_zm 
																																																																																																																																								FSub Td1018 Td1019
																																																																																																																																						Let w2
																																																																																																																																							Let Td1024
																																																																																																																																								Let Td1022
																																																																																																																																									Let Td1020
																																																																																																																																										App fsqrw1 
																																																																																																																																										Let Td1021
																																																																																																																																											App fsqrw3 
																																																																																																																																											FAdd Td1020 Td1021
																																																																																																																																									Let Td1023
																																																																																																																																										Float:10.000000
																																																																																																																																										FDiv Td1022 Td1023
																																																																																																																																								sqrt Td1024
																																																																																																																																							Let w4
																																																																																																																																								Let Td1026
																																																																																																																																									Let Td1025
																																																																																																																																										App floorw2 
																																																																																																																																										FSub w2 Td1025
																																																																																																																																									Let Td1027
																																																																																																																																										Float:3.141593
																																																																																																																																										FMul Td1026 Td1027
																																																																																																																																								Let cws
																																																																																																																																									Let Td1028
																																																																																																																																										App cosw4 
																																																																																																																																										App fsqrTd1028 
																																																																																																																																									Let Tu139
																																																																																																																																										Let Ta1029
																																																																																																																																											ExtArray 145
																																																																																																																																											Let Ti1030
																																																																																																																																												Int:1
																																																																																																																																												Let Td1032
																																																																																																																																													Let Td1031
																																																																																																																																														Float:255.000000
																																																																																																																																														FMul cws Td1031
																																																																																																																																													Put Ta1029 Ti1030 Td1032
																																																																																																																																										Let Ta1033
																																																																																																																																											ExtArray 145
																																																																																																																																											Let Ti1034
																																																																																																																																												Int:2
																																																																																																																																												Let Td1038
																																																																																																																																													Let Td1036
																																																																																																																																														Let Td1035
																																																																																																																																															Float:1.000000
																																																																																																																																															FSub Td1035 cws
																																																																																																																																														Let Td1037
																																																																																																																																															Float:255.000000
																																																																																																																																															FMul Td1036 Td1037
																																																																																																																																													Put Ta1033 Ti1034 Td1038
																																																																																																																																				Let Ti1039
																																																																																																																																					Int:4
																																																																																																																																					IfEq m_tex Ti1039
																																																																																																																																						Let w1
																																																																																																																																							Let Td1043
																																																																																																																																								Let Td1041
																																																																																																																																									Let Ti1040
																																																																																																																																										Int:0
																																																																																																																																										Get p Ti1040
																																																																																																																																									Let Td1042
																																																																																																																																										App o_param_xm 
																																																																																																																																										FSub Td1041 Td1042
																																																																																																																																								Let Td1045
																																																																																																																																									Let Td1044
																																																																																																																																										App o_param_am 
																																																																																																																																										sqrt Td1044
																																																																																																																																									FMul Td1043 Td1045
																																																																																																																																							Let w3
																																																																																																																																								Let Td1049
																																																																																																																																									Let Td1047
																																																																																																																																										Let Ti1046
																																																																																																																																											Int:2
																																																																																																																																											Get p Ti1046
																																																																																																																																										Let Td1048
																																																																																																																																											App o_param_zm 
																																																																																																																																											FSub Td1047 Td1048
																																																																																																																																									Let Td1051
																																																																																																																																										Let Td1050
																																																																																																																																											App o_param_cm 
																																																																																																																																											sqrt Td1050
																																																																																																																																										FMul Td1049 Td1051
																																																																																																																																								Let w4
																																																																																																																																									Let Td1052
																																																																																																																																										App fsqrw1 
																																																																																																																																										Let Td1053
																																																																																																																																											App fsqrw3 
																																																																																																																																											FAdd Td1052 Td1053
																																																																																																																																									Let w7
																																																																																																																																										Let Td1054
																																																																																																																																											Float:0.000100
																																																																																																																																											IfFAbsLE Td1054 w1
																																																																																																																																												Let w5
																																																																																																																																													Let Td1055
																																																																																																																																														FDiv w3 w1
																																																																																																																																														fabs Td1055
																																																																																																																																													Let Td1058
																																																																																																																																														Let Td1056
																																																																																																																																															App atanw5 
																																																																																																																																															Let Td1057
																																																																																																																																																Float:30.000000
																																																																																																																																																FMul Td1056 Td1057
																																																																																																																																														Let Td1059
																																																																																																																																															Float:3.141593
																																																																																																																																															FDiv Td1058 Td1059
																																																																																																																																												Float:15.000000
																																																																																																																																										Let w9
																																																																																																																																											Let Td1060
																																																																																																																																												App floorw7 
																																																																																																																																												FSub w7 Td1060
																																																																																																																																											Let w2
																																																																																																																																												Let Td1064
																																																																																																																																													Let Td1062
																																																																																																																																														Let Ti1061
																																																																																																																																															Int:1
																																																																																																																																															Get p Ti1061
																																																																																																																																														Let Td1063
																																																																																																																																															App o_param_ym 
																																																																																																																																															FSub Td1062 Td1063
																																																																																																																																													Let Td1066
																																																																																																																																														Let Td1065
																																																																																																																																															App o_param_bm 
																																																																																																																																															sqrt Td1065
																																																																																																																																														FMul Td1064 Td1066
																																																																																																																																												Let w8
																																																																																																																																													Let Td1067
																																																																																																																																														Float:0.000100
																																																																																																																																														IfFAbsLE Td1067 w4
																																																																																																																																															Let w6
																																																																																																																																																Let Td1068
																																																																																																																																																	FDiv w2 w4
																																																																																																																																																	fabs Td1068
																																																																																																																																																Let Td1071
																																																																																																																																																	Let Td1069
																																																																																																																																																		App atanw6 
																																																																																																																																																		Let Td1070
																																																																																																																																																			Float:30.000000
																																																																																																																																																			FMul Td1069 Td1070
																																																																																																																																																	Let Td1072
																																																																																																																																																		Float:3.141593
																																																																																																																																																		FDiv Td1071 Td1072
																																																																																																																																															Float:15.000000
																																																																																																																																													Let w10
																																																																																																																																														Let Td1073
																																																																																																																																															App floorw8 
																																																																																																																																															FSub w8 Td1073
																																																																																																																																														Let w11
																																																																																																																																															Let Td1078
																																																																																																																																																Let Td1074
																																																																																																																																																	Float:0.150000
																																																																																																																																																	Let Td1077
																																																																																																																																																		Let Td1076
																																																																																																																																																			Let Td1075
																																																																																																																																																				Float:0.500000
																																																																																																																																																				FSub Td1075 w9
																																																																																																																																																			App fsqrTd1076 
																																																																																																																																																		FSub Td1074 Td1077
																																																																																																																																																Let Td1081
																																																																																																																																																	Let Td1080
																																																																																																																																																		Let Td1079
																																																																																																																																																			Float:0.500000
																																																																																																																																																			FSub Td1079 w10
																																																																																																																																																		App fsqrTd1080 
																																																																																																																																																	FSub Td1078 Td1081
																																																																																																																																															Let w12
																																																																																																																																																Let Td1082
																																																																																																																																																	Float:0.000000
																																																																																																																																																	IfLE Td1082 w11
																																																																																																																																																		Var w11
																																																																																																																																																		Float:0.000000
																																																																																																																																																Let Ta1083
																																																																																																																																																	ExtArray 145
																																																																																																																																																	Let Ti1084
																																																																																																																																																		Int:2
																																																																																																																																																		Let Td1088
																																																																																																																																																			Let Td1086
																																																																																																																																																				Let Td1085
																																																																																																																																																					Float:255.000000
																																																																																																																																																					FMul Td1085 w12
																																																																																																																																																				Let Td1087
																																																																																																																																																					Float:0.300000
																																																																																																																																																					FDiv Td1086 Td1087
																																																																																																																																																			Put Ta1083 Ti1084 Td1088
																																																																																																																																						Unit
																																																																																																																										LetRec add_light bright hilight hilight_scale 
																																																																																																																											Let Tu145
																																																																																																																												Let Td939
																																																																																																																													Float:0.000000
																																																																																																																													IfLE bright Td939
																																																																																																																														Unit
																																																																																																																														Let Ta940
																																																																																																																															ExtArray 151
																																																																																																																															Let Ta941
																																																																																																																																ExtArray 145
																																																																																																																																App vecaccumTa940 bright Ta941 
																																																																																																																												Let Td942
																																																																																																																													Float:0.000000
																																																																																																																													IfLE hilight Td942
																																																																																																																														Unit
																																																																																																																														Let ihl
																																																																																																																															Let Td944
																																																																																																																																Let Td943
																																																																																																																																	App fsqrhilight 
																																																																																																																																	App fsqrTd943 
																																																																																																																																FMul Td944 hilight_scale
																																																																																																																															Let Tu144
																																																																																																																																Let Ta945
																																																																																																																																	ExtArray 151
																																																																																																																																	Let Ti946
																																																																																																																																		Int:0
																																																																																																																																		Let Td950
																																																																																																																																			Let Td949
																																																																																																																																				Let Ta947
																																																																																																																																					ExtArray 151
																																																																																																																																					Let Ti948
																																																																																																																																						Int:0
																																																																																																																																						Get Ta947 Ti948
																																																																																																																																				FAdd Td949 ihl
																																																																																																																																			Put Ta945 Ti946 Td950
																																																																																																																																Let Tu143
																																																																																																																																	Let Ta951
																																																																																																																																		ExtArray 151
																																																																																																																																		Let Ti952
																																																																																																																																			Int:1
																																																																																																																																			Let Td956
																																																																																																																																				Let Td955
																																																																																																																																					Let Ta953
																																																																																																																																						ExtArray 151
																																																																																																																																						Let Ti954
																																																																																																																																							Int:1
																																																																																																																																							Get Ta953 Ti954
																																																																																																																																					FAdd Td955 ihl
																																																																																																																																				Put Ta951 Ti952 Td956
																																																																																																																																	Let Ta957
																																																																																																																																		ExtArray 151
																																																																																																																																		Let Ti958
																																																																																																																																			Int:2
																																																																																																																																			Let Td962
																																																																																																																																				Let Td961
																																																																																																																																					Let Ta959
																																																																																																																																						ExtArray 151
																																																																																																																																						Let Ti960
																																																																																																																																							Int:2
																																																																																																																																							Get Ta959 Ti960
																																																																																																																																					FAdd Td961 ihl
																																																																																																																																				Put Ta957 Ti958 Td962
																																																																																																																											LetRec trace_reflections index diffuse hilight_scale dirvec 
																																																																																																																												Let Ti914
																																																																																																																													Int:0
																																																																																																																													IfLE Ti914 index
																																																																																																																														Let rinfo
																																																																																																																															Let Ta915
																																																																																																																																ExtArray 254
																																																																																																																																Get Ta915 index
																																																																																																																															Let dvec
																																																																																																																																App r_dvecrinfo 
																																																																																																																																Let Tu146
																																																																																																																																	Let Tb916
																																																																																																																																		App judge_intersection_fastdvec 
																																																																																																																																		Let Ti917
																																																																																																																																			Int:0
																																																																																																																																			IfEq Tb916 Ti917
																																																																																																																																				Unit
																																																																																																																																				Let surface_id
																																																																																																																																					Let Ti921
																																																																																																																																						Let Ti920
																																																																																																																																							Let Ta918
																																																																																																																																								ExtArray 141
																																																																																																																																								Let Ti919
																																																																																																																																									Int:0
																																																																																																																																									Get Ta918 Ti919
																																																																																																																																							ShiftL2 Ti920
																																																																																																																																						Let Ti924
																																																																																																																																							Let Ta922
																																																																																																																																								ExtArray 136
																																																																																																																																								Let Ti923
																																																																																																																																									Int:0
																																																																																																																																									Get Ta922 Ti923
																																																																																																																																							Add Ti921 Ti924
																																																																																																																																					Let Ti925
																																																																																																																																						App r_surface_idrinfo 
																																																																																																																																						IfEq surface_id Ti925
																																																																																																																																							Let Tb930
																																																																																																																																								Let Ti926
																																																																																																																																									Int:0
																																																																																																																																									Let Ta929
																																																																																																																																										Let Ta927
																																																																																																																																											ExtArray 134
																																																																																																																																											Let Ti928
																																																																																																																																												Int:0
																																																																																																																																												Get Ta927 Ti928
																																																																																																																																										App shadow_check_one_or_matrixTi926 Ta929 
																																																																																																																																								Let Ti931
																																																																																																																																									Int:0
																																																																																																																																									IfEq Tb930 Ti931
																																																																																																																																										Let p
																																																																																																																																											Let Ta932
																																																																																																																																												ExtArray 142
																																																																																																																																												Let Ta933
																																																																																																																																													App d_vecdvec 
																																																																																																																																													App veciprodTa932 Ta933 
																																																																																																																																											Let scale
																																																																																																																																												App r_brightrinfo 
																																																																																																																																												Let bright
																																																																																																																																													Let Td934
																																																																																																																																														FMul scale diffuse
																																																																																																																																														FMul Td934 p
																																																																																																																																													Let hilight
																																																																																																																																														Let Td936
																																																																																																																																															Let Ta935
																																																																																																																																																App d_vecdvec 
																																																																																																																																																App veciproddirvec Ta935 
																																																																																																																																															FMul scale Td936
																																																																																																																																														App add_lightbright hilight hilight_scale 
																																																																																																																																										Unit
																																																																																																																																							Unit
																																																																																																																																	Let Ti938
																																																																																																																																		Let Ti937
																																																																																																																																			Int:1
																																																																																																																																			Sub index Ti937
																																																																																																																																		App trace_reflectionsTi938 diffuse hilight_scale dirvec 
																																																																																																																														Unit
																																																																																																																												LetRec trace_ray nref energy dirvec pixel dist 
																																																																																																																													Let Ti815
																																																																																																																														Int:4
																																																																																																																														IfLE nref Ti815
																																																																																																																															Let surface_ids
																																																																																																																																App p_surface_idspixel 
																																																																																																																																Let Tb816
																																																																																																																																	App judge_intersectiondirvec 
																																																																																																																																	Let Ti817
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb816 Ti817
																																																																																																																																			Let Tu163
																																																																																																																																				Let Ti819
																																																																																																																																					Let Ti818
																																																																																																																																						Int:1
																																																																																																																																						Neg Ti818
																																																																																																																																					Put surface_ids nref Ti819
																																																																																																																																				Let Ti820
																																																																																																																																					Int:0
																																																																																																																																					IfEq nref Ti820
																																																																																																																																						Unit
																																																																																																																																						Let hl
																																																																																																																																							Let Td822
																																																																																																																																								Let Ta821
																																																																																																																																									ExtArray 78
																																																																																																																																									App veciproddirvec Ta821 
																																																																																																																																								App fnegTd822 
																																																																																																																																							Let Td823
																																																																																																																																								Float:0.000000
																																																																																																																																								IfLE hl Td823
																																																																																																																																									Unit
																																																																																																																																									Let ihl
																																																																																																																																										Let Td826
																																																																																																																																											Let Td825
																																																																																																																																												Let Td824
																																																																																																																																													App fsqrhl 
																																																																																																																																													FMul Td824 hl
																																																																																																																																												FMul Td825 energy
																																																																																																																																											Let Td829
																																																																																																																																												Let Ta827
																																																																																																																																													ExtArray 81
																																																																																																																																													Let Ti828
																																																																																																																																														Int:0
																																																																																																																																														Get Ta827 Ti828
																																																																																																																																												FMul Td826 Td829
																																																																																																																																										Let Tu162
																																																																																																																																											Let Ta830
																																																																																																																																												ExtArray 151
																																																																																																																																												Let Ti831
																																																																																																																																													Int:0
																																																																																																																																													Let Td835
																																																																																																																																														Let Td834
																																																																																																																																															Let Ta832
																																																																																																																																																ExtArray 151
																																																																																																																																																Let Ti833
																																																																																																																																																	Int:0
																																																																																																																																																	Get Ta832 Ti833
																																																																																																																																															FAdd Td834 ihl
																																																																																																																																														Put Ta830 Ti831 Td835
																																																																																																																																											Let Tu161
																																																																																																																																												Let Ta836
																																																																																																																																													ExtArray 151
																																																																																																																																													Let Ti837
																																																																																																																																														Int:1
																																																																																																																																														Let Td841
																																																																																																																																															Let Td840
																																																																																																																																																Let Ta838
																																																																																																																																																	ExtArray 151
																																																																																																																																																	Let Ti839
																																																																																																																																																		Int:1
																																																																																																																																																		Get Ta838 Ti839
																																																																																																																																																FAdd Td840 ihl
																																																																																																																																															Put Ta836 Ti837 Td841
																																																																																																																																												Let Ta842
																																																																																																																																													ExtArray 151
																																																																																																																																													Let Ti843
																																																																																																																																														Int:2
																																																																																																																																														Let Td847
																																																																																																																																															Let Td846
																																																																																																																																																Let Ta844
																																																																																																																																																	ExtArray 151
																																																																																																																																																	Let Ti845
																																																																																																																																																		Int:2
																																																																																																																																																		Get Ta844 Ti845
																																																																																																																																																FAdd Td846 ihl
																																																																																																																																															Put Ta842 Ti843 Td847
																																																																																																																																			Let obj_id
																																																																																																																																				Let Ta848
																																																																																																																																					ExtArray 141
																																																																																																																																					Let Ti849
																																																																																																																																						Int:0
																																																																																																																																						Get Ta848 Ti849
																																																																																																																																				Let obj
																																																																																																																																					Let Ta850
																																																																																																																																						ExtArray 12
																																																																																																																																						Get Ta850 obj_id
																																																																																																																																					Let m_surface
																																																																																																																																						App o_reflectiontypeobj 
																																																																																																																																						Let diffuse
																																																																																																																																							Let Td851
																																																																																																																																								App o_diffuseobj 
																																																																																																																																								FMul Td851 energy
																																																																																																																																							Let Tu160
																																																																																																																																								App get_nvectorobj dirvec 
																																																																																																																																								Let Tu159
																																																																																																																																									Let Ta852
																																																																																																																																										ExtArray 159
																																																																																																																																										Let Ta853
																																																																																																																																											ExtArray 138
																																																																																																																																											App veccpyTa852 Ta853 
																																																																																																																																									Let Tu158
																																																																																																																																										Let Ta854
																																																																																																																																											ExtArray 138
																																																																																																																																											App utextureobj Ta854 
																																																																																																																																										Let Tu157
																																																																																																																																											Let Ti859
																																																																																																																																												Let Ti855
																																																																																																																																													ShiftL2 obj_id
																																																																																																																																													Let Ti858
																																																																																																																																														Let Ta856
																																																																																																																																															ExtArray 136
																																																																																																																																															Let Ti857
																																																																																																																																																Int:0
																																																																																																																																																Get Ta856 Ti857
																																																																																																																																														Add Ti855 Ti858
																																																																																																																																												Put surface_ids nref Ti859
																																																																																																																																											Let intersection_points
																																																																																																																																												App p_intersection_pointspixel 
																																																																																																																																												Let Tu156
																																																																																																																																													Let Ta860
																																																																																																																																														Get intersection_points nref
																																																																																																																																														Let Ta861
																																																																																																																																															ExtArray 138
																																																																																																																																															App veccpyTa860 Ta861 
																																																																																																																																													Let calc_diffuse
																																																																																																																																														App p_calc_diffusepixel 
																																																																																																																																														Let Tu155
																																																																																																																																															Let Td862
																																																																																																																																																Float:0.500000
																																																																																																																																																Let Td863
																																																																																																																																																	App o_diffuseobj 
																																																																																																																																																	IfLE Td862 Td863
																																																																																																																																																		Let Tu149
																																																																																																																																																			Let Ti864
																																																																																																																																																				Int:1
																																																																																																																																																				Put calc_diffuse nref Ti864
																																																																																																																																																			Let energya
																																																																																																																																																				App p_energypixel 
																																																																																																																																																				Let Tu148
																																																																																																																																																					Let Ta865
																																																																																																																																																						Get energya nref
																																																																																																																																																						Let Ta866
																																																																																																																																																							ExtArray 145
																																																																																																																																																							App veccpyTa865 Ta866 
																																																																																																																																																					Let Tu147
																																																																																																																																																						Let Ta867
																																																																																																																																																							Get energya nref
																																																																																																																																																							Let Td871
																																																																																																																																																								Let Td870
																																																																																																																																																									Let Td868
																																																																																																																																																										Float:1.000000
																																																																																																																																																										Let Td869
																																																																																																																																																											Float:256.000000
																																																																																																																																																											FDiv Td868 Td869
																																																																																																																																																									FMul Td870 diffuse
																																																																																																																																																								App vecscaleTa867 Td871 
																																																																																																																																																						Let nvectors
																																																																																																																																																							App p_nvectorspixel 
																																																																																																																																																							Let Ta872
																																																																																																																																																								Get nvectors nref
																																																																																																																																																								Let Ta873
																																																																																																																																																									ExtArray 142
																																																																																																																																																									App veccpyTa872 Ta873 
																																																																																																																																																		Let Ti874
																																																																																																																																																			Int:0
																																																																																																																																																			Put calc_diffuse nref Ti874
																																																																																																																																															Let w
																																																																																																																																																Let Td875
																																																																																																																																																	Float:-2.000000
																																																																																																																																																	Let Td877
																																																																																																																																																		Let Ta876
																																																																																																																																																			ExtArray 142
																																																																																																																																																			App veciproddirvec Ta876 
																																																																																																																																																		FMul Td875 Td877
																																																																																																																																																Let Tu154
																																																																																																																																																	Let Ta878
																																																																																																																																																		ExtArray 142
																																																																																																																																																		App vecaccumdirvec w Ta878 
																																																																																																																																																	Let hilight_scale
																																																																																																																																																		Let Td879
																																																																																																																																																			App o_hilightobj 
																																																																																																																																																			FMul energy Td879
																																																																																																																																																		Let Tu153
																																																																																																																																																			Let Tb884
																																																																																																																																																				Let Ti880
																																																																																																																																																					Int:0
																																																																																																																																																					Let Ta883
																																																																																																																																																						Let Ta881
																																																																																																																																																							ExtArray 134
																																																																																																																																																							Let Ti882
																																																																																																																																																								Int:0
																																																																																																																																																								Get Ta881 Ti882
																																																																																																																																																						App shadow_check_one_or_matrixTi880 Ta883 
																																																																																																																																																				Let Ti885
																																																																																																																																																					Int:0
																																																																																																																																																					IfEq Tb884 Ti885
																																																																																																																																																						Let bright
																																																																																																																																																							Let Td889
																																																																																																																																																								Let Td888
																																																																																																																																																									Let Ta886
																																																																																																																																																										ExtArray 142
																																																																																																																																																										Let Ta887
																																																																																																																																																											ExtArray 78
																																																																																																																																																											App veciprodTa886 Ta887 
																																																																																																																																																									App fnegTd888 
																																																																																																																																																								FMul Td889 diffuse
																																																																																																																																																							Let hilight
																																																																																																																																																								Let Td891
																																																																																																																																																									Let Ta890
																																																																																																																																																										ExtArray 78
																																																																																																																																																										App veciproddirvec Ta890 
																																																																																																																																																									App fnegTd891 
																																																																																																																																																								App add_lightbright hilight hilight_scale 
																																																																																																																																																						Unit
																																																																																																																																																			Let Tu152
																																																																																																																																																				Let Ta892
																																																																																																																																																					ExtArray 138
																																																																																																																																																					App setup_startpTa892 
																																																																																																																																																				Let Tu151
																																																																																																																																																					Let Ti897
																																																																																																																																																						Let Ti895
																																																																																																																																																							Let Ta893
																																																																																																																																																								ExtArray 434
																																																																																																																																																								Let Ti894
																																																																																																																																																									Int:0
																																																																																																																																																									Get Ta893 Ti894
																																																																																																																																																							Let Ti896
																																																																																																																																																								Int:1
																																																																																																																																																								Sub Ti895 Ti896
																																																																																																																																																						App trace_reflectionsTi897 diffuse hilight_scale dirvec 
																																																																																																																																																					Let Td898
																																																																																																																																																						Float:0.100000
																																																																																																																																																						IfLE energy Td898
																																																																																																																																																							Unit
																																																																																																																																																							Let Tu150
																																																																																																																																																								Let Ti899
																																																																																																																																																									Int:4
																																																																																																																																																									IfLE Ti899 nref
																																																																																																																																																										Unit
																																																																																																																																																										Let Ti901
																																																																																																																																																											Let Ti900
																																																																																																																																																												Int:1
																																																																																																																																																												Add nref Ti900
																																																																																																																																																											Let Ti903
																																																																																																																																																												Let Ti902
																																																																																																																																																													Int:1
																																																																																																																																																													Neg Ti902
																																																																																																																																																												Put surface_ids Ti901 Ti903
																																																																																																																																																								Let Ti904
																																																																																																																																																									Int:2
																																																																																																																																																									IfEq m_surface Ti904
																																																																																																																																																										Let energy2
																																																																																																																																																											Let Td907
																																																																																																																																																												Let Td905
																																																																																																																																																													Float:1.000000
																																																																																																																																																													Let Td906
																																																																																																																																																														App o_diffuseobj 
																																																																																																																																																														FSub Td905 Td906
																																																																																																																																																												FMul energy Td907
																																																																																																																																																											Let Ti909
																																																																																																																																																												Let Ti908
																																																																																																																																																													Int:1
																																																																																																																																																													Add nref Ti908
																																																																																																																																																												Let Td913
																																																																																																																																																													Let Td912
																																																																																																																																																														Let Ta910
																																																																																																																																																															ExtArray 137
																																																																																																																																																															Let Ti911
																																																																																																																																																																Int:0
																																																																																																																																																																Get Ta910 Ti911
																																																																																																																																																														FAdd dist Td912
																																																																																																																																																													App trace_rayTi909 energy2 dirvec pixel Td913 
																																																																																																																																																										Unit
																																																																																																																															Unit
																																																																																																																													LetRec trace_diffuse_ray dirvec energy 
																																																																																																																														Let Tb792
																																																																																																																															App judge_intersection_fastdirvec 
																																																																																																																															Let Ti793
																																																																																																																																Int:0
																																																																																																																																IfEq Tb792 Ti793
																																																																																																																																	Unit
																																																																																																																																	Let obj
																																																																																																																																		Let Ta794
																																																																																																																																			ExtArray 12
																																																																																																																																			Let Ti797
																																																																																																																																				Let Ta795
																																																																																																																																					ExtArray 141
																																																																																																																																					Let Ti796
																																																																																																																																						Int:0
																																																																																																																																						Get Ta795 Ti796
																																																																																																																																				Get Ta794 Ti797
																																																																																																																																		Let Tu165
																																																																																																																																			Let Ta798
																																																																																																																																				App d_vecdirvec 
																																																																																																																																				App get_nvectorobj Ta798 
																																																																																																																																			Let Tu164
																																																																																																																																				Let Ta799
																																																																																																																																					ExtArray 138
																																																																																																																																					App utextureobj Ta799 
																																																																																																																																				Let Tb804
																																																																																																																																					Let Ti800
																																																																																																																																						Int:0
																																																																																																																																						Let Ta803
																																																																																																																																							Let Ta801
																																																																																																																																								ExtArray 134
																																																																																																																																								Let Ti802
																																																																																																																																									Int:0
																																																																																																																																									Get Ta801 Ti802
																																																																																																																																							App shadow_check_one_or_matrixTi800 Ta803 
																																																																																																																																					Let Ti805
																																																																																																																																						Int:0
																																																																																																																																						IfEq Tb804 Ti805
																																																																																																																																							Let br
																																																																																																																																								Let Td808
																																																																																																																																									Let Ta806
																																																																																																																																										ExtArray 142
																																																																																																																																										Let Ta807
																																																																																																																																											ExtArray 78
																																																																																																																																											App veciprodTa806 Ta807 
																																																																																																																																									App fnegTd808 
																																																																																																																																								Let bright
																																																																																																																																									Let Td809
																																																																																																																																										Float:0.000000
																																																																																																																																										IfLE br Td809
																																																																																																																																											Float:0.000000
																																																																																																																																											Var br
																																																																																																																																									Let Ta810
																																																																																																																																										ExtArray 148
																																																																																																																																										Let Td813
																																																																																																																																											Let Td811
																																																																																																																																												FMul energy bright
																																																																																																																																												Let Td812
																																																																																																																																													App o_diffuseobj 
																																																																																																																																													FMul Td811 Td812
																																																																																																																																											Let Ta814
																																																																																																																																												ExtArray 145
																																																																																																																																												App vecaccumTa810 Td813 Ta814 
																																																																																																																																							Unit
																																																																																																																														LetRec iter_trace_diffuse_rays dirvec_group nvector org index 
																																																																																																																															Let Ti778
																																																																																																																																Int:0
																																																																																																																																IfLE Ti778 index
																																																																																																																																	Let p
																																																																																																																																		Let Ta780
																																																																																																																																			Let Tt779
																																																																																																																																				Get dirvec_group index
																																																																																																																																				App d_vecTt779 
																																																																																																																																			App veciprodTa780 nvector 
																																																																																																																																		Let Tu166
																																																																																																																																			Let Td781
																																																																																																																																				Float:0.000000
																																																																																																																																				IfLE Td781 p
																																																																																																																																					Let Tt782
																																																																																																																																						Get dirvec_group index
																																																																																																																																						Let Td784
																																																																																																																																							Let Td783
																																																																																																																																								Float:150.000000
																																																																																																																																								FDiv p Td783
																																																																																																																																							App trace_diffuse_rayTt782 Td784 
																																																																																																																																					Let Tt787
																																																																																																																																						Let Ti786
																																																																																																																																							Let Ti785
																																																																																																																																								Int:1
																																																																																																																																								Add index Ti785
																																																																																																																																							Get dirvec_group Ti786
																																																																																																																																						Let Td789
																																																																																																																																							Let Td788
																																																																																																																																								Float:-150.000000
																																																																																																																																								FDiv p Td788
																																																																																																																																							App trace_diffuse_rayTt787 Td789 
																																																																																																																																			Let Ti791
																																																																																																																																				Let Ti790
																																																																																																																																					Int:2
																																																																																																																																					Sub index Ti790
																																																																																																																																				App iter_trace_diffuse_raysdirvec_group nvector org Ti791 
																																																																																																																																	Unit
																																																																																																																															LetRec trace_diffuse_rays dirvec_group nvector org 
																																																																																																																																Let Tu167
																																																																																																																																	App setup_startporg 
																																																																																																																																	Let Ti777
																																																																																																																																		Int:118
																																																																																																																																		App iter_trace_diffuse_raysdirvec_group nvector org Ti777 
																																																																																																																																LetRec trace_diffuse_ray_80percent group_id nvector org 
																																																																																																																																	Let Tu171
																																																																																																																																		Let Ti757
																																																																																																																																			Int:0
																																																																																																																																			IfEq group_id Ti757
																																																																																																																																				Unit
																																																																																																																																				Let Ta760
																																																																																																																																					Let Ta758
																																																																																																																																						ExtArray 179
																																																																																																																																						Let Ti759
																																																																																																																																							Int:0
																																																																																																																																							Get Ta758 Ti759
																																																																																																																																					App trace_diffuse_raysTa760 nvector org 
																																																																																																																																		Let Tu170
																																																																																																																																			Let Ti761
																																																																																																																																				Int:1
																																																																																																																																				IfEq group_id Ti761
																																																																																																																																					Unit
																																																																																																																																					Let Ta764
																																																																																																																																						Let Ta762
																																																																																																																																							ExtArray 179
																																																																																																																																							Let Ti763
																																																																																																																																								Int:1
																																																																																																																																								Get Ta762 Ti763
																																																																																																																																						App trace_diffuse_raysTa764 nvector org 
																																																																																																																																			Let Tu169
																																																																																																																																				Let Ti765
																																																																																																																																					Int:2
																																																																																																																																					IfEq group_id Ti765
																																																																																																																																						Unit
																																																																																																																																						Let Ta768
																																																																																																																																							Let Ta766
																																																																																																																																								ExtArray 179
																																																																																																																																								Let Ti767
																																																																																																																																									Int:2
																																																																																																																																									Get Ta766 Ti767
																																																																																																																																							App trace_diffuse_raysTa768 nvector org 
																																																																																																																																				Let Tu168
																																																																																																																																					Let Ti769
																																																																																																																																						Int:3
																																																																																																																																						IfEq group_id Ti769
																																																																																																																																							Unit
																																																																																																																																							Let Ta772
																																																																																																																																								Let Ta770
																																																																																																																																									ExtArray 179
																																																																																																																																									Let Ti771
																																																																																																																																										Int:3
																																																																																																																																										Get Ta770 Ti771
																																																																																																																																								App trace_diffuse_raysTa772 nvector org 
																																																																																																																																					Let Ti773
																																																																																																																																						Int:4
																																																																																																																																						IfEq group_id Ti773
																																																																																																																																							Unit
																																																																																																																																							Let Ta776
																																																																																																																																								Let Ta774
																																																																																																																																									ExtArray 179
																																																																																																																																									Let Ti775
																																																																																																																																										Int:4
																																																																																																																																										Get Ta774 Ti775
																																																																																																																																								App trace_diffuse_raysTa776 nvector org 
																																																																																																																																	LetRec calc_diffuse_using_1point pixel nref 
																																																																																																																																		Let ray20p
																																																																																																																																			App p_received_ray_20percentpixel 
																																																																																																																																			Let nvectors
																																																																																																																																				App p_nvectorspixel 
																																																																																																																																				Let intersection_points
																																																																																																																																					App p_intersection_pointspixel 
																																																																																																																																					Let energya
																																																																																																																																						App p_energypixel 
																																																																																																																																						Let Tu173
																																																																																																																																							Let Ta749
																																																																																																																																								ExtArray 148
																																																																																																																																								Let Ta750
																																																																																																																																									Get ray20p nref
																																																																																																																																									App veccpyTa749 Ta750 
																																																																																																																																							Let Tu172
																																																																																																																																								Let Ti751
																																																																																																																																									App p_group_idpixel 
																																																																																																																																									Let Ta752
																																																																																																																																										Get nvectors nref
																																																																																																																																										Let Ta753
																																																																																																																																											Get intersection_points nref
																																																																																																																																											App trace_diffuse_ray_80percentTi751 Ta752 Ta753 
																																																																																																																																								Let Ta754
																																																																																																																																									ExtArray 151
																																																																																																																																									Let Ta755
																																																																																																																																										Get energya nref
																																																																																																																																										Let Ta756
																																																																																																																																											ExtArray 148
																																																																																																																																											App vecaccumvTa754 Ta755 Ta756 
																																																																																																																																		LetRec calc_diffuse_using_5points x prev cur next nref 
																																																																																																																																			Let r_up
																																																																																																																																				Let Tt726
																																																																																																																																					Get prev x
																																																																																																																																					App p_received_ray_20percentTt726 
																																																																																																																																				Let r_left
																																																																																																																																					Let Tt729
																																																																																																																																						Let Ti728
																																																																																																																																							Let Ti727
																																																																																																																																								Int:1
																																																																																																																																								Sub x Ti727
																																																																																																																																							Get cur Ti728
																																																																																																																																						App p_received_ray_20percentTt729 
																																																																																																																																					Let r_center
																																																																																																																																						Let Tt730
																																																																																																																																							Get cur x
																																																																																																																																							App p_received_ray_20percentTt730 
																																																																																																																																						Let r_right
																																																																																																																																							Let Tt733
																																																																																																																																								Let Ti732
																																																																																																																																									Let Ti731
																																																																																																																																										Int:1
																																																																																																																																										Add x Ti731
																																																																																																																																									Get cur Ti732
																																																																																																																																								App p_received_ray_20percentTt733 
																																																																																																																																							Let r_down
																																																																																																																																								Let Tt734
																																																																																																																																									Get next x
																																																																																																																																									App p_received_ray_20percentTt734 
																																																																																																																																								Let Tu178
																																																																																																																																									Let Ta735
																																																																																																																																										ExtArray 148
																																																																																																																																										Let Ta736
																																																																																																																																											Get r_up nref
																																																																																																																																											App veccpyTa735 Ta736 
																																																																																																																																									Let Tu177
																																																																																																																																										Let Ta737
																																																																																																																																											ExtArray 148
																																																																																																																																											Let Ta738
																																																																																																																																												Get r_left nref
																																																																																																																																												App vecaddTa737 Ta738 
																																																																																																																																										Let Tu176
																																																																																																																																											Let Ta739
																																																																																																																																												ExtArray 148
																																																																																																																																												Let Ta740
																																																																																																																																													Get r_center nref
																																																																																																																																													App vecaddTa739 Ta740 
																																																																																																																																											Let Tu175
																																																																																																																																												Let Ta741
																																																																																																																																													ExtArray 148
																																																																																																																																													Let Ta742
																																																																																																																																														Get r_right nref
																																																																																																																																														App vecaddTa741 Ta742 
																																																																																																																																												Let Tu174
																																																																																																																																													Let Ta743
																																																																																																																																														ExtArray 148
																																																																																																																																														Let Ta744
																																																																																																																																															Get r_down nref
																																																																																																																																															App vecaddTa743 Ta744 
																																																																																																																																													Let energya
																																																																																																																																														Let Tt745
																																																																																																																																															Get cur x
																																																																																																																																															App p_energyTt745 
																																																																																																																																														Let Ta746
																																																																																																																																															ExtArray 151
																																																																																																																																															Let Ta747
																																																																																																																																																Get energya nref
																																																																																																																																																Let Ta748
																																																																																																																																																	ExtArray 148
																																																																																																																																																	App vecaccumvTa746 Ta747 Ta748 
																																																																																																																																			LetRec do_without_neighbors pixel nref 
																																																																																																																																				Let Ti719
																																																																																																																																					Int:4
																																																																																																																																					IfLE nref Ti719
																																																																																																																																						Let surface_ids
																																																																																																																																							App p_surface_idspixel 
																																																																																																																																							Let Ti720
																																																																																																																																								Int:0
																																																																																																																																								Let Ti721
																																																																																																																																									Get surface_ids nref
																																																																																																																																									IfLE Ti720 Ti721
																																																																																																																																										Let calc_diffuse
																																																																																																																																											App p_calc_diffusepixel 
																																																																																																																																											Let Tu179
																																																																																																																																												Let Tb722
																																																																																																																																													Get calc_diffuse nref
																																																																																																																																													Let Ti723
																																																																																																																																														Int:0
																																																																																																																																														IfEq Tb722 Ti723
																																																																																																																																															Unit
																																																																																																																																															App calc_diffuse_using_1pointpixel nref 
																																																																																																																																												Let Ti725
																																																																																																																																													Let Ti724
																																																																																																																																														Int:1
																																																																																																																																														Add nref Ti724
																																																																																																																																													App do_without_neighborspixel Ti725 
																																																																																																																																										Unit
																																																																																																																																						Unit
																																																																																																																																				LetRec neighbors_exist x y next 
																																																																																																																																					Let Ti709
																																																																																																																																						Let Ta707
																																																																																																																																							ExtArray 154
																																																																																																																																							Let Ti708
																																																																																																																																								Int:1
																																																																																																																																								Get Ta707 Ti708
																																																																																																																																						Let Ti711
																																																																																																																																							Let Ti710
																																																																																																																																								Int:1
																																																																																																																																								Add y Ti710
																																																																																																																																							IfLE Ti709 Ti711
																																																																																																																																								Int:0
																																																																																																																																								Let Ti712
																																																																																																																																									Int:0
																																																																																																																																									IfLE y Ti712
																																																																																																																																										Int:0
																																																																																																																																										Let Ti715
																																																																																																																																											Let Ta713
																																																																																																																																												ExtArray 154
																																																																																																																																												Let Ti714
																																																																																																																																													Int:0
																																																																																																																																													Get Ta713 Ti714
																																																																																																																																											Let Ti717
																																																																																																																																												Let Ti716
																																																																																																																																													Int:1
																																																																																																																																													Add x Ti716
																																																																																																																																												IfLE Ti715 Ti717
																																																																																																																																													Int:0
																																																																																																																																													Let Ti718
																																																																																																																																														Int:0
																																																																																																																																														IfLE x Ti718
																																																																																																																																															Int:0
																																																																																																																																															Int:1
																																																																																																																																					LetRec get_surface_id pixel index 
																																																																																																																																						Let surface_ids
																																																																																																																																							App p_surface_idspixel 
																																																																																																																																							Get surface_ids index
																																																																																																																																						LetRec neighbors_are_available x prev cur next nref 
																																																																																																																																							Let sid_center
																																																																																																																																								Let Tt694
																																																																																																																																									Get cur x
																																																																																																																																									App get_surface_idTt694 nref 
																																																																																																																																								Let Ti696
																																																																																																																																									Let Tt695
																																																																																																																																										Get prev x
																																																																																																																																										App get_surface_idTt695 nref 
																																																																																																																																									IfEq Ti696 sid_center
																																																																																																																																										Let Ti698
																																																																																																																																											Let Tt697
																																																																																																																																												Get next x
																																																																																																																																												App get_surface_idTt697 nref 
																																																																																																																																											IfEq Ti698 sid_center
																																																																																																																																												Let Ti702
																																																																																																																																													Let Tt701
																																																																																																																																														Let Ti700
																																																																																																																																															Let Ti699
																																																																																																																																																Int:1
																																																																																																																																																Sub x Ti699
																																																																																																																																															Get cur Ti700
																																																																																																																																														App get_surface_idTt701 nref 
																																																																																																																																													IfEq Ti702 sid_center
																																																																																																																																														Let Ti706
																																																																																																																																															Let Tt705
																																																																																																																																																Let Ti704
																																																																																																																																																	Let Ti703
																																																																																																																																																		Int:1
																																																																																																																																																		Add x Ti703
																																																																																																																																																	Get cur Ti704
																																																																																																																																																App get_surface_idTt705 nref 
																																																																																																																																															IfEq Ti706 sid_center
																																																																																																																																																Int:1
																																																																																																																																																Int:0
																																																																																																																																														Int:0
																																																																																																																																												Int:0
																																																																																																																																										Int:0
																																																																																																																																							LetRec try_exploit_neighbors x y prev cur next nref 
																																																																																																																																								Let pixel
																																																																																																																																									Get cur x
																																																																																																																																									Let Ti684
																																																																																																																																										Int:4
																																																																																																																																										IfLE nref Ti684
																																																																																																																																											Let Ti685
																																																																																																																																												Int:0
																																																																																																																																												Let Ti686
																																																																																																																																													App get_surface_idpixel nref 
																																																																																																																																													IfLE Ti685 Ti686
																																																																																																																																														Let Tb687
																																																																																																																																															App neighbors_are_availablex prev cur next nref 
																																																																																																																																															Let Ti688
																																																																																																																																																Int:0
																																																																																																																																																IfEq Tb687 Ti688
																																																																																																																																																	Let Tt689
																																																																																																																																																		Get cur x
																																																																																																																																																		App do_without_neighborsTt689 nref 
																																																																																																																																																	Let calc_diffuse
																																																																																																																																																		App p_calc_diffusepixel 
																																																																																																																																																		Let Tu180
																																																																																																																																																			Let Tb690
																																																																																																																																																				Get calc_diffuse nref
																																																																																																																																																				Let Ti691
																																																																																																																																																					Int:0
																																																																																																																																																					IfEq Tb690 Ti691
																																																																																																																																																						Unit
																																																																																																																																																						App calc_diffuse_using_5pointsx prev cur next nref 
																																																																																																																																																			Let Ti693
																																																																																																																																																				Let Ti692
																																																																																																																																																					Int:1
																																																																																																																																																					Add nref Ti692
																																																																																																																																																				App try_exploit_neighborsx y prev cur next Ti693 
																																																																																																																																														Unit
																																																																																																																																											Unit
																																																																																																																																								LetRec write_ppm_header Tu181 
																																																																																																																																									Let Tu189
																																																																																																																																										Let Ti669
																																																																																																																																											Int:80
																																																																																																																																											printchar Ti669
																																																																																																																																										Let Tu188
																																																																																																																																											Let Ti672
																																																																																																																																												Let Ti670
																																																																																																																																													Int:48
																																																																																																																																													Let Ti671
																																																																																																																																														Int:3
																																																																																																																																														Add Ti670 Ti671
																																																																																																																																												printchar Ti672
																																																																																																																																											Let Tu187
																																																																																																																																												Let Ti673
																																																																																																																																													Int:10
																																																																																																																																													printchar Ti673
																																																																																																																																												Let Tu186
																																																																																																																																													Let Ti676
																																																																																																																																														Let Ta674
																																																																																																																																															ExtArray 154
																																																																																																																																															Let Ti675
																																																																																																																																																Int:0
																																																																																																																																																Get Ta674 Ti675
																																																																																																																																														App print_intTi676 
																																																																																																																																													Let Tu185
																																																																																																																																														Let Ti677
																																																																																																																																															Int:32
																																																																																																																																															printchar Ti677
																																																																																																																																														Let Tu184
																																																																																																																																															Let Ti680
																																																																																																																																																Let Ta678
																																																																																																																																																	ExtArray 154
																																																																																																																																																	Let Ti679
																																																																																																																																																		Int:1
																																																																																																																																																		Get Ta678 Ti679
																																																																																																																																																App print_intTi680 
																																																																																																																																															Let Tu183
																																																																																																																																																Let Ti681
																																																																																																																																																	Int:32
																																																																																																																																																	printchar Ti681
																																																																																																																																																Let Tu182
																																																																																																																																																	Let Ti682
																																																																																																																																																		Int:255
																																																																																																																																																		App print_intTi682 
																																																																																																																																																	Let Ti683
																																																																																																																																																		Int:10
																																																																																																																																																		printchar Ti683
																																																																																																																																									LetRec write_rgb_element x 
																																																																																																																																										Let ix
																																																																																																																																											App int_of_floatx 
																																																																																																																																											Let elem
																																																																																																																																												Let Ti667
																																																																																																																																													Int:255
																																																																																																																																													IfLE ix Ti667
																																																																																																																																														Let Ti668
																																																																																																																																															Int:0
																																																																																																																																															IfLE Ti668 ix
																																																																																																																																																Var ix
																																																																																																																																																Int:0
																																																																																																																																														Int:255
																																																																																																																																												App print_intelem 
																																																																																																																																										LetRec write_rgb Tu190 
																																																																																																																																											Let Tu195
																																																																																																																																												Let Td657
																																																																																																																																													Let Ta655
																																																																																																																																														ExtArray 151
																																																																																																																																														Let Ti656
																																																																																																																																															Int:0
																																																																																																																																															Get Ta655 Ti656
																																																																																																																																													App write_rgb_elementTd657 
																																																																																																																																												Let Tu194
																																																																																																																																													Let Ti658
																																																																																																																																														Int:32
																																																																																																																																														printchar Ti658
																																																																																																																																													Let Tu193
																																																																																																																																														Let Td661
																																																																																																																																															Let Ta659
																																																																																																																																																ExtArray 151
																																																																																																																																																Let Ti660
																																																																																																																																																	Int:1
																																																																																																																																																	Get Ta659 Ti660
																																																																																																																																															App write_rgb_elementTd661 
																																																																																																																																														Let Tu192
																																																																																																																																															Let Ti662
																																																																																																																																																Int:32
																																																																																																																																																printchar Ti662
																																																																																																																																															Let Tu191
																																																																																																																																																Let Td665
																																																																																																																																																	Let Ta663
																																																																																																																																																		ExtArray 151
																																																																																																																																																		Let Ti664
																																																																																																																																																			Int:2
																																																																																																																																																			Get Ta663 Ti664
																																																																																																																																																	App write_rgb_elementTd665 
																																																																																																																																																Let Ti666
																																																																																																																																																	Int:10
																																																																																																																																																	printchar Ti666
																																																																																																																																											LetRec pretrace_diffuse_rays pixel nref 
																																																																																																																																												Let Ti642
																																																																																																																																													Int:4
																																																																																																																																													IfLE nref Ti642
																																																																																																																																														Let sid
																																																																																																																																															App get_surface_idpixel nref 
																																																																																																																																															Let Ti643
																																																																																																																																																Int:0
																																																																																																																																																IfLE Ti643 sid
																																																																																																																																																	Let calc_diffuse
																																																																																																																																																		App p_calc_diffusepixel 
																																																																																																																																																		Let Tu198
																																																																																																																																																			Let Tb644
																																																																																																																																																				Get calc_diffuse nref
																																																																																																																																																				Let Ti645
																																																																																																																																																					Int:0
																																																																																																																																																					IfEq Tb644 Ti645
																																																																																																																																																						Unit
																																																																																																																																																						Let group_id
																																																																																																																																																							App p_group_idpixel 
																																																																																																																																																							Let Tu197
																																																																																																																																																								Let Ta646
																																																																																																																																																									ExtArray 148
																																																																																																																																																									App vecbzeroTa646 
																																																																																																																																																								Let nvectors
																																																																																																																																																									App p_nvectorspixel 
																																																																																																																																																									Let intersection_points
																																																																																																																																																										App p_intersection_pointspixel 
																																																																																																																																																										Let Tu196
																																																																																																																																																											Let Ta648
																																																																																																																																																												Let Ta647
																																																																																																																																																													ExtArray 179
																																																																																																																																																													Get Ta647 group_id
																																																																																																																																																												Let Ta649
																																																																																																																																																													Get nvectors nref
																																																																																																																																																													Let Ta650
																																																																																																																																																														Get intersection_points nref
																																																																																																																																																														App trace_diffuse_raysTa648 Ta649 Ta650 
																																																																																																																																																											Let ray20p
																																																																																																																																																												App p_received_ray_20percentpixel 
																																																																																																																																																												Let Ta651
																																																																																																																																																													Get ray20p nref
																																																																																																																																																													Let Ta652
																																																																																																																																																														ExtArray 148
																																																																																																																																																														App veccpyTa651 Ta652 
																																																																																																																																																			Let Ti654
																																																																																																																																																				Let Ti653
																																																																																																																																																					Int:1
																																																																																																																																																					Add nref Ti653
																																																																																																																																																				App pretrace_diffuse_rayspixel Ti654 
																																																																																																																																																	Unit
																																																																																																																																														Unit
																																																																																																																																												LetRec pretrace_pixels line x group_id lc0 lc1 lc2 
																																																																																																																																													Let Ti595
																																																																																																																																														Int:0
																																																																																																																																														IfLE Ti595 x
																																																																																																																																															Let xdisp
																																																																																																																																																Let Td598
																																																																																																																																																	Let Ta596
																																																																																																																																																		ExtArray 158
																																																																																																																																																		Let Ti597
																																																																																																																																																			Int:0
																																																																																																																																																			Get Ta596 Ti597
																																																																																																																																																	Let Td603
																																																																																																																																																		Let Ti602
																																																																																																																																																			Let Ti601
																																																																																																																																																				Let Ta599
																																																																																																																																																					ExtArray 156
																																																																																																																																																					Let Ti600
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta599 Ti600
																																																																																																																																																				Sub x Ti601
																																																																																																																																																			App float_of_intTi602 
																																																																																																																																																		FMul Td598 Td603
																																																																																																																																																Let Tu208
																																																																																																																																																	Let Ta604
																																																																																																																																																		ExtArray 174
																																																																																																																																																		Let Ti605
																																																																																																																																																			Int:0
																																																																																																																																																			Let Td609
																																																																																																																																																				Let Td608
																																																																																																																																																					Let Ta606
																																																																																																																																																						ExtArray 165
																																																																																																																																																						Let Ti607
																																																																																																																																																							Int:0
																																																																																																																																																							Get Ta606 Ti607
																																																																																																																																																					FDiv xdisp Td608 lc0
																																																																																																																																																				Put Ta604 Ti605 Td609
																																																																																																																																																	Let Tu207
																																																																																																																																																		Let Ta610
																																																																																																																																																			ExtArray 174
																																																																																																																																																			Let Ti611
																																																																																																																																																				Int:1
																																																																																																																																																				Let Td615
																																																																																																																																																					Let Td614
																																																																																																																																																						Let Ta612
																																																																																																																																																							ExtArray 165
																																																																																																																																																							Let Ti613
																																																																																																																																																								Int:1
																																																																																																																																																								Get Ta612 Ti613
																																																																																																																																																						FDiv xdisp Td614 lc1
																																																																																																																																																					Put Ta610 Ti611 Td615
																																																																																																																																																		Let Tu206
																																																																																																																																																			Let Ta616
																																																																																																																																																				ExtArray 174
																																																																																																																																																				Let Ti617
																																																																																																																																																					Int:2
																																																																																																																																																					Let Td621
																																																																																																																																																						Let Td620
																																																																																																																																																							Let Ta618
																																																																																																																																																								ExtArray 165
																																																																																																																																																								Let Ti619
																																																																																																																																																									Int:2
																																																																																																																																																									Get Ta618 Ti619
																																																																																																																																																							FDiv xdisp Td620 lc2
																																																																																																																																																						Put Ta616 Ti617 Td621
																																																																																																																																																			Let Tu205
																																																																																																																																																				Let Ta622
																																																																																																																																																					ExtArray 174
																																																																																																																																																					Let Ti623
																																																																																																																																																						Int:0
																																																																																																																																																						App vecunit_sgnTa622 Ti623 
																																																																																																																																																				Let Tu204
																																																																																																																																																					Let Ta624
																																																																																																																																																						ExtArray 151
																																																																																																																																																						App vecbzeroTa624 
																																																																																																																																																					Let Tu203
																																																																																																																																																						Let Ta625
																																																																																																																																																							ExtArray 159
																																																																																																																																																							Let Ta626
																																																																																																																																																								ExtArray 75
																																																																																																																																																								App veccpyTa625 Ta626 
																																																																																																																																																						Let Tu202
																																																																																																																																																							Let Ti627
																																																																																																																																																								Int:0
																																																																																																																																																								Let Td628
																																																																																																																																																									Float:1.000000
																																																																																																																																																									Let Ta629
																																																																																																																																																										ExtArray 174
																																																																																																																																																										Let Tt630
																																																																																																																																																											Get line x
																																																																																																																																																											Let Td631
																																																																																																																																																												Float:0.000000
																																																																																																																																																												App trace_rayTi627 Td628 Ta629 Tt630 Td631 
																																																																																																																																																							Let Tu201
																																																																																																																																																								Let Ta633
																																																																																																																																																									Let Tt632
																																																																																																																																																										Get line x
																																																																																																																																																										App p_rgbTt632 
																																																																																																																																																									Let Ta634
																																																																																																																																																										ExtArray 151
																																																																																																																																																										App veccpyTa633 Ta634 
																																																																																																																																																								Let Tu200
																																																																																																																																																									Let Tt635
																																																																																																																																																										Get line x
																																																																																																																																																										App p_set_group_idTt635 group_id 
																																																																																																																																																									Let Tu199
																																																																																																																																																										Let Tt636
																																																																																																																																																											Get line x
																																																																																																																																																											Let Ti637
																																																																																																																																																												Int:0
																																																																																																																																																												App pretrace_diffuse_raysTt636 Ti637 
																																																																																																																																																										Let Ti639
																																																																																																																																																											Let Ti638
																																																																																																																																																												Int:1
																																																																																																																																																												Sub x Ti638
																																																																																																																																																											Let Ti641
																																																																																																																																																												Let Ti640
																																																																																																																																																													Int:1
																																																																																																																																																													App add_mod5group_id Ti640 
																																																																																																																																																												App pretrace_pixelsline Ti639 Ti641 lc0 lc1 lc2 
																																																																																																																																															Unit
																																																																																																																																													LetRec pretrace_line line y group_id 
																																																																																																																																														Let ydisp
																																																																																																																																															Let Td566
																																																																																																																																																Let Ta564
																																																																																																																																																	ExtArray 158
																																																																																																																																																	Let Ti565
																																																																																																																																																		Int:0
																																																																																																																																																		Get Ta564 Ti565
																																																																																																																																																Let Td571
																																																																																																																																																	Let Ti570
																																																																																																																																																		Let Ti569
																																																																																																																																																			Let Ta567
																																																																																																																																																				ExtArray 156
																																																																																																																																																				Let Ti568
																																																																																																																																																					Int:1
																																																																																																																																																					Get Ta567 Ti568
																																																																																																																																																			Sub y Ti569
																																																																																																																																																		App float_of_intTi570 
																																																																																																																																																	FMul Td566 Td571
																																																																																																																																															Let lc0
																																																																																																																																																Let Td574
																																																																																																																																																	Let Ta572
																																																																																																																																																		ExtArray 168
																																																																																																																																																		Let Ti573
																																																																																																																																																			Int:0
																																																																																																																																																			Get Ta572 Ti573
																																																																																																																																																	Let Td577
																																																																																																																																																		Let Ta575
																																																																																																																																																			ExtArray 171
																																																																																																																																																			Let Ti576
																																																																																																																																																				Int:0
																																																																																																																																																				Get Ta575 Ti576
																																																																																																																																																		FDiv ydisp Td574 Td577
																																																																																																																																																Let lc1
																																																																																																																																																	Let Td580
																																																																																																																																																		Let Ta578
																																																																																																																																																			ExtArray 168
																																																																																																																																																			Let Ti579
																																																																																																																																																				Int:1
																																																																																																																																																				Get Ta578 Ti579
																																																																																																																																																		Let Td583
																																																																																																																																																			Let Ta581
																																																																																																																																																				ExtArray 171
																																																																																																																																																				Let Ti582
																																																																																																																																																					Int:1
																																																																																																																																																					Get Ta581 Ti582
																																																																																																																																																			FDiv ydisp Td580 Td583
																																																																																																																																																	Let lc2
																																																																																																																																																		Let Td586
																																																																																																																																																			Let Ta584
																																																																																																																																																				ExtArray 168
																																																																																																																																																				Let Ti585
																																																																																																																																																					Int:2
																																																																																																																																																					Get Ta584 Ti585
																																																																																																																																																			Let Td589
																																																																																																																																																				Let Ta587
																																																																																																																																																					ExtArray 171
																																																																																																																																																					Let Ti588
																																																																																																																																																						Int:2
																																																																																																																																																						Get Ta587 Ti588
																																																																																																																																																				FDiv ydisp Td586 Td589
																																																																																																																																																		Let Ti594
																																																																																																																																																			Let Ti592
																																																																																																																																																				Let Ta590
																																																																																																																																																					ExtArray 154
																																																																																																																																																					Let Ti591
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta590 Ti591
																																																																																																																																																				Let Ti593
																																																																																																																																																					Int:1
																																																																																																																																																					Sub Ti592 Ti593
																																																																																																																																																			App pretrace_pixelsline Ti594 group_id lc0 lc1 lc2 
																																																																																																																																														LetRec scan_pixel x y prev cur next 
																																																																																																																																															Let Ti552
																																																																																																																																																Let Ta550
																																																																																																																																																	ExtArray 154
																																																																																																																																																	Let Ti551
																																																																																																																																																		Int:0
																																																																																																																																																		Get Ta550 Ti551
																																																																																																																																																IfLE Ti552 x
																																																																																																																																																	Unit
																																																																																																																																																	Let Tu211
																																																																																																																																																		Let Ta553
																																																																																																																																																			ExtArray 151
																																																																																																																																																			Let Ta555
																																																																																																																																																				Let Tt554
																																																																																																																																																					Get cur x
																																																																																																																																																					App p_rgbTt554 
																																																																																																																																																				App veccpyTa553 Ta555 
																																																																																																																																																		Let Tu210
																																																																																																																																																			Let Tb556
																																																																																																																																																				App neighbors_existx y next 
																																																																																																																																																				Let Ti557
																																																																																																																																																					Int:0
																																																																																																																																																					IfEq Tb556 Ti557
																																																																																																																																																						Let Tt558
																																																																																																																																																							Get cur x
																																																																																																																																																							Let Ti559
																																																																																																																																																								Int:0
																																																																																																																																																								App do_without_neighborsTt558 Ti559 
																																																																																																																																																						Let Ti560
																																																																																																																																																							Int:0
																																																																																																																																																							App try_exploit_neighborsx y prev cur next Ti560 
																																																																																																																																																			Let Tu209
																																																																																																																																																				Let Tu561
																																																																																																																																																					Unit
																																																																																																																																																					App write_rgbTu561 
																																																																																																																																																				Let Ti563
																																																																																																																																																					Let Ti562
																																																																																																																																																						Int:1
																																																																																																																																																						Add x Ti562
																																																																																																																																																					App scan_pixelTi563 y prev cur next 
																																																																																																																																															LetRec scan_line y prev cur next group_id 
																																																																																																																																																Let Ti537
																																																																																																																																																	Let Ta535
																																																																																																																																																		ExtArray 154
																																																																																																																																																		Let Ti536
																																																																																																																																																			Int:1
																																																																																																																																																			Get Ta535 Ti536
																																																																																																																																																	IfLE Ti537 y
																																																																																																																																																		Unit
																																																																																																																																																		Let Tu213
																																																																																																																																																			Let Ti542
																																																																																																																																																				Let Ti540
																																																																																																																																																					Let Ta538
																																																																																																																																																						ExtArray 154
																																																																																																																																																						Let Ti539
																																																																																																																																																							Int:1
																																																																																																																																																							Get Ta538 Ti539
																																																																																																																																																					Let Ti541
																																																																																																																																																						Int:1
																																																																																																																																																						Sub Ti540 Ti541
																																																																																																																																																				IfLE Ti542 y
																																																																																																																																																					Unit
																																																																																																																																																					Let Ti544
																																																																																																																																																						Let Ti543
																																																																																																																																																							Int:1
																																																																																																																																																							Add y Ti543
																																																																																																																																																						App pretrace_linenext Ti544 group_id 
																																																																																																																																																			Let Tu212
																																																																																																																																																				Let Ti545
																																																																																																																																																					Int:0
																																																																																																																																																					App scan_pixelTi545 y prev cur next 
																																																																																																																																																				Let Ti547
																																																																																																																																																					Let Ti546
																																																																																																																																																						Int:1
																																																																																																																																																						Add y Ti546
																																																																																																																																																					Let Ti549
																																																																																																																																																						Let Ti548
																																																																																																																																																							Int:2
																																																																																																																																																							App add_mod5group_id Ti548 
																																																																																																																																																						App scan_lineTi547 cur next prev Ti549 
																																																																																																																																																LetRec create_float5x3array Tu214 
																																																																																																																																																	Let vec
																																																																																																																																																		Let Ti516
																																																																																																																																																			Int:3
																																																																																																																																																			Let Td517
																																																																																																																																																				Float:0.000000
																																																																																																																																																				ExtFunApp create_float_array Ti516,Td517,
																																																																																																																																																		Let array
																																																																																																																																																			Let Ti518
																																																																																																																																																				Int:5
																																																																																																																																																				ExtFunApp create_array Ti518,vec,
																																																																																																																																																			Let Tu218
																																																																																																																																																				Let Ti519
																																																																																																																																																					Int:1
																																																																																																																																																					Let Ta522
																																																																																																																																																						Let Ti520
																																																																																																																																																							Int:3
																																																																																																																																																							Let Td521
																																																																																																																																																								Float:0.000000
																																																																																																																																																								ExtFunApp create_float_array Ti520,Td521,
																																																																																																																																																						Put array Ti519 Ta522
																																																																																																																																																				Let Tu217
																																																																																																																																																					Let Ti523
																																																																																																																																																						Int:2
																																																																																																																																																						Let Ta526
																																																																																																																																																							Let Ti524
																																																																																																																																																								Int:3
																																																																																																																																																								Let Td525
																																																																																																																																																									Float:0.000000
																																																																																																																																																									ExtFunApp create_float_array Ti524,Td525,
																																																																																																																																																							Put array Ti523 Ta526
																																																																																																																																																					Let Tu216
																																																																																																																																																						Let Ti527
																																																																																																																																																							Int:3
																																																																																																																																																							Let Ta530
																																																																																																																																																								Let Ti528
																																																																																																																																																									Int:3
																																																																																																																																																									Let Td529
																																																																																																																																																										Float:0.000000
																																																																																																																																																										ExtFunApp create_float_array Ti528,Td529,
																																																																																																																																																								Put array Ti527 Ta530
																																																																																																																																																						Let Tu215
																																																																																																																																																							Let Ti531
																																																																																																																																																								Int:4
																																																																																																																																																								Let Ta534
																																																																																																																																																									Let Ti532
																																																																																																																																																										Int:3
																																																																																																																																																										Let Td533
																																																																																																																																																											Float:0.000000
																																																																																																																																																											ExtFunApp create_float_array Ti532,Td533,
																																																																																																																																																									Put array Ti531 Ta534
																																																																																																																																																							Var array
																																																																																																																																																	LetRec create_pixel Tu219 
																																																																																																																																																		Let m_rgb
																																																																																																																																																			Let Ti504
																																																																																																																																																				Int:3
																																																																																																																																																				Let Td505
																																																																																																																																																					Float:0.000000
																																																																																																																																																					ExtFunApp create_float_array Ti504,Td505,
																																																																																																																																																			Let m_isect_ps
																																																																																																																																																				Let Tu506
																																																																																																																																																					Unit
																																																																																																																																																					App create_float5x3arrayTu506 
																																																																																																																																																				Let m_sids
																																																																																																																																																					Let Ti507
																																																																																																																																																						Int:5
																																																																																																																																																						Let Ti508
																																																																																																																																																							Int:0
																																																																																																																																																							ExtFunApp create_array Ti507,Ti508,
																																																																																																																																																					Let m_cdif
																																																																																																																																																						Let Ti509
																																																																																																																																																							Int:5
																																																																																																																																																							Let Ti510
																																																																																																																																																								Int:0
																																																																																																																																																								ExtFunApp create_array Ti509,Ti510,
																																																																																																																																																						Let m_engy
																																																																																																																																																							Let Tu511
																																																																																																																																																								Unit
																																																																																																																																																								App create_float5x3arrayTu511 
																																																																																																																																																							Let m_r20p
																																																																																																																																																								Let Tu512
																																																																																																																																																									Unit
																																																																																																																																																									App create_float5x3arrayTu512 
																																																																																																																																																								Let m_gid
																																																																																																																																																									Let Ti513
																																																																																																																																																										Int:1
																																																																																																																																																										Let Ti514
																																																																																																																																																											Int:0
																																																																																																																																																											ExtFunApp create_array Ti513,Ti514,
																																																																																																																																																									Let m_nvectors
																																																																																																																																																										Let Tu515
																																																																																																																																																											Unit
																																																																																																																																																											App create_float5x3arrayTu515 
																																																																																																																																																										Tuple (m_rgb,m_isect_ps,m_sids,m_cdif,m_engy,m_r20p,m_gid,m_nvectors,)
																																																																																																																																																		LetRec init_line_elements line n 
																																																																																																																																																			Let Ti499
																																																																																																																																																				Int:0
																																																																																																																																																				IfLE Ti499 n
																																																																																																																																																					Let Tu220
																																																																																																																																																						Let Tt501
																																																																																																																																																							Let Tu500
																																																																																																																																																								Unit
																																																																																																																																																								App create_pixelTu500 
																																																																																																																																																							Put line n Tt501
																																																																																																																																																						Let Ti503
																																																																																																																																																							Let Ti502
																																																																																																																																																								Int:1
																																																																																																																																																								Sub n Ti502
																																																																																																																																																							App init_line_elementsline Ti503 
																																																																																																																																																					Var line
																																																																																																																																																			LetRec create_pixelline Tu221 
																																																																																																																																																				Let line
																																																																																																																																																					Let Ti491
																																																																																																																																																						Let Ta489
																																																																																																																																																							ExtArray 154
																																																																																																																																																							Let Ti490
																																																																																																																																																								Int:0
																																																																																																																																																								Get Ta489 Ti490
																																																																																																																																																						Let Tt493
																																																																																																																																																							Let Tu492
																																																																																																																																																								Unit
																																																																																																																																																								App create_pixelTu492 
																																																																																																																																																							ExtFunApp create_array Ti491,Tt493,
																																																																																																																																																					Let Ti498
																																																																																																																																																						Let Ti496
																																																																																																																																																							Let Ta494
																																																																																																																																																								ExtArray 154
																																																																																																																																																								Let Ti495
																																																																																																																																																									Int:0
																																																																																																																																																									Get Ta494 Ti495
																																																																																																																																																							Let Ti497
																																																																																																																																																								Int:2
																																																																																																																																																								Sub Ti496 Ti497
																																																																																																																																																						App init_line_elementsline Ti498 
																																																																																																																																																				LetRec tan x 
																																																																																																																																																					Let Td487
																																																																																																																																																						App sinx 
																																																																																																																																																						Let Td488
																																																																																																																																																							App cosx 
																																																																																																																																																							FDiv Td487 Td488
																																																																																																																																																					LetRec adjust_position h ratio 
																																																																																																																																																						Let l
																																																																																																																																																							Let Td484
																																																																																																																																																								Let Td483
																																																																																																																																																									Float:0.100000
																																																																																																																																																									FDiv h h Td483
																																																																																																																																																								sqrt Td484
																																																																																																																																																							Let tan_h
																																																																																																																																																								Let Td485
																																																																																																																																																									Float:1.000000
																																																																																																																																																									FDiv Td485 l
																																																																																																																																																								Let theta_h
																																																																																																																																																									App atantan_h 
																																																																																																																																																									Let tan_m
																																																																																																																																																										Let Td486
																																																																																																																																																											FMul theta_h ratio
																																																																																																																																																											App tanTd486 
																																																																																																																																																										FMul tan_m l
																																																																																																																																																						LetRec calc_dirvec icount x y rx ry group_id index 
																																																																																																																																																							Let Ti441
																																																																																																																																																								Int:5
																																																																																																																																																								IfLE Ti441 icount
																																																																																																																																																									Let l
																																																																																																																																																										Let Td446
																																																																																																																																																											Let Td444
																																																																																																																																																												Let Td442
																																																																																																																																																													App fsqrx 
																																																																																																																																																													Let Td443
																																																																																																																																																														App fsqry 
																																																																																																																																																														FAdd Td442 Td443
																																																																																																																																																												Let Td445
																																																																																																																																																													Float:1.000000
																																																																																																																																																													FAdd Td444 Td445
																																																																																																																																																											sqrt Td446
																																																																																																																																																										Let vx
																																																																																																																																																											FDiv x l
																																																																																																																																																											Let vy
																																																																																																																																																												FDiv y l
																																																																																																																																																												Let vz
																																																																																																																																																													Let Td447
																																																																																																																																																														Float:1.000000
																																																																																																																																																														FDiv Td447 l
																																																																																																																																																													Let dgroup
																																																																																																																																																														Let Ta448
																																																																																																																																																															ExtArray 179
																																																																																																																																																															Get Ta448 group_id
																																																																																																																																																														Let Tu226
																																																																																																																																																															Let Ta450
																																																																																																																																																																Let Tt449
																																																																																																																																																																	Get dgroup index
																																																																																																																																																																	App d_vecTt449 
																																																																																																																																																																App vecsetTa450 vx vy vz 
																																																																																																																																																															Let Tu225
																																																																																																																																																																Let Ta454
																																																																																																																																																																	Let Tt453
																																																																																																																																																																		Let Ti452
																																																																																																																																																																			Let Ti451
																																																																																																																																																																				Int:40
																																																																																																																																																																				Add index Ti451
																																																																																																																																																																			Get dgroup Ti452
																																																																																																																																																																		App d_vecTt453 
																																																																																																																																																																	Let Td455
																																																																																																																																																																		App fnegvy 
																																																																																																																																																																		App vecsetTa454 vx vz Td455 
																																																																																																																																																																Let Tu224
																																																																																																																																																																	Let Ta459
																																																																																																																																																																		Let Tt458
																																																																																																																																																																			Let Ti457
																																																																																																																																																																				Let Ti456
																																																																																																																																																																					Int:80
																																																																																																																																																																					Add index Ti456
																																																																																																																																																																				Get dgroup Ti457
																																																																																																																																																																			App d_vecTt458 
																																																																																																																																																																		Let Td460
																																																																																																																																																																			App fnegvx 
																																																																																																																																																																			Let Td461
																																																																																																																																																																				App fnegvy 
																																																																																																																																																																				App vecsetTa459 vz Td460 Td461 
																																																																																																																																																																	Let Tu223
																																																																																																																																																																		Let Ta465
																																																																																																																																																																			Let Tt464
																																																																																																																																																																				Let Ti463
																																																																																																																																																																					Let Ti462
																																																																																																																																																																						Int:1
																																																																																																																																																																						Add index Ti462
																																																																																																																																																																					Get dgroup Ti463
																																																																																																																																																																				App d_vecTt464 
																																																																																																																																																																			Let Td466
																																																																																																																																																																				App fnegvx 
																																																																																																																																																																				Let Td467
																																																																																																																																																																					App fnegvy 
																																																																																																																																																																					Let Td468
																																																																																																																																																																						App fnegvz 
																																																																																																																																																																						App vecsetTa465 Td466 Td467 Td468 
																																																																																																																																																																		Let Tu222
																																																																																																																																																																			Let Ta472
																																																																																																																																																																				Let Tt471
																																																																																																																																																																					Let Ti470
																																																																																																																																																																						Let Ti469
																																																																																																																																																																							Int:41
																																																																																																																																																																							Add index Ti469
																																																																																																																																																																						Get dgroup Ti470
																																																																																																																																																																					App d_vecTt471 
																																																																																																																																																																				Let Td473
																																																																																																																																																																					App fnegvx 
																																																																																																																																																																					Let Td474
																																																																																																																																																																						App fnegvz 
																																																																																																																																																																						App vecsetTa472 Td473 Td474 vy 
																																																																																																																																																																			Let Ta478
																																																																																																																																																																				Let Tt477
																																																																																																																																																																					Let Ti476
																																																																																																																																																																						Let Ti475
																																																																																																																																																																							Int:81
																																																																																																																																																																							Add index Ti475
																																																																																																																																																																						Get dgroup Ti476
																																																																																																																																																																					App d_vecTt477 
																																																																																																																																																																				Let Td479
																																																																																																																																																																					App fnegvz 
																																																																																																																																																																					App vecsetTa478 Td479 vx vy 
																																																																																																																																																									Let x2
																																																																																																																																																										App adjust_positiony rx 
																																																																																																																																																										Let Ti481
																																																																																																																																																											Let Ti480
																																																																																																																																																												Int:1
																																																																																																																																																												Add icount Ti480
																																																																																																																																																											Let Td482
																																																																																																																																																												App adjust_positionx2 ry 
																																																																																																																																																												App calc_dirvecTi481 x2 Td482 rx ry group_id index 
																																																																																																																																																							LetRec calc_dirvecs col ry group_id index 
																																																																																																																																																								Let Ti422
																																																																																																																																																									Int:0
																																																																																																																																																									IfLE Ti422 col
																																																																																																																																																										Let rx
																																																																																																																																																											Let Td423
																																																																																																																																																												App float_of_intcol 
																																																																																																																																																												Let Td424
																																																																																																																																																													Float:0.200000
																																																																																																																																																													Let Td425
																																																																																																																																																														Float:0.900000
																																																																																																																																																														FMSub Td423 Td424 Td425
																																																																																																																																																											Let Tu228
																																																																																																																																																												Let Ti426
																																																																																																																																																													Int:0
																																																																																																																																																													Let Td427
																																																																																																																																																														Float:0.000000
																																																																																																																																																														Let Td428
																																																																																																																																																															Float:0.000000
																																																																																																																																																															App calc_dirvecTi426 Td427 Td428 rx ry group_id index 
																																																																																																																																																												Let rx2
																																																																																																																																																													Let Td429
																																																																																																																																																														App float_of_intcol 
																																																																																																																																																														Let Td430
																																																																																																																																																															Float:0.200000
																																																																																																																																																															Let Td431
																																																																																																																																																																Float:0.100000
																																																																																																																																																																FDiv Td429 Td430 Td431
																																																																																																																																																													Let Tu227
																																																																																																																																																														Let Ti432
																																																																																																																																																															Int:0
																																																																																																																																																															Let Td433
																																																																																																																																																																Float:0.000000
																																																																																																																																																																Let Td434
																																																																																																																																																																	Float:0.000000
																																																																																																																																																																	Let Ti436
																																																																																																																																																																		Let Ti435
																																																																																																																																																																			Int:2
																																																																																																																																																																			Add index Ti435
																																																																																																																																																																		App calc_dirvecTi432 Td433 Td434 rx2 ry group_id Ti436 
																																																																																																																																																														Let Ti438
																																																																																																																																																															Let Ti437
																																																																																																																																																																Int:1
																																																																																																																																																																Sub col Ti437
																																																																																																																																																															Let Ti440
																																																																																																																																																																Let Ti439
																																																																																																																																																																	Int:1
																																																																																																																																																																	App add_mod5group_id Ti439 
																																																																																																																																																																App calc_dirvecsTi438 ry Ti440 index 
																																																																																																																																																										Unit
																																																																																																																																																								LetRec calc_dirvec_rows row group_id index 
																																																																																																																																																									Let Ti411
																																																																																																																																																										Int:0
																																																																																																																																																										IfLE Ti411 row
																																																																																																																																																											Let ry
																																																																																																																																																												Let Td412
																																																																																																																																																													App float_of_introw 
																																																																																																																																																													Let Td413
																																																																																																																																																														Float:0.200000
																																																																																																																																																														Let Td414
																																																																																																																																																															Float:0.900000
																																																																																																																																																															FMSub Td412 Td413 Td414
																																																																																																																																																												Let Tu229
																																																																																																																																																													Let Ti415
																																																																																																																																																														Int:4
																																																																																																																																																														App calc_dirvecsTi415 ry group_id index 
																																																																																																																																																													Let Ti417
																																																																																																																																																														Let Ti416
																																																																																																																																																															Int:1
																																																																																																																																																															Sub row Ti416
																																																																																																																																																														Let Ti419
																																																																																																																																																															Let Ti418
																																																																																																																																																																Int:2
																																																																																																																																																																App add_mod5group_id Ti418 
																																																																																																																																																															Let Ti421
																																																																																																																																																																Let Ti420
																																																																																																																																																																	Int:4
																																																																																																																																																																	Add index Ti420
																																																																																																																																																																App calc_dirvec_rowsTi417 Ti419 Ti421 
																																																																																																																																																											Unit
																																																																																																																																																									LetRec create_dirvec Tu230 
																																																																																																																																																										Let v3
																																																																																																																																																											Let Ti406
																																																																																																																																																												Int:3
																																																																																																																																																												Let Td407
																																																																																																																																																													Float:0.000000
																																																																																																																																																													ExtFunApp create_float_array Ti406,Td407,
																																																																																																																																																											Let consts
																																																																																																																																																												Let Ti410
																																																																																																																																																													Let Ta408
																																																																																																																																																														ExtArray 0
																																																																																																																																																														Let Ti409
																																																																																																																																																															Int:0
																																																																																																																																																															Get Ta408 Ti409
																																																																																																																																																													ExtFunApp create_array Ti410,v3,
																																																																																																																																																												Tuple (v3,consts,)
																																																																																																																																																										LetRec create_dirvec_elements d index 
																																																																																																																																																											Let Ti401
																																																																																																																																																												Int:0
																																																																																																																																																												IfLE Ti401 index
																																																																																																																																																													Let Tu231
																																																																																																																																																														Let Tt403
																																																																																																																																																															Let Tu402
																																																																																																																																																																Unit
																																																																																																																																																																App create_dirvecTu402 
																																																																																																																																																															Put d index Tt403
																																																																																																																																																														Let Ti405
																																																																																																																																																															Let Ti404
																																																																																																																																																																Int:1
																																																																																																																																																																Sub index Ti404
																																																																																																																																																															App create_dirvec_elementsd Ti405 
																																																																																																																																																													Unit
																																																																																																																																																											LetRec create_dirvecs index 
																																																																																																																																																												Let Ti390
																																																																																																																																																													Int:0
																																																																																																																																																													IfLE Ti390 index
																																																																																																																																																														Let Tu233
																																																																																																																																																															Let Ta391
																																																																																																																																																																ExtArray 179
																																																																																																																																																																Let Ta395
																																																																																																																																																																	Let Ti392
																																																																																																																																																																		Int:120
																																																																																																																																																																		Let Tt394
																																																																																																																																																																			Let Tu393
																																																																																																																																																																				Unit
																																																																																																																																																																				App create_dirvecTu393 
																																																																																																																																																																			ExtFunApp create_array Ti392,Tt394,
																																																																																																																																																																	Put Ta391 index Ta395
																																																																																																																																																															Let Tu232
																																																																																																																																																																Let Ta397
																																																																																																																																																																	Let Ta396
																																																																																																																																																																		ExtArray 179
																																																																																																																																																																		Get Ta396 index
																																																																																																																																																																	Let Ti398
																																																																																																																																																																		Int:118
																																																																																																																																																																		App create_dirvec_elementsTa397 Ti398 
																																																																																																																																																																Let Ti400
																																																																																																																																																																	Let Ti399
																																																																																																																																																																		Int:1
																																																																																																																																																																		Sub index Ti399
																																																																																																																																																																	App create_dirvecsTi400 
																																																																																																																																																														Unit
																																																																																																																																																												LetRec init_dirvec_constants vecset index 
																																																																																																																																																													Let Ti386
																																																																																																																																																														Int:0
																																																																																																																																																														IfLE Ti386 index
																																																																																																																																																															Let Tu234
																																																																																																																																																																Let Tt387
																																																																																																																																																																	Get vecset index
																																																																																																																																																																	App setup_dirvec_constantsTt387 
																																																																																																																																																																Let Ti389
																																																																																																																																																																	Let Ti388
																																																																																																																																																																		Int:1
																																																																																																																																																																		Sub index Ti388
																																																																																																																																																																	App init_dirvec_constantsvecset Ti389 
																																																																																																																																																															Unit
																																																																																																																																																													LetRec init_vecset_constants index 
																																																																																																																																																														Let Ti380
																																																																																																																																																															Int:0
																																																																																																																																																															IfLE Ti380 index
																																																																																																																																																																Let Tu235
																																																																																																																																																																	Let Ta382
																																																																																																																																																																		Let Ta381
																																																																																																																																																																			ExtArray 179
																																																																																																																																																																			Get Ta381 index
																																																																																																																																																																		Let Ti383
																																																																																																																																																																			Int:119
																																																																																																																																																																			App init_dirvec_constantsTa382 Ti383 
																																																																																																																																																																	Let Ti385
																																																																																																																																																																		Let Ti384
																																																																																																																																																																			Int:1
																																																																																																																																																																			Sub index Ti384
																																																																																																																																																																		App init_vecset_constantsTi385 
																																																																																																																																																																Unit
																																																																																																																																																														LetRec init_dirvecs Tu236 
																																																																																																																																																															Let Tu238
																																																																																																																																																																Let Ti375
																																																																																																																																																																	Int:4
																																																																																																																																																																	App create_dirvecsTi375 
																																																																																																																																																																Let Tu237
																																																																																																																																																																	Let Ti376
																																																																																																																																																																		Int:9
																																																																																																																																																																		Let Ti377
																																																																																																																																																																			Int:0
																																																																																																																																																																			Let Ti378
																																																																																																																																																																				Int:0
																																																																																																																																																																				App calc_dirvec_rowsTi376 Ti377 Ti378 
																																																																																																																																																																	Let Ti379
																																																																																																																																																																		Int:4
																																																																																																																																																																		App init_vecset_constantsTi379 
																																																																																																																																																															LetRec add_reflection index surface_id bright v0 v1 v2 
																																																																																																																																																																Let dvec
																																																																																																																																																																	Let Tu371
																																																																																																																																																																		Unit
																																																																																																																																																																		App create_dirvecTu371 
																																																																																																																																																																	Let Tu240
																																																																																																																																																																		Let Ta372
																																																																																																																																																																			App d_vecdvec 
																																																																																																																																																																			App vecsetTa372 v0 v1 v2 
																																																																																																																																																																		Let Tu239
																																																																																																																																																																			App setup_dirvec_constantsdvec 
																																																																																																																																																																			Let Ta373
																																																																																																																																																																				ExtArray 254
																																																																																																																																																																				Let Tt374
																																																																																																																																																																					Tuple (surface_id,dvec,bright,)
																																																																																																																																																																					Put Ta373 index Tt374
																																																																																																																																																																LetRec setup_rect_reflection obj_id obj 
																																																																																																																																																																	Let sid
																																																																																																																																																																		ShiftL2 obj_id
																																																																																																																																																																		Let nr
																																																																																																																																																																			Let Ta335
																																																																																																																																																																				ExtArray 434
																																																																																																																																																																				Let Ti336
																																																																																																																																																																					Int:0
																																																																																																																																																																					Get Ta335 Ti336
																																																																																																																																																																			Let br
																																																																																																																																																																				Let Td337
																																																																																																																																																																					Float:1.000000
																																																																																																																																																																					Let Td338
																																																																																																																																																																						App o_diffuseobj 
																																																																																																																																																																						FSub Td337 Td338
																																																																																																																																																																				Let n0
																																																																																																																																																																					Let Td341
																																																																																																																																																																						Let Ta339
																																																																																																																																																																							ExtArray 78
																																																																																																																																																																							Let Ti340
																																																																																																																																																																								Int:0
																																																																																																																																																																								Get Ta339 Ti340
																																																																																																																																																																						App fnegTd341 
																																																																																																																																																																					Let n1
																																																																																																																																																																						Let Td344
																																																																																																																																																																							Let Ta342
																																																																																																																																																																								ExtArray 78
																																																																																																																																																																								Let Ti343
																																																																																																																																																																									Int:1
																																																																																																																																																																									Get Ta342 Ti343
																																																																																																																																																																							App fnegTd344 
																																																																																																																																																																						Let n2
																																																																																																																																																																							Let Td347
																																																																																																																																																																								Let Ta345
																																																																																																																																																																									ExtArray 78
																																																																																																																																																																									Let Ti346
																																																																																																																																																																										Int:2
																																																																																																																																																																										Get Ta345 Ti346
																																																																																																																																																																								App fnegTd347 
																																																																																																																																																																							Let Tu243
																																																																																																																																																																								Let Ti349
																																																																																																																																																																									Let Ti348
																																																																																																																																																																										Int:1
																																																																																																																																																																										Add sid Ti348
																																																																																																																																																																									Let Td352
																																																																																																																																																																										Let Ta350
																																																																																																																																																																											ExtArray 78
																																																																																																																																																																											Let Ti351
																																																																																																																																																																												Int:0
																																																																																																																																																																												Get Ta350 Ti351
																																																																																																																																																																										App add_reflectionnr Ti349 br Td352 n1 n2 
																																																																																																																																																																								Let Tu242
																																																																																																																																																																									Let Ti354
																																																																																																																																																																										Let Ti353
																																																																																																																																																																											Int:1
																																																																																																																																																																											Add nr Ti353
																																																																																																																																																																										Let Ti356
																																																																																																																																																																											Let Ti355
																																																																																																																																																																												Int:2
																																																																																																																																																																												Add sid Ti355
																																																																																																																																																																											Let Td359
																																																																																																																																																																												Let Ta357
																																																																																																																																																																													ExtArray 78
																																																																																																																																																																													Let Ti358
																																																																																																																																																																														Int:1
																																																																																																																																																																														Get Ta357 Ti358
																																																																																																																																																																												App add_reflectionTi354 Ti356 br n0 Td359 n2 
																																																																																																																																																																									Let Tu241
																																																																																																																																																																										Let Ti361
																																																																																																																																																																											Let Ti360
																																																																																																																																																																												Int:2
																																																																																																																																																																												Add nr Ti360
																																																																																																																																																																											Let Ti363
																																																																																																																																																																												Let Ti362
																																																																																																																																																																													Int:3
																																																																																																																																																																													Add sid Ti362
																																																																																																																																																																												Let Td366
																																																																																																																																																																													Let Ta364
																																																																																																																																																																														ExtArray 78
																																																																																																																																																																														Let Ti365
																																																																																																																																																																															Int:2
																																																																																																																																																																															Get Ta364 Ti365
																																																																																																																																																																													App add_reflectionTi361 Ti363 br n0 n1 Td366 
																																																																																																																																																																										Let Ta367
																																																																																																																																																																											ExtArray 434
																																																																																																																																																																											Let Ti368
																																																																																																																																																																												Int:0
																																																																																																																																																																												Let Ti370
																																																																																																																																																																													Let Ti369
																																																																																																																																																																														Int:3
																																																																																																																																																																														Add nr Ti369
																																																																																																																																																																													Put Ta367 Ti368 Ti370
																																																																																																																																																																	LetRec setup_surface_reflection obj_id obj 
																																																																																																																																																																		Let sid
																																																																																																																																																																			Let Ti302
																																																																																																																																																																				ShiftL2 obj_id
																																																																																																																																																																				Let Ti303
																																																																																																																																																																					Int:1
																																																																																																																																																																					Add Ti302 Ti303
																																																																																																																																																																			Let nr
																																																																																																																																																																				Let Ta304
																																																																																																																																																																					ExtArray 434
																																																																																																																																																																					Let Ti305
																																																																																																																																																																						Int:0
																																																																																																																																																																						Get Ta304 Ti305
																																																																																																																																																																				Let br
																																																																																																																																																																					Let Td306
																																																																																																																																																																						Float:1.000000
																																																																																																																																																																						Let Td307
																																																																																																																																																																							App o_diffuseobj 
																																																																																																																																																																							FSub Td306 Td307
																																																																																																																																																																					Let p
																																																																																																																																																																						Let Ta308
																																																																																																																																																																							ExtArray 78
																																																																																																																																																																							Let Ta309
																																																																																																																																																																								App o_param_abcobj 
																																																																																																																																																																								App veciprodTa308 Ta309 
																																																																																																																																																																						Let Tu244
																																																																																																																																																																							Let Td316
																																																																																																																																																																								Let Td312
																																																																																																																																																																									Let Td310
																																																																																																																																																																										Float:2.000000
																																																																																																																																																																										Let Td311
																																																																																																																																																																											App o_param_aobj 
																																																																																																																																																																											FMul Td310 Td311
																																																																																																																																																																									Let Td315
																																																																																																																																																																										Let Ta313
																																																																																																																																																																											ExtArray 78
																																																																																																																																																																											Let Ti314
																																																																																																																																																																												Int:0
																																																																																																																																																																												Get Ta313 Ti314
																																																																																																																																																																										FMSub Td312 p Td315
																																																																																																																																																																								Let Td323
																																																																																																																																																																									Let Td319
																																																																																																																																																																										Let Td317
																																																																																																																																																																											Float:2.000000
																																																																																																																																																																											Let Td318
																																																																																																																																																																												App o_param_bobj 
																																																																																																																																																																												FMul Td317 Td318
																																																																																																																																																																										Let Td322
																																																																																																																																																																											Let Ta320
																																																																																																																																																																												ExtArray 78
																																																																																																																																																																												Let Ti321
																																																																																																																																																																													Int:1
																																																																																																																																																																													Get Ta320 Ti321
																																																																																																																																																																											FMSub Td319 p Td322
																																																																																																																																																																									Let Td330
																																																																																																																																																																										Let Td326
																																																																																																																																																																											Let Td324
																																																																																																																																																																												Float:2.000000
																																																																																																																																																																												Let Td325
																																																																																																																																																																													App o_param_cobj 
																																																																																																																																																																													FMul Td324 Td325
																																																																																																																																																																											Let Td329
																																																																																																																																																																												Let Ta327
																																																																																																																																																																													ExtArray 78
																																																																																																																																																																													Let Ti328
																																																																																																																																																																														Int:2
																																																																																																																																																																														Get Ta327 Ti328
																																																																																																																																																																												FMSub Td326 p Td329
																																																																																																																																																																										App add_reflectionnr sid br Td316 Td323 Td330 
																																																																																																																																																																							Let Ta331
																																																																																																																																																																								ExtArray 434
																																																																																																																																																																								Let Ti332
																																																																																																																																																																									Int:0
																																																																																																																																																																									Let Ti334
																																																																																																																																																																										Let Ti333
																																																																																																																																																																											Int:1
																																																																																																																																																																											Add nr Ti333
																																																																																																																																																																										Put Ta331 Ti332 Ti334
																																																																																																																																																																		LetRec setup_reflections obj_id 
																																																																																																																																																																			Let Ti294
																																																																																																																																																																				Int:0
																																																																																																																																																																				IfLE Ti294 obj_id
																																																																																																																																																																					Let obj
																																																																																																																																																																						Let Ta295
																																																																																																																																																																							ExtArray 12
																																																																																																																																																																							Get Ta295 obj_id
																																																																																																																																																																						Let Ti296
																																																																																																																																																																							App o_reflectiontypeobj 
																																																																																																																																																																							Let Ti297
																																																																																																																																																																								Int:2
																																																																																																																																																																								IfEq Ti296 Ti297
																																																																																																																																																																									Let Td298
																																																																																																																																																																										Float:1.000000
																																																																																																																																																																										Let Td299
																																																																																																																																																																											App o_diffuseobj 
																																																																																																																																																																											IfLE Td298 Td299
																																																																																																																																																																												Unit
																																																																																																																																																																												Let m_shape
																																																																																																																																																																													App o_formobj 
																																																																																																																																																																													Let Ti300
																																																																																																																																																																														Int:1
																																																																																																																																																																														IfEq m_shape Ti300
																																																																																																																																																																															App setup_rect_reflectionobj_id obj 
																																																																																																																																																																															Let Ti301
																																																																																																																																																																																Int:2
																																																																																																																																																																																IfEq m_shape Ti301
																																																																																																																																																																																	App setup_surface_reflectionobj_id obj 
																																																																																																																																																																																	Unit
																																																																																																																																																																									Unit
																																																																																																																																																																					Unit
																																																																																																																																																																			LetRec rt size_x size_y 
																																																																																																																																																																				Let Tu256
																																																																																																																																																																					Let Ta260
																																																																																																																																																																						ExtArray 154
																																																																																																																																																																						Let Ti261
																																																																																																																																																																							Int:0
																																																																																																																																																																							Put Ta260 Ti261 size_x
																																																																																																																																																																					Let Tu255
																																																																																																																																																																						Let Ta262
																																																																																																																																																																							ExtArray 154
																																																																																																																																																																							Let Ti263
																																																																																																																																																																								Int:1
																																																																																																																																																																								Put Ta262 Ti263 size_y
																																																																																																																																																																						Let Tu254
																																																																																																																																																																							Let Ta264
																																																																																																																																																																								ExtArray 156
																																																																																																																																																																								Let Ti265
																																																																																																																																																																									Int:0
																																																																																																																																																																									Let Ti266
																																																																																																																																																																										ShiftR1 size_x
																																																																																																																																																																										Put Ta264 Ti265 Ti266
																																																																																																																																																																							Let Tu253
																																																																																																																																																																								Let Ta267
																																																																																																																																																																									ExtArray 156
																																																																																																																																																																									Let Ti268
																																																																																																																																																																										Int:1
																																																																																																																																																																										Let Ti269
																																																																																																																																																																											ShiftR1 size_y
																																																																																																																																																																											Put Ta267 Ti268 Ti269
																																																																																																																																																																								Let Tu252
																																																																																																																																																																									Let Ta270
																																																																																																																																																																										ExtArray 158
																																																																																																																																																																										Let Ti271
																																																																																																																																																																											Int:0
																																																																																																																																																																											Let Td274
																																																																																																																																																																												Let Td272
																																																																																																																																																																													Float:128.000000
																																																																																																																																																																													Let Td273
																																																																																																																																																																														App float_of_intsize_x 
																																																																																																																																																																														FDiv Td272 Td273
																																																																																																																																																																												Put Ta270 Ti271 Td274
																																																																																																																																																																									Let prev
																																																																																																																																																																										Let Tu275
																																																																																																																																																																											Unit
																																																																																																																																																																											App create_pixellineTu275 
																																																																																																																																																																										Let cur
																																																																																																																																																																											Let Tu276
																																																																																																																																																																												Unit
																																																																																																																																																																												App create_pixellineTu276 
																																																																																																																																																																											Let next
																																																																																																																																																																												Let Tu277
																																																																																																																																																																													Unit
																																																																																																																																																																													App create_pixellineTu277 
																																																																																																																																																																												Let Tu251
																																																																																																																																																																													Let Tu278
																																																																																																																																																																														Unit
																																																																																																																																																																														App read_parameterTu278 
																																																																																																																																																																													Let Tu250
																																																																																																																																																																														Let Tu279
																																																																																																																																																																															Unit
																																																																																																																																																																															App write_ppm_headerTu279 
																																																																																																																																																																														Let Tu249
																																																																																																																																																																															Let Tu280
																																																																																																																																																																																Unit
																																																																																																																																																																																App init_dirvecsTu280 
																																																																																																																																																																															Let Tu248
																																																																																																																																																																																Let Ta282
																																																																																																																																																																																	Let Tt281
																																																																																																																																																																																		ExtTuple 247
																																																																																																																																																																																		App d_vecTt281 
																																																																																																																																																																																	Let Ta283
																																																																																																																																																																																		ExtArray 78
																																																																																																																																																																																		App veccpyTa282 Ta283 
																																																																																																																																																																																Let Tu247
																																																																																																																																																																																	Let Tt284
																																																																																																																																																																																		ExtTuple 247
																																																																																																																																																																																		App setup_dirvec_constantsTt284 
																																																																																																																																																																																	Let Tu246
																																																																																																																																																																																		Let Ti289
																																																																																																																																																																																			Let Ti287
																																																																																																																																																																																				Let Ta285
																																																																																																																																																																																					ExtArray 0
																																																																																																																																																																																					Let Ti286
																																																																																																																																																																																						Int:0
																																																																																																																																																																																						Get Ta285 Ti286
																																																																																																																																																																																				Let Ti288
																																																																																																																																																																																					Int:1
																																																																																																																																																																																					Sub Ti287 Ti288
																																																																																																																																																																																			App setup_reflectionsTi289 
																																																																																																																																																																																		Let Tu245
																																																																																																																																																																																			Let Ti290
																																																																																																																																																																																				Int:0
																																																																																																																																																																																				Let Ti291
																																																																																																																																																																																					Int:0
																																																																																																																																																																																					App pretrace_linecur Ti290 Ti291 
																																																																																																																																																																																			Let Ti292
																																																																																																																																																																																				Int:0
																																																																																																																																																																																				Let Ti293
																																																																																																																																																																																					Int:2
																																																																																																																																																																																					App scan_lineTi292 prev cur next Ti293 
																																																																																																																																																																				Let Tu257
																																																																																																																																																																					Let Ti258
																																																																																																																																																																						Int:128
																																																																																																																																																																						Let Ti259
																																																																																																																																																																							Int:128
																																																																																																																																																																							App rtTi258 Ti259 
																																																																																																																																																																					Unit
