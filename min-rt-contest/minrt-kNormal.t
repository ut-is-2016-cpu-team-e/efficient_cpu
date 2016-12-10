LetRec fneg x 
	FNeg x
	LetRec fhalf x 
		Let Td2612
			Float:0.500000
			FMul x Td2612
		LetRec fsqr x 
			FMul x x
			LetRec fflag a 
				Let Td2610
					Float:0.000000
					IfLE Td2610 a
						Int:1
						Let Ti2611
							Int:1
							Neg Ti2611
				LetRec countn a b c 
					IfLE b a
						Let Ti2607
							Sub a b
							Let Ti2609
								Let Ti2608
									Int:1
									Add c Ti2608
								App countnTi2607 b Ti2609 
						Var c
					LetRec mymul a b sum 
						Let Ti2603
							Int:0
							IfEq a Ti2603
								Var sum
								Let Ti2605
									Let Ti2604
										Int:1
										Sub a Ti2604
									Let Ti2606
										Add sum b
										App mymulTi2605 b Ti2606 
						LetRec print_int a 
							Let b
								Let Ti2561
									Int:0
									IfLE Ti2561 a
										Var a
										Let Tu1
											Let Ti2562
												Int:45
												printchar Ti2562
											Neg a
								Let x
									Let Ti2563
										Int:10000
										Let Ti2564
											Int:0
											App countnb Ti2563 Ti2564 
									Let b
										Let Ti2567
											Let Ti2565
												Int:10000
												Let Ti2566
													Int:0
													App mymulx Ti2565 Ti2566 
											Sub b Ti2567
										Let flag
											Let Ti2568
												Int:0
												IfLE x Ti2568
													Int:0
													Let Tu2
														Let Ti2570
															Let Ti2569
																Int:48
																Add Ti2569 x
															printchar Ti2570
														Int:1
											Let x
												Let Ti2571
													Int:1000
													Let Ti2572
														Int:0
														App countnb Ti2571 Ti2572 
												Let b
													Let Ti2575
														Let Ti2573
															Int:1000
															Let Ti2574
																Int:0
																App mymulx Ti2573 Ti2574 
														Sub b Ti2575
													Let flag
														Let Ti2576
															Int:0
															IfLE x Ti2576
																Let Ti2577
																	Int:1
																	IfEq flag Ti2577
																		Let Tu4
																			Let Ti2578
																				Int:48
																				printchar Ti2578
																			Int:1
																		Int:0
																Let Tu3
																	Let Ti2580
																		Let Ti2579
																			Int:48
																			Add Ti2579 x
																		printchar Ti2580
																	Int:1
														Let x
															Let Ti2581
																Int:100
																Let Ti2582
																	Int:0
																	App countnb Ti2581 Ti2582 
															Let b
																Let Ti2585
																	Let Ti2583
																		Int:100
																		Let Ti2584
																			Int:0
																			App mymulx Ti2583 Ti2584 
																	Sub b Ti2585
																Let flag
																	Let Ti2586
																		Int:0
																		IfLE x Ti2586
																			Let Ti2587
																				Int:1
																				IfEq flag Ti2587
																					Let Tu6
																						Let Ti2588
																							Int:48
																							printchar Ti2588
																						Int:1
																					Int:0
																			Let Tu5
																				Let Ti2590
																					Let Ti2589
																						Int:48
																						Add Ti2589 x
																					printchar Ti2590
																				Int:1
																	Let x
																		Let Ti2591
																			Int:10
																			Let Ti2592
																				Int:0
																				App countnb Ti2591 Ti2592 
																		Let b
																			Let Ti2595
																				Let Ti2593
																					Int:10
																					Let Ti2594
																						Int:0
																						App mymulx Ti2593 Ti2594 
																				Sub b Ti2595
																			Let flag
																				Let Ti2596
																					Int:0
																					IfLE x Ti2596
																						Let Ti2597
																							Int:1
																							IfEq flag Ti2597
																								Let Tu8
																									Let Ti2598
																										Int:48
																										printchar Ti2598
																									Int:1
																								Int:0
																						Let Tu7
																							Let Ti2600
																								Let Ti2599
																									Int:48
																									Add Ti2599 x
																								printchar Ti2600
																							Int:1
																				Let Ti2602
																					Let Ti2601
																						Int:48
																						Add Ti2601 b
																					printchar Ti2602
							LetRec sgn x 
								Let Td2559
									Float:0.000000
									IfEq x Td2559
										Float:0.000000
										Let Td2560
											Float:0.000000
											IfLE x Td2560
												Float:-1.000000
												Float:1.000000
								LetRec fneg_cond cond x 
									Let Ti2558
										Int:0
										IfEq cond Ti2558
											App fnegx 
											Var x
									LetRec add_mod5 x y 
										Let sum
											Add x y
											Let Ti2556
												Int:5
												IfLE Ti2556 sum
													Let Ti2557
														Int:5
														Sub sum Ti2557
													Var sum
										LetRec vecset v x y z 
											Let Tu10
												Let Ti2553
													Int:0
													Put v Ti2553 x
												Let Tu9
													Let Ti2554
														Int:1
														Put v Ti2554 y
													Let Ti2555
														Int:2
														Put v Ti2555 z
											LetRec vecfill v elem 
												Let Tu12
													Let Ti2550
														Int:0
														Put v Ti2550 elem
													Let Tu11
														Let Ti2551
															Int:1
															Put v Ti2551 elem
														Let Ti2552
															Int:2
															Put v Ti2552 elem
												LetRec vecbzero v 
													Let Td2549
														Float:0.000000
														App vecfillv Td2549 
													LetRec veccpy dest src 
														Let Tu14
															Let Ti2540
																Int:0
																Let Td2542
																	Let Ti2541
																		Int:0
																		Get src Ti2541
																	Put dest Ti2540 Td2542
															Let Tu13
																Let Ti2543
																	Int:1
																	Let Td2545
																		Let Ti2544
																			Int:1
																			Get src Ti2544
																		Put dest Ti2543 Td2545
																Let Ti2546
																	Int:2
																	Let Td2548
																		Let Ti2547
																			Int:2
																			Get src Ti2547
																		Put dest Ti2546 Td2548
														LetRec vecdist2 p q 
															Let Td2533
																Let Td2526
																	Let Td2525
																		Let Td2522
																			Let Ti2521
																				Int:0
																				Get p Ti2521
																			Let Td2524
																				Let Ti2523
																					Int:0
																					Get q Ti2523
																				FSub Td2522 Td2524
																		App fsqrTd2525 
																	Let Td2532
																		Let Td2531
																			Let Td2528
																				Let Ti2527
																					Int:1
																					Get p Ti2527
																				Let Td2530
																					Let Ti2529
																						Int:1
																						Get q Ti2529
																					FSub Td2528 Td2530
																			App fsqrTd2531 
																		FAdd Td2526 Td2532
																Let Td2539
																	Let Td2538
																		Let Td2535
																			Let Ti2534
																				Int:2
																				Get p Ti2534
																			Let Td2537
																				Let Ti2536
																					Int:2
																					Get q Ti2536
																				FSub Td2535 Td2537
																		App fsqrTd2538 
																	FAdd Td2533 Td2539
															LetRec vecunit v 
																Let il
																	Let Td2495
																		Float:1.000000
																		Let Td2507
																			Let Td2506
																				Let Td2502
																					Let Td2498
																						Let Td2497
																							Let Ti2496
																								Int:0
																								Get v Ti2496
																							App fsqrTd2497 
																						Let Td2501
																							Let Td2500
																								Let Ti2499
																									Int:1
																									Get v Ti2499
																								App fsqrTd2500 
																							FAdd Td2498 Td2501
																					Let Td2505
																						Let Td2504
																							Let Ti2503
																								Int:2
																								Get v Ti2503
																							App fsqrTd2504 
																						FAdd Td2502 Td2505
																				sqrt Td2506
																			Let Td2508
																				FReciprocal Td2507
																				FMul Td2495 Td2508
																	Let Tu16
																		Let Ti2509
																			Int:0
																			Let Td2512
																				Let Td2511
																					Let Ti2510
																						Int:0
																						Get v Ti2510
																					FMul Td2511 il
																				Put v Ti2509 Td2512
																		Let Tu15
																			Let Ti2513
																				Int:1
																				Let Td2516
																					Let Td2515
																						Let Ti2514
																							Int:1
																							Get v Ti2514
																						FMul Td2515 il
																					Put v Ti2513 Td2516
																			Let Ti2517
																				Int:2
																				Let Td2520
																					Let Td2519
																						Let Ti2518
																							Int:2
																							Get v Ti2518
																						FMul Td2519 il
																					Put v Ti2517 Td2520
																LetRec vecunit_sgn v inv 
																	Let l
																		Let Td2476
																			Let Td2472
																				Let Td2468
																					Let Td2467
																						Let Ti2466
																							Int:0
																							Get v Ti2466
																						App fsqrTd2467 
																					Let Td2471
																						Let Td2470
																							Let Ti2469
																								Int:1
																								Get v Ti2469
																							App fsqrTd2470 
																						FAdd Td2468 Td2471
																				Let Td2475
																					Let Td2474
																						Let Ti2473
																							Int:2
																							Get v Ti2473
																						App fsqrTd2474 
																					FAdd Td2472 Td2475
																			sqrt Td2476
																		Let il
																			Let Td2477
																				Float:0.000000
																				IfEq l Td2477
																					Float:1.000000
																					Let Ti2478
																						Int:0
																						IfEq inv Ti2478
																							Let Td2479
																								Float:1.000000
																								Let Td2480
																									FReciprocal l
																									FMul Td2479 Td2480
																							Let Td2481
																								Float:-1.000000
																								Let Td2482
																									FReciprocal l
																									FMul Td2481 Td2482
																			Let Tu18
																				Let Ti2483
																					Int:0
																					Let Td2486
																						Let Td2485
																							Let Ti2484
																								Int:0
																								Get v Ti2484
																							FMul Td2485 il
																						Put v Ti2483 Td2486
																				Let Tu17
																					Let Ti2487
																						Int:1
																						Let Td2490
																							Let Td2489
																								Let Ti2488
																									Int:1
																									Get v Ti2488
																								FMul Td2489 il
																							Put v Ti2487 Td2490
																					Let Ti2491
																						Int:2
																						Let Td2494
																							Let Td2493
																								Let Ti2492
																									Int:2
																									Get v Ti2492
																								FMul Td2493 il
																							Put v Ti2491 Td2494
																	LetRec veciprod v w 
																		Let Td2460
																			Let Td2454
																				Let Td2451
																					Let Ti2450
																						Int:0
																						Get v Ti2450
																					Let Td2453
																						Let Ti2452
																							Int:0
																							Get w Ti2452
																						FMul Td2451 Td2453
																				Let Td2459
																					Let Td2456
																						Let Ti2455
																							Int:1
																							Get v Ti2455
																						Let Td2458
																							Let Ti2457
																								Int:1
																								Get w Ti2457
																							FMul Td2456 Td2458
																					FAdd Td2454 Td2459
																			Let Td2465
																				Let Td2462
																					Let Ti2461
																						Int:2
																						Get v Ti2461
																					Let Td2464
																						Let Ti2463
																							Int:2
																							Get w Ti2463
																						FMul Td2462 Td2464
																				FAdd Td2460 Td2465
																		LetRec veciprod2 v w0 w1 w2 
																			Let Td2446
																				Let Td2442
																					Let Td2441
																						Let Ti2440
																							Int:0
																							Get v Ti2440
																						FMul Td2441 w0
																					Let Td2445
																						Let Td2444
																							Let Ti2443
																								Int:1
																								Get v Ti2443
																							FMul Td2444 w1
																						FAdd Td2442 Td2445
																				Let Td2449
																					Let Td2448
																						Let Ti2447
																							Int:2
																							Get v Ti2447
																						FMul Td2448 w2
																					FAdd Td2446 Td2449
																			LetRec vecaccum dest scale v 
																				Let Tu20
																					Let Ti2419
																						Int:0
																						Let Td2425
																							Let Td2421
																								Let Ti2420
																									Int:0
																									Get dest Ti2420
																								Let Td2424
																									Let Td2423
																										Let Ti2422
																											Int:0
																											Get v Ti2422
																										FMul scale Td2423
																									FAdd Td2421 Td2424
																							Put dest Ti2419 Td2425
																					Let Tu19
																						Let Ti2426
																							Int:1
																							Let Td2432
																								Let Td2428
																									Let Ti2427
																										Int:1
																										Get dest Ti2427
																									Let Td2431
																										Let Td2430
																											Let Ti2429
																												Int:1
																												Get v Ti2429
																											FMul scale Td2430
																										FAdd Td2428 Td2431
																								Put dest Ti2426 Td2432
																						Let Ti2433
																							Int:2
																							Let Td2439
																								Let Td2435
																									Let Ti2434
																										Int:2
																										Get dest Ti2434
																									Let Td2438
																										Let Td2437
																											Let Ti2436
																												Int:2
																												Get v Ti2436
																											FMul scale Td2437
																										FAdd Td2435 Td2438
																								Put dest Ti2433 Td2439
																				LetRec vecadd dest v 
																					Let Tu22
																						Let Ti2401
																							Int:0
																							Let Td2406
																								Let Td2403
																									Let Ti2402
																										Int:0
																										Get dest Ti2402
																									Let Td2405
																										Let Ti2404
																											Int:0
																											Get v Ti2404
																										FAdd Td2403 Td2405
																								Put dest Ti2401 Td2406
																						Let Tu21
																							Let Ti2407
																								Int:1
																								Let Td2412
																									Let Td2409
																										Let Ti2408
																											Int:1
																											Get dest Ti2408
																										Let Td2411
																											Let Ti2410
																												Int:1
																												Get v Ti2410
																											FAdd Td2409 Td2411
																									Put dest Ti2407 Td2412
																							Let Ti2413
																								Int:2
																								Let Td2418
																									Let Td2415
																										Let Ti2414
																											Int:2
																											Get dest Ti2414
																										Let Td2417
																											Let Ti2416
																												Int:2
																												Get v Ti2416
																											FAdd Td2415 Td2417
																									Put dest Ti2413 Td2418
																					LetRec vecmul dest v 
																						Let Tu24
																							Let Ti2383
																								Int:0
																								Let Td2388
																									Let Td2385
																										Let Ti2384
																											Int:0
																											Get dest Ti2384
																										Let Td2387
																											Let Ti2386
																												Int:0
																												Get v Ti2386
																											FMul Td2385 Td2387
																									Put dest Ti2383 Td2388
																							Let Tu23
																								Let Ti2389
																									Int:1
																									Let Td2394
																										Let Td2391
																											Let Ti2390
																												Int:1
																												Get dest Ti2390
																											Let Td2393
																												Let Ti2392
																													Int:1
																													Get v Ti2392
																												FMul Td2391 Td2393
																										Put dest Ti2389 Td2394
																								Let Ti2395
																									Int:2
																									Let Td2400
																										Let Td2397
																											Let Ti2396
																												Int:2
																												Get dest Ti2396
																											Let Td2399
																												Let Ti2398
																													Int:2
																													Get v Ti2398
																												FMul Td2397 Td2399
																										Put dest Ti2395 Td2400
																						LetRec vecscale dest scale 
																							Let Tu26
																								Let Ti2371
																									Int:0
																									Let Td2374
																										Let Td2373
																											Let Ti2372
																												Int:0
																												Get dest Ti2372
																											FMul Td2373 scale
																										Put dest Ti2371 Td2374
																								Let Tu25
																									Let Ti2375
																										Int:1
																										Let Td2378
																											Let Td2377
																												Let Ti2376
																													Int:1
																													Get dest Ti2376
																												FMul Td2377 scale
																											Put dest Ti2375 Td2378
																									Let Ti2379
																										Int:2
																										Let Td2382
																											Let Td2381
																												Let Ti2380
																													Int:2
																													Get dest Ti2380
																												FMul Td2381 scale
																											Put dest Ti2379 Td2382
																							LetRec vecaccumv dest v w 
																								Let Tu28
																									Let Ti2344
																										Int:0
																										Let Td2352
																											Let Td2346
																												Let Ti2345
																													Int:0
																													Get dest Ti2345
																												Let Td2351
																													Let Td2348
																														Let Ti2347
																															Int:0
																															Get v Ti2347
																														Let Td2350
																															Let Ti2349
																																Int:0
																																Get w Ti2349
																															FMul Td2348 Td2350
																													FAdd Td2346 Td2351
																											Put dest Ti2344 Td2352
																									Let Tu27
																										Let Ti2353
																											Int:1
																											Let Td2361
																												Let Td2355
																													Let Ti2354
																														Int:1
																														Get dest Ti2354
																													Let Td2360
																														Let Td2357
																															Let Ti2356
																																Int:1
																																Get v Ti2356
																															Let Td2359
																																Let Ti2358
																																	Int:1
																																	Get w Ti2358
																																FMul Td2357 Td2359
																														FAdd Td2355 Td2360
																												Put dest Ti2353 Td2361
																										Let Ti2362
																											Int:2
																											Let Td2370
																												Let Td2364
																													Let Ti2363
																														Int:2
																														Get dest Ti2363
																													Let Td2369
																														Let Td2366
																															Let Ti2365
																																Int:2
																																Get v Ti2365
																															Let Td2368
																																Let Ti2367
																																	Int:2
																																	Get w Ti2367
																																FMul Td2366 Td2368
																														FAdd Td2364 Td2369
																												Put dest Ti2362 Td2370
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
																															Let Ti2343
																																Int:0
																																Get m_abc Ti2343
																														LetRec o_param_b m 
																															LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																Let Ti2342
																																	Int:1
																																	Get m_abc Ti2342
																															LetRec o_param_c m 
																																LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																	Let Ti2341
																																		Int:2
																																		Get m_abc Ti2341
																																LetRec o_param_abc m 
																																	LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																		Var m_abc
																																	LetRec o_param_x m 
																																		LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																			Let Ti2340
																																				Int:0
																																				Get m_xyz Ti2340
																																		LetRec o_param_y m 
																																			LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																				Let Ti2339
																																					Int:1
																																					Get m_xyz Ti2339
																																			LetRec o_param_z m 
																																				LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																					Let Ti2338
																																						Int:2
																																						Get m_xyz Ti2338
																																				LetRec o_diffuse m 
																																					LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																						Let Ti2337
																																							Int:0
																																							Get m_surfparams Ti2337
																																					LetRec o_hilight m 
																																						LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																							Let Ti2336
																																								Int:1
																																								Get m_surfparams Ti2336
																																						LetRec o_color_red m 
																																							LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																								Let Ti2335
																																									Int:0
																																									Get m_color Ti2335
																																							LetRec o_color_green m 
																																								LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																									Let Ti2334
																																										Int:1
																																										Get m_color Ti2334
																																								LetRec o_color_blue m 
																																									LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																										Let Ti2333
																																											Int:2
																																											Get m_color Ti2333
																																									LetRec o_param_r1 m 
																																										LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																											Let Ti2332
																																												Int:0
																																												Get m_rot123 Ti2332
																																										LetRec o_param_r2 m 
																																											LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																												Let Ti2331
																																													Int:1
																																													Get m_rot123 Ti2331
																																											LetRec o_param_r3 m 
																																												LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																													Let Ti2330
																																														Int:2
																																														Get m_rot123 Ti2330
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
																																																					Let Ti2329
																																																						Int:0
																																																						Get m_gid Ti2329
																																																				LetRec p_set_group_id pixel id 
																																																					LetTuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,m_gid,xm_nvectors,)
 pixel
																																																						Let Ti2328
																																																							Int:0
																																																							Put m_gid Ti2328 id
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
																																																												Let Td2327
																																																													Float:0.017453
																																																													FMul x Td2327
																																																												LetRec read_screen_settings Tu29 
																																																													Let Tu43
																																																														Let Ta2251
																																																															ExtArray 288
																																																															Let Ti2252
																																																																Int:0
																																																																Let Td2254
																																																																	Let Tu2253
																																																																		Unit
																																																																		ExtFunApp read_float Tu2253,
																																																																	Put Ta2251 Ti2252 Td2254
																																																														Let Tu42
																																																															Let Ta2255
																																																																ExtArray 288
																																																																Let Ti2256
																																																																	Int:1
																																																																	Let Td2258
																																																																		Let Tu2257
																																																																			Unit
																																																																			ExtFunApp read_float Tu2257,
																																																																		Put Ta2255 Ti2256 Td2258
																																																															Let Tu41
																																																																Let Ta2259
																																																																	ExtArray 288
																																																																	Let Ti2260
																																																																		Int:2
																																																																		Let Td2262
																																																																			Let Tu2261
																																																																				Unit
																																																																				ExtFunApp read_float Tu2261,
																																																																			Put Ta2259 Ti2260 Td2262
																																																																Let v1
																																																																	Let Td2264
																																																																		Let Tu2263
																																																																			Unit
																																																																			ExtFunApp read_float Tu2263,
																																																																		App radTd2264 
																																																																	Let cos_v1
																																																																		ExtFunApp cos v1,
																																																																		Let sin_v1
																																																																			ExtFunApp sin v1,
																																																																			Let v2
																																																																				Let Td2266
																																																																					Let Tu2265
																																																																						Unit
																																																																						ExtFunApp read_float Tu2265,
																																																																					App radTd2266 
																																																																				Let cos_v2
																																																																					ExtFunApp cos v2,
																																																																					Let sin_v2
																																																																						ExtFunApp sin v2,
																																																																						Let Tu40
																																																																							Let Ta2267
																																																																								ExtArray 684
																																																																								Let Ti2268
																																																																									Int:0
																																																																									Let Td2271
																																																																										Let Td2269
																																																																											FMul cos_v1 sin_v2
																																																																											Let Td2270
																																																																												Float:200.000000
																																																																												FMul Td2269 Td2270
																																																																										Put Ta2267 Ti2268 Td2271
																																																																							Let Tu39
																																																																								Let Ta2272
																																																																									ExtArray 684
																																																																									Let Ti2273
																																																																										Int:1
																																																																										Let Td2275
																																																																											Let Td2274
																																																																												Float:-200.000000
																																																																												FMul sin_v1 Td2274
																																																																											Put Ta2272 Ti2273 Td2275
																																																																								Let Tu38
																																																																									Let Ta2276
																																																																										ExtArray 684
																																																																										Let Ti2277
																																																																											Int:2
																																																																											Let Td2280
																																																																												Let Td2278
																																																																													FMul cos_v1 cos_v2
																																																																													Let Td2279
																																																																														Float:200.000000
																																																																														FMul Td2278 Td2279
																																																																												Put Ta2276 Ti2277 Td2280
																																																																									Let Tu37
																																																																										Let Ta2281
																																																																											ExtArray 660
																																																																											Let Ti2282
																																																																												Int:0
																																																																												Put Ta2281 Ti2282 cos_v2
																																																																										Let Tu36
																																																																											Let Ta2283
																																																																												ExtArray 660
																																																																												Let Ti2284
																																																																													Int:1
																																																																													Let Td2285
																																																																														Float:0.000000
																																																																														Put Ta2283 Ti2284 Td2285
																																																																											Let Tu35
																																																																												Let Ta2286
																																																																													ExtArray 660
																																																																													Let Ti2287
																																																																														Int:2
																																																																														Let Td2288
																																																																															App fnegsin_v2 
																																																																															Put Ta2286 Ti2287 Td2288
																																																																												Let Tu34
																																																																													Let Ta2289
																																																																														ExtArray 672
																																																																														Let Ti2290
																																																																															Int:0
																																																																															Let Td2292
																																																																																Let Td2291
																																																																																	App fnegsin_v1 
																																																																																	FMul Td2291 sin_v2
																																																																																Put Ta2289 Ti2290 Td2292
																																																																													Let Tu33
																																																																														Let Ta2293
																																																																															ExtArray 672
																																																																															Let Ti2294
																																																																																Int:1
																																																																																Let Td2295
																																																																																	App fnegcos_v1 
																																																																																	Put Ta2293 Ti2294 Td2295
																																																																														Let Tu32
																																																																															Let Ta2296
																																																																																ExtArray 672
																																																																																Let Ti2297
																																																																																	Int:2
																																																																																	Let Td2299
																																																																																		Let Td2298
																																																																																			App fnegsin_v1 
																																																																																			FMul Td2298 cos_v2
																																																																																		Put Ta2296 Ti2297 Td2299
																																																																															Let Tu31
																																																																																Let Ta2300
																																																																																	ExtArray 300
																																																																																	Let Ti2301
																																																																																		Int:0
																																																																																		Let Td2308
																																																																																			Let Td2304
																																																																																				Let Ta2302
																																																																																					ExtArray 288
																																																																																					Let Ti2303
																																																																																						Int:0
																																																																																						Get Ta2302 Ti2303
																																																																																				Let Td2307
																																																																																					Let Ta2305
																																																																																						ExtArray 684
																																																																																						Let Ti2306
																																																																																							Int:0
																																																																																							Get Ta2305 Ti2306
																																																																																					FSub Td2304 Td2307
																																																																																			Put Ta2300 Ti2301 Td2308
																																																																																Let Tu30
																																																																																	Let Ta2309
																																																																																		ExtArray 300
																																																																																		Let Ti2310
																																																																																			Int:1
																																																																																			Let Td2317
																																																																																				Let Td2313
																																																																																					Let Ta2311
																																																																																						ExtArray 288
																																																																																						Let Ti2312
																																																																																							Int:1
																																																																																							Get Ta2311 Ti2312
																																																																																					Let Td2316
																																																																																						Let Ta2314
																																																																																							ExtArray 684
																																																																																							Let Ti2315
																																																																																								Int:1
																																																																																								Get Ta2314 Ti2315
																																																																																						FSub Td2313 Td2316
																																																																																				Put Ta2309 Ti2310 Td2317
																																																																																	Let Ta2318
																																																																																		ExtArray 300
																																																																																		Let Ti2319
																																																																																			Int:2
																																																																																			Let Td2326
																																																																																				Let Td2322
																																																																																					Let Ta2320
																																																																																						ExtArray 288
																																																																																						Let Ti2321
																																																																																							Int:2
																																																																																							Get Ta2320 Ti2321
																																																																																					Let Td2325
																																																																																						Let Ta2323
																																																																																							ExtArray 684
																																																																																							Let Ti2324
																																																																																								Int:2
																																																																																								Get Ta2323 Ti2324
																																																																																						FSub Td2322 Td2325
																																																																																				Put Ta2318 Ti2319 Td2326
																																																													LetRec read_light Tu44 
																																																														Let nl
																																																															Let Tu2233
																																																																Unit
																																																																ExtFunApp read_int Tu2233,
																																																															Let l1
																																																																Let Td2235
																																																																	Let Tu2234
																																																																		Unit
																																																																		ExtFunApp read_float Tu2234,
																																																																	App radTd2235 
																																																																Let sl1
																																																																	ExtFunApp sin l1,
																																																																	Let Tu47
																																																																		Let Ta2236
																																																																			ExtArray 312
																																																																			Let Ti2237
																																																																				Int:1
																																																																				Let Td2238
																																																																					App fnegsl1 
																																																																					Put Ta2236 Ti2237 Td2238
																																																																		Let l2
																																																																			Let Td2240
																																																																				Let Tu2239
																																																																					Unit
																																																																					ExtFunApp read_float Tu2239,
																																																																				App radTd2240 
																																																																			Let cl1
																																																																				ExtFunApp cos l1,
																																																																				Let sl2
																																																																					ExtFunApp sin l2,
																																																																					Let Tu46
																																																																						Let Ta2241
																																																																							ExtArray 312
																																																																							Let Ti2242
																																																																								Int:0
																																																																								Let Td2243
																																																																									FMul cl1 sl2
																																																																									Put Ta2241 Ti2242 Td2243
																																																																						Let cl2
																																																																							ExtFunApp cos l2,
																																																																							Let Tu45
																																																																								Let Ta2244
																																																																									ExtArray 312
																																																																									Let Ti2245
																																																																										Int:2
																																																																										Let Td2246
																																																																											FMul cl1 cl2
																																																																											Put Ta2244 Ti2245 Td2246
																																																																								Let Ta2247
																																																																									ExtArray 324
																																																																									Let Ti2248
																																																																										Int:0
																																																																										Let Td2250
																																																																											Let Tu2249
																																																																												Unit
																																																																												ExtFunApp read_float Tu2249,
																																																																											Put Ta2247 Ti2248 Td2250
																																																														LetRec rotate_quadratic_matrix abc rot 
																																																															Let cos_x
																																																																Let Td2147
																																																																	Let Ti2146
																																																																		Int:0
																																																																		Get rot Ti2146
																																																																	ExtFunApp cos Td2147,
																																																																Let sin_x
																																																																	Let Td2149
																																																																		Let Ti2148
																																																																			Int:0
																																																																			Get rot Ti2148
																																																																		ExtFunApp sin Td2149,
																																																																	Let cos_y
																																																																		Let Td2151
																																																																			Let Ti2150
																																																																				Int:1
																																																																				Get rot Ti2150
																																																																			ExtFunApp cos Td2151,
																																																																		Let sin_y
																																																																			Let Td2153
																																																																				Let Ti2152
																																																																					Int:1
																																																																					Get rot Ti2152
																																																																				ExtFunApp sin Td2153,
																																																																			Let cos_z
																																																																				Let Td2155
																																																																					Let Ti2154
																																																																						Int:2
																																																																						Get rot Ti2154
																																																																					ExtFunApp cos Td2155,
																																																																				Let sin_z
																																																																					Let Td2157
																																																																						Let Ti2156
																																																																							Int:2
																																																																							Get rot Ti2156
																																																																						ExtFunApp sin Td2157,
																																																																					Let m00
																																																																						FMul cos_y cos_z
																																																																						Let m01
																																																																							Let Td2159
																																																																								Let Td2158
																																																																									FMul sin_x sin_y
																																																																									FMul Td2158 cos_z
																																																																								Let Td2160
																																																																									FMul cos_x sin_z
																																																																									FSub Td2159 Td2160
																																																																							Let m02
																																																																								Let Td2162
																																																																									Let Td2161
																																																																										FMul cos_x sin_y
																																																																										FMul Td2161 cos_z
																																																																									Let Td2163
																																																																										FMul sin_x sin_z
																																																																										FAdd Td2162 Td2163
																																																																								Let m10
																																																																									FMul cos_y sin_z
																																																																									Let m11
																																																																										Let Td2165
																																																																											Let Td2164
																																																																												FMul sin_x sin_y
																																																																												FMul Td2164 sin_z
																																																																											Let Td2166
																																																																												FMul cos_x cos_z
																																																																												FAdd Td2165 Td2166
																																																																										Let m12
																																																																											Let Td2168
																																																																												Let Td2167
																																																																													FMul cos_x sin_y
																																																																													FMul Td2167 sin_z
																																																																												Let Td2169
																																																																													FMul sin_x cos_z
																																																																													FSub Td2168 Td2169
																																																																											Let m20
																																																																												App fnegsin_y 
																																																																												Let m21
																																																																													FMul sin_x cos_y
																																																																													Let m22
																																																																														FMul cos_x cos_y
																																																																														Let ao
																																																																															Let Ti2170
																																																																																Int:0
																																																																																Get abc Ti2170
																																																																															Let bo
																																																																																Let Ti2171
																																																																																	Int:1
																																																																																	Get abc Ti2171
																																																																																Let co
																																																																																	Let Ti2172
																																																																																		Int:2
																																																																																		Get abc Ti2172
																																																																																	Let Tu52
																																																																																		Let Ti2173
																																																																																			Int:0
																																																																																			Let Td2181
																																																																																				Let Td2178
																																																																																					Let Td2175
																																																																																						Let Td2174
																																																																																							App fsqrm00 
																																																																																							FMul ao Td2174
																																																																																						Let Td2177
																																																																																							Let Td2176
																																																																																								App fsqrm10 
																																																																																								FMul bo Td2176
																																																																																							FAdd Td2175 Td2177
																																																																																					Let Td2180
																																																																																						Let Td2179
																																																																																							App fsqrm20 
																																																																																							FMul co Td2179
																																																																																						FAdd Td2178 Td2180
																																																																																				Put abc Ti2173 Td2181
																																																																																		Let Tu51
																																																																																			Let Ti2182
																																																																																				Int:1
																																																																																				Let Td2190
																																																																																					Let Td2187
																																																																																						Let Td2184
																																																																																							Let Td2183
																																																																																								App fsqrm01 
																																																																																								FMul ao Td2183
																																																																																							Let Td2186
																																																																																								Let Td2185
																																																																																									App fsqrm11 
																																																																																									FMul bo Td2185
																																																																																								FAdd Td2184 Td2186
																																																																																						Let Td2189
																																																																																							Let Td2188
																																																																																								App fsqrm21 
																																																																																								FMul co Td2188
																																																																																							FAdd Td2187 Td2189
																																																																																					Put abc Ti2182 Td2190
																																																																																			Let Tu50
																																																																																				Let Ti2191
																																																																																					Int:2
																																																																																					Let Td2199
																																																																																						Let Td2196
																																																																																							Let Td2193
																																																																																								Let Td2192
																																																																																									App fsqrm02 
																																																																																									FMul ao Td2192
																																																																																								Let Td2195
																																																																																									Let Td2194
																																																																																										App fsqrm12 
																																																																																										FMul bo Td2194
																																																																																									FAdd Td2193 Td2195
																																																																																							Let Td2198
																																																																																								Let Td2197
																																																																																									App fsqrm22 
																																																																																									FMul co Td2197
																																																																																								FAdd Td2196 Td2198
																																																																																						Put abc Ti2191 Td2199
																																																																																				Let Tu49
																																																																																					Let Ti2200
																																																																																						Int:0
																																																																																						Let Td2210
																																																																																							Let Td2201
																																																																																								Float:2.000000
																																																																																								Let Td2209
																																																																																									Let Td2206
																																																																																										Let Td2203
																																																																																											Let Td2202
																																																																																												FMul ao m01
																																																																																												FMul Td2202 m02
																																																																																											Let Td2205
																																																																																												Let Td2204
																																																																																													FMul bo m11
																																																																																													FMul Td2204 m12
																																																																																												FAdd Td2203 Td2205
																																																																																										Let Td2208
																																																																																											Let Td2207
																																																																																												FMul co m21
																																																																																												FMul Td2207 m22
																																																																																											FAdd Td2206 Td2208
																																																																																									FMul Td2201 Td2209
																																																																																							Put rot Ti2200 Td2210
																																																																																					Let Tu48
																																																																																						Let Ti2211
																																																																																							Int:1
																																																																																							Let Td2221
																																																																																								Let Td2212
																																																																																									Float:2.000000
																																																																																									Let Td2220
																																																																																										Let Td2217
																																																																																											Let Td2214
																																																																																												Let Td2213
																																																																																													FMul ao m00
																																																																																													FMul Td2213 m02
																																																																																												Let Td2216
																																																																																													Let Td2215
																																																																																														FMul bo m10
																																																																																														FMul Td2215 m12
																																																																																													FAdd Td2214 Td2216
																																																																																											Let Td2219
																																																																																												Let Td2218
																																																																																													FMul co m20
																																																																																													FMul Td2218 m22
																																																																																												FAdd Td2217 Td2219
																																																																																										FMul Td2212 Td2220
																																																																																								Put rot Ti2211 Td2221
																																																																																						Let Ti2222
																																																																																							Int:2
																																																																																							Let Td2232
																																																																																								Let Td2223
																																																																																									Float:2.000000
																																																																																									Let Td2231
																																																																																										Let Td2228
																																																																																											Let Td2225
																																																																																												Let Td2224
																																																																																													FMul ao m00
																																																																																													FMul Td2224 m01
																																																																																												Let Td2227
																																																																																													Let Td2226
																																																																																														FMul bo m10
																																																																																														FMul Td2226 m11
																																																																																													FAdd Td2225 Td2227
																																																																																											Let Td2230
																																																																																												Let Td2229
																																																																																													FMul co m20
																																																																																													FMul Td2229 m21
																																																																																												FAdd Td2228 Td2230
																																																																																										FMul Td2223 Td2231
																																																																																								Put rot Ti2222 Td2232
																																																															LetRec read_nth_object n 
																																																																Let texture
																																																																	Let Tu2051
																																																																		Unit
																																																																		ExtFunApp read_int Tu2051,
																																																																	Let Ti2053
																																																																		Let Ti2052
																																																																			Int:1
																																																																			Neg Ti2052
																																																																		IfEq texture Ti2053
																																																																			Int:0
																																																																			Let form
																																																																				Let Tu2054
																																																																					Unit
																																																																					ExtFunApp read_int Tu2054,
																																																																				Let refltype
																																																																					Let Tu2055
																																																																						Unit
																																																																						ExtFunApp read_int Tu2055,
																																																																					Let isrot_p
																																																																						Let Tu2056
																																																																							Unit
																																																																							ExtFunApp read_int Tu2056,
																																																																						Let abc
																																																																							Let Ti2057
																																																																								Int:3
																																																																								Let Td2058
																																																																									Float:0.000000
																																																																									ExtFunApp create_float_array Ti2057,Td2058,
																																																																							Let Tu71
																																																																								Let Ti2059
																																																																									Int:0
																																																																									Let Td2061
																																																																										Let Tu2060
																																																																											Unit
																																																																											ExtFunApp read_float Tu2060,
																																																																										Put abc Ti2059 Td2061
																																																																								Let Tu70
																																																																									Let Ti2062
																																																																										Int:1
																																																																										Let Td2064
																																																																											Let Tu2063
																																																																												Unit
																																																																												ExtFunApp read_float Tu2063,
																																																																											Put abc Ti2062 Td2064
																																																																									Let Tu69
																																																																										Let Ti2065
																																																																											Int:2
																																																																											Let Td2067
																																																																												Let Tu2066
																																																																													Unit
																																																																													ExtFunApp read_float Tu2066,
																																																																												Put abc Ti2065 Td2067
																																																																										Let xyz
																																																																											Let Ti2068
																																																																												Int:3
																																																																												Let Td2069
																																																																													Float:0.000000
																																																																													ExtFunApp create_float_array Ti2068,Td2069,
																																																																											Let Tu68
																																																																												Let Ti2070
																																																																													Int:0
																																																																													Let Td2072
																																																																														Let Tu2071
																																																																															Unit
																																																																															ExtFunApp read_float Tu2071,
																																																																														Put xyz Ti2070 Td2072
																																																																												Let Tu67
																																																																													Let Ti2073
																																																																														Int:1
																																																																														Let Td2075
																																																																															Let Tu2074
																																																																																Unit
																																																																																ExtFunApp read_float Tu2074,
																																																																															Put xyz Ti2073 Td2075
																																																																													Let Tu66
																																																																														Let Ti2076
																																																																															Int:2
																																																																															Let Td2078
																																																																																Let Tu2077
																																																																																	Unit
																																																																																	ExtFunApp read_float Tu2077,
																																																																																Put xyz Ti2076 Td2078
																																																																														Let m_invert
																																																																															Let Td2079
																																																																																Float:0.000000
																																																																																Let Td2081
																																																																																	Let Tu2080
																																																																																		Unit
																																																																																		ExtFunApp read_float Tu2080,
																																																																																	IfLE Td2079 Td2081
																																																																																		Int:0
																																																																																		Int:1
																																																																															Let reflparam
																																																																																Let Ti2082
																																																																																	Int:2
																																																																																	Let Td2083
																																																																																		Float:0.000000
																																																																																		ExtFunApp create_float_array Ti2082,Td2083,
																																																																																Let Tu65
																																																																																	Let Ti2084
																																																																																		Int:0
																																																																																		Let Td2086
																																																																																			Let Tu2085
																																																																																				Unit
																																																																																				ExtFunApp read_float Tu2085,
																																																																																			Put reflparam Ti2084 Td2086
																																																																																	Let Tu64
																																																																																		Let Ti2087
																																																																																			Int:1
																																																																																			Let Td2089
																																																																																				Let Tu2088
																																																																																					Unit
																																																																																					ExtFunApp read_float Tu2088,
																																																																																				Put reflparam Ti2087 Td2089
																																																																																		Let color
																																																																																			Let Ti2090
																																																																																				Int:3
																																																																																				Let Td2091
																																																																																					Float:0.000000
																																																																																					ExtFunApp create_float_array Ti2090,Td2091,
																																																																																			Let Tu63
																																																																																				Let Ti2092
																																																																																					Int:0
																																																																																					Let Td2094
																																																																																						Let Tu2093
																																																																																							Unit
																																																																																							ExtFunApp read_float Tu2093,
																																																																																						Put color Ti2092 Td2094
																																																																																				Let Tu62
																																																																																					Let Ti2095
																																																																																						Int:1
																																																																																						Let Td2097
																																																																																							Let Tu2096
																																																																																								Unit
																																																																																								ExtFunApp read_float Tu2096,
																																																																																							Put color Ti2095 Td2097
																																																																																					Let Tu61
																																																																																						Let Ti2098
																																																																																							Int:2
																																																																																							Let Td2100
																																																																																								Let Tu2099
																																																																																									Unit
																																																																																									ExtFunApp read_float Tu2099,
																																																																																								Put color Ti2098 Td2100
																																																																																						Let rotation
																																																																																							Let Ti2101
																																																																																								Int:3
																																																																																								Let Td2102
																																																																																									Float:0.000000
																																																																																									ExtFunApp create_float_array Ti2101,Td2102,
																																																																																							Let Tu60
																																																																																								Let Ti2103
																																																																																									Int:0
																																																																																									IfEq isrot_p Ti2103
																																																																																										Unit
																																																																																										Let Tu54
																																																																																											Let Ti2104
																																																																																												Int:0
																																																																																												Let Td2107
																																																																																													Let Td2106
																																																																																														Let Tu2105
																																																																																															Unit
																																																																																															ExtFunApp read_float Tu2105,
																																																																																														App radTd2106 
																																																																																													Put rotation Ti2104 Td2107
																																																																																											Let Tu53
																																																																																												Let Ti2108
																																																																																													Int:1
																																																																																													Let Td2111
																																																																																														Let Td2110
																																																																																															Let Tu2109
																																																																																																Unit
																																																																																																ExtFunApp read_float Tu2109,
																																																																																															App radTd2110 
																																																																																														Put rotation Ti2108 Td2111
																																																																																												Let Ti2112
																																																																																													Int:2
																																																																																													Let Td2115
																																																																																														Let Td2114
																																																																																															Let Tu2113
																																																																																																Unit
																																																																																																ExtFunApp read_float Tu2113,
																																																																																															App radTd2114 
																																																																																														Put rotation Ti2112 Td2115
																																																																																								Let m_invert2
																																																																																									Let Ti2116
																																																																																										Int:2
																																																																																										IfEq form Ti2116
																																																																																											Int:1
																																																																																											Var m_invert
																																																																																									Let ctbl
																																																																																										Let Ti2117
																																																																																											Int:4
																																																																																											Let Td2118
																																																																																												Float:0.000000
																																																																																												ExtFunApp create_float_array Ti2117,Td2118,
																																																																																										Let obj
																																																																																											Tuple (texture,form,refltype,isrot_p,abc,xyz,m_invert2,reflparam,color,rotation,ctbl,)
																																																																																											Let Tu59
																																																																																												Let Ta2119
																																																																																													ExtArray 48
																																																																																													Put Ta2119 n obj
																																																																																												Let Tu58
																																																																																													Let Ti2120
																																																																																														Int:3
																																																																																														IfEq form Ti2120
																																																																																															Let a
																																																																																																Let Ti2121
																																																																																																	Int:0
																																																																																																	Get abc Ti2121
																																																																																																Let Tu56
																																																																																																	Let Ti2122
																																																																																																		Int:0
																																																																																																		Let Td2127
																																																																																																			Let Td2123
																																																																																																				Float:0.000000
																																																																																																				IfEq a Td2123
																																																																																																					Float:0.000000
																																																																																																					Let Td2124
																																																																																																						App sgna 
																																																																																																						Let Td2125
																																																																																																							App fsqra 
																																																																																																							Let Td2126
																																																																																																								FReciprocal Td2125
																																																																																																								FMul Td2124 Td2126
																																																																																																			Put abc Ti2122 Td2127
																																																																																																	Let b
																																																																																																		Let Ti2128
																																																																																																			Int:1
																																																																																																			Get abc Ti2128
																																																																																																		Let Tu55
																																																																																																			Let Ti2129
																																																																																																				Int:1
																																																																																																				Let Td2134
																																																																																																					Let Td2130
																																																																																																						Float:0.000000
																																																																																																						IfEq b Td2130
																																																																																																							Float:0.000000
																																																																																																							Let Td2131
																																																																																																								App sgnb 
																																																																																																								Let Td2132
																																																																																																									App fsqrb 
																																																																																																									Let Td2133
																																																																																																										FReciprocal Td2132
																																																																																																										FMul Td2131 Td2133
																																																																																																					Put abc Ti2129 Td2134
																																																																																																			Let c
																																																																																																				Let Ti2135
																																																																																																					Int:2
																																																																																																					Get abc Ti2135
																																																																																																				Let Ti2136
																																																																																																					Int:2
																																																																																																					Let Td2141
																																																																																																						Let Td2137
																																																																																																							Float:0.000000
																																																																																																							IfEq c Td2137
																																																																																																								Float:0.000000
																																																																																																								Let Td2138
																																																																																																									App sgnc 
																																																																																																									Let Td2139
																																																																																																										App fsqrc 
																																																																																																										Let Td2140
																																																																																																											FReciprocal Td2139
																																																																																																											FMul Td2138 Td2140
																																																																																																						Put abc Ti2136 Td2141
																																																																																															Let Ti2142
																																																																																																Int:2
																																																																																																IfEq form Ti2142
																																																																																																	Let Ti2144
																																																																																																		Let Ti2143
																																																																																																			Int:0
																																																																																																			IfEq m_invert Ti2143
																																																																																																				Int:1
																																																																																																				Int:0
																																																																																																		App vecunit_sgnabc Ti2144 
																																																																																																	Unit
																																																																																													Let Tu57
																																																																																														Let Ti2145
																																																																																															Int:0
																																																																																															IfEq isrot_p Ti2145
																																																																																																Unit
																																																																																																App rotate_quadratic_matrixabc rotation 
																																																																																														Int:1
																																																																LetRec read_object n 
																																																																	Let Ti2044
																																																																		Int:60
																																																																		IfLE Ti2044 n
																																																																			Unit
																																																																			Let Tb2045
																																																																				App read_nth_objectn 
																																																																				Let Ti2046
																																																																					Int:0
																																																																					IfEq Tb2045 Ti2046
																																																																						Let Ta2047
																																																																							ExtArray 0
																																																																							Let Ti2048
																																																																								Int:0
																																																																								Put Ta2047 Ti2048 n
																																																																						Let Ti2050
																																																																							Let Ti2049
																																																																								Int:1
																																																																								Add n Ti2049
																																																																							App read_objectTi2050 
																																																																	LetRec read_all_object Tu72 
																																																																		Let Ti2043
																																																																			Int:0
																																																																			App read_objectTi2043 
																																																																		LetRec read_net_item length 
																																																																			Let item
																																																																				Let Tu2034
																																																																					Unit
																																																																					ExtFunApp read_int Tu2034,
																																																																				Let Ti2036
																																																																					Let Ti2035
																																																																						Int:1
																																																																						Neg Ti2035
																																																																					IfEq item Ti2036
																																																																						Let Ti2038
																																																																							Let Ti2037
																																																																								Int:1
																																																																								Add length Ti2037
																																																																							Let Ti2040
																																																																								Let Ti2039
																																																																									Int:1
																																																																									Neg Ti2039
																																																																								ExtFunApp create_array Ti2038,Ti2040,
																																																																						Let v
																																																																							Let Ti2042
																																																																								Let Ti2041
																																																																									Int:1
																																																																									Add length Ti2041
																																																																								App read_net_itemTi2042 
																																																																							Let Tu73
																																																																								Put v length item
																																																																								Var v
																																																																			LetRec read_or_network length 
																																																																				Let net
																																																																					Let Ti2025
																																																																						Int:0
																																																																						App read_net_itemTi2025 
																																																																					Let Ti2027
																																																																						Let Ti2026
																																																																							Int:0
																																																																							Get net Ti2026
																																																																						Let Ti2029
																																																																							Let Ti2028
																																																																								Int:1
																																																																								Neg Ti2028
																																																																							IfEq Ti2027 Ti2029
																																																																								Let Ti2031
																																																																									Let Ti2030
																																																																										Int:1
																																																																										Add length Ti2030
																																																																									ExtFunApp create_array Ti2031,net,
																																																																								Let v
																																																																									Let Ti2033
																																																																										Let Ti2032
																																																																											Int:1
																																																																											Add length Ti2032
																																																																										App read_or_networkTi2033 
																																																																									Let Tu74
																																																																										Put v length net
																																																																										Var v
																																																																				LetRec read_and_network n 
																																																																					Let net
																																																																						Let Ti2017
																																																																							Int:0
																																																																							App read_net_itemTi2017 
																																																																						Let Ti2019
																																																																							Let Ti2018
																																																																								Int:0
																																																																								Get net Ti2018
																																																																							Let Ti2021
																																																																								Let Ti2020
																																																																									Int:1
																																																																									Neg Ti2020
																																																																								IfEq Ti2019 Ti2021
																																																																									Unit
																																																																									Let Tu75
																																																																										Let Ta2022
																																																																											ExtArray 332
																																																																											Put Ta2022 n net
																																																																										Let Ti2024
																																																																											Let Ti2023
																																																																												Int:1
																																																																												Add n Ti2023
																																																																											App read_and_networkTi2024 
																																																																					LetRec read_parameter Tu76 
																																																																						Let Tu80
																																																																							Let Tu2009
																																																																								Unit
																																																																								App read_screen_settingsTu2009 
																																																																							Let Tu79
																																																																								Let Tu2010
																																																																									Unit
																																																																									App read_lightTu2010 
																																																																								Let Tu78
																																																																									Let Tu2011
																																																																										Unit
																																																																										App read_all_objectTu2011 
																																																																									Let Tu77
																																																																										Let Ti2012
																																																																											Int:0
																																																																											App read_and_networkTi2012 
																																																																										Let Ta2013
																																																																											ExtArray 536
																																																																											Let Ti2014
																																																																												Int:0
																																																																												Let Ta2016
																																																																													Let Ti2015
																																																																														Int:0
																																																																														App read_or_networkTi2015 
																																																																													Put Ta2013 Ti2014 Ta2016
																																																																						LetRec solver_rect_surface m dirvec b0 b1 b2 i0 i1 i2 
																																																																							Let Td1986
																																																																								Get dirvec i0
																																																																								Let Td1987
																																																																									Float:0.000000
																																																																									IfEq Td1986 Td1987
																																																																										Int:0
																																																																										Let abc
																																																																											App o_param_abcm 
																																																																											Let d
																																																																												Let Ti1992
																																																																													Let Tb1988
																																																																														App o_isinvertm 
																																																																														Let Ti1991
																																																																															Let Td1989
																																																																																Float:0.000000
																																																																																Let Td1990
																																																																																	Get dirvec i0
																																																																																	IfLE Td1989 Td1990
																																																																																		Int:0
																																																																																		Int:1
																																																																															xor Tb1988 Ti1991
																																																																													Let Td1993
																																																																														Get abc i0
																																																																														App fneg_condTi1992 Td1993 
																																																																												Let d2
																																																																													Let Td1994
																																																																														FSub d b0
																																																																														Let Td1995
																																																																															Get dirvec i0
																																																																															Let Td1996
																																																																																FReciprocal Td1995
																																																																																FMul Td1994 Td1996
																																																																													Let Td1997
																																																																														Get abc i1
																																																																														Let Td2001
																																																																															Let Td2000
																																																																																Let Td1999
																																																																																	Let Td1998
																																																																																		Get dirvec i1
																																																																																		FMul d2 Td1998
																																																																																	FAdd Td1999 b1
																																																																																fabs Td2000
																																																																															IfLE Td1997 Td2001
																																																																																Int:0
																																																																																Let Td2002
																																																																																	Get abc i2
																																																																																	Let Td2006
																																																																																		Let Td2005
																																																																																			Let Td2004
																																																																																				Let Td2003
																																																																																					Get dirvec i2
																																																																																					FMul d2 Td2003
																																																																																				FAdd Td2004 b2
																																																																																			fabs Td2005
																																																																																		IfLE Td2002 Td2006
																																																																																			Int:0
																																																																																			Let Tu81
																																																																																				Let Ta2007
																																																																																					ExtArray 540
																																																																																					Let Ti2008
																																																																																						Int:0
																																																																																						Put Ta2007 Ti2008 d2
																																																																																				Int:1
																																																																							LetRec solver_rect m dirvec b0 b1 b2 
																																																																								Let Tb1974
																																																																									Let Ti1971
																																																																										Int:0
																																																																										Let Ti1972
																																																																											Int:1
																																																																											Let Ti1973
																																																																												Int:2
																																																																												App solver_rect_surfacem dirvec b0 b1 b2 Ti1971 Ti1972 Ti1973 
																																																																									Let Ti1975
																																																																										Int:0
																																																																										IfEq Tb1974 Ti1975
																																																																											Let Tb1979
																																																																												Let Ti1976
																																																																													Int:1
																																																																													Let Ti1977
																																																																														Int:2
																																																																														Let Ti1978
																																																																															Int:0
																																																																															App solver_rect_surfacem dirvec b1 b2 b0 Ti1976 Ti1977 Ti1978 
																																																																												Let Ti1980
																																																																													Int:0
																																																																													IfEq Tb1979 Ti1980
																																																																														Let Tb1984
																																																																															Let Ti1981
																																																																																Int:2
																																																																																Let Ti1982
																																																																																	Int:0
																																																																																	Let Ti1983
																																																																																		Int:1
																																																																																		App solver_rect_surfacem dirvec b2 b0 b1 Ti1981 Ti1982 Ti1983 
																																																																															Let Ti1985
																																																																																Int:0
																																																																																IfEq Tb1984 Ti1985
																																																																																	Int:0
																																																																																	Int:3
																																																																														Int:2
																																																																											Int:1
																																																																								LetRec solver_surface m dirvec b0 b1 b2 
																																																																									Let abc
																																																																										App o_param_abcm 
																																																																										Let d
																																																																											App veciproddirvec abc 
																																																																											Let Td1964
																																																																												Float:0.000000
																																																																												IfLE d Td1964
																																																																													Int:0
																																																																													Let Tu82
																																																																														Let Ta1965
																																																																															ExtArray 540
																																																																															Let Ti1966
																																																																																Int:0
																																																																																Let Td1970
																																																																																	Let Td1968
																																																																																		Let Td1967
																																																																																			App veciprod2abc b0 b1 b2 
																																																																																			App fnegTd1967 
																																																																																		Let Td1969
																																																																																			FReciprocal d
																																																																																			FMul Td1968 Td1969
																																																																																	Put Ta1965 Ti1966 Td1970
																																																																														Int:1
																																																																									LetRec quadratic m v0 v1 v2 
																																																																										Let diag_part
																																																																											Let Td1947
																																																																												Let Td1943
																																																																													Let Td1941
																																																																														App fsqrv0 
																																																																														Let Td1942
																																																																															App o_param_am 
																																																																															FMul Td1941 Td1942
																																																																													Let Td1946
																																																																														Let Td1944
																																																																															App fsqrv1 
																																																																															Let Td1945
																																																																																App o_param_bm 
																																																																																FMul Td1944 Td1945
																																																																														FAdd Td1943 Td1946
																																																																												Let Td1950
																																																																													Let Td1948
																																																																														App fsqrv2 
																																																																														Let Td1949
																																																																															App o_param_cm 
																																																																															FMul Td1948 Td1949
																																																																													FAdd Td1947 Td1950
																																																																											Let Ti1951
																																																																												App o_isrotm 
																																																																												Let Ti1952
																																																																													Int:0
																																																																													IfEq Ti1951 Ti1952
																																																																														Var diag_part
																																																																														Let Td1960
																																																																															Let Td1956
																																																																																Let Td1955
																																																																																	Let Td1953
																																																																																		FMul v1 v2
																																																																																		Let Td1954
																																																																																			App o_param_r1m 
																																																																																			FMul Td1953 Td1954
																																																																																	FAdd diag_part Td1955
																																																																																Let Td1959
																																																																																	Let Td1957
																																																																																		FMul v2 v0
																																																																																		Let Td1958
																																																																																			App o_param_r2m 
																																																																																			FMul Td1957 Td1958
																																																																																	FAdd Td1956 Td1959
																																																																															Let Td1963
																																																																																Let Td1961
																																																																																	FMul v0 v1
																																																																																	Let Td1962
																																																																																		App o_param_r3m 
																																																																																		FMul Td1961 Td1962
																																																																																FAdd Td1960 Td1963
																																																																										LetRec bilinear m v0 v1 v2 w0 w1 w2 
																																																																											Let diag_part
																																																																												Let Td1917
																																																																													Let Td1913
																																																																														Let Td1911
																																																																															FMul v0 w0
																																																																															Let Td1912
																																																																																App o_param_am 
																																																																																FMul Td1911 Td1912
																																																																														Let Td1916
																																																																															Let Td1914
																																																																																FMul v1 w1
																																																																																Let Td1915
																																																																																	App o_param_bm 
																																																																																	FMul Td1914 Td1915
																																																																															FAdd Td1913 Td1916
																																																																													Let Td1920
																																																																														Let Td1918
																																																																															FMul v2 w2
																																																																															Let Td1919
																																																																																App o_param_cm 
																																																																																FMul Td1918 Td1919
																																																																														FAdd Td1917 Td1920
																																																																												Let Ti1921
																																																																													App o_isrotm 
																																																																													Let Ti1922
																																																																														Int:0
																																																																														IfEq Ti1921 Ti1922
																																																																															Var diag_part
																																																																															Let Td1940
																																																																																Let Td1939
																																																																																	Let Td1933
																																																																																		Let Td1927
																																																																																			Let Td1925
																																																																																				Let Td1923
																																																																																					FMul v2 w1
																																																																																					Let Td1924
																																																																																						FMul v1 w2
																																																																																						FAdd Td1923 Td1924
																																																																																				Let Td1926
																																																																																					App o_param_r1m 
																																																																																					FMul Td1925 Td1926
																																																																																			Let Td1932
																																																																																				Let Td1930
																																																																																					Let Td1928
																																																																																						FMul v0 w2
																																																																																						Let Td1929
																																																																																							FMul v2 w0
																																																																																							FAdd Td1928 Td1929
																																																																																					Let Td1931
																																																																																						App o_param_r2m 
																																																																																						FMul Td1930 Td1931
																																																																																				FAdd Td1927 Td1932
																																																																																		Let Td1938
																																																																																			Let Td1936
																																																																																				Let Td1934
																																																																																					FMul v0 w1
																																																																																					Let Td1935
																																																																																						FMul v1 w0
																																																																																						FAdd Td1934 Td1935
																																																																																				Let Td1937
																																																																																					App o_param_r3m 
																																																																																					FMul Td1936 Td1937
																																																																																			FAdd Td1933 Td1938
																																																																																	App fhalfTd1939 
																																																																																FAdd diag_part Td1940
																																																																											LetRec solver_second m dirvec b0 b1 b2 
																																																																												Let aa
																																																																													Let Td1886
																																																																														Let Ti1885
																																																																															Int:0
																																																																															Get dirvec Ti1885
																																																																														Let Td1888
																																																																															Let Ti1887
																																																																																Int:1
																																																																																Get dirvec Ti1887
																																																																															Let Td1890
																																																																																Let Ti1889
																																																																																	Int:2
																																																																																	Get dirvec Ti1889
																																																																																App quadraticm Td1886 Td1888 Td1890 
																																																																													Let Td1891
																																																																														Float:0.000000
																																																																														IfEq aa Td1891
																																																																															Int:0
																																																																															Let bb
																																																																																Let Td1893
																																																																																	Let Ti1892
																																																																																		Int:0
																																																																																		Get dirvec Ti1892
																																																																																	Let Td1895
																																																																																		Let Ti1894
																																																																																			Int:1
																																																																																			Get dirvec Ti1894
																																																																																		Let Td1897
																																																																																			Let Ti1896
																																																																																				Int:2
																																																																																				Get dirvec Ti1896
																																																																																			App bilinearm Td1893 Td1895 Td1897 b0 b1 b2 
																																																																																Let cc0
																																																																																	App quadraticm b0 b1 b2 
																																																																																	Let cc
																																																																																		Let Ti1898
																																																																																			App o_formm 
																																																																																			Let Ti1899
																																																																																				Int:3
																																																																																				IfEq Ti1898 Ti1899
																																																																																					Let Td1900
																																																																																						Float:1.000000
																																																																																						FSub cc0 Td1900
																																																																																					Var cc0
																																																																																		Let d
																																																																																			Let Td1901
																																																																																				App fsqrbb 
																																																																																				Let Td1902
																																																																																					FMul aa cc
																																																																																					FSub Td1901 Td1902
																																																																																			Let Td1903
																																																																																				Float:0.000000
																																																																																				IfLE d Td1903
																																																																																					Int:0
																																																																																					Let sd
																																																																																						sqrt d
																																																																																						Let t1
																																																																																							Let Tb1904
																																																																																								App o_isinvertm 
																																																																																								Let Ti1905
																																																																																									Int:0
																																																																																									IfEq Tb1904 Ti1905
																																																																																										App fnegsd 
																																																																																										Var sd
																																																																																							Let Tu83
																																																																																								Let Ta1906
																																																																																									ExtArray 540
																																																																																									Let Ti1907
																																																																																										Int:0
																																																																																										Let Td1910
																																																																																											Let Td1908
																																																																																												FSub t1 bb
																																																																																												Let Td1909
																																																																																													FReciprocal aa
																																																																																													FMul Td1908 Td1909
																																																																																											Put Ta1906 Ti1907 Td1910
																																																																																								Int:1
																																																																												LetRec solver index dirvec org 
																																																																													Let m
																																																																														Let Ta1873
																																																																															ExtArray 48
																																																																															Get Ta1873 index
																																																																														Let b0
																																																																															Let Td1875
																																																																																Let Ti1874
																																																																																	Int:0
																																																																																	Get org Ti1874
																																																																																Let Td1876
																																																																																	App o_param_xm 
																																																																																	FSub Td1875 Td1876
																																																																															Let b1
																																																																																Let Td1878
																																																																																	Let Ti1877
																																																																																		Int:1
																																																																																		Get org Ti1877
																																																																																	Let Td1879
																																																																																		App o_param_ym 
																																																																																		FSub Td1878 Td1879
																																																																																Let b2
																																																																																	Let Td1881
																																																																																		Let Ti1880
																																																																																			Int:2
																																																																																			Get org Ti1880
																																																																																		Let Td1882
																																																																																			App o_param_zm 
																																																																																			FSub Td1881 Td1882
																																																																																	Let m_shape
																																																																																		App o_formm 
																																																																																		Let Ti1883
																																																																																			Int:1
																																																																																			IfEq m_shape Ti1883
																																																																																				App solver_rectm dirvec b0 b1 b2 
																																																																																				Let Ti1884
																																																																																					Int:2
																																																																																					IfEq m_shape Ti1884
																																																																																						App solver_surfacem dirvec b0 b1 b2 
																																																																																						App solver_secondm dirvec b0 b1 b2 
																																																																													LetRec solver_rect_fast m v dconst b0 b1 b2 
																																																																														Let d0
																																																																															Let Td1803
																																																																																Let Td1802
																																																																																	Let Ti1801
																																																																																		Int:0
																																																																																		Get dconst Ti1801
																																																																																	FSub Td1802 b0
																																																																																Let Td1805
																																																																																	Let Ti1804
																																																																																		Int:1
																																																																																		Get dconst Ti1804
																																																																																	FMul Td1803 Td1805
																																																																															Let Ti1821
																																																																																Let Td1806
																																																																																	App o_param_bm 
																																																																																	Let Td1811
																																																																																		Let Td1810
																																																																																			Let Td1809
																																																																																				Let Td1808
																																																																																					Let Ti1807
																																																																																						Int:1
																																																																																						Get v Ti1807
																																																																																					FMul d0 Td1808
																																																																																				FAdd Td1809 b1
																																																																																			fabs Td1810
																																																																																		IfLE Td1806 Td1811
																																																																																			Int:0
																																																																																			Let Td1812
																																																																																				App o_param_cm 
																																																																																				Let Td1817
																																																																																					Let Td1816
																																																																																						Let Td1815
																																																																																							Let Td1814
																																																																																								Let Ti1813
																																																																																									Int:2
																																																																																									Get v Ti1813
																																																																																								FMul d0 Td1814
																																																																																							FAdd Td1815 b2
																																																																																						fabs Td1816
																																																																																					IfLE Td1812 Td1817
																																																																																						Int:0
																																																																																						Let Td1819
																																																																																							Let Ti1818
																																																																																								Int:1
																																																																																								Get dconst Ti1818
																																																																																							Let Td1820
																																																																																								Float:0.000000
																																																																																								IfEq Td1819 Td1820
																																																																																									Int:0
																																																																																									Int:1
																																																																																Let Ti1822
																																																																																	Int:0
																																																																																	IfEq Ti1821 Ti1822
																																																																																		Let d1
																																																																																			Let Td1825
																																																																																				Let Td1824
																																																																																					Let Ti1823
																																																																																						Int:2
																																																																																						Get dconst Ti1823
																																																																																					FSub Td1824 b1
																																																																																				Let Td1827
																																																																																					Let Ti1826
																																																																																						Int:3
																																																																																						Get dconst Ti1826
																																																																																					FMul Td1825 Td1827
																																																																																			Let Ti1843
																																																																																				Let Td1828
																																																																																					App o_param_am 
																																																																																					Let Td1833
																																																																																						Let Td1832
																																																																																							Let Td1831
																																																																																								Let Td1830
																																																																																									Let Ti1829
																																																																																										Int:0
																																																																																										Get v Ti1829
																																																																																									FMul d1 Td1830
																																																																																								FAdd Td1831 b0
																																																																																							fabs Td1832
																																																																																						IfLE Td1828 Td1833
																																																																																							Int:0
																																																																																							Let Td1834
																																																																																								App o_param_cm 
																																																																																								Let Td1839
																																																																																									Let Td1838
																																																																																										Let Td1837
																																																																																											Let Td1836
																																																																																												Let Ti1835
																																																																																													Int:2
																																																																																													Get v Ti1835
																																																																																												FMul d1 Td1836
																																																																																											FAdd Td1837 b2
																																																																																										fabs Td1838
																																																																																									IfLE Td1834 Td1839
																																																																																										Int:0
																																																																																										Let Td1841
																																																																																											Let Ti1840
																																																																																												Int:3
																																																																																												Get dconst Ti1840
																																																																																											Let Td1842
																																																																																												Float:0.000000
																																																																																												IfEq Td1841 Td1842
																																																																																													Int:0
																																																																																													Int:1
																																																																																				Let Ti1844
																																																																																					Int:0
																																																																																					IfEq Ti1843 Ti1844
																																																																																						Let d2
																																																																																							Let Td1847
																																																																																								Let Td1846
																																																																																									Let Ti1845
																																																																																										Int:4
																																																																																										Get dconst Ti1845
																																																																																									FSub Td1846 b2
																																																																																								Let Td1849
																																																																																									Let Ti1848
																																																																																										Int:5
																																																																																										Get dconst Ti1848
																																																																																									FMul Td1847 Td1849
																																																																																							Let Ti1865
																																																																																								Let Td1850
																																																																																									App o_param_am 
																																																																																									Let Td1855
																																																																																										Let Td1854
																																																																																											Let Td1853
																																																																																												Let Td1852
																																																																																													Let Ti1851
																																																																																														Int:0
																																																																																														Get v Ti1851
																																																																																													FMul d2 Td1852
																																																																																												FAdd Td1853 b0
																																																																																											fabs Td1854
																																																																																										IfLE Td1850 Td1855
																																																																																											Int:0
																																																																																											Let Td1856
																																																																																												App o_param_bm 
																																																																																												Let Td1861
																																																																																													Let Td1860
																																																																																														Let Td1859
																																																																																															Let Td1858
																																																																																																Let Ti1857
																																																																																																	Int:1
																																																																																																	Get v Ti1857
																																																																																																FMul d2 Td1858
																																																																																															FAdd Td1859 b1
																																																																																														fabs Td1860
																																																																																													IfLE Td1856 Td1861
																																																																																														Int:0
																																																																																														Let Td1863
																																																																																															Let Ti1862
																																																																																																Int:5
																																																																																																Get dconst Ti1862
																																																																																															Let Td1864
																																																																																																Float:0.000000
																																																																																																IfEq Td1863 Td1864
																																																																																																	Int:0
																																																																																																	Int:1
																																																																																								Let Ti1866
																																																																																									Int:0
																																																																																									IfEq Ti1865 Ti1866
																																																																																										Int:0
																																																																																										Let Tu86
																																																																																											Let Ta1867
																																																																																												ExtArray 540
																																																																																												Let Ti1868
																																																																																													Int:0
																																																																																													Put Ta1867 Ti1868 d2
																																																																																											Int:3
																																																																																						Let Tu85
																																																																																							Let Ta1869
																																																																																								ExtArray 540
																																																																																								Let Ti1870
																																																																																									Int:0
																																																																																									Put Ta1869 Ti1870 d1
																																																																																							Int:2
																																																																																		Let Tu84
																																																																																			Let Ta1871
																																																																																				ExtArray 540
																																																																																				Let Ti1872
																																																																																					Int:0
																																																																																					Put Ta1871 Ti1872 d0
																																																																																			Int:1
																																																																														LetRec solver_surface_fast m dconst b0 b1 b2 
																																																																															Let Td1785
																																																																																Float:0.000000
																																																																																Let Td1787
																																																																																	Let Ti1786
																																																																																		Int:0
																																																																																		Get dconst Ti1786
																																																																																	IfLE Td1785 Td1787
																																																																																		Int:0
																																																																																		Let Tu87
																																																																																			Let Ta1788
																																																																																				ExtArray 540
																																																																																				Let Ti1789
																																																																																					Int:0
																																																																																					Let Td1800
																																																																																						Let Td1796
																																																																																							Let Td1792
																																																																																								Let Td1791
																																																																																									Let Ti1790
																																																																																										Int:1
																																																																																										Get dconst Ti1790
																																																																																									FMul Td1791 b0
																																																																																								Let Td1795
																																																																																									Let Td1794
																																																																																										Let Ti1793
																																																																																											Int:2
																																																																																											Get dconst Ti1793
																																																																																										FMul Td1794 b1
																																																																																									FAdd Td1792 Td1795
																																																																																							Let Td1799
																																																																																								Let Td1798
																																																																																									Let Ti1797
																																																																																										Int:3
																																																																																										Get dconst Ti1797
																																																																																									FMul Td1798 b2
																																																																																								FAdd Td1796 Td1799
																																																																																						Put Ta1788 Ti1789 Td1800
																																																																																			Int:1
																																																																															LetRec solver_second_fast m dconst b0 b1 b2 
																																																																																Let aa
																																																																																	Let Ti1751
																																																																																		Int:0
																																																																																		Get dconst Ti1751
																																																																																	Let Td1752
																																																																																		Float:0.000000
																																																																																		IfEq aa Td1752
																																																																																			Int:0
																																																																																			Let neg_bb
																																																																																				Let Td1759
																																																																																					Let Td1755
																																																																																						Let Td1754
																																																																																							Let Ti1753
																																																																																								Int:1
																																																																																								Get dconst Ti1753
																																																																																							FMul Td1754 b0
																																																																																						Let Td1758
																																																																																							Let Td1757
																																																																																								Let Ti1756
																																																																																									Int:2
																																																																																									Get dconst Ti1756
																																																																																								FMul Td1757 b1
																																																																																							FAdd Td1755 Td1758
																																																																																					Let Td1762
																																																																																						Let Td1761
																																																																																							Let Ti1760
																																																																																								Int:3
																																																																																								Get dconst Ti1760
																																																																																							FMul Td1761 b2
																																																																																						FAdd Td1759 Td1762
																																																																																				Let cc0
																																																																																					App quadraticm b0 b1 b2 
																																																																																					Let cc
																																																																																						Let Ti1763
																																																																																							App o_formm 
																																																																																							Let Ti1764
																																																																																								Int:3
																																																																																								IfEq Ti1763 Ti1764
																																																																																									Let Td1765
																																																																																										Float:1.000000
																																																																																										FSub cc0 Td1765
																																																																																									Var cc0
																																																																																						Let d
																																																																																							Let Td1766
																																																																																								App fsqrneg_bb 
																																																																																								Let Td1767
																																																																																									FMul aa cc
																																																																																									FSub Td1766 Td1767
																																																																																							Let Td1768
																																																																																								Float:0.000000
																																																																																								IfLE d Td1768
																																																																																									Int:0
																																																																																									Let Tu88
																																																																																										Let Tb1769
																																																																																											App o_isinvertm 
																																																																																											Let Ti1770
																																																																																												Int:0
																																																																																												IfEq Tb1769 Ti1770
																																																																																													Let Ta1771
																																																																																														ExtArray 540
																																																																																														Let Ti1772
																																																																																															Int:0
																																																																																															Let Td1777
																																																																																																Let Td1774
																																																																																																	Let Td1773
																																																																																																		sqrt d
																																																																																																		FSub neg_bb Td1773
																																																																																																	Let Td1776
																																																																																																		Let Ti1775
																																																																																																			Int:4
																																																																																																			Get dconst Ti1775
																																																																																																		FMul Td1774 Td1776
																																																																																																Put Ta1771 Ti1772 Td1777
																																																																																													Let Ta1778
																																																																																														ExtArray 540
																																																																																														Let Ti1779
																																																																																															Int:0
																																																																																															Let Td1784
																																																																																																Let Td1781
																																																																																																	Let Td1780
																																																																																																		sqrt d
																																																																																																		FAdd neg_bb Td1780
																																																																																																	Let Td1783
																																																																																																		Let Ti1782
																																																																																																			Int:4
																																																																																																			Get dconst Ti1782
																																																																																																		FMul Td1781 Td1783
																																																																																																Put Ta1778 Ti1779 Td1784
																																																																																										Int:1
																																																																																LetRec solver_fast index dirvec org 
																																																																																	Let m
																																																																																		Let Ta1738
																																																																																			ExtArray 48
																																																																																			Get Ta1738 index
																																																																																		Let b0
																																																																																			Let Td1740
																																																																																				Let Ti1739
																																																																																					Int:0
																																																																																					Get org Ti1739
																																																																																				Let Td1741
																																																																																					App o_param_xm 
																																																																																					FSub Td1740 Td1741
																																																																																			Let b1
																																																																																				Let Td1743
																																																																																					Let Ti1742
																																																																																						Int:1
																																																																																						Get org Ti1742
																																																																																					Let Td1744
																																																																																						App o_param_ym 
																																																																																						FSub Td1743 Td1744
																																																																																				Let b2
																																																																																					Let Td1746
																																																																																						Let Ti1745
																																																																																							Int:2
																																																																																							Get org Ti1745
																																																																																						Let Td1747
																																																																																							App o_param_zm 
																																																																																							FSub Td1746 Td1747
																																																																																					Let dconsts
																																																																																						App d_constdirvec 
																																																																																						Let dconst
																																																																																							Get dconsts index
																																																																																							Let m_shape
																																																																																								App o_formm 
																																																																																								Let Ti1748
																																																																																									Int:1
																																																																																									IfEq m_shape Ti1748
																																																																																										Let Ta1749
																																																																																											App d_vecdirvec 
																																																																																											App solver_rect_fastm Ta1749 dconst b0 b1 b2 
																																																																																										Let Ti1750
																																																																																											Int:2
																																																																																											IfEq m_shape Ti1750
																																																																																												App solver_surface_fastm dconst b0 b1 b2 
																																																																																												App solver_second_fastm dconst b0 b1 b2 
																																																																																	LetRec solver_surface_fast2 m dconst sconst b0 b1 b2 
																																																																																		Let Td1728
																																																																																			Float:0.000000
																																																																																			Let Td1730
																																																																																				Let Ti1729
																																																																																					Int:0
																																																																																					Get dconst Ti1729
																																																																																				IfLE Td1728 Td1730
																																																																																					Int:0
																																																																																					Let Tu89
																																																																																						Let Ta1731
																																																																																							ExtArray 540
																																																																																							Let Ti1732
																																																																																								Int:0
																																																																																								Let Td1737
																																																																																									Let Td1734
																																																																																										Let Ti1733
																																																																																											Int:0
																																																																																											Get dconst Ti1733
																																																																																										Let Td1736
																																																																																											Let Ti1735
																																																																																												Int:3
																																																																																												Get sconst Ti1735
																																																																																											FMul Td1734 Td1736
																																																																																									Put Ta1731 Ti1732 Td1737
																																																																																						Int:1
																																																																																		LetRec solver_second_fast2 m dconst sconst b0 b1 b2 
																																																																																			Let aa
																																																																																				Let Ti1696
																																																																																					Int:0
																																																																																					Get dconst Ti1696
																																																																																				Let Td1697
																																																																																					Float:0.000000
																																																																																					IfEq aa Td1697
																																																																																						Int:0
																																																																																						Let neg_bb
																																																																																							Let Td1704
																																																																																								Let Td1700
																																																																																									Let Td1699
																																																																																										Let Ti1698
																																																																																											Int:1
																																																																																											Get dconst Ti1698
																																																																																										FMul Td1699 b0
																																																																																									Let Td1703
																																																																																										Let Td1702
																																																																																											Let Ti1701
																																																																																												Int:2
																																																																																												Get dconst Ti1701
																																																																																											FMul Td1702 b1
																																																																																										FAdd Td1700 Td1703
																																																																																								Let Td1707
																																																																																									Let Td1706
																																																																																										Let Ti1705
																																																																																											Int:3
																																																																																											Get dconst Ti1705
																																																																																										FMul Td1706 b2
																																																																																									FAdd Td1704 Td1707
																																																																																							Let cc
																																																																																								Let Ti1708
																																																																																									Int:3
																																																																																									Get sconst Ti1708
																																																																																								Let d
																																																																																									Let Td1709
																																																																																										App fsqrneg_bb 
																																																																																										Let Td1710
																																																																																											FMul aa cc
																																																																																											FSub Td1709 Td1710
																																																																																									Let Td1711
																																																																																										Float:0.000000
																																																																																										IfLE d Td1711
																																																																																											Int:0
																																																																																											Let Tu90
																																																																																												Let Tb1712
																																																																																													App o_isinvertm 
																																																																																													Let Ti1713
																																																																																														Int:0
																																																																																														IfEq Tb1712 Ti1713
																																																																																															Let Ta1714
																																																																																																ExtArray 540
																																																																																																Let Ti1715
																																																																																																	Int:0
																																																																																																	Let Td1720
																																																																																																		Let Td1717
																																																																																																			Let Td1716
																																																																																																				sqrt d
																																																																																																				FSub neg_bb Td1716
																																																																																																			Let Td1719
																																																																																																				Let Ti1718
																																																																																																					Int:4
																																																																																																					Get dconst Ti1718
																																																																																																				FMul Td1717 Td1719
																																																																																																		Put Ta1714 Ti1715 Td1720
																																																																																															Let Ta1721
																																																																																																ExtArray 540
																																																																																																Let Ti1722
																																																																																																	Int:0
																																																																																																	Let Td1727
																																																																																																		Let Td1724
																																																																																																			Let Td1723
																																																																																																				sqrt d
																																																																																																				FAdd neg_bb Td1723
																																																																																																			Let Td1726
																																																																																																				Let Ti1725
																																																																																																					Int:4
																																																																																																					Get dconst Ti1725
																																																																																																				FMul Td1724 Td1726
																																																																																																		Put Ta1721 Ti1722 Td1727
																																																																																												Int:1
																																																																																			LetRec solver_fast2 index dirvec 
																																																																																				Let m
																																																																																					Let Ta1689
																																																																																						ExtArray 48
																																																																																						Get Ta1689 index
																																																																																					Let sconst
																																																																																						App o_param_ctblm 
																																																																																						Let b0
																																																																																							Let Ti1690
																																																																																								Int:0
																																																																																								Get sconst Ti1690
																																																																																							Let b1
																																																																																								Let Ti1691
																																																																																									Int:1
																																																																																									Get sconst Ti1691
																																																																																								Let b2
																																																																																									Let Ti1692
																																																																																										Int:2
																																																																																										Get sconst Ti1692
																																																																																									Let dconsts
																																																																																										App d_constdirvec 
																																																																																										Let dconst
																																																																																											Get dconsts index
																																																																																											Let m_shape
																																																																																												App o_formm 
																																																																																												Let Ti1693
																																																																																													Int:1
																																																																																													IfEq m_shape Ti1693
																																																																																														Let Ta1694
																																																																																															App d_vecdirvec 
																																																																																															App solver_rect_fastm Ta1694 dconst b0 b1 b2 
																																																																																														Let Ti1695
																																																																																															Int:2
																																																																																															IfEq m_shape Ti1695
																																																																																																App solver_surface_fast2m dconst sconst b0 b1 b2 
																																																																																																App solver_second_fast2m dconst sconst b0 b1 b2 
																																																																																				LetRec setup_rect_table vec m 
																																																																																					Let const
																																																																																						Let Ti1627
																																																																																							Int:6
																																																																																							Let Td1628
																																																																																								Float:0.000000
																																																																																								ExtFunApp create_float_array Ti1627,Td1628,
																																																																																						Let Tu96
																																																																																							Let Td1630
																																																																																								Let Ti1629
																																																																																									Int:0
																																																																																									Get vec Ti1629
																																																																																								Let Td1631
																																																																																									Float:0.000000
																																																																																									IfEq Td1630 Td1631
																																																																																										Let Ti1632
																																																																																											Int:1
																																																																																											Let Td1633
																																																																																												Float:0.000000
																																																																																												Put const Ti1632 Td1633
																																																																																										Let Tu91
																																																																																											Let Ti1634
																																																																																												Int:0
																																																																																												Let Td1642
																																																																																													Let Ti1640
																																																																																														Let Tb1635
																																																																																															App o_isinvertm 
																																																																																															Let Ti1639
																																																																																																Let Td1636
																																																																																																	Float:0.000000
																																																																																																	Let Td1638
																																																																																																		Let Ti1637
																																																																																																			Int:0
																																																																																																			Get vec Ti1637
																																																																																																		IfLE Td1636 Td1638
																																																																																																			Int:0
																																																																																																			Int:1
																																																																																																xor Tb1635 Ti1639
																																																																																														Let Td1641
																																																																																															App o_param_am 
																																																																																															App fneg_condTi1640 Td1641 
																																																																																													Put const Ti1634 Td1642
																																																																																											Let Ti1643
																																																																																												Int:1
																																																																																												Let Td1648
																																																																																													Let Td1644
																																																																																														Float:1.000000
																																																																																														Let Td1646
																																																																																															Let Ti1645
																																																																																																Int:0
																																																																																																Get vec Ti1645
																																																																																															Let Td1647
																																																																																																FReciprocal Td1646
																																																																																																FMul Td1644 Td1647
																																																																																													Put const Ti1643 Td1648
																																																																																							Let Tu95
																																																																																								Let Td1650
																																																																																									Let Ti1649
																																																																																										Int:1
																																																																																										Get vec Ti1649
																																																																																									Let Td1651
																																																																																										Float:0.000000
																																																																																										IfEq Td1650 Td1651
																																																																																											Let Ti1652
																																																																																												Int:3
																																																																																												Let Td1653
																																																																																													Float:0.000000
																																																																																													Put const Ti1652 Td1653
																																																																																											Let Tu92
																																																																																												Let Ti1654
																																																																																													Int:2
																																																																																													Let Td1662
																																																																																														Let Ti1660
																																																																																															Let Tb1655
																																																																																																App o_isinvertm 
																																																																																																Let Ti1659
																																																																																																	Let Td1656
																																																																																																		Float:0.000000
																																																																																																		Let Td1658
																																																																																																			Let Ti1657
																																																																																																				Int:1
																																																																																																				Get vec Ti1657
																																																																																																			IfLE Td1656 Td1658
																																																																																																				Int:0
																																																																																																				Int:1
																																																																																																	xor Tb1655 Ti1659
																																																																																															Let Td1661
																																																																																																App o_param_bm 
																																																																																																App fneg_condTi1660 Td1661 
																																																																																														Put const Ti1654 Td1662
																																																																																												Let Ti1663
																																																																																													Int:3
																																																																																													Let Td1668
																																																																																														Let Td1664
																																																																																															Float:1.000000
																																																																																															Let Td1666
																																																																																																Let Ti1665
																																																																																																	Int:1
																																																																																																	Get vec Ti1665
																																																																																																Let Td1667
																																																																																																	FReciprocal Td1666
																																																																																																	FMul Td1664 Td1667
																																																																																														Put const Ti1663 Td1668
																																																																																								Let Tu94
																																																																																									Let Td1670
																																																																																										Let Ti1669
																																																																																											Int:2
																																																																																											Get vec Ti1669
																																																																																										Let Td1671
																																																																																											Float:0.000000
																																																																																											IfEq Td1670 Td1671
																																																																																												Let Ti1672
																																																																																													Int:5
																																																																																													Let Td1673
																																																																																														Float:0.000000
																																																																																														Put const Ti1672 Td1673
																																																																																												Let Tu93
																																																																																													Let Ti1674
																																																																																														Int:4
																																																																																														Let Td1682
																																																																																															Let Ti1680
																																																																																																Let Tb1675
																																																																																																	App o_isinvertm 
																																																																																																	Let Ti1679
																																																																																																		Let Td1676
																																																																																																			Float:0.000000
																																																																																																			Let Td1678
																																																																																																				Let Ti1677
																																																																																																					Int:2
																																																																																																					Get vec Ti1677
																																																																																																				IfLE Td1676 Td1678
																																																																																																					Int:0
																																																																																																					Int:1
																																																																																																		xor Tb1675 Ti1679
																																																																																																Let Td1681
																																																																																																	App o_param_cm 
																																																																																																	App fneg_condTi1680 Td1681 
																																																																																															Put const Ti1674 Td1682
																																																																																													Let Ti1683
																																																																																														Int:5
																																																																																														Let Td1688
																																																																																															Let Td1684
																																																																																																Float:1.000000
																																																																																																Let Td1686
																																																																																																	Let Ti1685
																																																																																																		Int:2
																																																																																																		Get vec Ti1685
																																																																																																	Let Td1687
																																																																																																		FReciprocal Td1686
																																																																																																		FMul Td1684 Td1687
																																																																																															Put const Ti1683 Td1688
																																																																																									Var const
																																																																																					LetRec setup_surface_table vec m 
																																																																																						Let const
																																																																																							Let Ti1590
																																																																																								Int:4
																																																																																								Let Td1591
																																																																																									Float:0.000000
																																																																																									ExtFunApp create_float_array Ti1590,Td1591,
																																																																																							Let d
																																																																																								Let Td1600
																																																																																									Let Td1595
																																																																																										Let Td1593
																																																																																											Let Ti1592
																																																																																												Int:0
																																																																																												Get vec Ti1592
																																																																																											Let Td1594
																																																																																												App o_param_am 
																																																																																												FMul Td1593 Td1594
																																																																																										Let Td1599
																																																																																											Let Td1597
																																																																																												Let Ti1596
																																																																																													Int:1
																																																																																													Get vec Ti1596
																																																																																												Let Td1598
																																																																																													App o_param_bm 
																																																																																													FMul Td1597 Td1598
																																																																																											FAdd Td1595 Td1599
																																																																																									Let Td1604
																																																																																										Let Td1602
																																																																																											Let Ti1601
																																																																																												Int:2
																																																																																												Get vec Ti1601
																																																																																											Let Td1603
																																																																																												App o_param_cm 
																																																																																												FMul Td1602 Td1603
																																																																																										FAdd Td1600 Td1604
																																																																																								Let Tu100
																																																																																									Let Td1605
																																																																																										Float:0.000000
																																																																																										IfLE d Td1605
																																																																																											Let Ti1606
																																																																																												Int:0
																																																																																												Let Td1607
																																																																																													Float:0.000000
																																																																																													Put const Ti1606 Td1607
																																																																																											Let Tu99
																																																																																												Let Ti1608
																																																																																													Int:0
																																																																																													Let Td1611
																																																																																														Let Td1609
																																																																																															Float:-1.000000
																																																																																															Let Td1610
																																																																																																FReciprocal d
																																																																																																FMul Td1609 Td1610
																																																																																														Put const Ti1608 Td1611
																																																																																												Let Tu98
																																																																																													Let Ti1612
																																																																																														Int:1
																																																																																														Let Td1616
																																																																																															Let Td1615
																																																																																																Let Td1613
																																																																																																	App o_param_am 
																																																																																																	Let Td1614
																																																																																																		FReciprocal d
																																																																																																		FMul Td1613 Td1614
																																																																																																App fnegTd1615 
																																																																																															Put const Ti1612 Td1616
																																																																																													Let Tu97
																																																																																														Let Ti1617
																																																																																															Int:2
																																																																																															Let Td1621
																																																																																																Let Td1620
																																																																																																	Let Td1618
																																																																																																		App o_param_bm 
																																																																																																		Let Td1619
																																																																																																			FReciprocal d
																																																																																																			FMul Td1618 Td1619
																																																																																																	App fnegTd1620 
																																																																																																Put const Ti1617 Td1621
																																																																																														Let Ti1622
																																																																																															Int:3
																																																																																															Let Td1626
																																																																																																Let Td1625
																																																																																																	Let Td1623
																																																																																																		App o_param_cm 
																																																																																																		Let Td1624
																																																																																																			FReciprocal d
																																																																																																			FMul Td1623 Td1624
																																																																																																	App fnegTd1625 
																																																																																																Put const Ti1622 Td1626
																																																																																									Var const
																																																																																						LetRec setup_second_table v m 
																																																																																							Let const
																																																																																								Let Ti1523
																																																																																									Int:5
																																																																																									Let Td1524
																																																																																										Float:0.000000
																																																																																										ExtFunApp create_float_array Ti1523,Td1524,
																																																																																								Let aa
																																																																																									Let Td1526
																																																																																										Let Ti1525
																																																																																											Int:0
																																																																																											Get v Ti1525
																																																																																										Let Td1528
																																																																																											Let Ti1527
																																																																																												Int:1
																																																																																												Get v Ti1527
																																																																																											Let Td1530
																																																																																												Let Ti1529
																																																																																													Int:2
																																																																																													Get v Ti1529
																																																																																												App quadraticm Td1526 Td1528 Td1530 
																																																																																									Let c1
																																																																																										Let Td1534
																																																																																											Let Td1532
																																																																																												Let Ti1531
																																																																																													Int:0
																																																																																													Get v Ti1531
																																																																																												Let Td1533
																																																																																													App o_param_am 
																																																																																													FMul Td1532 Td1533
																																																																																											App fnegTd1534 
																																																																																										Let c2
																																																																																											Let Td1538
																																																																																												Let Td1536
																																																																																													Let Ti1535
																																																																																														Int:1
																																																																																														Get v Ti1535
																																																																																													Let Td1537
																																																																																														App o_param_bm 
																																																																																														FMul Td1536 Td1537
																																																																																												App fnegTd1538 
																																																																																											Let c3
																																																																																												Let Td1542
																																																																																													Let Td1540
																																																																																														Let Ti1539
																																																																																															Int:2
																																																																																															Get v Ti1539
																																																																																														Let Td1541
																																																																																															App o_param_cm 
																																																																																															FMul Td1540 Td1541
																																																																																													App fnegTd1542 
																																																																																												Let Tu107
																																																																																													Let Ti1543
																																																																																														Int:0
																																																																																														Put const Ti1543 aa
																																																																																													Let Tu106
																																																																																														Let Ti1544
																																																																																															App o_isrotm 
																																																																																															Let Ti1545
																																																																																																Int:0
																																																																																																IfEq Ti1544 Ti1545
																																																																																																	Let Tu104
																																																																																																		Let Ti1546
																																																																																																			Int:1
																																																																																																			Put const Ti1546 c1
																																																																																																		Let Tu103
																																																																																																			Let Ti1547
																																																																																																				Int:2
																																																																																																				Put const Ti1547 c2
																																																																																																			Let Ti1548
																																																																																																				Int:3
																																																																																																				Put const Ti1548 c3
																																																																																																	Let Tu102
																																																																																																		Let Ti1549
																																																																																																			Int:1
																																																																																																			Let Td1560
																																																																																																				Let Td1559
																																																																																																					Let Td1558
																																																																																																						Let Td1553
																																																																																																							Let Td1551
																																																																																																								Let Ti1550
																																																																																																									Int:2
																																																																																																									Get v Ti1550
																																																																																																								Let Td1552
																																																																																																									App o_param_r2m 
																																																																																																									FMul Td1551 Td1552
																																																																																																							Let Td1557
																																																																																																								Let Td1555
																																																																																																									Let Ti1554
																																																																																																										Int:1
																																																																																																										Get v Ti1554
																																																																																																									Let Td1556
																																																																																																										App o_param_r3m 
																																																																																																										FMul Td1555 Td1556
																																																																																																								FAdd Td1553 Td1557
																																																																																																						App fhalfTd1558 
																																																																																																					FSub c1 Td1559
																																																																																																				Put const Ti1549 Td1560
																																																																																																		Let Tu101
																																																																																																			Let Ti1561
																																																																																																				Int:2
																																																																																																				Let Td1572
																																																																																																					Let Td1571
																																																																																																						Let Td1570
																																																																																																							Let Td1565
																																																																																																								Let Td1563
																																																																																																									Let Ti1562
																																																																																																										Int:2
																																																																																																										Get v Ti1562
																																																																																																									Let Td1564
																																																																																																										App o_param_r1m 
																																																																																																										FMul Td1563 Td1564
																																																																																																								Let Td1569
																																																																																																									Let Td1567
																																																																																																										Let Ti1566
																																																																																																											Int:0
																																																																																																											Get v Ti1566
																																																																																																										Let Td1568
																																																																																																											App o_param_r3m 
																																																																																																											FMul Td1567 Td1568
																																																																																																									FAdd Td1565 Td1569
																																																																																																							App fhalfTd1570 
																																																																																																						FSub c2 Td1571
																																																																																																					Put const Ti1561 Td1572
																																																																																																			Let Ti1573
																																																																																																				Int:3
																																																																																																				Let Td1584
																																																																																																					Let Td1583
																																																																																																						Let Td1582
																																																																																																							Let Td1577
																																																																																																								Let Td1575
																																																																																																									Let Ti1574
																																																																																																										Int:1
																																																																																																										Get v Ti1574
																																																																																																									Let Td1576
																																																																																																										App o_param_r1m 
																																																																																																										FMul Td1575 Td1576
																																																																																																								Let Td1581
																																																																																																									Let Td1579
																																																																																																										Let Ti1578
																																																																																																											Int:0
																																																																																																											Get v Ti1578
																																																																																																										Let Td1580
																																																																																																											App o_param_r2m 
																																																																																																											FMul Td1579 Td1580
																																																																																																									FAdd Td1577 Td1581
																																																																																																							App fhalfTd1582 
																																																																																																						FSub c3 Td1583
																																																																																																					Put const Ti1573 Td1584
																																																																																														Let Tu105
																																																																																															Let Td1585
																																																																																																Float:0.000000
																																																																																																IfEq aa Td1585
																																																																																																	Unit
																																																																																																	Let Ti1586
																																																																																																		Int:4
																																																																																																		Let Td1589
																																																																																																			Let Td1587
																																																																																																				Float:1.000000
																																																																																																				Let Td1588
																																																																																																					FReciprocal aa
																																																																																																					FMul Td1587 Td1588
																																																																																																			Put const Ti1586 Td1589
																																																																																															Var const
																																																																																							LetRec iter_setup_dirvec_constants dirvec index 
																																																																																								Let Ti1514
																																																																																									Int:0
																																																																																									IfLE Ti1514 index
																																																																																										Let m
																																																																																											Let Ta1515
																																																																																												ExtArray 48
																																																																																												Get Ta1515 index
																																																																																											Let dconst
																																																																																												App d_constdirvec 
																																																																																												Let v
																																																																																													App d_vecdirvec 
																																																																																													Let m_shape
																																																																																														App o_formm 
																																																																																														Let Tu108
																																																																																															Let Ti1516
																																																																																																Int:1
																																																																																																IfEq m_shape Ti1516
																																																																																																	Let Ta1517
																																																																																																		App setup_rect_tablev m 
																																																																																																		Put dconst index Ta1517
																																																																																																	Let Ti1518
																																																																																																		Int:2
																																																																																																		IfEq m_shape Ti1518
																																																																																																			Let Ta1519
																																																																																																				App setup_surface_tablev m 
																																																																																																				Put dconst index Ta1519
																																																																																																			Let Ta1520
																																																																																																				App setup_second_tablev m 
																																																																																																				Put dconst index Ta1520
																																																																																															Let Ti1522
																																																																																																Let Ti1521
																																																																																																	Int:1
																																																																																																	Sub index Ti1521
																																																																																																App iter_setup_dirvec_constantsdirvec Ti1522 
																																																																																										Unit
																																																																																								LetRec setup_dirvec_constants dirvec 
																																																																																									Let Ti1513
																																																																																										Let Ti1511
																																																																																											Let Ta1509
																																																																																												ExtArray 0
																																																																																												Let Ti1510
																																																																																													Int:0
																																																																																													Get Ta1509 Ti1510
																																																																																											Let Ti1512
																																																																																												Int:1
																																																																																												Sub Ti1511 Ti1512
																																																																																										App iter_setup_dirvec_constantsdirvec Ti1513 
																																																																																									LetRec setup_startp_constants p index 
																																																																																										Let Ti1469
																																																																																											Int:0
																																																																																											IfLE Ti1469 index
																																																																																												Let obj
																																																																																													Let Ta1470
																																																																																														ExtArray 48
																																																																																														Get Ta1470 index
																																																																																													Let sconst
																																																																																														App o_param_ctblobj 
																																																																																														Let m_shape
																																																																																															App o_formobj 
																																																																																															Let Tu112
																																																																																																Let Ti1471
																																																																																																	Int:0
																																																																																																	Let Td1475
																																																																																																		Let Td1473
																																																																																																			Let Ti1472
																																																																																																				Int:0
																																																																																																				Get p Ti1472
																																																																																																			Let Td1474
																																																																																																				App o_param_xobj 
																																																																																																				FSub Td1473 Td1474
																																																																																																		Put sconst Ti1471 Td1475
																																																																																																Let Tu111
																																																																																																	Let Ti1476
																																																																																																		Int:1
																																																																																																		Let Td1480
																																																																																																			Let Td1478
																																																																																																				Let Ti1477
																																																																																																					Int:1
																																																																																																					Get p Ti1477
																																																																																																				Let Td1479
																																																																																																					App o_param_yobj 
																																																																																																					FSub Td1478 Td1479
																																																																																																			Put sconst Ti1476 Td1480
																																																																																																	Let Tu110
																																																																																																		Let Ti1481
																																																																																																			Int:2
																																																																																																			Let Td1485
																																																																																																				Let Td1483
																																																																																																					Let Ti1482
																																																																																																						Int:2
																																																																																																						Get p Ti1482
																																																																																																					Let Td1484
																																																																																																						App o_param_zobj 
																																																																																																						FSub Td1483 Td1484
																																																																																																				Put sconst Ti1481 Td1485
																																																																																																		Let Tu109
																																																																																																			Let Ti1486
																																																																																																				Int:2
																																																																																																				IfEq m_shape Ti1486
																																																																																																					Let Ti1487
																																																																																																						Int:3
																																																																																																						Let Td1495
																																																																																																							Let Ta1488
																																																																																																								App o_param_abcobj 
																																																																																																								Let Td1490
																																																																																																									Let Ti1489
																																																																																																										Int:0
																																																																																																										Get sconst Ti1489
																																																																																																									Let Td1492
																																																																																																										Let Ti1491
																																																																																																											Int:1
																																																																																																											Get sconst Ti1491
																																																																																																										Let Td1494
																																																																																																											Let Ti1493
																																																																																																												Int:2
																																																																																																												Get sconst Ti1493
																																																																																																											App veciprod2Ta1488 Td1490 Td1492 Td1494 
																																																																																																							Put sconst Ti1487 Td1495
																																																																																																					Let Ti1496
																																																																																																						Int:2
																																																																																																						IfLE m_shape Ti1496
																																																																																																							Unit
																																																																																																							Let cc0
																																																																																																								Let Td1498
																																																																																																									Let Ti1497
																																																																																																										Int:0
																																																																																																										Get sconst Ti1497
																																																																																																									Let Td1500
																																																																																																										Let Ti1499
																																																																																																											Int:1
																																																																																																											Get sconst Ti1499
																																																																																																										Let Td1502
																																																																																																											Let Ti1501
																																																																																																												Int:2
																																																																																																												Get sconst Ti1501
																																																																																																											App quadraticobj Td1498 Td1500 Td1502 
																																																																																																								Let Ti1503
																																																																																																									Int:3
																																																																																																									Let Td1506
																																																																																																										Let Ti1504
																																																																																																											Int:3
																																																																																																											IfEq m_shape Ti1504
																																																																																																												Let Td1505
																																																																																																													Float:1.000000
																																																																																																													FSub cc0 Td1505
																																																																																																												Var cc0
																																																																																																										Put sconst Ti1503 Td1506
																																																																																																			Let Ti1508
																																																																																																				Let Ti1507
																																																																																																					Int:1
																																																																																																					Sub index Ti1507
																																																																																																				App setup_startp_constantsp Ti1508 
																																																																																												Unit
																																																																																										LetRec setup_startp p 
																																																																																											Let Tu113
																																																																																												Let Ta1463
																																																																																													ExtArray 648
																																																																																													App veccpyTa1463 p 
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
																																																																																													App setup_startp_constantsp Ti1468 
																																																																																											LetRec is_rect_outside m p0 p1 p2 
																																																																																												Let Ti1459
																																																																																													Let Td1453
																																																																																														App o_param_am 
																																																																																														Let Td1454
																																																																																															fabs p0
																																																																																															IfLE Td1453 Td1454
																																																																																																Int:0
																																																																																																Let Td1455
																																																																																																	App o_param_bm 
																																																																																																	Let Td1456
																																																																																																		fabs p1
																																																																																																		IfLE Td1455 Td1456
																																																																																																			Int:0
																																																																																																			Let Td1457
																																																																																																				App o_param_cm 
																																																																																																				Let Td1458
																																																																																																					fabs p2
																																																																																																					IfLE Td1457 Td1458
																																																																																																						Int:0
																																																																																																						Int:1
																																																																																													Let Ti1460
																																																																																														Int:0
																																																																																														IfEq Ti1459 Ti1460
																																																																																															Let Tb1461
																																																																																																App o_isinvertm 
																																																																																																Let Ti1462
																																																																																																	Int:0
																																																																																																	IfEq Tb1461 Ti1462
																																																																																																		Int:1
																																																																																																		Int:0
																																																																																															App o_isinvertm 
																																																																																												LetRec is_plane_outside m p0 p1 p2 
																																																																																													Let w
																																																																																														Let Ta1447
																																																																																															App o_param_abcm 
																																																																																															App veciprod2Ta1447 p0 p1 p2 
																																																																																														Let Ti1451
																																																																																															Let Tb1448
																																																																																																App o_isinvertm 
																																																																																																Let Ti1450
																																																																																																	Let Td1449
																																																																																																		Float:0.000000
																																																																																																		IfLE Td1449 w
																																																																																																			Int:0
																																																																																																			Int:1
																																																																																																	xor Tb1448 Ti1450
																																																																																															Let Ti1452
																																																																																																Int:0
																																																																																																IfEq Ti1451 Ti1452
																																																																																																	Int:1
																																																																																																	Int:0
																																																																																													LetRec is_second_outside m p0 p1 p2 
																																																																																														Let w
																																																																																															App quadraticm p0 p1 p2 
																																																																																															Let w2
																																																																																																Let Ti1439
																																																																																																	App o_formm 
																																																																																																	Let Ti1440
																																																																																																		Int:3
																																																																																																		IfEq Ti1439 Ti1440
																																																																																																			Let Td1441
																																																																																																				Float:1.000000
																																																																																																				FSub w Td1441
																																																																																																			Var w
																																																																																																Let Ti1445
																																																																																																	Let Tb1442
																																																																																																		App o_isinvertm 
																																																																																																		Let Ti1444
																																																																																																			Let Td1443
																																																																																																				Float:0.000000
																																																																																																				IfLE Td1443 w2
																																																																																																					Int:0
																																																																																																					Int:1
																																																																																																			xor Tb1442 Ti1444
																																																																																																	Let Ti1446
																																																																																																		Int:0
																																																																																																		IfEq Ti1445 Ti1446
																																																																																																			Int:1
																																																																																																			Int:0
																																																																																														LetRec is_outside m q0 q1 q2 
																																																																																															Let p0
																																																																																																Let Td1434
																																																																																																	App o_param_xm 
																																																																																																	FSub q0 Td1434
																																																																																																Let p1
																																																																																																	Let Td1435
																																																																																																		App o_param_ym 
																																																																																																		FSub q1 Td1435
																																																																																																	Let p2
																																																																																																		Let Td1436
																																																																																																			App o_param_zm 
																																																																																																			FSub q2 Td1436
																																																																																																		Let m_shape
																																																																																																			App o_formm 
																																																																																																			Let Ti1437
																																																																																																				Int:1
																																																																																																				IfEq m_shape Ti1437
																																																																																																					App is_rect_outsidem p0 p1 p2 
																																																																																																					Let Ti1438
																																																																																																						Int:2
																																																																																																						IfEq m_shape Ti1438
																																																																																																							App is_plane_outsidem p0 p1 p2 
																																																																																																							App is_second_outsidem p0 p1 p2 
																																																																																															LetRec check_all_inside ofs iand q0 q1 q2 
																																																																																																Let head
																																																																																																	Get iand ofs
																																																																																																	Let Ti1427
																																																																																																		Let Ti1426
																																																																																																			Int:1
																																																																																																			Neg Ti1426
																																																																																																		IfEq head Ti1427
																																																																																																			Int:1
																																																																																																			Let Tb1430
																																																																																																				Let Tt1429
																																																																																																					Let Ta1428
																																																																																																						ExtArray 48
																																																																																																						Get Ta1428 head
																																																																																																					App is_outsideTt1429 q0 q1 q2 
																																																																																																				Let Ti1431
																																																																																																					Int:0
																																																																																																					IfEq Tb1430 Ti1431
																																																																																																						Let Ti1433
																																																																																																							Let Ti1432
																																																																																																								Int:1
																																																																																																								Add ofs Ti1432
																																																																																																							App check_all_insideTi1433 iand q0 q1 q2 
																																																																																																						Int:0
																																																																																																LetRec shadow_check_and_group iand_ofs and_group 
																																																																																																	Let Ti1382
																																																																																																		Get and_group iand_ofs
																																																																																																		Let Ti1384
																																																																																																			Let Ti1383
																																																																																																				Int:1
																																																																																																				Neg Ti1383
																																																																																																			IfEq Ti1382 Ti1384
																																																																																																				Int:0
																																																																																																				Let obj
																																																																																																					Get and_group iand_ofs
																																																																																																					Let t0
																																																																																																						Let Tt1385
																																																																																																							ExtTuple 988
																																																																																																							Let Ta1386
																																																																																																								ExtArray 552
																																																																																																								App solver_fastobj Tt1385 Ta1386 
																																																																																																						Let t0p
																																																																																																							Let Ta1387
																																																																																																								ExtArray 540
																																																																																																								Let Ti1388
																																																																																																									Int:0
																																																																																																									Get Ta1387 Ti1388
																																																																																																							Let Ti1391
																																																																																																								Let Ti1389
																																																																																																									Int:0
																																																																																																									IfEq t0 Ti1389
																																																																																																										Int:0
																																																																																																										Let Td1390
																																																																																																											Float:-0.200000
																																																																																																											IfLE Td1390 t0p
																																																																																																												Int:0
																																																																																																												Int:1
																																																																																																								Let Ti1392
																																																																																																									Int:0
																																																																																																									IfEq Ti1391 Ti1392
																																																																																																										Let Tb1395
																																																																																																											Let Tt1394
																																																																																																												Let Ta1393
																																																																																																													ExtArray 48
																																																																																																													Get Ta1393 obj
																																																																																																												App o_isinvertTt1394 
																																																																																																											Let Ti1396
																																																																																																												Int:0
																																																																																																												IfEq Tb1395 Ti1396
																																																																																																													Int:0
																																																																																																													Let Ti1398
																																																																																																														Let Ti1397
																																																																																																															Int:1
																																																																																																															Add iand_ofs Ti1397
																																																																																																														App shadow_check_and_groupTi1398 and_group 
																																																																																																										Let t
																																																																																																											Let Td1399
																																																																																																												Float:0.010000
																																																																																																												FAdd t0p Td1399
																																																																																																											Let q0
																																																																																																												Let Td1403
																																																																																																													Let Td1402
																																																																																																														Let Ta1400
																																																																																																															ExtArray 312
																																																																																																															Let Ti1401
																																																																																																																Int:0
																																																																																																																Get Ta1400 Ti1401
																																																																																																														FMul Td1402 t
																																																																																																													Let Td1406
																																																																																																														Let Ta1404
																																																																																																															ExtArray 552
																																																																																																															Let Ti1405
																																																																																																																Int:0
																																																																																																																Get Ta1404 Ti1405
																																																																																																														FAdd Td1403 Td1406
																																																																																																												Let q1
																																																																																																													Let Td1410
																																																																																																														Let Td1409
																																																																																																															Let Ta1407
																																																																																																																ExtArray 312
																																																																																																																Let Ti1408
																																																																																																																	Int:1
																																																																																																																	Get Ta1407 Ti1408
																																																																																																															FMul Td1409 t
																																																																																																														Let Td1413
																																																																																																															Let Ta1411
																																																																																																																ExtArray 552
																																																																																																																Let Ti1412
																																																																																																																	Int:1
																																																																																																																	Get Ta1411 Ti1412
																																																																																																															FAdd Td1410 Td1413
																																																																																																													Let q2
																																																																																																														Let Td1417
																																																																																																															Let Td1416
																																																																																																																Let Ta1414
																																																																																																																	ExtArray 312
																																																																																																																	Let Ti1415
																																																																																																																		Int:2
																																																																																																																		Get Ta1414 Ti1415
																																																																																																																FMul Td1416 t
																																																																																																															Let Td1420
																																																																																																																Let Ta1418
																																																																																																																	ExtArray 552
																																																																																																																	Let Ti1419
																																																																																																																		Int:2
																																																																																																																		Get Ta1418 Ti1419
																																																																																																																FAdd Td1417 Td1420
																																																																																																														Let Tb1422
																																																																																																															Let Ti1421
																																																																																																																Int:0
																																																																																																																App check_all_insideTi1421 and_group q0 q1 q2 
																																																																																																															Let Ti1423
																																																																																																																Int:0
																																																																																																																IfEq Tb1422 Ti1423
																																																																																																																	Let Ti1425
																																																																																																																		Let Ti1424
																																																																																																																			Int:1
																																																																																																																			Add iand_ofs Ti1424
																																																																																																																		App shadow_check_and_groupTi1425 and_group 
																																																																																																																	Int:1
																																																																																																	LetRec shadow_check_one_or_group ofs or_group 
																																																																																																		Let head
																																																																																																			Get or_group ofs
																																																																																																			Let Ti1376
																																																																																																				Let Ti1375
																																																																																																					Int:1
																																																																																																					Neg Ti1375
																																																																																																				IfEq head Ti1376
																																																																																																					Int:0
																																																																																																					Let and_group
																																																																																																						Let Ta1377
																																																																																																							ExtArray 332
																																																																																																							Get Ta1377 head
																																																																																																						Let shadow_p
																																																																																																							Let Ti1378
																																																																																																								Int:0
																																																																																																								App shadow_check_and_groupTi1378 and_group 
																																																																																																							Let Ti1379
																																																																																																								Int:0
																																																																																																								IfEq shadow_p Ti1379
																																																																																																									Let Ti1381
																																																																																																										Let Ti1380
																																																																																																											Int:1
																																																																																																											Add ofs Ti1380
																																																																																																										App shadow_check_one_or_groupTi1381 or_group 
																																																																																																									Int:1
																																																																																																		LetRec shadow_check_one_or_matrix ofs or_matrix 
																																																																																																			Let head
																																																																																																				Get or_matrix ofs
																																																																																																				Let range_primitive
																																																																																																					Let Ti1352
																																																																																																						Int:0
																																																																																																						Get head Ti1352
																																																																																																					Let Ti1354
																																																																																																						Let Ti1353
																																																																																																							Int:1
																																																																																																							Neg Ti1353
																																																																																																						IfEq range_primitive Ti1354
																																																																																																							Int:0
																																																																																																							Let Ti1366
																																																																																																								Let Ti1355
																																																																																																									Int:99
																																																																																																									IfEq range_primitive Ti1355
																																																																																																										Int:1
																																																																																																										Let t
																																																																																																											Let Tt1356
																																																																																																												ExtTuple 988
																																																																																																												Let Ta1357
																																																																																																													ExtArray 552
																																																																																																													App solver_fastrange_primitive Tt1356 Ta1357 
																																																																																																											Let Ti1358
																																																																																																												Int:0
																																																																																																												IfEq t Ti1358
																																																																																																													Int:0
																																																																																																													Let Td1359
																																																																																																														Float:-0.100000
																																																																																																														Let Td1362
																																																																																																															Let Ta1360
																																																																																																																ExtArray 540
																																																																																																																Let Ti1361
																																																																																																																	Int:0
																																																																																																																	Get Ta1360 Ti1361
																																																																																																															IfLE Td1359 Td1362
																																																																																																																Int:0
																																																																																																																Let Tb1364
																																																																																																																	Let Ti1363
																																																																																																																		Int:1
																																																																																																																		App shadow_check_one_or_groupTi1363 head 
																																																																																																																	Let Ti1365
																																																																																																																		Int:0
																																																																																																																		IfEq Tb1364 Ti1365
																																																																																																																			Int:0
																																																																																																																			Int:1
																																																																																																								Let Ti1367
																																																																																																									Int:0
																																																																																																									IfEq Ti1366 Ti1367
																																																																																																										Let Ti1369
																																																																																																											Let Ti1368
																																																																																																												Int:1
																																																																																																												Add ofs Ti1368
																																																																																																											App shadow_check_one_or_matrixTi1369 or_matrix 
																																																																																																										Let Tb1371
																																																																																																											Let Ti1370
																																																																																																												Int:1
																																																																																																												App shadow_check_one_or_groupTi1370 head 
																																																																																																											Let Ti1372
																																																																																																												Int:0
																																																																																																												IfEq Tb1371 Ti1372
																																																																																																													Let Ti1374
																																																																																																														Let Ti1373
																																																																																																															Int:1
																																																																																																															Add ofs Ti1373
																																																																																																														App shadow_check_one_or_matrixTi1374 or_matrix 
																																																																																																													Int:1
																																																																																																			LetRec solve_each_element iand_ofs and_group dirvec 
																																																																																																				Let iobj
																																																																																																					Get and_group iand_ofs
																																																																																																					Let Ti1306
																																																																																																						Let Ti1305
																																																																																																							Int:1
																																																																																																							Neg Ti1305
																																																																																																						IfEq iobj Ti1306
																																																																																																							Unit
																																																																																																							Let t0
																																																																																																								Let Ta1307
																																																																																																									ExtArray 636
																																																																																																									App solveriobj dirvec Ta1307 
																																																																																																								Let Ti1308
																																																																																																									Int:0
																																																																																																									IfEq t0 Ti1308
																																																																																																										Let Tb1311
																																																																																																											Let Tt1310
																																																																																																												Let Ta1309
																																																																																																													ExtArray 48
																																																																																																													Get Ta1309 iobj
																																																																																																												App o_isinvertTt1310 
																																																																																																											Let Ti1312
																																																																																																												Int:0
																																																																																																												IfEq Tb1311 Ti1312
																																																																																																													Unit
																																																																																																													Let Ti1314
																																																																																																														Let Ti1313
																																																																																																															Int:1
																																																																																																															Add iand_ofs Ti1313
																																																																																																														App solve_each_elementTi1314 and_group dirvec 
																																																																																																										Let t0p
																																																																																																											Let Ta1315
																																																																																																												ExtArray 540
																																																																																																												Let Ti1316
																																																																																																													Int:0
																																																																																																													Get Ta1315 Ti1316
																																																																																																											Let Tu117
																																																																																																												Let Td1317
																																																																																																													Float:0.000000
																																																																																																													IfLE t0p Td1317
																																																																																																														Unit
																																																																																																														Let Td1320
																																																																																																															Let Ta1318
																																																																																																																ExtArray 548
																																																																																																																Let Ti1319
																																																																																																																	Int:0
																																																																																																																	Get Ta1318 Ti1319
																																																																																																															IfLE Td1320 t0p
																																																																																																																Unit
																																																																																																																Let t
																																																																																																																	Let Td1321
																																																																																																																		Float:0.010000
																																																																																																																		FAdd t0p Td1321
																																																																																																																	Let q0
																																																																																																																		Let Td1324
																																																																																																																			Let Td1323
																																																																																																																				Let Ti1322
																																																																																																																					Int:0
																																																																																																																					Get dirvec Ti1322
																																																																																																																				FMul Td1323 t
																																																																																																																			Let Td1327
																																																																																																																				Let Ta1325
																																																																																																																					ExtArray 636
																																																																																																																					Let Ti1326
																																																																																																																						Int:0
																																																																																																																						Get Ta1325 Ti1326
																																																																																																																				FAdd Td1324 Td1327
																																																																																																																		Let q1
																																																																																																																			Let Td1330
																																																																																																																				Let Td1329
																																																																																																																					Let Ti1328
																																																																																																																						Int:1
																																																																																																																						Get dirvec Ti1328
																																																																																																																					FMul Td1329 t
																																																																																																																				Let Td1333
																																																																																																																					Let Ta1331
																																																																																																																						ExtArray 636
																																																																																																																						Let Ti1332
																																																																																																																							Int:1
																																																																																																																							Get Ta1331 Ti1332
																																																																																																																					FAdd Td1330 Td1333
																																																																																																																			Let q2
																																																																																																																				Let Td1336
																																																																																																																					Let Td1335
																																																																																																																						Let Ti1334
																																																																																																																							Int:2
																																																																																																																							Get dirvec Ti1334
																																																																																																																						FMul Td1335 t
																																																																																																																					Let Td1339
																																																																																																																						Let Ta1337
																																																																																																																							ExtArray 636
																																																																																																																							Let Ti1338
																																																																																																																								Int:2
																																																																																																																								Get Ta1337 Ti1338
																																																																																																																						FAdd Td1336 Td1339
																																																																																																																				Let Tb1341
																																																																																																																					Let Ti1340
																																																																																																																						Int:0
																																																																																																																						App check_all_insideTi1340 and_group q0 q1 q2 
																																																																																																																					Let Ti1342
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1341 Ti1342
																																																																																																																							Unit
																																																																																																																							Let Tu116
																																																																																																																								Let Ta1343
																																																																																																																									ExtArray 548
																																																																																																																									Let Ti1344
																																																																																																																										Int:0
																																																																																																																										Put Ta1343 Ti1344 t
																																																																																																																								Let Tu115
																																																																																																																									Let Ta1345
																																																																																																																										ExtArray 552
																																																																																																																										App vecsetTa1345 q0 q1 q2 
																																																																																																																									Let Tu114
																																																																																																																										Let Ta1346
																																																																																																																											ExtArray 564
																																																																																																																											Let Ti1347
																																																																																																																												Int:0
																																																																																																																												Put Ta1346 Ti1347 iobj
																																																																																																																										Let Ta1348
																																																																																																																											ExtArray 544
																																																																																																																											Let Ti1349
																																																																																																																												Int:0
																																																																																																																												Put Ta1348 Ti1349 t0
																																																																																																												Let Ti1351
																																																																																																													Let Ti1350
																																																																																																														Int:1
																																																																																																														Add iand_ofs Ti1350
																																																																																																													App solve_each_elementTi1351 and_group dirvec 
																																																																																																				LetRec solve_one_or_network ofs or_group dirvec 
																																																																																																					Let head
																																																																																																						Get or_group ofs
																																																																																																						Let Ti1300
																																																																																																							Let Ti1299
																																																																																																								Int:1
																																																																																																								Neg Ti1299
																																																																																																							IfEq head Ti1300
																																																																																																								Unit
																																																																																																								Let and_group
																																																																																																									Let Ta1301
																																																																																																										ExtArray 332
																																																																																																										Get Ta1301 head
																																																																																																									Let Tu118
																																																																																																										Let Ti1302
																																																																																																											Int:0
																																																																																																											App solve_each_elementTi1302 and_group dirvec 
																																																																																																										Let Ti1304
																																																																																																											Let Ti1303
																																																																																																												Int:1
																																																																																																												Add ofs Ti1303
																																																																																																											App solve_one_or_networkTi1304 or_group dirvec 
																																																																																																					LetRec trace_or_matrix ofs or_network dirvec 
																																																																																																						Let head
																																																																																																							Get or_network ofs
																																																																																																							Let range_primitive
																																																																																																								Let Ti1284
																																																																																																									Int:0
																																																																																																									Get head Ti1284
																																																																																																								Let Ti1286
																																																																																																									Let Ti1285
																																																																																																										Int:1
																																																																																																										Neg Ti1285
																																																																																																									IfEq range_primitive Ti1286
																																																																																																										Unit
																																																																																																										Let Tu119
																																																																																																											Let Ti1287
																																																																																																												Int:99
																																																																																																												IfEq range_primitive Ti1287
																																																																																																													Let Ti1288
																																																																																																														Int:1
																																																																																																														App solve_one_or_networkTi1288 head dirvec 
																																																																																																													Let t
																																																																																																														Let Ta1289
																																																																																																															ExtArray 636
																																																																																																															App solverrange_primitive dirvec Ta1289 
																																																																																																														Let Ti1290
																																																																																																															Int:0
																																																																																																															IfEq t Ti1290
																																																																																																																Unit
																																																																																																																Let tp
																																																																																																																	Let Ta1291
																																																																																																																		ExtArray 540
																																																																																																																		Let Ti1292
																																																																																																																			Int:0
																																																																																																																			Get Ta1291 Ti1292
																																																																																																																	Let Td1295
																																																																																																																		Let Ta1293
																																																																																																																			ExtArray 548
																																																																																																																			Let Ti1294
																																																																																																																				Int:0
																																																																																																																				Get Ta1293 Ti1294
																																																																																																																		IfLE Td1295 tp
																																																																																																																			Unit
																																																																																																																			Let Ti1296
																																																																																																																				Int:1
																																																																																																																				App solve_one_or_networkTi1296 head dirvec 
																																																																																																											Let Ti1298
																																																																																																												Let Ti1297
																																																																																																													Int:1
																																																																																																													Add ofs Ti1297
																																																																																																												App trace_or_matrixTi1298 or_network dirvec 
																																																																																																						LetRec judge_intersection dirvec 
																																																																																																							Let Tu121
																																																																																																								Let Ta1273
																																																																																																									ExtArray 548
																																																																																																									Let Ti1274
																																																																																																										Int:0
																																																																																																										Let Td1275
																																																																																																											Float:1000000000.000000
																																																																																																											Put Ta1273 Ti1274 Td1275
																																																																																																								Let Tu120
																																																																																																									Let Ti1276
																																																																																																										Int:0
																																																																																																										Let Ta1279
																																																																																																											Let Ta1277
																																																																																																												ExtArray 536
																																																																																																												Let Ti1278
																																																																																																													Int:0
																																																																																																													Get Ta1277 Ti1278
																																																																																																											App trace_or_matrixTi1276 Ta1279 dirvec 
																																																																																																									Let t
																																																																																																										Let Ta1280
																																																																																																											ExtArray 548
																																																																																																											Let Ti1281
																																																																																																												Int:0
																																																																																																												Get Ta1280 Ti1281
																																																																																																										Let Td1282
																																																																																																											Float:-0.100000
																																																																																																											IfLE t Td1282
																																																																																																												Int:0
																																																																																																												Let Td1283
																																																																																																													Float:100000000.000000
																																																																																																													IfLE Td1283 t
																																																																																																														Int:0
																																																																																																														Int:1
																																																																																																							LetRec solve_each_element_fast iand_ofs and_group dirvec 
																																																																																																								Let vec
																																																																																																									App d_vecdirvec 
																																																																																																									Let iobj
																																																																																																										Get and_group iand_ofs
																																																																																																										Let Ti1228
																																																																																																											Let Ti1227
																																																																																																												Int:1
																																																																																																												Neg Ti1227
																																																																																																											IfEq iobj Ti1228
																																																																																																												Unit
																																																																																																												Let t0
																																																																																																													App solver_fast2iobj dirvec 
																																																																																																													Let Ti1229
																																																																																																														Int:0
																																																																																																														IfEq t0 Ti1229
																																																																																																															Let Tb1232
																																																																																																																Let Tt1231
																																																																																																																	Let Ta1230
																																																																																																																		ExtArray 48
																																																																																																																		Get Ta1230 iobj
																																																																																																																	App o_isinvertTt1231 
																																																																																																																Let Ti1233
																																																																																																																	Int:0
																																																																																																																	IfEq Tb1232 Ti1233
																																																																																																																		Unit
																																																																																																																		Let Ti1235
																																																																																																																			Let Ti1234
																																																																																																																				Int:1
																																																																																																																				Add iand_ofs Ti1234
																																																																																																																			App solve_each_element_fastTi1235 and_group dirvec 
																																																																																																															Let t0p
																																																																																																																Let Ta1236
																																																																																																																	ExtArray 540
																																																																																																																	Let Ti1237
																																																																																																																		Int:0
																																																																																																																		Get Ta1236 Ti1237
																																																																																																																Let Tu125
																																																																																																																	Let Td1238
																																																																																																																		Float:0.000000
																																																																																																																		IfLE t0p Td1238
																																																																																																																			Unit
																																																																																																																			Let Td1241
																																																																																																																				Let Ta1239
																																																																																																																					ExtArray 548
																																																																																																																					Let Ti1240
																																																																																																																						Int:0
																																																																																																																						Get Ta1239 Ti1240
																																																																																																																				IfLE Td1241 t0p
																																																																																																																					Unit
																																																																																																																					Let t
																																																																																																																						Let Td1242
																																																																																																																							Float:0.010000
																																																																																																																							FAdd t0p Td1242
																																																																																																																						Let q0
																																																																																																																							Let Td1245
																																																																																																																								Let Td1244
																																																																																																																									Let Ti1243
																																																																																																																										Int:0
																																																																																																																										Get vec Ti1243
																																																																																																																									FMul Td1244 t
																																																																																																																								Let Td1248
																																																																																																																									Let Ta1246
																																																																																																																										ExtArray 648
																																																																																																																										Let Ti1247
																																																																																																																											Int:0
																																																																																																																											Get Ta1246 Ti1247
																																																																																																																									FAdd Td1245 Td1248
																																																																																																																							Let q1
																																																																																																																								Let Td1251
																																																																																																																									Let Td1250
																																																																																																																										Let Ti1249
																																																																																																																											Int:1
																																																																																																																											Get vec Ti1249
																																																																																																																										FMul Td1250 t
																																																																																																																									Let Td1254
																																																																																																																										Let Ta1252
																																																																																																																											ExtArray 648
																																																																																																																											Let Ti1253
																																																																																																																												Int:1
																																																																																																																												Get Ta1252 Ti1253
																																																																																																																										FAdd Td1251 Td1254
																																																																																																																								Let q2
																																																																																																																									Let Td1257
																																																																																																																										Let Td1256
																																																																																																																											Let Ti1255
																																																																																																																												Int:2
																																																																																																																												Get vec Ti1255
																																																																																																																											FMul Td1256 t
																																																																																																																										Let Td1260
																																																																																																																											Let Ta1258
																																																																																																																												ExtArray 648
																																																																																																																												Let Ti1259
																																																																																																																													Int:2
																																																																																																																													Get Ta1258 Ti1259
																																																																																																																											FAdd Td1257 Td1260
																																																																																																																									Let Tb1262
																																																																																																																										Let Ti1261
																																																																																																																											Int:0
																																																																																																																											App check_all_insideTi1261 and_group q0 q1 q2 
																																																																																																																										Let Ti1263
																																																																																																																											Int:0
																																																																																																																											IfEq Tb1262 Ti1263
																																																																																																																												Unit
																																																																																																																												Let Tu124
																																																																																																																													Let Ta1264
																																																																																																																														ExtArray 548
																																																																																																																														Let Ti1265
																																																																																																																															Int:0
																																																																																																																															Put Ta1264 Ti1265 t
																																																																																																																													Let Tu123
																																																																																																																														Let Ta1266
																																																																																																																															ExtArray 552
																																																																																																																															App vecsetTa1266 q0 q1 q2 
																																																																																																																														Let Tu122
																																																																																																																															Let Ta1267
																																																																																																																																ExtArray 564
																																																																																																																																Let Ti1268
																																																																																																																																	Int:0
																																																																																																																																	Put Ta1267 Ti1268 iobj
																																																																																																																															Let Ta1269
																																																																																																																																ExtArray 544
																																																																																																																																Let Ti1270
																																																																																																																																	Int:0
																																																																																																																																	Put Ta1269 Ti1270 t0
																																																																																																																	Let Ti1272
																																																																																																																		Let Ti1271
																																																																																																																			Int:1
																																																																																																																			Add iand_ofs Ti1271
																																																																																																																		App solve_each_element_fastTi1272 and_group dirvec 
																																																																																																								LetRec solve_one_or_network_fast ofs or_group dirvec 
																																																																																																									Let head
																																																																																																										Get or_group ofs
																																																																																																										Let Ti1222
																																																																																																											Let Ti1221
																																																																																																												Int:1
																																																																																																												Neg Ti1221
																																																																																																											IfEq head Ti1222
																																																																																																												Unit
																																																																																																												Let and_group
																																																																																																													Let Ta1223
																																																																																																														ExtArray 332
																																																																																																														Get Ta1223 head
																																																																																																													Let Tu126
																																																																																																														Let Ti1224
																																																																																																															Int:0
																																																																																																															App solve_each_element_fastTi1224 and_group dirvec 
																																																																																																														Let Ti1226
																																																																																																															Let Ti1225
																																																																																																																Int:1
																																																																																																																Add ofs Ti1225
																																																																																																															App solve_one_or_network_fastTi1226 or_group dirvec 
																																																																																																									LetRec trace_or_matrix_fast ofs or_network dirvec 
																																																																																																										Let head
																																																																																																											Get or_network ofs
																																																																																																											Let range_primitive
																																																																																																												Let Ti1207
																																																																																																													Int:0
																																																																																																													Get head Ti1207
																																																																																																												Let Ti1209
																																																																																																													Let Ti1208
																																																																																																														Int:1
																																																																																																														Neg Ti1208
																																																																																																													IfEq range_primitive Ti1209
																																																																																																														Unit
																																																																																																														Let Tu127
																																																																																																															Let Ti1210
																																																																																																																Int:99
																																																																																																																IfEq range_primitive Ti1210
																																																																																																																	Let Ti1211
																																																																																																																		Int:1
																																																																																																																		App solve_one_or_network_fastTi1211 head dirvec 
																																																																																																																	Let t
																																																																																																																		App solver_fast2range_primitive dirvec 
																																																																																																																		Let Ti1212
																																																																																																																			Int:0
																																																																																																																			IfEq t Ti1212
																																																																																																																				Unit
																																																																																																																				Let tp
																																																																																																																					Let Ta1213
																																																																																																																						ExtArray 540
																																																																																																																						Let Ti1214
																																																																																																																							Int:0
																																																																																																																							Get Ta1213 Ti1214
																																																																																																																					Let Td1217
																																																																																																																						Let Ta1215
																																																																																																																							ExtArray 548
																																																																																																																							Let Ti1216
																																																																																																																								Int:0
																																																																																																																								Get Ta1215 Ti1216
																																																																																																																						IfLE Td1217 tp
																																																																																																																							Unit
																																																																																																																							Let Ti1218
																																																																																																																								Int:1
																																																																																																																								App solve_one_or_network_fastTi1218 head dirvec 
																																																																																																															Let Ti1220
																																																																																																																Let Ti1219
																																																																																																																	Int:1
																																																																																																																	Add ofs Ti1219
																																																																																																																App trace_or_matrix_fastTi1220 or_network dirvec 
																																																																																																										LetRec judge_intersection_fast dirvec 
																																																																																																											Let Tu129
																																																																																																												Let Ta1196
																																																																																																													ExtArray 548
																																																																																																													Let Ti1197
																																																																																																														Int:0
																																																																																																														Let Td1198
																																																																																																															Float:1000000000.000000
																																																																																																															Put Ta1196 Ti1197 Td1198
																																																																																																												Let Tu128
																																																																																																													Let Ti1199
																																																																																																														Int:0
																																																																																																														Let Ta1202
																																																																																																															Let Ta1200
																																																																																																																ExtArray 536
																																																																																																																Let Ti1201
																																																																																																																	Int:0
																																																																																																																	Get Ta1200 Ti1201
																																																																																																															App trace_or_matrix_fastTi1199 Ta1202 dirvec 
																																																																																																													Let t
																																																																																																														Let Ta1203
																																																																																																															ExtArray 548
																																																																																																															Let Ti1204
																																																																																																																Int:0
																																																																																																																Get Ta1203 Ti1204
																																																																																																														Let Td1205
																																																																																																															Float:-0.100000
																																																																																																															IfLE t Td1205
																																																																																																																Int:0
																																																																																																																Let Td1206
																																																																																																																	Float:100000000.000000
																																																																																																																	IfLE Td1206 t
																																																																																																																		Int:0
																																																																																																																		Int:1
																																																																																																											LetRec get_nvector_rect dirvec 
																																																																																																												Let rectside
																																																																																																													Let Ta1185
																																																																																																														ExtArray 544
																																																																																																														Let Ti1186
																																																																																																															Int:0
																																																																																																															Get Ta1185 Ti1186
																																																																																																													Let Tu130
																																																																																																														Let Ta1187
																																																																																																															ExtArray 568
																																																																																																															App vecbzeroTa1187 
																																																																																																														Let Ta1188
																																																																																																															ExtArray 568
																																																																																																															Let Ti1190
																																																																																																																Let Ti1189
																																																																																																																	Int:1
																																																																																																																	Sub rectside Ti1189
																																																																																																																Let Td1195
																																																																																																																	Let Td1194
																																																																																																																		Let Td1193
																																																																																																																			Let Ti1192
																																																																																																																				Let Ti1191
																																																																																																																					Int:1
																																																																																																																					Sub rectside Ti1191
																																																																																																																				Get dirvec Ti1192
																																																																																																																			App sgnTd1193 
																																																																																																																		App fnegTd1194 
																																																																																																																	Put Ta1188 Ti1190 Td1195
																																																																																																												LetRec get_nvector_plane m 
																																																																																																													Let Tu132
																																																																																																														Let Ta1173
																																																																																																															ExtArray 568
																																																																																																															Let Ti1174
																																																																																																																Int:0
																																																																																																																Let Td1176
																																																																																																																	Let Td1175
																																																																																																																		App o_param_am 
																																																																																																																		App fnegTd1175 
																																																																																																																	Put Ta1173 Ti1174 Td1176
																																																																																																														Let Tu131
																																																																																																															Let Ta1177
																																																																																																																ExtArray 568
																																																																																																																Let Ti1178
																																																																																																																	Int:1
																																																																																																																	Let Td1180
																																																																																																																		Let Td1179
																																																																																																																			App o_param_bm 
																																																																																																																			App fnegTd1179 
																																																																																																																		Put Ta1177 Ti1178 Td1180
																																																																																																															Let Ta1181
																																																																																																																ExtArray 568
																																																																																																																Let Ti1182
																																																																																																																	Int:2
																																																																																																																	Let Td1184
																																																																																																																		Let Td1183
																																																																																																																			App o_param_cm 
																																																																																																																			App fnegTd1183 
																																																																																																																		Put Ta1181 Ti1182 Td1184
																																																																																																													LetRec get_nvector_second m 
																																																																																																														Let p0
																																																																																																															Let Td1123
																																																																																																																Let Ta1121
																																																																																																																	ExtArray 552
																																																																																																																	Let Ti1122
																																																																																																																		Int:0
																																																																																																																		Get Ta1121 Ti1122
																																																																																																																Let Td1124
																																																																																																																	App o_param_xm 
																																																																																																																	FSub Td1123 Td1124
																																																																																																															Let p1
																																																																																																																Let Td1127
																																																																																																																	Let Ta1125
																																																																																																																		ExtArray 552
																																																																																																																		Let Ti1126
																																																																																																																			Int:1
																																																																																																																			Get Ta1125 Ti1126
																																																																																																																	Let Td1128
																																																																																																																		App o_param_ym 
																																																																																																																		FSub Td1127 Td1128
																																																																																																																Let p2
																																																																																																																	Let Td1131
																																																																																																																		Let Ta1129
																																																																																																																			ExtArray 552
																																																																																																																			Let Ti1130
																																																																																																																				Int:2
																																																																																																																				Get Ta1129 Ti1130
																																																																																																																		Let Td1132
																																																																																																																			App o_param_zm 
																																																																																																																			FSub Td1131 Td1132
																																																																																																																	Let d0
																																																																																																																		Let Td1133
																																																																																																																			App o_param_am 
																																																																																																																			FMul p0 Td1133
																																																																																																																		Let d1
																																																																																																																			Let Td1134
																																																																																																																				App o_param_bm 
																																																																																																																				FMul p1 Td1134
																																																																																																																			Let d2
																																																																																																																				Let Td1135
																																																																																																																					App o_param_cm 
																																																																																																																					FMul p2 Td1135
																																																																																																																				Let Tu137
																																																																																																																					Let Ti1136
																																																																																																																						App o_isrotm 
																																																																																																																						Let Ti1137
																																																																																																																							Int:0
																																																																																																																							IfEq Ti1136 Ti1137
																																																																																																																								Let Tu134
																																																																																																																									Let Ta1138
																																																																																																																										ExtArray 568
																																																																																																																										Let Ti1139
																																																																																																																											Int:0
																																																																																																																											Put Ta1138 Ti1139 d0
																																																																																																																									Let Tu133
																																																																																																																										Let Ta1140
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1141
																																																																																																																												Int:1
																																																																																																																												Put Ta1140 Ti1141 d1
																																																																																																																										Let Ta1142
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1143
																																																																																																																												Int:2
																																																																																																																												Put Ta1142 Ti1143 d2
																																																																																																																								Let Tu136
																																																																																																																									Let Ta1144
																																																																																																																										ExtArray 568
																																																																																																																										Let Ti1145
																																																																																																																											Int:0
																																																																																																																											Let Td1152
																																																																																																																												Let Td1151
																																																																																																																													Let Td1150
																																																																																																																														Let Td1147
																																																																																																																															Let Td1146
																																																																																																																																App o_param_r3m 
																																																																																																																																FMul p1 Td1146
																																																																																																																															Let Td1149
																																																																																																																																Let Td1148
																																																																																																																																	App o_param_r2m 
																																																																																																																																	FMul p2 Td1148
																																																																																																																																FAdd Td1147 Td1149
																																																																																																																														App fhalfTd1150 
																																																																																																																													FAdd d0 Td1151
																																																																																																																												Put Ta1144 Ti1145 Td1152
																																																																																																																									Let Tu135
																																																																																																																										Let Ta1153
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1154
																																																																																																																												Int:1
																																																																																																																												Let Td1161
																																																																																																																													Let Td1160
																																																																																																																														Let Td1159
																																																																																																																															Let Td1156
																																																																																																																																Let Td1155
																																																																																																																																	App o_param_r3m 
																																																																																																																																	FMul p0 Td1155
																																																																																																																																Let Td1158
																																																																																																																																	Let Td1157
																																																																																																																																		App o_param_r1m 
																																																																																																																																		FMul p2 Td1157
																																																																																																																																	FAdd Td1156 Td1158
																																																																																																																															App fhalfTd1159 
																																																																																																																														FAdd d1 Td1160
																																																																																																																													Put Ta1153 Ti1154 Td1161
																																																																																																																										Let Ta1162
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1163
																																																																																																																												Int:2
																																																																																																																												Let Td1170
																																																																																																																													Let Td1169
																																																																																																																														Let Td1168
																																																																																																																															Let Td1165
																																																																																																																																Let Td1164
																																																																																																																																	App o_param_r2m 
																																																																																																																																	FMul p0 Td1164
																																																																																																																																Let Td1167
																																																																																																																																	Let Td1166
																																																																																																																																		App o_param_r1m 
																																																																																																																																		FMul p1 Td1166
																																																																																																																																	FAdd Td1165 Td1167
																																																																																																																															App fhalfTd1168 
																																																																																																																														FAdd d2 Td1169
																																																																																																																													Put Ta1162 Ti1163 Td1170
																																																																																																																					Let Ta1171
																																																																																																																						ExtArray 568
																																																																																																																						Let Tb1172
																																																																																																																							App o_isinvertm 
																																																																																																																							App vecunit_sgnTa1171 Tb1172 
																																																																																																														LetRec get_nvector m dirvec 
																																																																																																															Let m_shape
																																																																																																																App o_formm 
																																																																																																																Let Ti1119
																																																																																																																	Int:1
																																																																																																																	IfEq m_shape Ti1119
																																																																																																																		App get_nvector_rectdirvec 
																																																																																																																		Let Ti1120
																																																																																																																			Int:2
																																																																																																																			IfEq m_shape Ti1120
																																																																																																																				App get_nvector_planem 
																																																																																																																				App get_nvector_secondm 
																																																																																																															LetRec utexture m p 
																																																																																																																Let m_tex
																																																																																																																	App o_texturetypem 
																																																																																																																	Let Tu142
																																																																																																																		Let Ta985
																																																																																																																			ExtArray 580
																																																																																																																			Let Ti986
																																																																																																																				Int:0
																																																																																																																				Let Td987
																																																																																																																					App o_color_redm 
																																																																																																																					Put Ta985 Ti986 Td987
																																																																																																																		Let Tu141
																																																																																																																			Let Ta988
																																																																																																																				ExtArray 580
																																																																																																																				Let Ti989
																																																																																																																					Int:1
																																																																																																																					Let Td990
																																																																																																																						App o_color_greenm 
																																																																																																																						Put Ta988 Ti989 Td990
																																																																																																																			Let Tu140
																																																																																																																				Let Ta991
																																																																																																																					ExtArray 580
																																																																																																																					Let Ti992
																																																																																																																						Int:2
																																																																																																																						Let Td993
																																																																																																																							App o_color_bluem 
																																																																																																																							Put Ta991 Ti992 Td993
																																																																																																																				Let Ti994
																																																																																																																					Int:1
																																																																																																																					IfEq m_tex Ti994
																																																																																																																						Let w1
																																																																																																																							Let Td996
																																																																																																																								Let Ti995
																																																																																																																									Int:0
																																																																																																																									Get p Ti995
																																																																																																																								Let Td997
																																																																																																																									App o_param_xm 
																																																																																																																									FSub Td996 Td997
																																																																																																																							Let flag1
																																																																																																																								Let d1
																																																																																																																									Let Td1000
																																																																																																																										Let Td999
																																																																																																																											Let Td998
																																																																																																																												Float:0.050000
																																																																																																																												FMul w1 Td998
																																																																																																																											ExtFunApp floor Td999,
																																																																																																																										Let Td1001
																																																																																																																											Float:20.000000
																																																																																																																											FMul Td1000 Td1001
																																																																																																																									Let Td1002
																																																																																																																										Float:10.000000
																																																																																																																										Let Td1003
																																																																																																																											FSub w1 d1
																																																																																																																											IfLE Td1002 Td1003
																																																																																																																												Int:0
																																																																																																																												Int:1
																																																																																																																								Let w3
																																																																																																																									Let Td1005
																																																																																																																										Let Ti1004
																																																																																																																											Int:2
																																																																																																																											Get p Ti1004
																																																																																																																										Let Td1006
																																																																																																																											App o_param_zm 
																																																																																																																											FSub Td1005 Td1006
																																																																																																																									Let flag2
																																																																																																																										Let d2
																																																																																																																											Let Td1009
																																																																																																																												Let Td1008
																																																																																																																													Let Td1007
																																																																																																																														Float:0.050000
																																																																																																																														FMul w3 Td1007
																																																																																																																													ExtFunApp floor Td1008,
																																																																																																																												Let Td1010
																																																																																																																													Float:20.000000
																																																																																																																													FMul Td1009 Td1010
																																																																																																																											Let Td1011
																																																																																																																												Float:10.000000
																																																																																																																												Let Td1012
																																																																																																																													FSub w3 d2
																																																																																																																													IfLE Td1011 Td1012
																																																																																																																														Int:0
																																																																																																																														Int:1
																																																																																																																										Let Ta1013
																																																																																																																											ExtArray 580
																																																																																																																											Let Ti1014
																																																																																																																												Int:1
																																																																																																																												Let Td1018
																																																																																																																													Let Ti1015
																																																																																																																														Int:0
																																																																																																																														IfEq flag1 Ti1015
																																																																																																																															Let Ti1016
																																																																																																																																Int:0
																																																																																																																																IfEq flag2 Ti1016
																																																																																																																																	Float:255.000000
																																																																																																																																	Float:0.000000
																																																																																																																															Let Ti1017
																																																																																																																																Int:0
																																																																																																																																IfEq flag2 Ti1017
																																																																																																																																	Float:0.000000
																																																																																																																																	Float:255.000000
																																																																																																																													Put Ta1013 Ti1014 Td1018
																																																																																																																						Let Ti1019
																																																																																																																							Int:2
																																																																																																																							IfEq m_tex Ti1019
																																																																																																																								Let w2
																																																																																																																									Let Td1024
																																																																																																																										Let Td1023
																																																																																																																											Let Td1021
																																																																																																																												Let Ti1020
																																																																																																																													Int:1
																																																																																																																													Get p Ti1020
																																																																																																																												Let Td1022
																																																																																																																													Float:0.250000
																																																																																																																													FMul Td1021 Td1022
																																																																																																																											ExtFunApp sin Td1023,
																																																																																																																										App fsqrTd1024 
																																																																																																																									Let Tu138
																																																																																																																										Let Ta1025
																																																																																																																											ExtArray 580
																																																																																																																											Let Ti1026
																																																																																																																												Int:0
																																																																																																																												Let Td1028
																																																																																																																													Let Td1027
																																																																																																																														Float:255.000000
																																																																																																																														FMul Td1027 w2
																																																																																																																													Put Ta1025 Ti1026 Td1028
																																																																																																																										Let Ta1029
																																																																																																																											ExtArray 580
																																																																																																																											Let Ti1030
																																																																																																																												Int:1
																																																																																																																												Let Td1034
																																																																																																																													Let Td1031
																																																																																																																														Float:255.000000
																																																																																																																														Let Td1033
																																																																																																																															Let Td1032
																																																																																																																																Float:1.000000
																																																																																																																																FSub Td1032 w2
																																																																																																																															FMul Td1031 Td1033
																																																																																																																													Put Ta1029 Ti1030 Td1034
																																																																																																																								Let Ti1035
																																																																																																																									Int:3
																																																																																																																									IfEq m_tex Ti1035
																																																																																																																										Let w1
																																																																																																																											Let Td1037
																																																																																																																												Let Ti1036
																																																																																																																													Int:0
																																																																																																																													Get p Ti1036
																																																																																																																												Let Td1038
																																																																																																																													App o_param_xm 
																																																																																																																													FSub Td1037 Td1038
																																																																																																																											Let w3
																																																																																																																												Let Td1040
																																																																																																																													Let Ti1039
																																																																																																																														Int:2
																																																																																																																														Get p Ti1039
																																																																																																																													Let Td1041
																																																																																																																														App o_param_zm 
																																																																																																																														FSub Td1040 Td1041
																																																																																																																												Let w2
																																																																																																																													Let Td1047
																																																																																																																														Let Td1044
																																																																																																																															Let Td1042
																																																																																																																																App fsqrw1 
																																																																																																																																Let Td1043
																																																																																																																																	App fsqrw3 
																																																																																																																																	FAdd Td1042 Td1043
																																																																																																																															Let Td1045
																																																																																																																																Float:10.000000
																																																																																																																																Let Td1046
																																																																																																																																	FReciprocal Td1045
																																																																																																																																	FMul Td1044 Td1046
																																																																																																																														sqrt Td1047
																																																																																																																													Let w4
																																																																																																																														Let Td1049
																																																																																																																															Let Td1048
																																																																																																																																ExtFunApp floor w2,
																																																																																																																																FSub w2 Td1048
																																																																																																																															Let Td1050
																																																																																																																																Float:3.141593
																																																																																																																																FMul Td1049 Td1050
																																																																																																																														Let cws
																																																																																																																															Let Td1051
																																																																																																																																ExtFunApp cos w4,
																																																																																																																																App fsqrTd1051 
																																																																																																																															Let Tu139
																																																																																																																																Let Ta1052
																																																																																																																																	ExtArray 580
																																																																																																																																	Let Ti1053
																																																																																																																																		Int:1
																																																																																																																																		Let Td1055
																																																																																																																																			Let Td1054
																																																																																																																																				Float:255.000000
																																																																																																																																				FMul cws Td1054
																																																																																																																																			Put Ta1052 Ti1053 Td1055
																																																																																																																																Let Ta1056
																																																																																																																																	ExtArray 580
																																																																																																																																	Let Ti1057
																																																																																																																																		Int:2
																																																																																																																																		Let Td1061
																																																																																																																																			Let Td1059
																																																																																																																																				Let Td1058
																																																																																																																																					Float:1.000000
																																																																																																																																					FSub Td1058 cws
																																																																																																																																				Let Td1060
																																																																																																																																					Float:255.000000
																																																																																																																																					FMul Td1059 Td1060
																																																																																																																																			Put Ta1056 Ti1057 Td1061
																																																																																																																										Let Ti1062
																																																																																																																											Int:4
																																																																																																																											IfEq m_tex Ti1062
																																																																																																																												Let w1
																																																																																																																													Let Td1066
																																																																																																																														Let Td1064
																																																																																																																															Let Ti1063
																																																																																																																																Int:0
																																																																																																																																Get p Ti1063
																																																																																																																															Let Td1065
																																																																																																																																App o_param_xm 
																																																																																																																																FSub Td1064 Td1065
																																																																																																																														Let Td1068
																																																																																																																															Let Td1067
																																																																																																																																App o_param_am 
																																																																																																																																sqrt Td1067
																																																																																																																															FMul Td1066 Td1068
																																																																																																																													Let w3
																																																																																																																														Let Td1072
																																																																																																																															Let Td1070
																																																																																																																																Let Ti1069
																																																																																																																																	Int:2
																																																																																																																																	Get p Ti1069
																																																																																																																																Let Td1071
																																																																																																																																	App o_param_zm 
																																																																																																																																	FSub Td1070 Td1071
																																																																																																																															Let Td1074
																																																																																																																																Let Td1073
																																																																																																																																	App o_param_cm 
																																																																																																																																	sqrt Td1073
																																																																																																																																FMul Td1072 Td1074
																																																																																																																														Let w4
																																																																																																																															Let Td1075
																																																																																																																																App fsqrw1 
																																																																																																																																Let Td1076
																																																																																																																																	App fsqrw3 
																																																																																																																																	FAdd Td1075 Td1076
																																																																																																																															Let w7
																																																																																																																																Let Td1077
																																																																																																																																	Float:0.000100
																																																																																																																																	Let Td1078
																																																																																																																																		fabs w1
																																																																																																																																		IfLE Td1077 Td1078
																																																																																																																																			Let w5
																																																																																																																																				Let Td1080
																																																																																																																																					Let Td1079
																																																																																																																																						FReciprocal w1
																																																																																																																																						FMul w3 Td1079
																																																																																																																																					fabs Td1080
																																																																																																																																				Let Td1083
																																																																																																																																					Let Td1081
																																																																																																																																						ExtFunApp atan w5,
																																																																																																																																						Let Td1082
																																																																																																																																							Float:30.000000
																																																																																																																																							FMul Td1081 Td1082
																																																																																																																																					Let Td1084
																																																																																																																																						Float:3.141593
																																																																																																																																						Let Td1085
																																																																																																																																							FReciprocal Td1084
																																																																																																																																							FMul Td1083 Td1085
																																																																																																																																			Float:15.000000
																																																																																																																																Let w9
																																																																																																																																	Let Td1086
																																																																																																																																		ExtFunApp floor w7,
																																																																																																																																		FSub w7 Td1086
																																																																																																																																	Let w2
																																																																																																																																		Let Td1090
																																																																																																																																			Let Td1088
																																																																																																																																				Let Ti1087
																																																																																																																																					Int:1
																																																																																																																																					Get p Ti1087
																																																																																																																																				Let Td1089
																																																																																																																																					App o_param_ym 
																																																																																																																																					FSub Td1088 Td1089
																																																																																																																																			Let Td1092
																																																																																																																																				Let Td1091
																																																																																																																																					App o_param_bm 
																																																																																																																																					sqrt Td1091
																																																																																																																																				FMul Td1090 Td1092
																																																																																																																																		Let w8
																																																																																																																																			Let Td1093
																																																																																																																																				Float:0.000100
																																																																																																																																				Let Td1094
																																																																																																																																					fabs w4
																																																																																																																																					IfLE Td1093 Td1094
																																																																																																																																						Let w6
																																																																																																																																							Let Td1096
																																																																																																																																								Let Td1095
																																																																																																																																									FReciprocal w4
																																																																																																																																									FMul w2 Td1095
																																																																																																																																								fabs Td1096
																																																																																																																																							Let Td1099
																																																																																																																																								Let Td1097
																																																																																																																																									ExtFunApp atan w6,
																																																																																																																																									Let Td1098
																																																																																																																																										Float:30.000000
																																																																																																																																										FMul Td1097 Td1098
																																																																																																																																								Let Td1100
																																																																																																																																									Float:3.141593
																																																																																																																																									Let Td1101
																																																																																																																																										FReciprocal Td1100
																																																																																																																																										FMul Td1099 Td1101
																																																																																																																																						Float:15.000000
																																																																																																																																			Let w10
																																																																																																																																				Let Td1102
																																																																																																																																					ExtFunApp floor w8,
																																																																																																																																					FSub w8 Td1102
																																																																																																																																				Let w11
																																																																																																																																					Let Td1107
																																																																																																																																						Let Td1103
																																																																																																																																							Float:0.150000
																																																																																																																																							Let Td1106
																																																																																																																																								Let Td1105
																																																																																																																																									Let Td1104
																																																																																																																																										Float:0.500000
																																																																																																																																										FSub Td1104 w9
																																																																																																																																									App fsqrTd1105 
																																																																																																																																								FSub Td1103 Td1106
																																																																																																																																						Let Td1110
																																																																																																																																							Let Td1109
																																																																																																																																								Let Td1108
																																																																																																																																									Float:0.500000
																																																																																																																																									FSub Td1108 w10
																																																																																																																																								App fsqrTd1109 
																																																																																																																																							FSub Td1107 Td1110
																																																																																																																																					Let w12
																																																																																																																																						Let Td1111
																																																																																																																																							Float:0.000000
																																																																																																																																							IfLE Td1111 w11
																																																																																																																																								Var w11
																																																																																																																																								Float:0.000000
																																																																																																																																						Let Ta1112
																																																																																																																																							ExtArray 580
																																																																																																																																							Let Ti1113
																																																																																																																																								Int:2
																																																																																																																																								Let Td1118
																																																																																																																																									Let Td1115
																																																																																																																																										Let Td1114
																																																																																																																																											Float:255.000000
																																																																																																																																											FMul Td1114 w12
																																																																																																																																										Let Td1116
																																																																																																																																											Float:0.300000
																																																																																																																																											Let Td1117
																																																																																																																																												FReciprocal Td1116
																																																																																																																																												FMul Td1115 Td1117
																																																																																																																																									Put Ta1112 Ti1113 Td1118
																																																																																																																												Unit
																																																																																																																LetRec add_light bright hilight hilight_scale 
																																																																																																																	Let Tu145
																																																																																																																		Let Td961
																																																																																																																			Float:0.000000
																																																																																																																			IfLE bright Td961
																																																																																																																				Unit
																																																																																																																				Let Ta962
																																																																																																																					ExtArray 604
																																																																																																																					Let Ta963
																																																																																																																						ExtArray 580
																																																																																																																						App vecaccumTa962 bright Ta963 
																																																																																																																		Let Td964
																																																																																																																			Float:0.000000
																																																																																																																			IfLE hilight Td964
																																																																																																																				Unit
																																																																																																																				Let ihl
																																																																																																																					Let Td966
																																																																																																																						Let Td965
																																																																																																																							App fsqrhilight 
																																																																																																																							App fsqrTd965 
																																																																																																																						FMul Td966 hilight_scale
																																																																																																																					Let Tu144
																																																																																																																						Let Ta967
																																																																																																																							ExtArray 604
																																																																																																																							Let Ti968
																																																																																																																								Int:0
																																																																																																																								Let Td972
																																																																																																																									Let Td971
																																																																																																																										Let Ta969
																																																																																																																											ExtArray 604
																																																																																																																											Let Ti970
																																																																																																																												Int:0
																																																																																																																												Get Ta969 Ti970
																																																																																																																										FAdd Td971 ihl
																																																																																																																									Put Ta967 Ti968 Td972
																																																																																																																						Let Tu143
																																																																																																																							Let Ta973
																																																																																																																								ExtArray 604
																																																																																																																								Let Ti974
																																																																																																																									Int:1
																																																																																																																									Let Td978
																																																																																																																										Let Td977
																																																																																																																											Let Ta975
																																																																																																																												ExtArray 604
																																																																																																																												Let Ti976
																																																																																																																													Int:1
																																																																																																																													Get Ta975 Ti976
																																																																																																																											FAdd Td977 ihl
																																																																																																																										Put Ta973 Ti974 Td978
																																																																																																																							Let Ta979
																																																																																																																								ExtArray 604
																																																																																																																								Let Ti980
																																																																																																																									Int:2
																																																																																																																									Let Td984
																																																																																																																										Let Td983
																																																																																																																											Let Ta981
																																																																																																																												ExtArray 604
																																																																																																																												Let Ti982
																																																																																																																													Int:2
																																																																																																																													Get Ta981 Ti982
																																																																																																																											FAdd Td983 ihl
																																																																																																																										Put Ta979 Ti980 Td984
																																																																																																																	LetRec trace_reflections index diffuse hilight_scale dirvec 
																																																																																																																		Let Ti936
																																																																																																																			Int:0
																																																																																																																			IfLE Ti936 index
																																																																																																																				Let rinfo
																																																																																																																					Let Ta937
																																																																																																																						ExtArray 1016
																																																																																																																						Get Ta937 index
																																																																																																																					Let dvec
																																																																																																																						App r_dvecrinfo 
																																																																																																																						Let Tu146
																																																																																																																							Let Tb938
																																																																																																																								App judge_intersection_fastdvec 
																																																																																																																								Let Ti939
																																																																																																																									Int:0
																																																																																																																									IfEq Tb938 Ti939
																																																																																																																										Unit
																																																																																																																										Let surface_id
																																																																																																																											Let Ti943
																																																																																																																												Let Ti942
																																																																																																																													Let Ta940
																																																																																																																														ExtArray 564
																																																																																																																														Let Ti941
																																																																																																																															Int:0
																																																																																																																															Get Ta940 Ti941
																																																																																																																													ShiftL2 Ti942
																																																																																																																												Let Ti946
																																																																																																																													Let Ta944
																																																																																																																														ExtArray 544
																																																																																																																														Let Ti945
																																																																																																																															Int:0
																																																																																																																															Get Ta944 Ti945
																																																																																																																													Add Ti943 Ti946
																																																																																																																											Let Ti947
																																																																																																																												App r_surface_idrinfo 
																																																																																																																												IfEq surface_id Ti947
																																																																																																																													Let Tb952
																																																																																																																														Let Ti948
																																																																																																																															Int:0
																																																																																																																															Let Ta951
																																																																																																																																Let Ta949
																																																																																																																																	ExtArray 536
																																																																																																																																	Let Ti950
																																																																																																																																		Int:0
																																																																																																																																		Get Ta949 Ti950
																																																																																																																																App shadow_check_one_or_matrixTi948 Ta951 
																																																																																																																														Let Ti953
																																																																																																																															Int:0
																																																																																																																															IfEq Tb952 Ti953
																																																																																																																																Let p
																																																																																																																																	Let Ta954
																																																																																																																																		ExtArray 568
																																																																																																																																		Let Ta955
																																																																																																																																			App d_vecdvec 
																																																																																																																																			App veciprodTa954 Ta955 
																																																																																																																																	Let scale
																																																																																																																																		App r_brightrinfo 
																																																																																																																																		Let bright
																																																																																																																																			Let Td956
																																																																																																																																				FMul scale diffuse
																																																																																																																																				FMul Td956 p
																																																																																																																																			Let hilight
																																																																																																																																				Let Td958
																																																																																																																																					Let Ta957
																																																																																																																																						App d_vecdvec 
																																																																																																																																						App veciproddirvec Ta957 
																																																																																																																																					FMul scale Td958
																																																																																																																																				App add_lightbright hilight hilight_scale 
																																																																																																																																Unit
																																																																																																																													Unit
																																																																																																																							Let Ti960
																																																																																																																								Let Ti959
																																																																																																																									Int:1
																																																																																																																									Sub index Ti959
																																																																																																																								App trace_reflectionsTi960 diffuse hilight_scale dirvec 
																																																																																																																				Unit
																																																																																																																		LetRec trace_ray nref energy dirvec pixel dist 
																																																																																																																			Let Ti836
																																																																																																																				Int:4
																																																																																																																				IfLE nref Ti836
																																																																																																																					Let surface_ids
																																																																																																																						App p_surface_idspixel 
																																																																																																																						Let Tb837
																																																																																																																							App judge_intersectiondirvec 
																																																																																																																							Let Ti838
																																																																																																																								Int:0
																																																																																																																								IfEq Tb837 Ti838
																																																																																																																									Let Tu163
																																																																																																																										Let Ti840
																																																																																																																											Let Ti839
																																																																																																																												Int:1
																																																																																																																												Neg Ti839
																																																																																																																											Put surface_ids nref Ti840
																																																																																																																										Let Ti841
																																																																																																																											Int:0
																																																																																																																											IfEq nref Ti841
																																																																																																																												Unit
																																																																																																																												Let hl
																																																																																																																													Let Td843
																																																																																																																														Let Ta842
																																																																																																																															ExtArray 312
																																																																																																																															App veciproddirvec Ta842 
																																																																																																																														App fnegTd843 
																																																																																																																													Let Td844
																																																																																																																														Float:0.000000
																																																																																																																														IfLE hl Td844
																																																																																																																															Unit
																																																																																																																															Let ihl
																																																																																																																																Let Td847
																																																																																																																																	Let Td846
																																																																																																																																		Let Td845
																																																																																																																																			App fsqrhl 
																																																																																																																																			FMul Td845 hl
																																																																																																																																		FMul Td846 energy
																																																																																																																																	Let Td850
																																																																																																																																		Let Ta848
																																																																																																																																			ExtArray 324
																																																																																																																																			Let Ti849
																																																																																																																																				Int:0
																																																																																																																																				Get Ta848 Ti849
																																																																																																																																		FMul Td847 Td850
																																																																																																																																Let Tu162
																																																																																																																																	Let Ta851
																																																																																																																																		ExtArray 604
																																																																																																																																		Let Ti852
																																																																																																																																			Int:0
																																																																																																																																			Let Td856
																																																																																																																																				Let Td855
																																																																																																																																					Let Ta853
																																																																																																																																						ExtArray 604
																																																																																																																																						Let Ti854
																																																																																																																																							Int:0
																																																																																																																																							Get Ta853 Ti854
																																																																																																																																					FAdd Td855 ihl
																																																																																																																																				Put Ta851 Ti852 Td856
																																																																																																																																	Let Tu161
																																																																																																																																		Let Ta857
																																																																																																																																			ExtArray 604
																																																																																																																																			Let Ti858
																																																																																																																																				Int:1
																																																																																																																																				Let Td862
																																																																																																																																					Let Td861
																																																																																																																																						Let Ta859
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti860
																																																																																																																																								Int:1
																																																																																																																																								Get Ta859 Ti860
																																																																																																																																						FAdd Td861 ihl
																																																																																																																																					Put Ta857 Ti858 Td862
																																																																																																																																		Let Ta863
																																																																																																																																			ExtArray 604
																																																																																																																																			Let Ti864
																																																																																																																																				Int:2
																																																																																																																																				Let Td868
																																																																																																																																					Let Td867
																																																																																																																																						Let Ta865
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti866
																																																																																																																																								Int:2
																																																																																																																																								Get Ta865 Ti866
																																																																																																																																						FAdd Td867 ihl
																																																																																																																																					Put Ta863 Ti864 Td868
																																																																																																																									Let obj_id
																																																																																																																										Let Ta869
																																																																																																																											ExtArray 564
																																																																																																																											Let Ti870
																																																																																																																												Int:0
																																																																																																																												Get Ta869 Ti870
																																																																																																																										Let obj
																																																																																																																											Let Ta871
																																																																																																																												ExtArray 48
																																																																																																																												Get Ta871 obj_id
																																																																																																																											Let m_surface
																																																																																																																												App o_reflectiontypeobj 
																																																																																																																												Let diffuse
																																																																																																																													Let Td872
																																																																																																																														App o_diffuseobj 
																																																																																																																														FMul Td872 energy
																																																																																																																													Let Tu160
																																																																																																																														App get_nvectorobj dirvec 
																																																																																																																														Let Tu159
																																																																																																																															Let Ta873
																																																																																																																																ExtArray 636
																																																																																																																																Let Ta874
																																																																																																																																	ExtArray 552
																																																																																																																																	App veccpyTa873 Ta874 
																																																																																																																															Let Tu158
																																																																																																																																Let Ta875
																																																																																																																																	ExtArray 552
																																																																																																																																	App utextureobj Ta875 
																																																																																																																																Let Tu157
																																																																																																																																	Let Ti880
																																																																																																																																		Let Ti876
																																																																																																																																			ShiftL2 obj_id
																																																																																																																																			Let Ti879
																																																																																																																																				Let Ta877
																																																																																																																																					ExtArray 544
																																																																																																																																					Let Ti878
																																																																																																																																						Int:0
																																																																																																																																						Get Ta877 Ti878
																																																																																																																																				Add Ti876 Ti879
																																																																																																																																		Put surface_ids nref Ti880
																																																																																																																																	Let intersection_points
																																																																																																																																		App p_intersection_pointspixel 
																																																																																																																																		Let Tu156
																																																																																																																																			Let Ta881
																																																																																																																																				Get intersection_points nref
																																																																																																																																				Let Ta882
																																																																																																																																					ExtArray 552
																																																																																																																																					App veccpyTa881 Ta882 
																																																																																																																																			Let calc_diffuse
																																																																																																																																				App p_calc_diffusepixel 
																																																																																																																																				Let Tu155
																																																																																																																																					Let Td883
																																																																																																																																						Float:0.500000
																																																																																																																																						Let Td884
																																																																																																																																							App o_diffuseobj 
																																																																																																																																							IfLE Td883 Td884
																																																																																																																																								Let Tu149
																																																																																																																																									Let Ti885
																																																																																																																																										Int:1
																																																																																																																																										Put calc_diffuse nref Ti885
																																																																																																																																									Let energya
																																																																																																																																										App p_energypixel 
																																																																																																																																										Let Tu148
																																																																																																																																											Let Ta886
																																																																																																																																												Get energya nref
																																																																																																																																												Let Ta887
																																																																																																																																													ExtArray 580
																																																																																																																																													App veccpyTa886 Ta887 
																																																																																																																																											Let Tu147
																																																																																																																																												Let Ta888
																																																																																																																																													Get energya nref
																																																																																																																																													Let Td893
																																																																																																																																														Let Td892
																																																																																																																																															Let Td889
																																																																																																																																																Float:1.000000
																																																																																																																																																Let Td890
																																																																																																																																																	Float:256.000000
																																																																																																																																																	Let Td891
																																																																																																																																																		FReciprocal Td890
																																																																																																																																																		FMul Td889 Td891
																																																																																																																																															FMul Td892 diffuse
																																																																																																																																														App vecscaleTa888 Td893 
																																																																																																																																												Let nvectors
																																																																																																																																													App p_nvectorspixel 
																																																																																																																																													Let Ta894
																																																																																																																																														Get nvectors nref
																																																																																																																																														Let Ta895
																																																																																																																																															ExtArray 568
																																																																																																																																															App veccpyTa894 Ta895 
																																																																																																																																								Let Ti896
																																																																																																																																									Int:0
																																																																																																																																									Put calc_diffuse nref Ti896
																																																																																																																																					Let w
																																																																																																																																						Let Td897
																																																																																																																																							Float:-2.000000
																																																																																																																																							Let Td899
																																																																																																																																								Let Ta898
																																																																																																																																									ExtArray 568
																																																																																																																																									App veciproddirvec Ta898 
																																																																																																																																								FMul Td897 Td899
																																																																																																																																						Let Tu154
																																																																																																																																							Let Ta900
																																																																																																																																								ExtArray 568
																																																																																																																																								App vecaccumdirvec w Ta900 
																																																																																																																																							Let hilight_scale
																																																																																																																																								Let Td901
																																																																																																																																									App o_hilightobj 
																																																																																																																																									FMul energy Td901
																																																																																																																																								Let Tu153
																																																																																																																																									Let Tb906
																																																																																																																																										Let Ti902
																																																																																																																																											Int:0
																																																																																																																																											Let Ta905
																																																																																																																																												Let Ta903
																																																																																																																																													ExtArray 536
																																																																																																																																													Let Ti904
																																																																																																																																														Int:0
																																																																																																																																														Get Ta903 Ti904
																																																																																																																																												App shadow_check_one_or_matrixTi902 Ta905 
																																																																																																																																										Let Ti907
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb906 Ti907
																																																																																																																																												Let bright
																																																																																																																																													Let Td911
																																																																																																																																														Let Td910
																																																																																																																																															Let Ta908
																																																																																																																																																ExtArray 568
																																																																																																																																																Let Ta909
																																																																																																																																																	ExtArray 312
																																																																																																																																																	App veciprodTa908 Ta909 
																																																																																																																																															App fnegTd910 
																																																																																																																																														FMul Td911 diffuse
																																																																																																																																													Let hilight
																																																																																																																																														Let Td913
																																																																																																																																															Let Ta912
																																																																																																																																																ExtArray 312
																																																																																																																																																App veciproddirvec Ta912 
																																																																																																																																															App fnegTd913 
																																																																																																																																														App add_lightbright hilight hilight_scale 
																																																																																																																																												Unit
																																																																																																																																									Let Tu152
																																																																																																																																										Let Ta914
																																																																																																																																											ExtArray 552
																																																																																																																																											App setup_startpTa914 
																																																																																																																																										Let Tu151
																																																																																																																																											Let Ti919
																																																																																																																																												Let Ti917
																																																																																																																																													Let Ta915
																																																																																																																																														ExtArray 1736
																																																																																																																																														Let Ti916
																																																																																																																																															Int:0
																																																																																																																																															Get Ta915 Ti916
																																																																																																																																													Let Ti918
																																																																																																																																														Int:1
																																																																																																																																														Sub Ti917 Ti918
																																																																																																																																												App trace_reflectionsTi919 diffuse hilight_scale dirvec 
																																																																																																																																											Let Td920
																																																																																																																																												Float:0.100000
																																																																																																																																												IfLE energy Td920
																																																																																																																																													Unit
																																																																																																																																													Let Tu150
																																																																																																																																														Let Ti921
																																																																																																																																															Int:4
																																																																																																																																															IfLE Ti921 nref
																																																																																																																																																Unit
																																																																																																																																																Let Ti923
																																																																																																																																																	Let Ti922
																																																																																																																																																		Int:1
																																																																																																																																																		Add nref Ti922
																																																																																																																																																	Let Ti925
																																																																																																																																																		Let Ti924
																																																																																																																																																			Int:1
																																																																																																																																																			Neg Ti924
																																																																																																																																																		Put surface_ids Ti923 Ti925
																																																																																																																																														Let Ti926
																																																																																																																																															Int:2
																																																																																																																																															IfEq m_surface Ti926
																																																																																																																																																Let energy2
																																																																																																																																																	Let Td929
																																																																																																																																																		Let Td927
																																																																																																																																																			Float:1.000000
																																																																																																																																																			Let Td928
																																																																																																																																																				App o_diffuseobj 
																																																																																																																																																				FSub Td927 Td928
																																																																																																																																																		FMul energy Td929
																																																																																																																																																	Let Ti931
																																																																																																																																																		Let Ti930
																																																																																																																																																			Int:1
																																																																																																																																																			Add nref Ti930
																																																																																																																																																		Let Td935
																																																																																																																																																			Let Td934
																																																																																																																																																				Let Ta932
																																																																																																																																																					ExtArray 548
																																																																																																																																																					Let Ti933
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta932 Ti933
																																																																																																																																																				FAdd dist Td934
																																																																																																																																																			App trace_rayTi931 energy2 dirvec pixel Td935 
																																																																																																																																																Unit
																																																																																																																					Unit
																																																																																																																			LetRec trace_diffuse_ray dirvec energy 
																																																																																																																				Let Tb813
																																																																																																																					App judge_intersection_fastdirvec 
																																																																																																																					Let Ti814
																																																																																																																						Int:0
																																																																																																																						IfEq Tb813 Ti814
																																																																																																																							Unit
																																																																																																																							Let obj
																																																																																																																								Let Ta815
																																																																																																																									ExtArray 48
																																																																																																																									Let Ti818
																																																																																																																										Let Ta816
																																																																																																																											ExtArray 564
																																																																																																																											Let Ti817
																																																																																																																												Int:0
																																																																																																																												Get Ta816 Ti817
																																																																																																																										Get Ta815 Ti818
																																																																																																																								Let Tu165
																																																																																																																									Let Ta819
																																																																																																																										App d_vecdirvec 
																																																																																																																										App get_nvectorobj Ta819 
																																																																																																																									Let Tu164
																																																																																																																										Let Ta820
																																																																																																																											ExtArray 552
																																																																																																																											App utextureobj Ta820 
																																																																																																																										Let Tb825
																																																																																																																											Let Ti821
																																																																																																																												Int:0
																																																																																																																												Let Ta824
																																																																																																																													Let Ta822
																																																																																																																														ExtArray 536
																																																																																																																														Let Ti823
																																																																																																																															Int:0
																																																																																																																															Get Ta822 Ti823
																																																																																																																													App shadow_check_one_or_matrixTi821 Ta824 
																																																																																																																											Let Ti826
																																																																																																																												Int:0
																																																																																																																												IfEq Tb825 Ti826
																																																																																																																													Let br
																																																																																																																														Let Td829
																																																																																																																															Let Ta827
																																																																																																																																ExtArray 568
																																																																																																																																Let Ta828
																																																																																																																																	ExtArray 312
																																																																																																																																	App veciprodTa827 Ta828 
																																																																																																																															App fnegTd829 
																																																																																																																														Let bright
																																																																																																																															Let Td830
																																																																																																																																Float:0.000000
																																																																																																																																IfLE br Td830
																																																																																																																																	Float:0.000000
																																																																																																																																	Var br
																																																																																																																															Let Ta831
																																																																																																																																ExtArray 592
																																																																																																																																Let Td834
																																																																																																																																	Let Td832
																																																																																																																																		FMul energy bright
																																																																																																																																		Let Td833
																																																																																																																																			App o_diffuseobj 
																																																																																																																																			FMul Td832 Td833
																																																																																																																																	Let Ta835
																																																																																																																																		ExtArray 580
																																																																																																																																		App vecaccumTa831 Td834 Ta835 
																																																																																																																													Unit
																																																																																																																				LetRec iter_trace_diffuse_rays dirvec_group nvector org index 
																																																																																																																					Let Ti797
																																																																																																																						Int:0
																																																																																																																						IfLE Ti797 index
																																																																																																																							Let p
																																																																																																																								Let Ta799
																																																																																																																									Let Tt798
																																																																																																																										Get dirvec_group index
																																																																																																																										App d_vecTt798 
																																																																																																																									App veciprodTa799 nvector 
																																																																																																																								Let Tu166
																																																																																																																									Let Td800
																																																																																																																										Float:0.000000
																																																																																																																										IfLE Td800 p
																																																																																																																											Let Tt801
																																																																																																																												Get dirvec_group index
																																																																																																																												Let Td804
																																																																																																																													Let Td802
																																																																																																																														Float:150.000000
																																																																																																																														Let Td803
																																																																																																																															FReciprocal Td802
																																																																																																																															FMul p Td803
																																																																																																																													App trace_diffuse_rayTt801 Td804 
																																																																																																																											Let Tt807
																																																																																																																												Let Ti806
																																																																																																																													Let Ti805
																																																																																																																														Int:1
																																																																																																																														Add index Ti805
																																																																																																																													Get dirvec_group Ti806
																																																																																																																												Let Td810
																																																																																																																													Let Td808
																																																																																																																														Float:-150.000000
																																																																																																																														Let Td809
																																																																																																																															FReciprocal Td808
																																																																																																																															FMul p Td809
																																																																																																																													App trace_diffuse_rayTt807 Td810 
																																																																																																																									Let Ti812
																																																																																																																										Let Ti811
																																																																																																																											Int:2
																																																																																																																											Sub index Ti811
																																																																																																																										App iter_trace_diffuse_raysdirvec_group nvector org Ti812 
																																																																																																																							Unit
																																																																																																																					LetRec trace_diffuse_rays dirvec_group nvector org 
																																																																																																																						Let Tu167
																																																																																																																							App setup_startporg 
																																																																																																																							Let Ti796
																																																																																																																								Int:118
																																																																																																																								App iter_trace_diffuse_raysdirvec_group nvector org Ti796 
																																																																																																																						LetRec trace_diffuse_ray_80percent group_id nvector org 
																																																																																																																							Let Tu171
																																																																																																																								Let Ti776
																																																																																																																									Int:0
																																																																																																																									IfEq group_id Ti776
																																																																																																																										Unit
																																																																																																																										Let Ta779
																																																																																																																											Let Ta777
																																																																																																																												ExtArray 716
																																																																																																																												Let Ti778
																																																																																																																													Int:0
																																																																																																																													Get Ta777 Ti778
																																																																																																																											App trace_diffuse_raysTa779 nvector org 
																																																																																																																								Let Tu170
																																																																																																																									Let Ti780
																																																																																																																										Int:1
																																																																																																																										IfEq group_id Ti780
																																																																																																																											Unit
																																																																																																																											Let Ta783
																																																																																																																												Let Ta781
																																																																																																																													ExtArray 716
																																																																																																																													Let Ti782
																																																																																																																														Int:1
																																																																																																																														Get Ta781 Ti782
																																																																																																																												App trace_diffuse_raysTa783 nvector org 
																																																																																																																									Let Tu169
																																																																																																																										Let Ti784
																																																																																																																											Int:2
																																																																																																																											IfEq group_id Ti784
																																																																																																																												Unit
																																																																																																																												Let Ta787
																																																																																																																													Let Ta785
																																																																																																																														ExtArray 716
																																																																																																																														Let Ti786
																																																																																																																															Int:2
																																																																																																																															Get Ta785 Ti786
																																																																																																																													App trace_diffuse_raysTa787 nvector org 
																																																																																																																										Let Tu168
																																																																																																																											Let Ti788
																																																																																																																												Int:3
																																																																																																																												IfEq group_id Ti788
																																																																																																																													Unit
																																																																																																																													Let Ta791
																																																																																																																														Let Ta789
																																																																																																																															ExtArray 716
																																																																																																																															Let Ti790
																																																																																																																																Int:3
																																																																																																																																Get Ta789 Ti790
																																																																																																																														App trace_diffuse_raysTa791 nvector org 
																																																																																																																											Let Ti792
																																																																																																																												Int:4
																																																																																																																												IfEq group_id Ti792
																																																																																																																													Unit
																																																																																																																													Let Ta795
																																																																																																																														Let Ta793
																																																																																																																															ExtArray 716
																																																																																																																															Let Ti794
																																																																																																																																Int:4
																																																																																																																																Get Ta793 Ti794
																																																																																																																														App trace_diffuse_raysTa795 nvector org 
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
																																																																																																																													Let Ta768
																																																																																																																														ExtArray 592
																																																																																																																														Let Ta769
																																																																																																																															Get ray20p nref
																																																																																																																															App veccpyTa768 Ta769 
																																																																																																																													Let Tu172
																																																																																																																														Let Ti770
																																																																																																																															App p_group_idpixel 
																																																																																																																															Let Ta771
																																																																																																																																Get nvectors nref
																																																																																																																																Let Ta772
																																																																																																																																	Get intersection_points nref
																																																																																																																																	App trace_diffuse_ray_80percentTi770 Ta771 Ta772 
																																																																																																																														Let Ta773
																																																																																																																															ExtArray 604
																																																																																																																															Let Ta774
																																																																																																																																Get energya nref
																																																																																																																																Let Ta775
																																																																																																																																	ExtArray 592
																																																																																																																																	App vecaccumvTa773 Ta774 Ta775 
																																																																																																																								LetRec calc_diffuse_using_5points x prev cur next nref 
																																																																																																																									Let r_up
																																																																																																																										Let Tt745
																																																																																																																											Get prev x
																																																																																																																											App p_received_ray_20percentTt745 
																																																																																																																										Let r_left
																																																																																																																											Let Tt748
																																																																																																																												Let Ti747
																																																																																																																													Let Ti746
																																																																																																																														Int:1
																																																																																																																														Sub x Ti746
																																																																																																																													Get cur Ti747
																																																																																																																												App p_received_ray_20percentTt748 
																																																																																																																											Let r_center
																																																																																																																												Let Tt749
																																																																																																																													Get cur x
																																																																																																																													App p_received_ray_20percentTt749 
																																																																																																																												Let r_right
																																																																																																																													Let Tt752
																																																																																																																														Let Ti751
																																																																																																																															Let Ti750
																																																																																																																																Int:1
																																																																																																																																Add x Ti750
																																																																																																																															Get cur Ti751
																																																																																																																														App p_received_ray_20percentTt752 
																																																																																																																													Let r_down
																																																																																																																														Let Tt753
																																																																																																																															Get next x
																																																																																																																															App p_received_ray_20percentTt753 
																																																																																																																														Let Tu178
																																																																																																																															Let Ta754
																																																																																																																																ExtArray 592
																																																																																																																																Let Ta755
																																																																																																																																	Get r_up nref
																																																																																																																																	App veccpyTa754 Ta755 
																																																																																																																															Let Tu177
																																																																																																																																Let Ta756
																																																																																																																																	ExtArray 592
																																																																																																																																	Let Ta757
																																																																																																																																		Get r_left nref
																																																																																																																																		App vecaddTa756 Ta757 
																																																																																																																																Let Tu176
																																																																																																																																	Let Ta758
																																																																																																																																		ExtArray 592
																																																																																																																																		Let Ta759
																																																																																																																																			Get r_center nref
																																																																																																																																			App vecaddTa758 Ta759 
																																																																																																																																	Let Tu175
																																																																																																																																		Let Ta760
																																																																																																																																			ExtArray 592
																																																																																																																																			Let Ta761
																																																																																																																																				Get r_right nref
																																																																																																																																				App vecaddTa760 Ta761 
																																																																																																																																		Let Tu174
																																																																																																																																			Let Ta762
																																																																																																																																				ExtArray 592
																																																																																																																																				Let Ta763
																																																																																																																																					Get r_down nref
																																																																																																																																					App vecaddTa762 Ta763 
																																																																																																																																			Let energya
																																																																																																																																				Let Tt764
																																																																																																																																					Get cur x
																																																																																																																																					App p_energyTt764 
																																																																																																																																				Let Ta765
																																																																																																																																					ExtArray 604
																																																																																																																																					Let Ta766
																																																																																																																																						Get energya nref
																																																																																																																																						Let Ta767
																																																																																																																																							ExtArray 592
																																																																																																																																							App vecaccumvTa765 Ta766 Ta767 
																																																																																																																									LetRec do_without_neighbors pixel nref 
																																																																																																																										Let Ti738
																																																																																																																											Int:4
																																																																																																																											IfLE nref Ti738
																																																																																																																												Let surface_ids
																																																																																																																													App p_surface_idspixel 
																																																																																																																													Let Ti739
																																																																																																																														Int:0
																																																																																																																														Let Ti740
																																																																																																																															Get surface_ids nref
																																																																																																																															IfLE Ti739 Ti740
																																																																																																																																Let calc_diffuse
																																																																																																																																	App p_calc_diffusepixel 
																																																																																																																																	Let Tu179
																																																																																																																																		Let Tb741
																																																																																																																																			Get calc_diffuse nref
																																																																																																																																			Let Ti742
																																																																																																																																				Int:0
																																																																																																																																				IfEq Tb741 Ti742
																																																																																																																																					Unit
																																																																																																																																					App calc_diffuse_using_1pointpixel nref 
																																																																																																																																		Let Ti744
																																																																																																																																			Let Ti743
																																																																																																																																				Int:1
																																																																																																																																				Add nref Ti743
																																																																																																																																			App do_without_neighborspixel Ti744 
																																																																																																																																Unit
																																																																																																																												Unit
																																																																																																																										LetRec neighbors_exist x y next 
																																																																																																																											Let Ti728
																																																																																																																												Let Ta726
																																																																																																																													ExtArray 616
																																																																																																																													Let Ti727
																																																																																																																														Int:1
																																																																																																																														Get Ta726 Ti727
																																																																																																																												Let Ti730
																																																																																																																													Let Ti729
																																																																																																																														Int:1
																																																																																																																														Add y Ti729
																																																																																																																													IfLE Ti728 Ti730
																																																																																																																														Int:0
																																																																																																																														Let Ti731
																																																																																																																															Int:0
																																																																																																																															IfLE y Ti731
																																																																																																																																Int:0
																																																																																																																																Let Ti734
																																																																																																																																	Let Ta732
																																																																																																																																		ExtArray 616
																																																																																																																																		Let Ti733
																																																																																																																																			Int:0
																																																																																																																																			Get Ta732 Ti733
																																																																																																																																	Let Ti736
																																																																																																																																		Let Ti735
																																																																																																																																			Int:1
																																																																																																																																			Add x Ti735
																																																																																																																																		IfLE Ti734 Ti736
																																																																																																																																			Int:0
																																																																																																																																			Let Ti737
																																																																																																																																				Int:0
																																																																																																																																				IfLE x Ti737
																																																																																																																																					Int:0
																																																																																																																																					Int:1
																																																																																																																											LetRec get_surface_id pixel index 
																																																																																																																												Let surface_ids
																																																																																																																													App p_surface_idspixel 
																																																																																																																													Get surface_ids index
																																																																																																																												LetRec neighbors_are_available x prev cur next nref 
																																																																																																																													Let sid_center
																																																																																																																														Let Tt713
																																																																																																																															Get cur x
																																																																																																																															App get_surface_idTt713 nref 
																																																																																																																														Let Ti715
																																																																																																																															Let Tt714
																																																																																																																																Get prev x
																																																																																																																																App get_surface_idTt714 nref 
																																																																																																																															IfEq Ti715 sid_center
																																																																																																																																Let Ti717
																																																																																																																																	Let Tt716
																																																																																																																																		Get next x
																																																																																																																																		App get_surface_idTt716 nref 
																																																																																																																																	IfEq Ti717 sid_center
																																																																																																																																		Let Ti721
																																																																																																																																			Let Tt720
																																																																																																																																				Let Ti719
																																																																																																																																					Let Ti718
																																																																																																																																						Int:1
																																																																																																																																						Sub x Ti718
																																																																																																																																					Get cur Ti719
																																																																																																																																				App get_surface_idTt720 nref 
																																																																																																																																			IfEq Ti721 sid_center
																																																																																																																																				Let Ti725
																																																																																																																																					Let Tt724
																																																																																																																																						Let Ti723
																																																																																																																																							Let Ti722
																																																																																																																																								Int:1
																																																																																																																																								Add x Ti722
																																																																																																																																							Get cur Ti723
																																																																																																																																						App get_surface_idTt724 nref 
																																																																																																																																					IfEq Ti725 sid_center
																																																																																																																																						Int:1
																																																																																																																																						Int:0
																																																																																																																																				Int:0
																																																																																																																																		Int:0
																																																																																																																																Int:0
																																																																																																																													LetRec try_exploit_neighbors x y prev cur next nref 
																																																																																																																														Let pixel
																																																																																																																															Get cur x
																																																																																																																															Let Ti703
																																																																																																																																Int:4
																																																																																																																																IfLE nref Ti703
																																																																																																																																	Let Ti704
																																																																																																																																		Int:0
																																																																																																																																		Let Ti705
																																																																																																																																			App get_surface_idpixel nref 
																																																																																																																																			IfLE Ti704 Ti705
																																																																																																																																				Let Tb706
																																																																																																																																					App neighbors_are_availablex prev cur next nref 
																																																																																																																																					Let Ti707
																																																																																																																																						Int:0
																																																																																																																																						IfEq Tb706 Ti707
																																																																																																																																							Let Tt708
																																																																																																																																								Get cur x
																																																																																																																																								App do_without_neighborsTt708 nref 
																																																																																																																																							Let calc_diffuse
																																																																																																																																								App p_calc_diffusepixel 
																																																																																																																																								Let Tu180
																																																																																																																																									Let Tb709
																																																																																																																																										Get calc_diffuse nref
																																																																																																																																										Let Ti710
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb709 Ti710
																																																																																																																																												Unit
																																																																																																																																												App calc_diffuse_using_5pointsx prev cur next nref 
																																																																																																																																									Let Ti712
																																																																																																																																										Let Ti711
																																																																																																																																											Int:1
																																																																																																																																											Add nref Ti711
																																																																																																																																										App try_exploit_neighborsx y prev cur next Ti712 
																																																																																																																																				Unit
																																																																																																																																	Unit
																																																																																																																														LetRec write_ppm_header Tu181 
																																																																																																																															Let Tu189
																																																																																																																																Let Ti688
																																																																																																																																	Int:80
																																																																																																																																	ExtFunApp print_byte Ti688,
																																																																																																																																Let Tu188
																																																																																																																																	Let Ti691
																																																																																																																																		Let Ti689
																																																																																																																																			Int:48
																																																																																																																																			Let Ti690
																																																																																																																																				Int:3
																																																																																																																																				Add Ti689 Ti690
																																																																																																																																		ExtFunApp print_byte Ti691,
																																																																																																																																	Let Tu187
																																																																																																																																		Let Ti692
																																																																																																																																			Int:10
																																																																																																																																			ExtFunApp print_byte Ti692,
																																																																																																																																		Let Tu186
																																																																																																																																			Let Ti695
																																																																																																																																				Let Ta693
																																																																																																																																					ExtArray 616
																																																																																																																																					Let Ti694
																																																																																																																																						Int:0
																																																																																																																																						Get Ta693 Ti694
																																																																																																																																				App print_intTi695 
																																																																																																																																			Let Tu185
																																																																																																																																				Let Ti696
																																																																																																																																					Int:32
																																																																																																																																					ExtFunApp print_byte Ti696,
																																																																																																																																				Let Tu184
																																																																																																																																					Let Ti699
																																																																																																																																						Let Ta697
																																																																																																																																							ExtArray 616
																																																																																																																																							Let Ti698
																																																																																																																																								Int:1
																																																																																																																																								Get Ta697 Ti698
																																																																																																																																						App print_intTi699 
																																																																																																																																					Let Tu183
																																																																																																																																						Let Ti700
																																																																																																																																							Int:32
																																																																																																																																							ExtFunApp print_byte Ti700,
																																																																																																																																						Let Tu182
																																																																																																																																							Let Ti701
																																																																																																																																								Int:255
																																																																																																																																								App print_intTi701 
																																																																																																																																							Let Ti702
																																																																																																																																								Int:10
																																																																																																																																								ExtFunApp print_byte Ti702,
																																																																																																																															LetRec write_rgb_element x 
																																																																																																																																Let ix
																																																																																																																																	ExtFunApp int_of_float x,
																																																																																																																																	Let elem
																																																																																																																																		Let Ti686
																																																																																																																																			Int:255
																																																																																																																																			IfLE ix Ti686
																																																																																																																																				Let Ti687
																																																																																																																																					Int:0
																																																																																																																																					IfLE Ti687 ix
																																																																																																																																						Var ix
																																																																																																																																						Int:0
																																																																																																																																				Int:255
																																																																																																																																		App print_intelem 
																																																																																																																																LetRec write_rgb Tu190 
																																																																																																																																	Let Tu195
																																																																																																																																		Let Td676
																																																																																																																																			Let Ta674
																																																																																																																																				ExtArray 604
																																																																																																																																				Let Ti675
																																																																																																																																					Int:0
																																																																																																																																					Get Ta674 Ti675
																																																																																																																																			App write_rgb_elementTd676 
																																																																																																																																		Let Tu194
																																																																																																																																			Let Ti677
																																																																																																																																				Int:32
																																																																																																																																				ExtFunApp print_byte Ti677,
																																																																																																																																			Let Tu193
																																																																																																																																				Let Td680
																																																																																																																																					Let Ta678
																																																																																																																																						ExtArray 604
																																																																																																																																						Let Ti679
																																																																																																																																							Int:1
																																																																																																																																							Get Ta678 Ti679
																																																																																																																																					App write_rgb_elementTd680 
																																																																																																																																				Let Tu192
																																																																																																																																					Let Ti681
																																																																																																																																						Int:32
																																																																																																																																						ExtFunApp print_byte Ti681,
																																																																																																																																					Let Tu191
																																																																																																																																						Let Td684
																																																																																																																																							Let Ta682
																																																																																																																																								ExtArray 604
																																																																																																																																								Let Ti683
																																																																																																																																									Int:2
																																																																																																																																									Get Ta682 Ti683
																																																																																																																																							App write_rgb_elementTd684 
																																																																																																																																						Let Ti685
																																																																																																																																							Int:10
																																																																																																																																							ExtFunApp print_byte Ti685,
																																																																																																																																	LetRec pretrace_diffuse_rays pixel nref 
																																																																																																																																		Let Ti661
																																																																																																																																			Int:4
																																																																																																																																			IfLE nref Ti661
																																																																																																																																				Let sid
																																																																																																																																					App get_surface_idpixel nref 
																																																																																																																																					Let Ti662
																																																																																																																																						Int:0
																																																																																																																																						IfLE Ti662 sid
																																																																																																																																							Let calc_diffuse
																																																																																																																																								App p_calc_diffusepixel 
																																																																																																																																								Let Tu198
																																																																																																																																									Let Tb663
																																																																																																																																										Get calc_diffuse nref
																																																																																																																																										Let Ti664
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb663 Ti664
																																																																																																																																												Unit
																																																																																																																																												Let group_id
																																																																																																																																													App p_group_idpixel 
																																																																																																																																													Let Tu197
																																																																																																																																														Let Ta665
																																																																																																																																															ExtArray 592
																																																																																																																																															App vecbzeroTa665 
																																																																																																																																														Let nvectors
																																																																																																																																															App p_nvectorspixel 
																																																																																																																																															Let intersection_points
																																																																																																																																																App p_intersection_pointspixel 
																																																																																																																																																Let Tu196
																																																																																																																																																	Let Ta667
																																																																																																																																																		Let Ta666
																																																																																																																																																			ExtArray 716
																																																																																																																																																			Get Ta666 group_id
																																																																																																																																																		Let Ta668
																																																																																																																																																			Get nvectors nref
																																																																																																																																																			Let Ta669
																																																																																																																																																				Get intersection_points nref
																																																																																																																																																				App trace_diffuse_raysTa667 Ta668 Ta669 
																																																																																																																																																	Let ray20p
																																																																																																																																																		App p_received_ray_20percentpixel 
																																																																																																																																																		Let Ta670
																																																																																																																																																			Get ray20p nref
																																																																																																																																																			Let Ta671
																																																																																																																																																				ExtArray 592
																																																																																																																																																				App veccpyTa670 Ta671 
																																																																																																																																									Let Ti673
																																																																																																																																										Let Ti672
																																																																																																																																											Int:1
																																																																																																																																											Add nref Ti672
																																																																																																																																										App pretrace_diffuse_rayspixel Ti673 
																																																																																																																																							Unit
																																																																																																																																				Unit
																																																																																																																																		LetRec pretrace_pixels line x group_id lc0 lc1 lc2 
																																																																																																																																			Let Ti611
																																																																																																																																				Int:0
																																																																																																																																				IfLE Ti611 x
																																																																																																																																					Let xdisp
																																																																																																																																						Let Td614
																																																																																																																																							Let Ta612
																																																																																																																																								ExtArray 632
																																																																																																																																								Let Ti613
																																																																																																																																									Int:0
																																																																																																																																									Get Ta612 Ti613
																																																																																																																																							Let Td619
																																																																																																																																								Let Ti618
																																																																																																																																									Let Ti617
																																																																																																																																										Let Ta615
																																																																																																																																											ExtArray 624
																																																																																																																																											Let Ti616
																																																																																																																																												Int:0
																																																																																																																																												Get Ta615 Ti616
																																																																																																																																										Sub x Ti617
																																																																																																																																									ExtFunApp float_of_int Ti618,
																																																																																																																																								FMul Td614 Td619
																																																																																																																																						Let Tu208
																																																																																																																																							Let Ta620
																																																																																																																																								ExtArray 696
																																																																																																																																								Let Ti621
																																																																																																																																									Int:0
																																																																																																																																									Let Td626
																																																																																																																																										Let Td625
																																																																																																																																											Let Td624
																																																																																																																																												Let Ta622
																																																																																																																																													ExtArray 660
																																																																																																																																													Let Ti623
																																																																																																																																														Int:0
																																																																																																																																														Get Ta622 Ti623
																																																																																																																																												FMul xdisp Td624
																																																																																																																																											FAdd Td625 lc0
																																																																																																																																										Put Ta620 Ti621 Td626
																																																																																																																																							Let Tu207
																																																																																																																																								Let Ta627
																																																																																																																																									ExtArray 696
																																																																																																																																									Let Ti628
																																																																																																																																										Int:1
																																																																																																																																										Let Td633
																																																																																																																																											Let Td632
																																																																																																																																												Let Td631
																																																																																																																																													Let Ta629
																																																																																																																																														ExtArray 660
																																																																																																																																														Let Ti630
																																																																																																																																															Int:1
																																																																																																																																															Get Ta629 Ti630
																																																																																																																																													FMul xdisp Td631
																																																																																																																																												FAdd Td632 lc1
																																																																																																																																											Put Ta627 Ti628 Td633
																																																																																																																																								Let Tu206
																																																																																																																																									Let Ta634
																																																																																																																																										ExtArray 696
																																																																																																																																										Let Ti635
																																																																																																																																											Int:2
																																																																																																																																											Let Td640
																																																																																																																																												Let Td639
																																																																																																																																													Let Td638
																																																																																																																																														Let Ta636
																																																																																																																																															ExtArray 660
																																																																																																																																															Let Ti637
																																																																																																																																																Int:2
																																																																																																																																																Get Ta636 Ti637
																																																																																																																																														FMul xdisp Td638
																																																																																																																																													FAdd Td639 lc2
																																																																																																																																												Put Ta634 Ti635 Td640
																																																																																																																																									Let Tu205
																																																																																																																																										Let Ta641
																																																																																																																																											ExtArray 696
																																																																																																																																											Let Ti642
																																																																																																																																												Int:0
																																																																																																																																												App vecunit_sgnTa641 Ti642 
																																																																																																																																										Let Tu204
																																																																																																																																											Let Ta643
																																																																																																																																												ExtArray 604
																																																																																																																																												App vecbzeroTa643 
																																																																																																																																											Let Tu203
																																																																																																																																												Let Ta644
																																																																																																																																													ExtArray 636
																																																																																																																																													Let Ta645
																																																																																																																																														ExtArray 300
																																																																																																																																														App veccpyTa644 Ta645 
																																																																																																																																												Let Tu202
																																																																																																																																													Let Ti646
																																																																																																																																														Int:0
																																																																																																																																														Let Td647
																																																																																																																																															Float:1.000000
																																																																																																																																															Let Ta648
																																																																																																																																																ExtArray 696
																																																																																																																																																Let Tt649
																																																																																																																																																	Get line x
																																																																																																																																																	Let Td650
																																																																																																																																																		Float:0.000000
																																																																																																																																																		App trace_rayTi646 Td647 Ta648 Tt649 Td650 
																																																																																																																																													Let Tu201
																																																																																																																																														Let Ta652
																																																																																																																																															Let Tt651
																																																																																																																																																Get line x
																																																																																																																																																App p_rgbTt651 
																																																																																																																																															Let Ta653
																																																																																																																																																ExtArray 604
																																																																																																																																																App veccpyTa652 Ta653 
																																																																																																																																														Let Tu200
																																																																																																																																															Let Tt654
																																																																																																																																																Get line x
																																																																																																																																																App p_set_group_idTt654 group_id 
																																																																																																																																															Let Tu199
																																																																																																																																																Let Tt655
																																																																																																																																																	Get line x
																																																																																																																																																	Let Ti656
																																																																																																																																																		Int:0
																																																																																																																																																		App pretrace_diffuse_raysTt655 Ti656 
																																																																																																																																																Let Ti658
																																																																																																																																																	Let Ti657
																																																																																																																																																		Int:1
																																																																																																																																																		Sub x Ti657
																																																																																																																																																	Let Ti660
																																																																																																																																																		Let Ti659
																																																																																																																																																			Int:1
																																																																																																																																																			App add_mod5group_id Ti659 
																																																																																																																																																		App pretrace_pixelsline Ti658 Ti660 lc0 lc1 lc2 
																																																																																																																																					Unit
																																																																																																																																			LetRec pretrace_line line y group_id 
																																																																																																																																				Let ydisp
																																																																																																																																					Let Td579
																																																																																																																																						Let Ta577
																																																																																																																																							ExtArray 632
																																																																																																																																							Let Ti578
																																																																																																																																								Int:0
																																																																																																																																								Get Ta577 Ti578
																																																																																																																																						Let Td584
																																																																																																																																							Let Ti583
																																																																																																																																								Let Ti582
																																																																																																																																									Let Ta580
																																																																																																																																										ExtArray 624
																																																																																																																																										Let Ti581
																																																																																																																																											Int:1
																																																																																																																																											Get Ta580 Ti581
																																																																																																																																									Sub y Ti582
																																																																																																																																								ExtFunApp float_of_int Ti583,
																																																																																																																																							FMul Td579 Td584
																																																																																																																																					Let lc0
																																																																																																																																						Let Td588
																																																																																																																																							Let Td587
																																																																																																																																								Let Ta585
																																																																																																																																									ExtArray 672
																																																																																																																																									Let Ti586
																																																																																																																																										Int:0
																																																																																																																																										Get Ta585 Ti586
																																																																																																																																								FMul ydisp Td587
																																																																																																																																							Let Td591
																																																																																																																																								Let Ta589
																																																																																																																																									ExtArray 684
																																																																																																																																									Let Ti590
																																																																																																																																										Int:0
																																																																																																																																										Get Ta589 Ti590
																																																																																																																																								FAdd Td588 Td591
																																																																																																																																						Let lc1
																																																																																																																																							Let Td595
																																																																																																																																								Let Td594
																																																																																																																																									Let Ta592
																																																																																																																																										ExtArray 672
																																																																																																																																										Let Ti593
																																																																																																																																											Int:1
																																																																																																																																											Get Ta592 Ti593
																																																																																																																																									FMul ydisp Td594
																																																																																																																																								Let Td598
																																																																																																																																									Let Ta596
																																																																																																																																										ExtArray 684
																																																																																																																																										Let Ti597
																																																																																																																																											Int:1
																																																																																																																																											Get Ta596 Ti597
																																																																																																																																									FAdd Td595 Td598
																																																																																																																																							Let lc2
																																																																																																																																								Let Td602
																																																																																																																																									Let Td601
																																																																																																																																										Let Ta599
																																																																																																																																											ExtArray 672
																																																																																																																																											Let Ti600
																																																																																																																																												Int:2
																																																																																																																																												Get Ta599 Ti600
																																																																																																																																										FMul ydisp Td601
																																																																																																																																									Let Td605
																																																																																																																																										Let Ta603
																																																																																																																																											ExtArray 684
																																																																																																																																											Let Ti604
																																																																																																																																												Int:2
																																																																																																																																												Get Ta603 Ti604
																																																																																																																																										FAdd Td602 Td605
																																																																																																																																								Let Ti610
																																																																																																																																									Let Ti608
																																																																																																																																										Let Ta606
																																																																																																																																											ExtArray 616
																																																																																																																																											Let Ti607
																																																																																																																																												Int:0
																																																																																																																																												Get Ta606 Ti607
																																																																																																																																										Let Ti609
																																																																																																																																											Int:1
																																																																																																																																											Sub Ti608 Ti609
																																																																																																																																									App pretrace_pixelsline Ti610 group_id lc0 lc1 lc2 
																																																																																																																																				LetRec scan_pixel x y prev cur next 
																																																																																																																																					Let Ti565
																																																																																																																																						Let Ta563
																																																																																																																																							ExtArray 616
																																																																																																																																							Let Ti564
																																																																																																																																								Int:0
																																																																																																																																								Get Ta563 Ti564
																																																																																																																																						IfLE Ti565 x
																																																																																																																																							Unit
																																																																																																																																							Let Tu211
																																																																																																																																								Let Ta566
																																																																																																																																									ExtArray 604
																																																																																																																																									Let Ta568
																																																																																																																																										Let Tt567
																																																																																																																																											Get cur x
																																																																																																																																											App p_rgbTt567 
																																																																																																																																										App veccpyTa566 Ta568 
																																																																																																																																								Let Tu210
																																																																																																																																									Let Tb569
																																																																																																																																										App neighbors_existx y next 
																																																																																																																																										Let Ti570
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb569 Ti570
																																																																																																																																												Let Tt571
																																																																																																																																													Get cur x
																																																																																																																																													Let Ti572
																																																																																																																																														Int:0
																																																																																																																																														App do_without_neighborsTt571 Ti572 
																																																																																																																																												Let Ti573
																																																																																																																																													Int:0
																																																																																																																																													App try_exploit_neighborsx y prev cur next Ti573 
																																																																																																																																									Let Tu209
																																																																																																																																										Let Tu574
																																																																																																																																											Unit
																																																																																																																																											App write_rgbTu574 
																																																																																																																																										Let Ti576
																																																																																																																																											Let Ti575
																																																																																																																																												Int:1
																																																																																																																																												Add x Ti575
																																																																																																																																											App scan_pixelTi576 y prev cur next 
																																																																																																																																					LetRec scan_line y prev cur next group_id 
																																																																																																																																						Let Ti550
																																																																																																																																							Let Ta548
																																																																																																																																								ExtArray 616
																																																																																																																																								Let Ti549
																																																																																																																																									Int:1
																																																																																																																																									Get Ta548 Ti549
																																																																																																																																							IfLE Ti550 y
																																																																																																																																								Unit
																																																																																																																																								Let Tu213
																																																																																																																																									Let Ti555
																																																																																																																																										Let Ti553
																																																																																																																																											Let Ta551
																																																																																																																																												ExtArray 616
																																																																																																																																												Let Ti552
																																																																																																																																													Int:1
																																																																																																																																													Get Ta551 Ti552
																																																																																																																																											Let Ti554
																																																																																																																																												Int:1
																																																																																																																																												Sub Ti553 Ti554
																																																																																																																																										IfLE Ti555 y
																																																																																																																																											Unit
																																																																																																																																											Let Ti557
																																																																																																																																												Let Ti556
																																																																																																																																													Int:1
																																																																																																																																													Add y Ti556
																																																																																																																																												App pretrace_linenext Ti557 group_id 
																																																																																																																																									Let Tu212
																																																																																																																																										Let Ti558
																																																																																																																																											Int:0
																																																																																																																																											App scan_pixelTi558 y prev cur next 
																																																																																																																																										Let Ti560
																																																																																																																																											Let Ti559
																																																																																																																																												Int:1
																																																																																																																																												Add y Ti559
																																																																																																																																											Let Ti562
																																																																																																																																												Let Ti561
																																																																																																																																													Int:2
																																																																																																																																													App add_mod5group_id Ti561 
																																																																																																																																												App scan_lineTi560 cur next prev Ti562 
																																																																																																																																						LetRec create_float5x3array Tu214 
																																																																																																																																							Let vec
																																																																																																																																								Let Ti529
																																																																																																																																									Int:3
																																																																																																																																									Let Td530
																																																																																																																																										Float:0.000000
																																																																																																																																										ExtFunApp create_float_array Ti529,Td530,
																																																																																																																																								Let array
																																																																																																																																									Let Ti531
																																																																																																																																										Int:5
																																																																																																																																										ExtFunApp create_array Ti531,vec,
																																																																																																																																									Let Tu218
																																																																																																																																										Let Ti532
																																																																																																																																											Int:1
																																																																																																																																											Let Ta535
																																																																																																																																												Let Ti533
																																																																																																																																													Int:3
																																																																																																																																													Let Td534
																																																																																																																																														Float:0.000000
																																																																																																																																														ExtFunApp create_float_array Ti533,Td534,
																																																																																																																																												Put array Ti532 Ta535
																																																																																																																																										Let Tu217
																																																																																																																																											Let Ti536
																																																																																																																																												Int:2
																																																																																																																																												Let Ta539
																																																																																																																																													Let Ti537
																																																																																																																																														Int:3
																																																																																																																																														Let Td538
																																																																																																																																															Float:0.000000
																																																																																																																																															ExtFunApp create_float_array Ti537,Td538,
																																																																																																																																													Put array Ti536 Ta539
																																																																																																																																											Let Tu216
																																																																																																																																												Let Ti540
																																																																																																																																													Int:3
																																																																																																																																													Let Ta543
																																																																																																																																														Let Ti541
																																																																																																																																															Int:3
																																																																																																																																															Let Td542
																																																																																																																																																Float:0.000000
																																																																																																																																																ExtFunApp create_float_array Ti541,Td542,
																																																																																																																																														Put array Ti540 Ta543
																																																																																																																																												Let Tu215
																																																																																																																																													Let Ti544
																																																																																																																																														Int:4
																																																																																																																																														Let Ta547
																																																																																																																																															Let Ti545
																																																																																																																																																Int:3
																																																																																																																																																Let Td546
																																																																																																																																																	Float:0.000000
																																																																																																																																																	ExtFunApp create_float_array Ti545,Td546,
																																																																																																																																															Put array Ti544 Ta547
																																																																																																																																													Var array
																																																																																																																																							LetRec create_pixel Tu219 
																																																																																																																																								Let m_rgb
																																																																																																																																									Let Ti517
																																																																																																																																										Int:3
																																																																																																																																										Let Td518
																																																																																																																																											Float:0.000000
																																																																																																																																											ExtFunApp create_float_array Ti517,Td518,
																																																																																																																																									Let m_isect_ps
																																																																																																																																										Let Tu519
																																																																																																																																											Unit
																																																																																																																																											App create_float5x3arrayTu519 
																																																																																																																																										Let m_sids
																																																																																																																																											Let Ti520
																																																																																																																																												Int:5
																																																																																																																																												Let Ti521
																																																																																																																																													Int:0
																																																																																																																																													ExtFunApp create_array Ti520,Ti521,
																																																																																																																																											Let m_cdif
																																																																																																																																												Let Ti522
																																																																																																																																													Int:5
																																																																																																																																													Let Ti523
																																																																																																																																														Int:0
																																																																																																																																														ExtFunApp create_array Ti522,Ti523,
																																																																																																																																												Let m_engy
																																																																																																																																													Let Tu524
																																																																																																																																														Unit
																																																																																																																																														App create_float5x3arrayTu524 
																																																																																																																																													Let m_r20p
																																																																																																																																														Let Tu525
																																																																																																																																															Unit
																																																																																																																																															App create_float5x3arrayTu525 
																																																																																																																																														Let m_gid
																																																																																																																																															Let Ti526
																																																																																																																																																Int:1
																																																																																																																																																Let Ti527
																																																																																																																																																	Int:0
																																																																																																																																																	ExtFunApp create_array Ti526,Ti527,
																																																																																																																																															Let m_nvectors
																																																																																																																																																Let Tu528
																																																																																																																																																	Unit
																																																																																																																																																	App create_float5x3arrayTu528 
																																																																																																																																																Tuple (m_rgb,m_isect_ps,m_sids,m_cdif,m_engy,m_r20p,m_gid,m_nvectors,)
																																																																																																																																								LetRec init_line_elements line n 
																																																																																																																																									Let Ti512
																																																																																																																																										Int:0
																																																																																																																																										IfLE Ti512 n
																																																																																																																																											Let Tu220
																																																																																																																																												Let Tt514
																																																																																																																																													Let Tu513
																																																																																																																																														Unit
																																																																																																																																														App create_pixelTu513 
																																																																																																																																													Put line n Tt514
																																																																																																																																												Let Ti516
																																																																																																																																													Let Ti515
																																																																																																																																														Int:1
																																																																																																																																														Sub n Ti515
																																																																																																																																													App init_line_elementsline Ti516 
																																																																																																																																											Var line
																																																																																																																																									LetRec create_pixelline Tu221 
																																																																																																																																										Let line
																																																																																																																																											Let Ti504
																																																																																																																																												Let Ta502
																																																																																																																																													ExtArray 616
																																																																																																																																													Let Ti503
																																																																																																																																														Int:0
																																																																																																																																														Get Ta502 Ti503
																																																																																																																																												Let Tt506
																																																																																																																																													Let Tu505
																																																																																																																																														Unit
																																																																																																																																														App create_pixelTu505 
																																																																																																																																													ExtFunApp create_array Ti504,Tt506,
																																																																																																																																											Let Ti511
																																																																																																																																												Let Ti509
																																																																																																																																													Let Ta507
																																																																																																																																														ExtArray 616
																																																																																																																																														Let Ti508
																																																																																																																																															Int:0
																																																																																																																																															Get Ta507 Ti508
																																																																																																																																													Let Ti510
																																																																																																																																														Int:2
																																																																																																																																														Sub Ti509 Ti510
																																																																																																																																												App init_line_elementsline Ti511 
																																																																																																																																										LetRec tan x 
																																																																																																																																											Let Td499
																																																																																																																																												ExtFunApp sin x,
																																																																																																																																												Let Td500
																																																																																																																																													ExtFunApp cos x,
																																																																																																																																													Let Td501
																																																																																																																																														FReciprocal Td500
																																																																																																																																														FMul Td499 Td501
																																																																																																																																											LetRec adjust_position h ratio 
																																																																																																																																												Let l
																																																																																																																																													Let Td495
																																																																																																																																														Let Td493
																																																																																																																																															FMul h h
																																																																																																																																															Let Td494
																																																																																																																																																Float:0.100000
																																																																																																																																																FAdd Td493 Td494
																																																																																																																																														sqrt Td495
																																																																																																																																													Let tan_h
																																																																																																																																														Let Td496
																																																																																																																																															Float:1.000000
																																																																																																																																															Let Td497
																																																																																																																																																FReciprocal l
																																																																																																																																																FMul Td496 Td497
																																																																																																																																														Let theta_h
																																																																																																																																															ExtFunApp atan tan_h,
																																																																																																																																															Let tan_m
																																																																																																																																																Let Td498
																																																																																																																																																	FMul theta_h ratio
																																																																																																																																																	App tanTd498 
																																																																																																																																																FMul tan_m l
																																																																																																																																												LetRec calc_dirvec icount x y rx ry group_id index 
																																																																																																																																													Let Ti448
																																																																																																																																														Int:5
																																																																																																																																														IfLE Ti448 icount
																																																																																																																																															Let l
																																																																																																																																																Let Td453
																																																																																																																																																	Let Td451
																																																																																																																																																		Let Td449
																																																																																																																																																			App fsqrx 
																																																																																																																																																			Let Td450
																																																																																																																																																				App fsqry 
																																																																																																																																																				FAdd Td449 Td450
																																																																																																																																																		Let Td452
																																																																																																																																																			Float:1.000000
																																																																																																																																																			FAdd Td451 Td452
																																																																																																																																																	sqrt Td453
																																																																																																																																																Let vx
																																																																																																																																																	Let Td454
																																																																																																																																																		FReciprocal l
																																																																																																																																																		FMul x Td454
																																																																																																																																																	Let vy
																																																																																																																																																		Let Td455
																																																																																																																																																			FReciprocal l
																																																																																																																																																			FMul y Td455
																																																																																																																																																		Let vz
																																																																																																																																																			Let Td456
																																																																																																																																																				Float:1.000000
																																																																																																																																																				Let Td457
																																																																																																																																																					FReciprocal l
																																																																																																																																																					FMul Td456 Td457
																																																																																																																																																			Let dgroup
																																																																																																																																																				Let Ta458
																																																																																																																																																					ExtArray 716
																																																																																																																																																					Get Ta458 group_id
																																																																																																																																																				Let Tu226
																																																																																																																																																					Let Ta460
																																																																																																																																																						Let Tt459
																																																																																																																																																							Get dgroup index
																																																																																																																																																							App d_vecTt459 
																																																																																																																																																						App vecsetTa460 vx vy vz 
																																																																																																																																																					Let Tu225
																																																																																																																																																						Let Ta464
																																																																																																																																																							Let Tt463
																																																																																																																																																								Let Ti462
																																																																																																																																																									Let Ti461
																																																																																																																																																										Int:40
																																																																																																																																																										Add index Ti461
																																																																																																																																																									Get dgroup Ti462
																																																																																																																																																								App d_vecTt463 
																																																																																																																																																							Let Td465
																																																																																																																																																								App fnegvy 
																																																																																																																																																								App vecsetTa464 vx vz Td465 
																																																																																																																																																						Let Tu224
																																																																																																																																																							Let Ta469
																																																																																																																																																								Let Tt468
																																																																																																																																																									Let Ti467
																																																																																																																																																										Let Ti466
																																																																																																																																																											Int:80
																																																																																																																																																											Add index Ti466
																																																																																																																																																										Get dgroup Ti467
																																																																																																																																																									App d_vecTt468 
																																																																																																																																																								Let Td470
																																																																																																																																																									App fnegvx 
																																																																																																																																																									Let Td471
																																																																																																																																																										App fnegvy 
																																																																																																																																																										App vecsetTa469 vz Td470 Td471 
																																																																																																																																																							Let Tu223
																																																																																																																																																								Let Ta475
																																																																																																																																																									Let Tt474
																																																																																																																																																										Let Ti473
																																																																																																																																																											Let Ti472
																																																																																																																																																												Int:1
																																																																																																																																																												Add index Ti472
																																																																																																																																																											Get dgroup Ti473
																																																																																																																																																										App d_vecTt474 
																																																																																																																																																									Let Td476
																																																																																																																																																										App fnegvx 
																																																																																																																																																										Let Td477
																																																																																																																																																											App fnegvy 
																																																																																																																																																											Let Td478
																																																																																																																																																												App fnegvz 
																																																																																																																																																												App vecsetTa475 Td476 Td477 Td478 
																																																																																																																																																								Let Tu222
																																																																																																																																																									Let Ta482
																																																																																																																																																										Let Tt481
																																																																																																																																																											Let Ti480
																																																																																																																																																												Let Ti479
																																																																																																																																																													Int:41
																																																																																																																																																													Add index Ti479
																																																																																																																																																												Get dgroup Ti480
																																																																																																																																																											App d_vecTt481 
																																																																																																																																																										Let Td483
																																																																																																																																																											App fnegvx 
																																																																																																																																																											Let Td484
																																																																																																																																																												App fnegvz 
																																																																																																																																																												App vecsetTa482 Td483 Td484 vy 
																																																																																																																																																									Let Ta488
																																																																																																																																																										Let Tt487
																																																																																																																																																											Let Ti486
																																																																																																																																																												Let Ti485
																																																																																																																																																													Int:81
																																																																																																																																																													Add index Ti485
																																																																																																																																																												Get dgroup Ti486
																																																																																																																																																											App d_vecTt487 
																																																																																																																																																										Let Td489
																																																																																																																																																											App fnegvz 
																																																																																																																																																											App vecsetTa488 Td489 vx vy 
																																																																																																																																															Let x2
																																																																																																																																																App adjust_positiony rx 
																																																																																																																																																Let Ti491
																																																																																																																																																	Let Ti490
																																																																																																																																																		Int:1
																																																																																																																																																		Add icount Ti490
																																																																																																																																																	Let Td492
																																																																																																																																																		App adjust_positionx2 ry 
																																																																																																																																																		App calc_dirvecTi491 x2 Td492 rx ry group_id index 
																																																																																																																																													LetRec calc_dirvecs col ry group_id index 
																																																																																																																																														Let Ti427
																																																																																																																																															Int:0
																																																																																																																																															IfLE Ti427 col
																																																																																																																																																Let rx
																																																																																																																																																	Let Td430
																																																																																																																																																		Let Td428
																																																																																																																																																			ExtFunApp float_of_int col,
																																																																																																																																																			Let Td429
																																																																																																																																																				Float:0.200000
																																																																																																																																																				FMul Td428 Td429
																																																																																																																																																		Let Td431
																																																																																																																																																			Float:0.900000
																																																																																																																																																			FSub Td430 Td431
																																																																																																																																																	Let Tu228
																																																																																																																																																		Let Ti432
																																																																																																																																																			Int:0
																																																																																																																																																			Let Td433
																																																																																																																																																				Float:0.000000
																																																																																																																																																				Let Td434
																																																																																																																																																					Float:0.000000
																																																																																																																																																					App calc_dirvecTi432 Td433 Td434 rx ry group_id index 
																																																																																																																																																		Let rx2
																																																																																																																																																			Let Td437
																																																																																																																																																				Let Td435
																																																																																																																																																					ExtFunApp float_of_int col,
																																																																																																																																																					Let Td436
																																																																																																																																																						Float:0.200000
																																																																																																																																																						FMul Td435 Td436
																																																																																																																																																				Let Td438
																																																																																																																																																					Float:0.100000
																																																																																																																																																					FAdd Td437 Td438
																																																																																																																																																			Let Tu227
																																																																																																																																																				Let Ti439
																																																																																																																																																					Int:0
																																																																																																																																																					Let Td440
																																																																																																																																																						Float:0.000000
																																																																																																																																																						Let Td441
																																																																																																																																																							Float:0.000000
																																																																																																																																																							Let Ti443
																																																																																																																																																								Let Ti442
																																																																																																																																																									Int:2
																																																																																																																																																									Add index Ti442
																																																																																																																																																								App calc_dirvecTi439 Td440 Td441 rx2 ry group_id Ti443 
																																																																																																																																																				Let Ti445
																																																																																																																																																					Let Ti444
																																																																																																																																																						Int:1
																																																																																																																																																						Sub col Ti444
																																																																																																																																																					Let Ti447
																																																																																																																																																						Let Ti446
																																																																																																																																																							Int:1
																																																																																																																																																							App add_mod5group_id Ti446 
																																																																																																																																																						App calc_dirvecsTi445 ry Ti447 index 
																																																																																																																																																Unit
																																																																																																																																														LetRec calc_dirvec_rows row group_id index 
																																																																																																																																															Let Ti415
																																																																																																																																																Int:0
																																																																																																																																																IfLE Ti415 row
																																																																																																																																																	Let ry
																																																																																																																																																		Let Td418
																																																																																																																																																			Let Td416
																																																																																																																																																				ExtFunApp float_of_int row,
																																																																																																																																																				Let Td417
																																																																																																																																																					Float:0.200000
																																																																																																																																																					FMul Td416 Td417
																																																																																																																																																			Let Td419
																																																																																																																																																				Float:0.900000
																																																																																																																																																				FSub Td418 Td419
																																																																																																																																																		Let Tu229
																																																																																																																																																			Let Ti420
																																																																																																																																																				Int:4
																																																																																																																																																				App calc_dirvecsTi420 ry group_id index 
																																																																																																																																																			Let Ti422
																																																																																																																																																				Let Ti421
																																																																																																																																																					Int:1
																																																																																																																																																					Sub row Ti421
																																																																																																																																																				Let Ti424
																																																																																																																																																					Let Ti423
																																																																																																																																																						Int:2
																																																																																																																																																						App add_mod5group_id Ti423 
																																																																																																																																																					Let Ti426
																																																																																																																																																						Let Ti425
																																																																																																																																																							Int:4
																																																																																																																																																							Add index Ti425
																																																																																																																																																						App calc_dirvec_rowsTi422 Ti424 Ti426 
																																																																																																																																																	Unit
																																																																																																																																															LetRec create_dirvec Tu230 
																																																																																																																																																Let v3
																																																																																																																																																	Let Ti410
																																																																																																																																																		Int:3
																																																																																																																																																		Let Td411
																																																																																																																																																			Float:0.000000
																																																																																																																																																			ExtFunApp create_float_array Ti410,Td411,
																																																																																																																																																	Let consts
																																																																																																																																																		Let Ti414
																																																																																																																																																			Let Ta412
																																																																																																																																																				ExtArray 0
																																																																																																																																																				Let Ti413
																																																																																																																																																					Int:0
																																																																																																																																																					Get Ta412 Ti413
																																																																																																																																																			ExtFunApp create_array Ti414,v3,
																																																																																																																																																		Tuple (v3,consts,)
																																																																																																																																																LetRec create_dirvec_elements d index 
																																																																																																																																																	Let Ti405
																																																																																																																																																		Int:0
																																																																																																																																																		IfLE Ti405 index
																																																																																																																																																			Let Tu231
																																																																																																																																																				Let Tt407
																																																																																																																																																					Let Tu406
																																																																																																																																																						Unit
																																																																																																																																																						App create_dirvecTu406 
																																																																																																																																																					Put d index Tt407
																																																																																																																																																				Let Ti409
																																																																																																																																																					Let Ti408
																																																																																																																																																						Int:1
																																																																																																																																																						Sub index Ti408
																																																																																																																																																					App create_dirvec_elementsd Ti409 
																																																																																																																																																			Unit
																																																																																																																																																	LetRec create_dirvecs index 
																																																																																																																																																		Let Ti394
																																																																																																																																																			Int:0
																																																																																																																																																			IfLE Ti394 index
																																																																																																																																																				Let Tu233
																																																																																																																																																					Let Ta395
																																																																																																																																																						ExtArray 716
																																																																																																																																																						Let Ta399
																																																																																																																																																							Let Ti396
																																																																																																																																																								Int:120
																																																																																																																																																								Let Tt398
																																																																																																																																																									Let Tu397
																																																																																																																																																										Unit
																																																																																																																																																										App create_dirvecTu397 
																																																																																																																																																									ExtFunApp create_array Ti396,Tt398,
																																																																																																																																																							Put Ta395 index Ta399
																																																																																																																																																					Let Tu232
																																																																																																																																																						Let Ta401
																																																																																																																																																							Let Ta400
																																																																																																																																																								ExtArray 716
																																																																																																																																																								Get Ta400 index
																																																																																																																																																							Let Ti402
																																																																																																																																																								Int:118
																																																																																																																																																								App create_dirvec_elementsTa401 Ti402 
																																																																																																																																																						Let Ti404
																																																																																																																																																							Let Ti403
																																																																																																																																																								Int:1
																																																																																																																																																								Sub index Ti403
																																																																																																																																																							App create_dirvecsTi404 
																																																																																																																																																				Unit
																																																																																																																																																		LetRec init_dirvec_constants vecset index 
																																																																																																																																																			Let Ti390
																																																																																																																																																				Int:0
																																																																																																																																																				IfLE Ti390 index
																																																																																																																																																					Let Tu234
																																																																																																																																																						Let Tt391
																																																																																																																																																							Get vecset index
																																																																																																																																																							App setup_dirvec_constantsTt391 
																																																																																																																																																						Let Ti393
																																																																																																																																																							Let Ti392
																																																																																																																																																								Int:1
																																																																																																																																																								Sub index Ti392
																																																																																																																																																							App init_dirvec_constantsvecset Ti393 
																																																																																																																																																					Unit
																																																																																																																																																			LetRec init_vecset_constants index 
																																																																																																																																																				Let Ti384
																																																																																																																																																					Int:0
																																																																																																																																																					IfLE Ti384 index
																																																																																																																																																						Let Tu235
																																																																																																																																																							Let Ta386
																																																																																																																																																								Let Ta385
																																																																																																																																																									ExtArray 716
																																																																																																																																																									Get Ta385 index
																																																																																																																																																								Let Ti387
																																																																																																																																																									Int:119
																																																																																																																																																									App init_dirvec_constantsTa386 Ti387 
																																																																																																																																																							Let Ti389
																																																																																																																																																								Let Ti388
																																																																																																																																																									Int:1
																																																																																																																																																									Sub index Ti388
																																																																																																																																																								App init_vecset_constantsTi389 
																																																																																																																																																						Unit
																																																																																																																																																				LetRec init_dirvecs Tu236 
																																																																																																																																																					Let Tu238
																																																																																																																																																						Let Ti379
																																																																																																																																																							Int:4
																																																																																																																																																							App create_dirvecsTi379 
																																																																																																																																																						Let Tu237
																																																																																																																																																							Let Ti380
																																																																																																																																																								Int:9
																																																																																																																																																								Let Ti381
																																																																																																																																																									Int:0
																																																																																																																																																									Let Ti382
																																																																																																																																																										Int:0
																																																																																																																																																										App calc_dirvec_rowsTi380 Ti381 Ti382 
																																																																																																																																																							Let Ti383
																																																																																																																																																								Int:4
																																																																																																																																																								App init_vecset_constantsTi383 
																																																																																																																																																					LetRec add_reflection index surface_id bright v0 v1 v2 
																																																																																																																																																						Let dvec
																																																																																																																																																							Let Tu375
																																																																																																																																																								Unit
																																																																																																																																																								App create_dirvecTu375 
																																																																																																																																																							Let Tu240
																																																																																																																																																								Let Ta376
																																																																																																																																																									App d_vecdvec 
																																																																																																																																																									App vecsetTa376 v0 v1 v2 
																																																																																																																																																								Let Tu239
																																																																																																																																																									App setup_dirvec_constantsdvec 
																																																																																																																																																									Let Ta377
																																																																																																																																																										ExtArray 1016
																																																																																																																																																										Let Tt378
																																																																																																																																																											Tuple (surface_id,dvec,bright,)
																																																																																																																																																											Put Ta377 index Tt378
																																																																																																																																																						LetRec setup_rect_reflection obj_id obj 
																																																																																																																																																							Let sid
																																																																																																																																																								ShiftL2 obj_id
																																																																																																																																																								Let nr
																																																																																																																																																									Let Ta339
																																																																																																																																																										ExtArray 1736
																																																																																																																																																										Let Ti340
																																																																																																																																																											Int:0
																																																																																																																																																											Get Ta339 Ti340
																																																																																																																																																									Let br
																																																																																																																																																										Let Td341
																																																																																																																																																											Float:1.000000
																																																																																																																																																											Let Td342
																																																																																																																																																												App o_diffuseobj 
																																																																																																																																																												FSub Td341 Td342
																																																																																																																																																										Let n0
																																																																																																																																																											Let Td345
																																																																																																																																																												Let Ta343
																																																																																																																																																													ExtArray 312
																																																																																																																																																													Let Ti344
																																																																																																																																																														Int:0
																																																																																																																																																														Get Ta343 Ti344
																																																																																																																																																												App fnegTd345 
																																																																																																																																																											Let n1
																																																																																																																																																												Let Td348
																																																																																																																																																													Let Ta346
																																																																																																																																																														ExtArray 312
																																																																																																																																																														Let Ti347
																																																																																																																																																															Int:1
																																																																																																																																																															Get Ta346 Ti347
																																																																																																																																																													App fnegTd348 
																																																																																																																																																												Let n2
																																																																																																																																																													Let Td351
																																																																																																																																																														Let Ta349
																																																																																																																																																															ExtArray 312
																																																																																																																																																															Let Ti350
																																																																																																																																																																Int:2
																																																																																																																																																																Get Ta349 Ti350
																																																																																																																																																														App fnegTd351 
																																																																																																																																																													Let Tu243
																																																																																																																																																														Let Ti353
																																																																																																																																																															Let Ti352
																																																																																																																																																																Int:1
																																																																																																																																																																Add sid Ti352
																																																																																																																																																															Let Td356
																																																																																																																																																																Let Ta354
																																																																																																																																																																	ExtArray 312
																																																																																																																																																																	Let Ti355
																																																																																																																																																																		Int:0
																																																																																																																																																																		Get Ta354 Ti355
																																																																																																																																																																App add_reflectionnr Ti353 br Td356 n1 n2 
																																																																																																																																																														Let Tu242
																																																																																																																																																															Let Ti358
																																																																																																																																																																Let Ti357
																																																																																																																																																																	Int:1
																																																																																																																																																																	Add nr Ti357
																																																																																																																																																																Let Ti360
																																																																																																																																																																	Let Ti359
																																																																																																																																																																		Int:2
																																																																																																																																																																		Add sid Ti359
																																																																																																																																																																	Let Td363
																																																																																																																																																																		Let Ta361
																																																																																																																																																																			ExtArray 312
																																																																																																																																																																			Let Ti362
																																																																																																																																																																				Int:1
																																																																																																																																																																				Get Ta361 Ti362
																																																																																																																																																																		App add_reflectionTi358 Ti360 br n0 Td363 n2 
																																																																																																																																																															Let Tu241
																																																																																																																																																																Let Ti365
																																																																																																																																																																	Let Ti364
																																																																																																																																																																		Int:2
																																																																																																																																																																		Add nr Ti364
																																																																																																																																																																	Let Ti367
																																																																																																																																																																		Let Ti366
																																																																																																																																																																			Int:3
																																																																																																																																																																			Add sid Ti366
																																																																																																																																																																		Let Td370
																																																																																																																																																																			Let Ta368
																																																																																																																																																																				ExtArray 312
																																																																																																																																																																				Let Ti369
																																																																																																																																																																					Int:2
																																																																																																																																																																					Get Ta368 Ti369
																																																																																																																																																																			App add_reflectionTi365 Ti367 br n0 n1 Td370 
																																																																																																																																																																Let Ta371
																																																																																																																																																																	ExtArray 1736
																																																																																																																																																																	Let Ti372
																																																																																																																																																																		Int:0
																																																																																																																																																																		Let Ti374
																																																																																																																																																																			Let Ti373
																																																																																																																																																																				Int:3
																																																																																																																																																																				Add nr Ti373
																																																																																																																																																																			Put Ta371 Ti372 Ti374
																																																																																																																																																							LetRec setup_surface_reflection obj_id obj 
																																																																																																																																																								Let sid
																																																																																																																																																									Let Ti303
																																																																																																																																																										ShiftL2 obj_id
																																																																																																																																																										Let Ti304
																																																																																																																																																											Int:1
																																																																																																																																																											Add Ti303 Ti304
																																																																																																																																																									Let nr
																																																																																																																																																										Let Ta305
																																																																																																																																																											ExtArray 1736
																																																																																																																																																											Let Ti306
																																																																																																																																																												Int:0
																																																																																																																																																												Get Ta305 Ti306
																																																																																																																																																										Let br
																																																																																																																																																											Let Td307
																																																																																																																																																												Float:1.000000
																																																																																																																																																												Let Td308
																																																																																																																																																													App o_diffuseobj 
																																																																																																																																																													FSub Td307 Td308
																																																																																																																																																											Let p
																																																																																																																																																												Let Ta309
																																																																																																																																																													ExtArray 312
																																																																																																																																																													Let Ta310
																																																																																																																																																														App o_param_abcobj 
																																																																																																																																																														App veciprodTa309 Ta310 
																																																																																																																																																												Let Tu244
																																																																																																																																																													Let Td318
																																																																																																																																																														Let Td314
																																																																																																																																																															Let Td313
																																																																																																																																																																Let Td311
																																																																																																																																																																	Float:2.000000
																																																																																																																																																																	Let Td312
																																																																																																																																																																		App o_param_aobj 
																																																																																																																																																																		FMul Td311 Td312
																																																																																																																																																																FMul Td313 p
																																																																																																																																																															Let Td317
																																																																																																																																																																Let Ta315
																																																																																																																																																																	ExtArray 312
																																																																																																																																																																	Let Ti316
																																																																																																																																																																		Int:0
																																																																																																																																																																		Get Ta315 Ti316
																																																																																																																																																																FSub Td314 Td317
																																																																																																																																																														Let Td326
																																																																																																																																																															Let Td322
																																																																																																																																																																Let Td321
																																																																																																																																																																	Let Td319
																																																																																																																																																																		Float:2.000000
																																																																																																																																																																		Let Td320
																																																																																																																																																																			App o_param_bobj 
																																																																																																																																																																			FMul Td319 Td320
																																																																																																																																																																	FMul Td321 p
																																																																																																																																																																Let Td325
																																																																																																																																																																	Let Ta323
																																																																																																																																																																		ExtArray 312
																																																																																																																																																																		Let Ti324
																																																																																																																																																																			Int:1
																																																																																																																																																																			Get Ta323 Ti324
																																																																																																																																																																	FSub Td322 Td325
																																																																																																																																																															Let Td334
																																																																																																																																																																Let Td330
																																																																																																																																																																	Let Td329
																																																																																																																																																																		Let Td327
																																																																																																																																																																			Float:2.000000
																																																																																																																																																																			Let Td328
																																																																																																																																																																				App o_param_cobj 
																																																																																																																																																																				FMul Td327 Td328
																																																																																																																																																																		FMul Td329 p
																																																																																																																																																																	Let Td333
																																																																																																																																																																		Let Ta331
																																																																																																																																																																			ExtArray 312
																																																																																																																																																																			Let Ti332
																																																																																																																																																																				Int:2
																																																																																																																																																																				Get Ta331 Ti332
																																																																																																																																																																		FSub Td330 Td333
																																																																																																																																																																App add_reflectionnr sid br Td318 Td326 Td334 
																																																																																																																																																													Let Ta335
																																																																																																																																																														ExtArray 1736
																																																																																																																																																														Let Ti336
																																																																																																																																																															Int:0
																																																																																																																																																															Let Ti338
																																																																																																																																																																Let Ti337
																																																																																																																																																																	Int:1
																																																																																																																																																																	Add nr Ti337
																																																																																																																																																																Put Ta335 Ti336 Ti338
																																																																																																																																																								LetRec setup_reflections obj_id 
																																																																																																																																																									Let Ti295
																																																																																																																																																										Int:0
																																																																																																																																																										IfLE Ti295 obj_id
																																																																																																																																																											Let obj
																																																																																																																																																												Let Ta296
																																																																																																																																																													ExtArray 48
																																																																																																																																																													Get Ta296 obj_id
																																																																																																																																																												Let Ti297
																																																																																																																																																													App o_reflectiontypeobj 
																																																																																																																																																													Let Ti298
																																																																																																																																																														Int:2
																																																																																																																																																														IfEq Ti297 Ti298
																																																																																																																																																															Let Td299
																																																																																																																																																																Float:1.000000
																																																																																																																																																																Let Td300
																																																																																																																																																																	App o_diffuseobj 
																																																																																																																																																																	IfLE Td299 Td300
																																																																																																																																																																		Unit
																																																																																																																																																																		Let m_shape
																																																																																																																																																																			App o_formobj 
																																																																																																																																																																			Let Ti301
																																																																																																																																																																				Int:1
																																																																																																																																																																				IfEq m_shape Ti301
																																																																																																																																																																					App setup_rect_reflectionobj_id obj 
																																																																																																																																																																					Let Ti302
																																																																																																																																																																						Int:2
																																																																																																																																																																						IfEq m_shape Ti302
																																																																																																																																																																							App setup_surface_reflectionobj_id obj 
																																																																																																																																																																							Unit
																																																																																																																																																															Unit
																																																																																																																																																											Unit
																																																																																																																																																									LetRec rt size_x size_y 
																																																																																																																																																										Let Tu256
																																																																																																																																																											Let Ta260
																																																																																																																																																												ExtArray 616
																																																																																																																																																												Let Ti261
																																																																																																																																																													Int:0
																																																																																																																																																													Put Ta260 Ti261 size_x
																																																																																																																																																											Let Tu255
																																																																																																																																																												Let Ta262
																																																																																																																																																													ExtArray 616
																																																																																																																																																													Let Ti263
																																																																																																																																																														Int:1
																																																																																																																																																														Put Ta262 Ti263 size_y
																																																																																																																																																												Let Tu254
																																																																																																																																																													Let Ta264
																																																																																																																																																														ExtArray 624
																																																																																																																																																														Let Ti265
																																																																																																																																																															Int:0
																																																																																																																																																															Let Ti266
																																																																																																																																																																ShiftR1 size_x
																																																																																																																																																																Put Ta264 Ti265 Ti266
																																																																																																																																																													Let Tu253
																																																																																																																																																														Let Ta267
																																																																																																																																																															ExtArray 624
																																																																																																																																																															Let Ti268
																																																																																																																																																																Int:1
																																																																																																																																																																Let Ti269
																																																																																																																																																																	ShiftR1 size_y
																																																																																																																																																																	Put Ta267 Ti268 Ti269
																																																																																																																																																														Let Tu252
																																																																																																																																																															Let Ta270
																																																																																																																																																																ExtArray 632
																																																																																																																																																																Let Ti271
																																																																																																																																																																	Int:0
																																																																																																																																																																	Let Td275
																																																																																																																																																																		Let Td272
																																																																																																																																																																			Float:128.000000
																																																																																																																																																																			Let Td273
																																																																																																																																																																				ExtFunApp float_of_int size_x,
																																																																																																																																																																				Let Td274
																																																																																																																																																																					FReciprocal Td273
																																																																																																																																																																					FMul Td272 Td274
																																																																																																																																																																		Put Ta270 Ti271 Td275
																																																																																																																																																															Let prev
																																																																																																																																																																Let Tu276
																																																																																																																																																																	Unit
																																																																																																																																																																	App create_pixellineTu276 
																																																																																																																																																																Let cur
																																																																																																																																																																	Let Tu277
																																																																																																																																																																		Unit
																																																																																																																																																																		App create_pixellineTu277 
																																																																																																																																																																	Let next
																																																																																																																																																																		Let Tu278
																																																																																																																																																																			Unit
																																																																																																																																																																			App create_pixellineTu278 
																																																																																																																																																																		Let Tu251
																																																																																																																																																																			Let Tu279
																																																																																																																																																																				Unit
																																																																																																																																																																				App read_parameterTu279 
																																																																																																																																																																			Let Tu250
																																																																																																																																																																				Let Tu280
																																																																																																																																																																					Unit
																																																																																																																																																																					App write_ppm_headerTu280 
																																																																																																																																																																				Let Tu249
																																																																																																																																																																					Let Tu281
																																																																																																																																																																						Unit
																																																																																																																																																																						App init_dirvecsTu281 
																																																																																																																																																																					Let Tu248
																																																																																																																																																																						Let Ta283
																																																																																																																																																																							Let Tt282
																																																																																																																																																																								ExtTuple 988
																																																																																																																																																																								App d_vecTt282 
																																																																																																																																																																							Let Ta284
																																																																																																																																																																								ExtArray 312
																																																																																																																																																																								App veccpyTa283 Ta284 
																																																																																																																																																																						Let Tu247
																																																																																																																																																																							Let Tt285
																																																																																																																																																																								ExtTuple 988
																																																																																																																																																																								App setup_dirvec_constantsTt285 
																																																																																																																																																																							Let Tu246
																																																																																																																																																																								Let Ti290
																																																																																																																																																																									Let Ti288
																																																																																																																																																																										Let Ta286
																																																																																																																																																																											ExtArray 0
																																																																																																																																																																											Let Ti287
																																																																																																																																																																												Int:0
																																																																																																																																																																												Get Ta286 Ti287
																																																																																																																																																																										Let Ti289
																																																																																																																																																																											Int:1
																																																																																																																																																																											Sub Ti288 Ti289
																																																																																																																																																																									App setup_reflectionsTi290 
																																																																																																																																																																								Let Tu245
																																																																																																																																																																									Let Ti291
																																																																																																																																																																										Int:0
																																																																																																																																																																										Let Ti292
																																																																																																																																																																											Int:0
																																																																																																																																																																											App pretrace_linecur Ti291 Ti292 
																																																																																																																																																																									Let Ti293
																																																																																																																																																																										Int:0
																																																																																																																																																																										Let Ti294
																																																																																																																																																																											Int:2
																																																																																																																																																																											App scan_lineTi293 prev cur next Ti294 
																																																																																																																																																										Let Tu257
																																																																																																																																																											Let Ti258
																																																																																																																																																												Int:128
																																																																																																																																																												Let Ti259
																																																																																																																																																													Int:128
																																																																																																																																																													App rtTi258 Ti259 
																																																																																																																																																											Unit
