LetRec xor x y 
	Let Ti2625
		Int:0
		IfEq x Ti2625
			Var y
			Let Ti2626
				Int:0
				IfEq y Ti2626
					Int:1
					Int:0
	LetRec sgn x 
		Let Tb2621
			ExtFunApp fiszero x,
			Let Ti2622
				Int:0
				IfEq Tb2621 Ti2622
					Let Tb2623
						ExtFunApp fispos x,
						Let Ti2624
							Int:0
							IfEq Tb2623 Ti2624
								Float:-1.000000
								Float:1.000000
					Float:0.000000
		LetRec fneg_cond cond x 
			Let Ti2620
				Int:0
				IfEq cond Ti2620
					ExtFunApp fneg x,
					Var x
			LetRec add_mod5 x y 
				Let sum
					Add x y
					Let Ti2618
						Int:5
						IfLE Ti2618 sum
							Let Ti2619
								Int:5
								Sub sum Ti2619
							Var sum
				LetRec vecset v x y z 
					Let Tu2
						Let Ti2615
							Int:0
							Put v Ti2615 x
						Let Tu1
							Let Ti2616
								Int:1
								Put v Ti2616 y
							Let Ti2617
								Int:2
								Put v Ti2617 z
					LetRec vecfill v elem 
						Let Tu4
							Let Ti2612
								Int:0
								Put v Ti2612 elem
							Let Tu3
								Let Ti2613
									Int:1
									Put v Ti2613 elem
								Let Ti2614
									Int:2
									Put v Ti2614 elem
						LetRec vecbzero v 
							Let Td2611
								Float:0.000000
								App vecfillv Td2611 
							LetRec veccpy dest src 
								Let Tu6
									Let Ti2602
										Int:0
										Let Td2604
											Let Ti2603
												Int:0
												Get src Ti2603
											Put dest Ti2602 Td2604
									Let Tu5
										Let Ti2605
											Int:1
											Let Td2607
												Let Ti2606
													Int:1
													Get src Ti2606
												Put dest Ti2605 Td2607
										Let Ti2608
											Int:2
											Let Td2610
												Let Ti2609
													Int:2
													Get src Ti2609
												Put dest Ti2608 Td2610
								LetRec vecdist2 p q 
									Let Td2595
										Let Td2588
											Let Td2587
												Let Td2584
													Let Ti2583
														Int:0
														Get p Ti2583
													Let Td2586
														Let Ti2585
															Int:0
															Get q Ti2585
														FSub Td2584 Td2586
												ExtFunApp fsqr Td2587,
											Let Td2594
												Let Td2593
													Let Td2590
														Let Ti2589
															Int:1
															Get p Ti2589
														Let Td2592
															Let Ti2591
																Int:1
																Get q Ti2591
															FSub Td2590 Td2592
													ExtFunApp fsqr Td2593,
												FAdd Td2588 Td2594
										Let Td2601
											Let Td2600
												Let Td2597
													Let Ti2596
														Int:2
														Get p Ti2596
													Let Td2599
														Let Ti2598
															Int:2
															Get q Ti2598
														FSub Td2597 Td2599
												ExtFunApp fsqr Td2600,
											FAdd Td2595 Td2601
									LetRec vecunit v 
										Let il
											Let Td2557
												Float:1.000000
												Let Td2569
													Let Td2568
														Let Td2564
															Let Td2560
																Let Td2559
																	Let Ti2558
																		Int:0
																		Get v Ti2558
																	ExtFunApp fsqr Td2559,
																Let Td2563
																	Let Td2562
																		Let Ti2561
																			Int:1
																			Get v Ti2561
																		ExtFunApp fsqr Td2562,
																	FAdd Td2560 Td2563
															Let Td2567
																Let Td2566
																	Let Ti2565
																		Int:2
																		Get v Ti2565
																	ExtFunApp fsqr Td2566,
																FAdd Td2564 Td2567
														ExtFunApp sqrt Td2568,
													Let Td2570
														FReciprocal Td2569
														FMul Td2557 Td2570
											Let Tu8
												Let Ti2571
													Int:0
													Let Td2574
														Let Td2573
															Let Ti2572
																Int:0
																Get v Ti2572
															FMul Td2573 il
														Put v Ti2571 Td2574
												Let Tu7
													Let Ti2575
														Int:1
														Let Td2578
															Let Td2577
																Let Ti2576
																	Int:1
																	Get v Ti2576
																FMul Td2577 il
															Put v Ti2575 Td2578
													Let Ti2579
														Int:2
														Let Td2582
															Let Td2581
																Let Ti2580
																	Int:2
																	Get v Ti2580
																FMul Td2581 il
															Put v Ti2579 Td2582
										LetRec vecunit_sgn v inv 
											Let l
												Let Td2537
													Let Td2533
														Let Td2529
															Let Td2528
																Let Ti2527
																	Int:0
																	Get v Ti2527
																ExtFunApp fsqr Td2528,
															Let Td2532
																Let Td2531
																	Let Ti2530
																		Int:1
																		Get v Ti2530
																	ExtFunApp fsqr Td2531,
																FAdd Td2529 Td2532
														Let Td2536
															Let Td2535
																Let Ti2534
																	Int:2
																	Get v Ti2534
																ExtFunApp fsqr Td2535,
															FAdd Td2533 Td2536
													ExtFunApp sqrt Td2537,
												Let il
													Let Tb2538
														ExtFunApp fiszero l,
														Let Ti2539
															Int:0
															IfEq Tb2538 Ti2539
																Let Ti2540
																	Int:0
																	IfEq inv Ti2540
																		Let Td2541
																			Float:1.000000
																			Let Td2542
																				FReciprocal l
																				FMul Td2541 Td2542
																		Let Td2543
																			Float:-1.000000
																			Let Td2544
																				FReciprocal l
																				FMul Td2543 Td2544
																Float:1.000000
													Let Tu10
														Let Ti2545
															Int:0
															Let Td2548
																Let Td2547
																	Let Ti2546
																		Int:0
																		Get v Ti2546
																	FMul Td2547 il
																Put v Ti2545 Td2548
														Let Tu9
															Let Ti2549
																Int:1
																Let Td2552
																	Let Td2551
																		Let Ti2550
																			Int:1
																			Get v Ti2550
																		FMul Td2551 il
																	Put v Ti2549 Td2552
															Let Ti2553
																Int:2
																Let Td2556
																	Let Td2555
																		Let Ti2554
																			Int:2
																			Get v Ti2554
																		FMul Td2555 il
																	Put v Ti2553 Td2556
											LetRec veciprod v w 
												Let Td2521
													Let Td2515
														Let Td2512
															Let Ti2511
																Int:0
																Get v Ti2511
															Let Td2514
																Let Ti2513
																	Int:0
																	Get w Ti2513
																FMul Td2512 Td2514
														Let Td2520
															Let Td2517
																Let Ti2516
																	Int:1
																	Get v Ti2516
																Let Td2519
																	Let Ti2518
																		Int:1
																		Get w Ti2518
																	FMul Td2517 Td2519
															FAdd Td2515 Td2520
													Let Td2526
														Let Td2523
															Let Ti2522
																Int:2
																Get v Ti2522
															Let Td2525
																Let Ti2524
																	Int:2
																	Get w Ti2524
																FMul Td2523 Td2525
														FAdd Td2521 Td2526
												LetRec veciprod2 v w0 w1 w2 
													Let Td2507
														Let Td2503
															Let Td2502
																Let Ti2501
																	Int:0
																	Get v Ti2501
																FMul Td2502 w0
															Let Td2506
																Let Td2505
																	Let Ti2504
																		Int:1
																		Get v Ti2504
																	FMul Td2505 w1
																FAdd Td2503 Td2506
														Let Td2510
															Let Td2509
																Let Ti2508
																	Int:2
																	Get v Ti2508
																FMul Td2509 w2
															FAdd Td2507 Td2510
													LetRec vecaccum dest scale v 
														Let Tu12
															Let Ti2480
																Int:0
																Let Td2486
																	Let Td2482
																		Let Ti2481
																			Int:0
																			Get dest Ti2481
																		Let Td2485
																			Let Td2484
																				Let Ti2483
																					Int:0
																					Get v Ti2483
																				FMul scale Td2484
																			FAdd Td2482 Td2485
																	Put dest Ti2480 Td2486
															Let Tu11
																Let Ti2487
																	Int:1
																	Let Td2493
																		Let Td2489
																			Let Ti2488
																				Int:1
																				Get dest Ti2488
																			Let Td2492
																				Let Td2491
																					Let Ti2490
																						Int:1
																						Get v Ti2490
																					FMul scale Td2491
																				FAdd Td2489 Td2492
																		Put dest Ti2487 Td2493
																Let Ti2494
																	Int:2
																	Let Td2500
																		Let Td2496
																			Let Ti2495
																				Int:2
																				Get dest Ti2495
																			Let Td2499
																				Let Td2498
																					Let Ti2497
																						Int:2
																						Get v Ti2497
																					FMul scale Td2498
																				FAdd Td2496 Td2499
																		Put dest Ti2494 Td2500
														LetRec vecadd dest v 
															Let Tu14
																Let Ti2462
																	Int:0
																	Let Td2467
																		Let Td2464
																			Let Ti2463
																				Int:0
																				Get dest Ti2463
																			Let Td2466
																				Let Ti2465
																					Int:0
																					Get v Ti2465
																				FAdd Td2464 Td2466
																		Put dest Ti2462 Td2467
																Let Tu13
																	Let Ti2468
																		Int:1
																		Let Td2473
																			Let Td2470
																				Let Ti2469
																					Int:1
																					Get dest Ti2469
																				Let Td2472
																					Let Ti2471
																						Int:1
																						Get v Ti2471
																					FAdd Td2470 Td2472
																			Put dest Ti2468 Td2473
																	Let Ti2474
																		Int:2
																		Let Td2479
																			Let Td2476
																				Let Ti2475
																					Int:2
																					Get dest Ti2475
																				Let Td2478
																					Let Ti2477
																						Int:2
																						Get v Ti2477
																					FAdd Td2476 Td2478
																			Put dest Ti2474 Td2479
															LetRec vecmul dest v 
																Let Tu16
																	Let Ti2444
																		Int:0
																		Let Td2449
																			Let Td2446
																				Let Ti2445
																					Int:0
																					Get dest Ti2445
																				Let Td2448
																					Let Ti2447
																						Int:0
																						Get v Ti2447
																					FMul Td2446 Td2448
																			Put dest Ti2444 Td2449
																	Let Tu15
																		Let Ti2450
																			Int:1
																			Let Td2455
																				Let Td2452
																					Let Ti2451
																						Int:1
																						Get dest Ti2451
																					Let Td2454
																						Let Ti2453
																							Int:1
																							Get v Ti2453
																						FMul Td2452 Td2454
																				Put dest Ti2450 Td2455
																		Let Ti2456
																			Int:2
																			Let Td2461
																				Let Td2458
																					Let Ti2457
																						Int:2
																						Get dest Ti2457
																					Let Td2460
																						Let Ti2459
																							Int:2
																							Get v Ti2459
																						FMul Td2458 Td2460
																				Put dest Ti2456 Td2461
																LetRec vecscale dest scale 
																	Let Tu18
																		Let Ti2432
																			Int:0
																			Let Td2435
																				Let Td2434
																					Let Ti2433
																						Int:0
																						Get dest Ti2433
																					FMul Td2434 scale
																				Put dest Ti2432 Td2435
																		Let Tu17
																			Let Ti2436
																				Int:1
																				Let Td2439
																					Let Td2438
																						Let Ti2437
																							Int:1
																							Get dest Ti2437
																						FMul Td2438 scale
																					Put dest Ti2436 Td2439
																			Let Ti2440
																				Int:2
																				Let Td2443
																					Let Td2442
																						Let Ti2441
																							Int:2
																							Get dest Ti2441
																						FMul Td2442 scale
																					Put dest Ti2440 Td2443
																	LetRec vecaccumv dest v w 
																		Let Tu20
																			Let Ti2405
																				Int:0
																				Let Td2413
																					Let Td2407
																						Let Ti2406
																							Int:0
																							Get dest Ti2406
																						Let Td2412
																							Let Td2409
																								Let Ti2408
																									Int:0
																									Get v Ti2408
																								Let Td2411
																									Let Ti2410
																										Int:0
																										Get w Ti2410
																									FMul Td2409 Td2411
																							FAdd Td2407 Td2412
																					Put dest Ti2405 Td2413
																			Let Tu19
																				Let Ti2414
																					Int:1
																					Let Td2422
																						Let Td2416
																							Let Ti2415
																								Int:1
																								Get dest Ti2415
																							Let Td2421
																								Let Td2418
																									Let Ti2417
																										Int:1
																										Get v Ti2417
																									Let Td2420
																										Let Ti2419
																											Int:1
																											Get w Ti2419
																										FMul Td2418 Td2420
																								FAdd Td2416 Td2421
																						Put dest Ti2414 Td2422
																				Let Ti2423
																					Int:2
																					Let Td2431
																						Let Td2425
																							Let Ti2424
																								Int:2
																								Get dest Ti2424
																							Let Td2430
																								Let Td2427
																									Let Ti2426
																										Int:2
																										Get v Ti2426
																									Let Td2429
																										Let Ti2428
																											Int:2
																											Get w Ti2428
																										FMul Td2427 Td2429
																								FAdd Td2425 Td2430
																						Put dest Ti2423 Td2431
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
																									Let Ti2404
																										Int:0
																										Get m_abc Ti2404
																								LetRec o_param_b m 
																									LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																										Let Ti2403
																											Int:1
																											Get m_abc Ti2403
																									LetRec o_param_c m 
																										LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																											Let Ti2402
																												Int:2
																												Get m_abc Ti2402
																										LetRec o_param_abc m 
																											LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																												Var m_abc
																											LetRec o_param_x m 
																												LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																													Let Ti2401
																														Int:0
																														Get m_xyz Ti2401
																												LetRec o_param_y m 
																													LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																														Let Ti2400
																															Int:1
																															Get m_xyz Ti2400
																													LetRec o_param_z m 
																														LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																															Let Ti2399
																																Int:2
																																Get m_xyz Ti2399
																														LetRec o_diffuse m 
																															LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																Let Ti2398
																																	Int:0
																																	Get m_surfparams Ti2398
																															LetRec o_hilight m 
																																LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																	Let Ti2397
																																		Int:1
																																		Get m_surfparams Ti2397
																																LetRec o_color_red m 
																																	LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																		Let Ti2396
																																			Int:0
																																			Get m_color Ti2396
																																	LetRec o_color_green m 
																																		LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																			Let Ti2395
																																				Int:1
																																				Get m_color Ti2395
																																		LetRec o_color_blue m 
																																			LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																				Let Ti2394
																																					Int:2
																																					Get m_color Ti2394
																																			LetRec o_param_r1 m 
																																				LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																					Let Ti2393
																																						Int:0
																																						Get m_rot123 Ti2393
																																				LetRec o_param_r2 m 
																																					LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																						Let Ti2392
																																							Int:1
																																							Get m_rot123 Ti2392
																																					LetRec o_param_r3 m 
																																						LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																							Let Ti2391
																																								Int:2
																																								Get m_rot123 Ti2391
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
																																															Let Ti2390
																																																Int:0
																																																Get m_gid Ti2390
																																														LetRec p_set_group_id pixel id 
																																															LetTuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,m_gid,xm_nvectors,)
 pixel
																																																Let Ti2389
																																																	Int:0
																																																	Put m_gid Ti2389 id
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
																																																						Let Td2388
																																																							Float:0.017453
																																																							FMul x Td2388
																																																						LetRec read_screen_settings Tu21 
																																																							Let Tu35
																																																								Let Ta2312
																																																									ExtArray screen
																																																									Let Ti2313
																																																										Int:0
																																																										Let Td2315
																																																											Let Tu2314
																																																												Unit
																																																												ExtFunApp read_float Tu2314,
																																																											Put Ta2312 Ti2313 Td2315
																																																								Let Tu34
																																																									Let Ta2316
																																																										ExtArray screen
																																																										Let Ti2317
																																																											Int:1
																																																											Let Td2319
																																																												Let Tu2318
																																																													Unit
																																																													ExtFunApp read_float Tu2318,
																																																												Put Ta2316 Ti2317 Td2319
																																																									Let Tu33
																																																										Let Ta2320
																																																											ExtArray screen
																																																											Let Ti2321
																																																												Int:2
																																																												Let Td2323
																																																													Let Tu2322
																																																														Unit
																																																														ExtFunApp read_float Tu2322,
																																																													Put Ta2320 Ti2321 Td2323
																																																										Let v1
																																																											Let Td2325
																																																												Let Tu2324
																																																													Unit
																																																													ExtFunApp read_float Tu2324,
																																																												App radTd2325 
																																																											Let cos_v1
																																																												ExtFunApp cos v1,
																																																												Let sin_v1
																																																													ExtFunApp sin v1,
																																																													Let v2
																																																														Let Td2327
																																																															Let Tu2326
																																																																Unit
																																																																ExtFunApp read_float Tu2326,
																																																															App radTd2327 
																																																														Let cos_v2
																																																															ExtFunApp cos v2,
																																																															Let sin_v2
																																																																ExtFunApp sin v2,
																																																																Let Tu32
																																																																	Let Ta2328
																																																																		ExtArray screenz_dir
																																																																		Let Ti2329
																																																																			Int:0
																																																																			Let Td2332
																																																																				Let Td2330
																																																																					FMul cos_v1 sin_v2
																																																																					Let Td2331
																																																																						Float:200.000000
																																																																						FMul Td2330 Td2331
																																																																				Put Ta2328 Ti2329 Td2332
																																																																	Let Tu31
																																																																		Let Ta2333
																																																																			ExtArray screenz_dir
																																																																			Let Ti2334
																																																																				Int:1
																																																																				Let Td2336
																																																																					Let Td2335
																																																																						Float:-200.000000
																																																																						FMul sin_v1 Td2335
																																																																					Put Ta2333 Ti2334 Td2336
																																																																		Let Tu30
																																																																			Let Ta2337
																																																																				ExtArray screenz_dir
																																																																				Let Ti2338
																																																																					Int:2
																																																																					Let Td2341
																																																																						Let Td2339
																																																																							FMul cos_v1 cos_v2
																																																																							Let Td2340
																																																																								Float:200.000000
																																																																								FMul Td2339 Td2340
																																																																						Put Ta2337 Ti2338 Td2341
																																																																			Let Tu29
																																																																				Let Ta2342
																																																																					ExtArray screenx_dir
																																																																					Let Ti2343
																																																																						Int:0
																																																																						Put Ta2342 Ti2343 cos_v2
																																																																				Let Tu28
																																																																					Let Ta2344
																																																																						ExtArray screenx_dir
																																																																						Let Ti2345
																																																																							Int:1
																																																																							Let Td2346
																																																																								Float:0.000000
																																																																								Put Ta2344 Ti2345 Td2346
																																																																					Let Tu27
																																																																						Let Ta2347
																																																																							ExtArray screenx_dir
																																																																							Let Ti2348
																																																																								Int:2
																																																																								Let Td2349
																																																																									ExtFunApp fneg sin_v2,
																																																																									Put Ta2347 Ti2348 Td2349
																																																																						Let Tu26
																																																																							Let Ta2350
																																																																								ExtArray screeny_dir
																																																																								Let Ti2351
																																																																									Int:0
																																																																									Let Td2353
																																																																										Let Td2352
																																																																											ExtFunApp fneg sin_v1,
																																																																											FMul Td2352 sin_v2
																																																																										Put Ta2350 Ti2351 Td2353
																																																																							Let Tu25
																																																																								Let Ta2354
																																																																									ExtArray screeny_dir
																																																																									Let Ti2355
																																																																										Int:1
																																																																										Let Td2356
																																																																											ExtFunApp fneg cos_v1,
																																																																											Put Ta2354 Ti2355 Td2356
																																																																								Let Tu24
																																																																									Let Ta2357
																																																																										ExtArray screeny_dir
																																																																										Let Ti2358
																																																																											Int:2
																																																																											Let Td2360
																																																																												Let Td2359
																																																																													ExtFunApp fneg sin_v1,
																																																																													FMul Td2359 cos_v2
																																																																												Put Ta2357 Ti2358 Td2360
																																																																									Let Tu23
																																																																										Let Ta2361
																																																																											ExtArray viewpoint
																																																																											Let Ti2362
																																																																												Int:0
																																																																												Let Td2369
																																																																													Let Td2365
																																																																														Let Ta2363
																																																																															ExtArray screen
																																																																															Let Ti2364
																																																																																Int:0
																																																																																Get Ta2363 Ti2364
																																																																														Let Td2368
																																																																															Let Ta2366
																																																																																ExtArray screenz_dir
																																																																																Let Ti2367
																																																																																	Int:0
																																																																																	Get Ta2366 Ti2367
																																																																															FSub Td2365 Td2368
																																																																													Put Ta2361 Ti2362 Td2369
																																																																										Let Tu22
																																																																											Let Ta2370
																																																																												ExtArray viewpoint
																																																																												Let Ti2371
																																																																													Int:1
																																																																													Let Td2378
																																																																														Let Td2374
																																																																															Let Ta2372
																																																																																ExtArray screen
																																																																																Let Ti2373
																																																																																	Int:1
																																																																																	Get Ta2372 Ti2373
																																																																															Let Td2377
																																																																																Let Ta2375
																																																																																	ExtArray screenz_dir
																																																																																	Let Ti2376
																																																																																		Int:1
																																																																																		Get Ta2375 Ti2376
																																																																																FSub Td2374 Td2377
																																																																														Put Ta2370 Ti2371 Td2378
																																																																											Let Ta2379
																																																																												ExtArray viewpoint
																																																																												Let Ti2380
																																																																													Int:2
																																																																													Let Td2387
																																																																														Let Td2383
																																																																															Let Ta2381
																																																																																ExtArray screen
																																																																																Let Ti2382
																																																																																	Int:2
																																																																																	Get Ta2381 Ti2382
																																																																															Let Td2386
																																																																																Let Ta2384
																																																																																	ExtArray screenz_dir
																																																																																	Let Ti2385
																																																																																		Int:2
																																																																																		Get Ta2384 Ti2385
																																																																																FSub Td2383 Td2386
																																																																														Put Ta2379 Ti2380 Td2387
																																																							LetRec read_light Tu36 
																																																								Let nl
																																																									Let Tu2294
																																																										Unit
																																																										ExtFunApp read_int Tu2294,
																																																									Let l1
																																																										Let Td2296
																																																											Let Tu2295
																																																												Unit
																																																												ExtFunApp read_float Tu2295,
																																																											App radTd2296 
																																																										Let sl1
																																																											ExtFunApp sin l1,
																																																											Let Tu39
																																																												Let Ta2297
																																																													ExtArray light
																																																													Let Ti2298
																																																														Int:1
																																																														Let Td2299
																																																															ExtFunApp fneg sl1,
																																																															Put Ta2297 Ti2298 Td2299
																																																												Let l2
																																																													Let Td2301
																																																														Let Tu2300
																																																															Unit
																																																															ExtFunApp read_float Tu2300,
																																																														App radTd2301 
																																																													Let cl1
																																																														ExtFunApp cos l1,
																																																														Let sl2
																																																															ExtFunApp sin l2,
																																																															Let Tu38
																																																																Let Ta2302
																																																																	ExtArray light
																																																																	Let Ti2303
																																																																		Int:0
																																																																		Let Td2304
																																																																			FMul cl1 sl2
																																																																			Put Ta2302 Ti2303 Td2304
																																																																Let cl2
																																																																	ExtFunApp cos l2,
																																																																	Let Tu37
																																																																		Let Ta2305
																																																																			ExtArray light
																																																																			Let Ti2306
																																																																				Int:2
																																																																				Let Td2307
																																																																					FMul cl1 cl2
																																																																					Put Ta2305 Ti2306 Td2307
																																																																		Let Ta2308
																																																																			ExtArray beam
																																																																			Let Ti2309
																																																																				Int:0
																																																																				Let Td2311
																																																																					Let Tu2310
																																																																						Unit
																																																																						ExtFunApp read_float Tu2310,
																																																																					Put Ta2308 Ti2309 Td2311
																																																								LetRec rotate_quadratic_matrix abc rot 
																																																									Let cos_x
																																																										Let Td2208
																																																											Let Ti2207
																																																												Int:0
																																																												Get rot Ti2207
																																																											ExtFunApp cos Td2208,
																																																										Let sin_x
																																																											Let Td2210
																																																												Let Ti2209
																																																													Int:0
																																																													Get rot Ti2209
																																																												ExtFunApp sin Td2210,
																																																											Let cos_y
																																																												Let Td2212
																																																													Let Ti2211
																																																														Int:1
																																																														Get rot Ti2211
																																																													ExtFunApp cos Td2212,
																																																												Let sin_y
																																																													Let Td2214
																																																														Let Ti2213
																																																															Int:1
																																																															Get rot Ti2213
																																																														ExtFunApp sin Td2214,
																																																													Let cos_z
																																																														Let Td2216
																																																															Let Ti2215
																																																																Int:2
																																																																Get rot Ti2215
																																																															ExtFunApp cos Td2216,
																																																														Let sin_z
																																																															Let Td2218
																																																																Let Ti2217
																																																																	Int:2
																																																																	Get rot Ti2217
																																																																ExtFunApp sin Td2218,
																																																															Let m00
																																																																FMul cos_y cos_z
																																																																Let m01
																																																																	Let Td2220
																																																																		Let Td2219
																																																																			FMul sin_x sin_y
																																																																			FMul Td2219 cos_z
																																																																		Let Td2221
																																																																			FMul cos_x sin_z
																																																																			FSub Td2220 Td2221
																																																																	Let m02
																																																																		Let Td2223
																																																																			Let Td2222
																																																																				FMul cos_x sin_y
																																																																				FMul Td2222 cos_z
																																																																			Let Td2224
																																																																				FMul sin_x sin_z
																																																																				FAdd Td2223 Td2224
																																																																		Let m10
																																																																			FMul cos_y sin_z
																																																																			Let m11
																																																																				Let Td2226
																																																																					Let Td2225
																																																																						FMul sin_x sin_y
																																																																						FMul Td2225 sin_z
																																																																					Let Td2227
																																																																						FMul cos_x cos_z
																																																																						FAdd Td2226 Td2227
																																																																				Let m12
																																																																					Let Td2229
																																																																						Let Td2228
																																																																							FMul cos_x sin_y
																																																																							FMul Td2228 sin_z
																																																																						Let Td2230
																																																																							FMul sin_x cos_z
																																																																							FSub Td2229 Td2230
																																																																					Let m20
																																																																						ExtFunApp fneg sin_y,
																																																																						Let m21
																																																																							FMul sin_x cos_y
																																																																							Let m22
																																																																								FMul cos_x cos_y
																																																																								Let ao
																																																																									Let Ti2231
																																																																										Int:0
																																																																										Get abc Ti2231
																																																																									Let bo
																																																																										Let Ti2232
																																																																											Int:1
																																																																											Get abc Ti2232
																																																																										Let co
																																																																											Let Ti2233
																																																																												Int:2
																																																																												Get abc Ti2233
																																																																											Let Tu44
																																																																												Let Ti2234
																																																																													Int:0
																																																																													Let Td2242
																																																																														Let Td2239
																																																																															Let Td2236
																																																																																Let Td2235
																																																																																	ExtFunApp fsqr m00,
																																																																																	FMul ao Td2235
																																																																																Let Td2238
																																																																																	Let Td2237
																																																																																		ExtFunApp fsqr m10,
																																																																																		FMul bo Td2237
																																																																																	FAdd Td2236 Td2238
																																																																															Let Td2241
																																																																																Let Td2240
																																																																																	ExtFunApp fsqr m20,
																																																																																	FMul co Td2240
																																																																																FAdd Td2239 Td2241
																																																																														Put abc Ti2234 Td2242
																																																																												Let Tu43
																																																																													Let Ti2243
																																																																														Int:1
																																																																														Let Td2251
																																																																															Let Td2248
																																																																																Let Td2245
																																																																																	Let Td2244
																																																																																		ExtFunApp fsqr m01,
																																																																																		FMul ao Td2244
																																																																																	Let Td2247
																																																																																		Let Td2246
																																																																																			ExtFunApp fsqr m11,
																																																																																			FMul bo Td2246
																																																																																		FAdd Td2245 Td2247
																																																																																Let Td2250
																																																																																	Let Td2249
																																																																																		ExtFunApp fsqr m21,
																																																																																		FMul co Td2249
																																																																																	FAdd Td2248 Td2250
																																																																															Put abc Ti2243 Td2251
																																																																													Let Tu42
																																																																														Let Ti2252
																																																																															Int:2
																																																																															Let Td2260
																																																																																Let Td2257
																																																																																	Let Td2254
																																																																																		Let Td2253
																																																																																			ExtFunApp fsqr m02,
																																																																																			FMul ao Td2253
																																																																																		Let Td2256
																																																																																			Let Td2255
																																																																																				ExtFunApp fsqr m12,
																																																																																				FMul bo Td2255
																																																																																			FAdd Td2254 Td2256
																																																																																	Let Td2259
																																																																																		Let Td2258
																																																																																			ExtFunApp fsqr m22,
																																																																																			FMul co Td2258
																																																																																		FAdd Td2257 Td2259
																																																																																Put abc Ti2252 Td2260
																																																																														Let Tu41
																																																																															Let Ti2261
																																																																																Int:0
																																																																																Let Td2271
																																																																																	Let Td2262
																																																																																		Float:2.000000
																																																																																		Let Td2270
																																																																																			Let Td2267
																																																																																				Let Td2264
																																																																																					Let Td2263
																																																																																						FMul ao m01
																																																																																						FMul Td2263 m02
																																																																																					Let Td2266
																																																																																						Let Td2265
																																																																																							FMul bo m11
																																																																																							FMul Td2265 m12
																																																																																						FAdd Td2264 Td2266
																																																																																				Let Td2269
																																																																																					Let Td2268
																																																																																						FMul co m21
																																																																																						FMul Td2268 m22
																																																																																					FAdd Td2267 Td2269
																																																																																			FMul Td2262 Td2270
																																																																																	Put rot Ti2261 Td2271
																																																																															Let Tu40
																																																																																Let Ti2272
																																																																																	Int:1
																																																																																	Let Td2282
																																																																																		Let Td2273
																																																																																			Float:2.000000
																																																																																			Let Td2281
																																																																																				Let Td2278
																																																																																					Let Td2275
																																																																																						Let Td2274
																																																																																							FMul ao m00
																																																																																							FMul Td2274 m02
																																																																																						Let Td2277
																																																																																							Let Td2276
																																																																																								FMul bo m10
																																																																																								FMul Td2276 m12
																																																																																							FAdd Td2275 Td2277
																																																																																					Let Td2280
																																																																																						Let Td2279
																																																																																							FMul co m20
																																																																																							FMul Td2279 m22
																																																																																						FAdd Td2278 Td2280
																																																																																				FMul Td2273 Td2281
																																																																																		Put rot Ti2272 Td2282
																																																																																Let Ti2283
																																																																																	Int:2
																																																																																	Let Td2293
																																																																																		Let Td2284
																																																																																			Float:2.000000
																																																																																			Let Td2292
																																																																																				Let Td2289
																																																																																					Let Td2286
																																																																																						Let Td2285
																																																																																							FMul ao m00
																																																																																							FMul Td2285 m01
																																																																																						Let Td2288
																																																																																							Let Td2287
																																																																																								FMul bo m10
																																																																																								FMul Td2287 m11
																																																																																							FAdd Td2286 Td2288
																																																																																					Let Td2291
																																																																																						Let Td2290
																																																																																							FMul co m20
																																																																																							FMul Td2290 m21
																																																																																						FAdd Td2289 Td2291
																																																																																				FMul Td2284 Td2292
																																																																																		Put rot Ti2283 Td2293
																																																									LetRec read_nth_object n 
																																																										Let texture
																																																											Let Tu2110
																																																												Unit
																																																												ExtFunApp read_int Tu2110,
																																																											Let Ti2112
																																																												Let Ti2111
																																																													Int:1
																																																													Neg Ti2111
																																																												IfEq texture Ti2112
																																																													Int:0
																																																													Let form
																																																														Let Tu2113
																																																															Unit
																																																															ExtFunApp read_int Tu2113,
																																																														Let refltype
																																																															Let Tu2114
																																																																Unit
																																																																ExtFunApp read_int Tu2114,
																																																															Let isrot_p
																																																																Let Tu2115
																																																																	Unit
																																																																	ExtFunApp read_int Tu2115,
																																																																Let abc
																																																																	Let Ti2116
																																																																		Int:3
																																																																		Let Td2117
																																																																			Float:0.000000
																																																																			ExtFunApp create_float_array Ti2116,Td2117,
																																																																	Let Tu63
																																																																		Let Ti2118
																																																																			Int:0
																																																																			Let Td2120
																																																																				Let Tu2119
																																																																					Unit
																																																																					ExtFunApp read_float Tu2119,
																																																																				Put abc Ti2118 Td2120
																																																																		Let Tu62
																																																																			Let Ti2121
																																																																				Int:1
																																																																				Let Td2123
																																																																					Let Tu2122
																																																																						Unit
																																																																						ExtFunApp read_float Tu2122,
																																																																					Put abc Ti2121 Td2123
																																																																			Let Tu61
																																																																				Let Ti2124
																																																																					Int:2
																																																																					Let Td2126
																																																																						Let Tu2125
																																																																							Unit
																																																																							ExtFunApp read_float Tu2125,
																																																																						Put abc Ti2124 Td2126
																																																																				Let xyz
																																																																					Let Ti2127
																																																																						Int:3
																																																																						Let Td2128
																																																																							Float:0.000000
																																																																							ExtFunApp create_float_array Ti2127,Td2128,
																																																																					Let Tu60
																																																																						Let Ti2129
																																																																							Int:0
																																																																							Let Td2131
																																																																								Let Tu2130
																																																																									Unit
																																																																									ExtFunApp read_float Tu2130,
																																																																								Put xyz Ti2129 Td2131
																																																																						Let Tu59
																																																																							Let Ti2132
																																																																								Int:1
																																																																								Let Td2134
																																																																									Let Tu2133
																																																																										Unit
																																																																										ExtFunApp read_float Tu2133,
																																																																									Put xyz Ti2132 Td2134
																																																																							Let Tu58
																																																																								Let Ti2135
																																																																									Int:2
																																																																									Let Td2137
																																																																										Let Tu2136
																																																																											Unit
																																																																											ExtFunApp read_float Tu2136,
																																																																										Put xyz Ti2135 Td2137
																																																																								Let m_invert
																																																																									Let Td2139
																																																																										Let Tu2138
																																																																											Unit
																																																																											ExtFunApp read_float Tu2138,
																																																																										ExtFunApp fisneg Td2139,
																																																																									Let reflparam
																																																																										Let Ti2140
																																																																											Int:2
																																																																											Let Td2141
																																																																												Float:0.000000
																																																																												ExtFunApp create_float_array Ti2140,Td2141,
																																																																										Let Tu57
																																																																											Let Ti2142
																																																																												Int:0
																																																																												Let Td2144
																																																																													Let Tu2143
																																																																														Unit
																																																																														ExtFunApp read_float Tu2143,
																																																																													Put reflparam Ti2142 Td2144
																																																																											Let Tu56
																																																																												Let Ti2145
																																																																													Int:1
																																																																													Let Td2147
																																																																														Let Tu2146
																																																																															Unit
																																																																															ExtFunApp read_float Tu2146,
																																																																														Put reflparam Ti2145 Td2147
																																																																												Let color
																																																																													Let Ti2148
																																																																														Int:3
																																																																														Let Td2149
																																																																															Float:0.000000
																																																																															ExtFunApp create_float_array Ti2148,Td2149,
																																																																													Let Tu55
																																																																														Let Ti2150
																																																																															Int:0
																																																																															Let Td2152
																																																																																Let Tu2151
																																																																																	Unit
																																																																																	ExtFunApp read_float Tu2151,
																																																																																Put color Ti2150 Td2152
																																																																														Let Tu54
																																																																															Let Ti2153
																																																																																Int:1
																																																																																Let Td2155
																																																																																	Let Tu2154
																																																																																		Unit
																																																																																		ExtFunApp read_float Tu2154,
																																																																																	Put color Ti2153 Td2155
																																																																															Let Tu53
																																																																																Let Ti2156
																																																																																	Int:2
																																																																																	Let Td2158
																																																																																		Let Tu2157
																																																																																			Unit
																																																																																			ExtFunApp read_float Tu2157,
																																																																																		Put color Ti2156 Td2158
																																																																																Let rotation
																																																																																	Let Ti2159
																																																																																		Int:3
																																																																																		Let Td2160
																																																																																			Float:0.000000
																																																																																			ExtFunApp create_float_array Ti2159,Td2160,
																																																																																	Let Tu52
																																																																																		Let Ti2161
																																																																																			Int:0
																																																																																			IfEq isrot_p Ti2161
																																																																																				Unit
																																																																																				Let Tu46
																																																																																					Let Ti2162
																																																																																						Int:0
																																																																																						Let Td2165
																																																																																							Let Td2164
																																																																																								Let Tu2163
																																																																																									Unit
																																																																																									ExtFunApp read_float Tu2163,
																																																																																								App radTd2164 
																																																																																							Put rotation Ti2162 Td2165
																																																																																					Let Tu45
																																																																																						Let Ti2166
																																																																																							Int:1
																																																																																							Let Td2169
																																																																																								Let Td2168
																																																																																									Let Tu2167
																																																																																										Unit
																																																																																										ExtFunApp read_float Tu2167,
																																																																																									App radTd2168 
																																																																																								Put rotation Ti2166 Td2169
																																																																																						Let Ti2170
																																																																																							Int:2
																																																																																							Let Td2173
																																																																																								Let Td2172
																																																																																									Let Tu2171
																																																																																										Unit
																																																																																										ExtFunApp read_float Tu2171,
																																																																																									App radTd2172 
																																																																																								Put rotation Ti2170 Td2173
																																																																																		Let m_invert2
																																																																																			Let Ti2174
																																																																																				Int:2
																																																																																				IfEq form Ti2174
																																																																																					Int:1
																																																																																					Var m_invert
																																																																																			Let ctbl
																																																																																				Let Ti2175
																																																																																					Int:4
																																																																																					Let Td2176
																																																																																						Float:0.000000
																																																																																						ExtFunApp create_float_array Ti2175,Td2176,
																																																																																				Let obj
																																																																																					Tuple (texture,form,refltype,isrot_p,abc,xyz,m_invert2,reflparam,color,rotation,ctbl,)
																																																																																					Let Tu51
																																																																																						Let Ta2177
																																																																																							ExtArray objects
																																																																																							Put Ta2177 n obj
																																																																																						Let Tu50
																																																																																							Let Ti2178
																																																																																								Int:3
																																																																																								IfEq form Ti2178
																																																																																									Let a
																																																																																										Let Ti2179
																																																																																											Int:0
																																																																																											Get abc Ti2179
																																																																																										Let Tu48
																																																																																											Let Ti2180
																																																																																												Int:0
																																																																																												Let Td2186
																																																																																													Let Tb2181
																																																																																														ExtFunApp fiszero a,
																																																																																														Let Ti2182
																																																																																															Int:0
																																																																																															IfEq Tb2181 Ti2182
																																																																																																Let Td2183
																																																																																																	App sgna 
																																																																																																	Let Td2184
																																																																																																		ExtFunApp fsqr a,
																																																																																																		Let Td2185
																																																																																																			FReciprocal Td2184
																																																																																																			FMul Td2183 Td2185
																																																																																																Float:0.000000
																																																																																													Put abc Ti2180 Td2186
																																																																																											Let b
																																																																																												Let Ti2187
																																																																																													Int:1
																																																																																													Get abc Ti2187
																																																																																												Let Tu47
																																																																																													Let Ti2188
																																																																																														Int:1
																																																																																														Let Td2194
																																																																																															Let Tb2189
																																																																																																ExtFunApp fiszero b,
																																																																																																Let Ti2190
																																																																																																	Int:0
																																																																																																	IfEq Tb2189 Ti2190
																																																																																																		Let Td2191
																																																																																																			App sgnb 
																																																																																																			Let Td2192
																																																																																																				ExtFunApp fsqr b,
																																																																																																				Let Td2193
																																																																																																					FReciprocal Td2192
																																																																																																					FMul Td2191 Td2193
																																																																																																		Float:0.000000
																																																																																															Put abc Ti2188 Td2194
																																																																																													Let c
																																																																																														Let Ti2195
																																																																																															Int:2
																																																																																															Get abc Ti2195
																																																																																														Let Ti2196
																																																																																															Int:2
																																																																																															Let Td2202
																																																																																																Let Tb2197
																																																																																																	ExtFunApp fiszero c,
																																																																																																	Let Ti2198
																																																																																																		Int:0
																																																																																																		IfEq Tb2197 Ti2198
																																																																																																			Let Td2199
																																																																																																				App sgnc 
																																																																																																				Let Td2200
																																																																																																					ExtFunApp fsqr c,
																																																																																																					Let Td2201
																																																																																																						FReciprocal Td2200
																																																																																																						FMul Td2199 Td2201
																																																																																																			Float:0.000000
																																																																																																Put abc Ti2196 Td2202
																																																																																									Let Ti2203
																																																																																										Int:2
																																																																																										IfEq form Ti2203
																																																																																											Let Ti2205
																																																																																												Let Ti2204
																																																																																													Int:0
																																																																																													IfEq m_invert Ti2204
																																																																																														Int:1
																																																																																														Int:0
																																																																																												App vecunit_sgnabc Ti2205 
																																																																																											Unit
																																																																																							Let Tu49
																																																																																								Let Ti2206
																																																																																									Int:0
																																																																																									IfEq isrot_p Ti2206
																																																																																										Unit
																																																																																										App rotate_quadratic_matrixabc rotation 
																																																																																								Int:1
																																																										LetRec read_object n 
																																																											Let Ti2103
																																																												Int:60
																																																												IfLE Ti2103 n
																																																													Unit
																																																													Let Tb2104
																																																														App read_nth_objectn 
																																																														Let Ti2105
																																																															Int:0
																																																															IfEq Tb2104 Ti2105
																																																																Let Ta2106
																																																																	ExtArray n_objects
																																																																	Let Ti2107
																																																																		Int:0
																																																																		Put Ta2106 Ti2107 n
																																																																Let Ti2109
																																																																	Let Ti2108
																																																																		Int:1
																																																																		Add n Ti2108
																																																																	App read_objectTi2109 
																																																											LetRec read_all_object Tu64 
																																																												Let Ti2102
																																																													Int:0
																																																													App read_objectTi2102 
																																																												LetRec read_net_item length 
																																																													Let item
																																																														Let Tu2093
																																																															Unit
																																																															ExtFunApp read_int Tu2093,
																																																														Let Ti2095
																																																															Let Ti2094
																																																																Int:1
																																																																Neg Ti2094
																																																															IfEq item Ti2095
																																																																Let Ti2097
																																																																	Let Ti2096
																																																																		Int:1
																																																																		Add length Ti2096
																																																																	Let Ti2099
																																																																		Let Ti2098
																																																																			Int:1
																																																																			Neg Ti2098
																																																																		ExtFunApp create_array Ti2097,Ti2099,
																																																																Let v
																																																																	Let Ti2101
																																																																		Let Ti2100
																																																																			Int:1
																																																																			Add length Ti2100
																																																																		App read_net_itemTi2101 
																																																																	Let Tu65
																																																																		Put v length item
																																																																		Var v
																																																													LetRec read_or_network length 
																																																														Let net
																																																															Let Ti2084
																																																																Int:0
																																																																App read_net_itemTi2084 
																																																															Let Ti2086
																																																																Let Ti2085
																																																																	Int:0
																																																																	Get net Ti2085
																																																																Let Ti2088
																																																																	Let Ti2087
																																																																		Int:1
																																																																		Neg Ti2087
																																																																	IfEq Ti2086 Ti2088
																																																																		Let Ti2090
																																																																			Let Ti2089
																																																																				Int:1
																																																																				Add length Ti2089
																																																																			ExtFunApp create_array Ti2090,net,
																																																																		Let v
																																																																			Let Ti2092
																																																																				Let Ti2091
																																																																					Int:1
																																																																					Add length Ti2091
																																																																				App read_or_networkTi2092 
																																																																			Let Tu66
																																																																				Put v length net
																																																																				Var v
																																																														LetRec read_and_network n 
																																																															Let net
																																																																Let Ti2076
																																																																	Int:0
																																																																	App read_net_itemTi2076 
																																																																Let Ti2078
																																																																	Let Ti2077
																																																																		Int:0
																																																																		Get net Ti2077
																																																																	Let Ti2080
																																																																		Let Ti2079
																																																																			Int:1
																																																																			Neg Ti2079
																																																																		IfEq Ti2078 Ti2080
																																																																			Unit
																																																																			Let Tu67
																																																																				Let Ta2081
																																																																					ExtArray and_net
																																																																					Put Ta2081 n net
																																																																				Let Ti2083
																																																																					Let Ti2082
																																																																						Int:1
																																																																						Add n Ti2082
																																																																					App read_and_networkTi2083 
																																																															LetRec read_parameter Tu68 
																																																																Let Tu72
																																																																	Let Tu2068
																																																																		Unit
																																																																		App read_screen_settingsTu2068 
																																																																	Let Tu71
																																																																		Let Tu2069
																																																																			Unit
																																																																			App read_lightTu2069 
																																																																		Let Tu70
																																																																			Let Tu2070
																																																																				Unit
																																																																				App read_all_objectTu2070 
																																																																			Let Tu69
																																																																				Let Ti2071
																																																																					Int:0
																																																																					App read_and_networkTi2071 
																																																																				Let Ta2072
																																																																					ExtArray or_net
																																																																					Let Ti2073
																																																																						Int:0
																																																																						Let Ta2075
																																																																							Let Ti2074
																																																																								Int:0
																																																																								App read_or_networkTi2074 
																																																																							Put Ta2072 Ti2073 Ta2075
																																																																LetRec solver_rect_surface m dirvec b0 b1 b2 i0 i1 i2 
																																																																	Let Tb2042
																																																																		Let Td2041
																																																																			Get dirvec i0
																																																																			ExtFunApp fiszero Td2041,
																																																																		Let Ti2043
																																																																			Int:0
																																																																			IfEq Tb2042 Ti2043
																																																																				Let abc
																																																																					App o_param_abcm 
																																																																					Let d
																																																																						Let Tb2047
																																																																							Let Tb2044
																																																																								App o_isinvertm 
																																																																								Let Tb2046
																																																																									Let Td2045
																																																																										Get dirvec i0
																																																																										ExtFunApp fisneg Td2045,
																																																																									App xorTb2044 Tb2046 
																																																																							Let Td2048
																																																																								Get abc i0
																																																																								App fneg_condTb2047 Td2048 
																																																																						Let d2
																																																																							Let Td2049
																																																																								FSub d b0
																																																																								Let Td2050
																																																																									Get dirvec i0
																																																																									Let Td2051
																																																																										FReciprocal Td2050
																																																																										FMul Td2049 Td2051
																																																																							Let Tb2057
																																																																								Let Td2055
																																																																									Let Td2054
																																																																										Let Td2053
																																																																											Let Td2052
																																																																												Get dirvec i1
																																																																												FMul d2 Td2052
																																																																											FAdd Td2053 b1
																																																																										ExtFunApp fabs Td2054,
																																																																									Let Td2056
																																																																										Get abc i1
																																																																										ExtFunApp fless Td2055,Td2056,
																																																																								Let Ti2058
																																																																									Int:0
																																																																									IfEq Tb2057 Ti2058
																																																																										Int:0
																																																																										Let Tb2064
																																																																											Let Td2062
																																																																												Let Td2061
																																																																													Let Td2060
																																																																														Let Td2059
																																																																															Get dirvec i2
																																																																															FMul d2 Td2059
																																																																														FAdd Td2060 b2
																																																																													ExtFunApp fabs Td2061,
																																																																												Let Td2063
																																																																													Get abc i2
																																																																													ExtFunApp fless Td2062,Td2063,
																																																																											Let Ti2065
																																																																												Int:0
																																																																												IfEq Tb2064 Ti2065
																																																																													Int:0
																																																																													Let Tu73
																																																																														Let Ta2066
																																																																															ExtArray solver_dist
																																																																															Let Ti2067
																																																																																Int:0
																																																																																Put Ta2066 Ti2067 d2
																																																																														Int:1
																																																																				Int:0
																																																																	LetRec solver_rect m dirvec b0 b1 b2 
																																																																		Let Tb2029
																																																																			Let Ti2026
																																																																				Int:0
																																																																				Let Ti2027
																																																																					Int:1
																																																																					Let Ti2028
																																																																						Int:2
																																																																						App solver_rect_surfacem dirvec b0 b1 b2 Ti2026 Ti2027 Ti2028 
																																																																			Let Ti2030
																																																																				Int:0
																																																																				IfEq Tb2029 Ti2030
																																																																					Let Tb2034
																																																																						Let Ti2031
																																																																							Int:1
																																																																							Let Ti2032
																																																																								Int:2
																																																																								Let Ti2033
																																																																									Int:0
																																																																									App solver_rect_surfacem dirvec b1 b2 b0 Ti2031 Ti2032 Ti2033 
																																																																						Let Ti2035
																																																																							Int:0
																																																																							IfEq Tb2034 Ti2035
																																																																								Let Tb2039
																																																																									Let Ti2036
																																																																										Int:2
																																																																										Let Ti2037
																																																																											Int:0
																																																																											Let Ti2038
																																																																												Int:1
																																																																												App solver_rect_surfacem dirvec b2 b0 b1 Ti2036 Ti2037 Ti2038 
																																																																									Let Ti2040
																																																																										Int:0
																																																																										IfEq Tb2039 Ti2040
																																																																											Int:0
																																																																											Int:3
																																																																								Int:2
																																																																					Int:1
																																																																		LetRec solver_surface m dirvec b0 b1 b2 
																																																																			Let abc
																																																																				App o_param_abcm 
																																																																				Let d
																																																																					App veciproddirvec abc 
																																																																					Let Tb2018
																																																																						ExtFunApp fispos d,
																																																																						Let Ti2019
																																																																							Int:0
																																																																							IfEq Tb2018 Ti2019
																																																																								Int:0
																																																																								Let Tu74
																																																																									Let Ta2020
																																																																										ExtArray solver_dist
																																																																										Let Ti2021
																																																																											Int:0
																																																																											Let Td2025
																																																																												Let Td2023
																																																																													Let Td2022
																																																																														App veciprod2abc b0 b1 b2 
																																																																														ExtFunApp fneg Td2022,
																																																																													Let Td2024
																																																																														FReciprocal d
																																																																														FMul Td2023 Td2024
																																																																												Put Ta2020 Ti2021 Td2025
																																																																									Int:1
																																																																			LetRec quadratic m v0 v1 v2 
																																																																				Let diag_part
																																																																					Let Td2001
																																																																						Let Td1997
																																																																							Let Td1995
																																																																								ExtFunApp fsqr v0,
																																																																								Let Td1996
																																																																									App o_param_am 
																																																																									FMul Td1995 Td1996
																																																																							Let Td2000
																																																																								Let Td1998
																																																																									ExtFunApp fsqr v1,
																																																																									Let Td1999
																																																																										App o_param_bm 
																																																																										FMul Td1998 Td1999
																																																																								FAdd Td1997 Td2000
																																																																						Let Td2004
																																																																							Let Td2002
																																																																								ExtFunApp fsqr v2,
																																																																								Let Td2003
																																																																									App o_param_cm 
																																																																									FMul Td2002 Td2003
																																																																							FAdd Td2001 Td2004
																																																																					Let Ti2005
																																																																						App o_isrotm 
																																																																						Let Ti2006
																																																																							Int:0
																																																																							IfEq Ti2005 Ti2006
																																																																								Var diag_part
																																																																								Let Td2014
																																																																									Let Td2010
																																																																										Let Td2009
																																																																											Let Td2007
																																																																												FMul v1 v2
																																																																												Let Td2008
																																																																													App o_param_r1m 
																																																																													FMul Td2007 Td2008
																																																																											FAdd diag_part Td2009
																																																																										Let Td2013
																																																																											Let Td2011
																																																																												FMul v2 v0
																																																																												Let Td2012
																																																																													App o_param_r2m 
																																																																													FMul Td2011 Td2012
																																																																											FAdd Td2010 Td2013
																																																																									Let Td2017
																																																																										Let Td2015
																																																																											FMul v0 v1
																																																																											Let Td2016
																																																																												App o_param_r3m 
																																																																												FMul Td2015 Td2016
																																																																										FAdd Td2014 Td2017
																																																																				LetRec bilinear m v0 v1 v2 w0 w1 w2 
																																																																					Let diag_part
																																																																						Let Td1971
																																																																							Let Td1967
																																																																								Let Td1965
																																																																									FMul v0 w0
																																																																									Let Td1966
																																																																										App o_param_am 
																																																																										FMul Td1965 Td1966
																																																																								Let Td1970
																																																																									Let Td1968
																																																																										FMul v1 w1
																																																																										Let Td1969
																																																																											App o_param_bm 
																																																																											FMul Td1968 Td1969
																																																																									FAdd Td1967 Td1970
																																																																							Let Td1974
																																																																								Let Td1972
																																																																									FMul v2 w2
																																																																									Let Td1973
																																																																										App o_param_cm 
																																																																										FMul Td1972 Td1973
																																																																								FAdd Td1971 Td1974
																																																																						Let Ti1975
																																																																							App o_isrotm 
																																																																							Let Ti1976
																																																																								Int:0
																																																																								IfEq Ti1975 Ti1976
																																																																									Var diag_part
																																																																									Let Td1994
																																																																										Let Td1993
																																																																											Let Td1987
																																																																												Let Td1981
																																																																													Let Td1979
																																																																														Let Td1977
																																																																															FMul v2 w1
																																																																															Let Td1978
																																																																																FMul v1 w2
																																																																																FAdd Td1977 Td1978
																																																																														Let Td1980
																																																																															App o_param_r1m 
																																																																															FMul Td1979 Td1980
																																																																													Let Td1986
																																																																														Let Td1984
																																																																															Let Td1982
																																																																																FMul v0 w2
																																																																																Let Td1983
																																																																																	FMul v2 w0
																																																																																	FAdd Td1982 Td1983
																																																																															Let Td1985
																																																																																App o_param_r2m 
																																																																																FMul Td1984 Td1985
																																																																														FAdd Td1981 Td1986
																																																																												Let Td1992
																																																																													Let Td1990
																																																																														Let Td1988
																																																																															FMul v0 w1
																																																																															Let Td1989
																																																																																FMul v1 w0
																																																																																FAdd Td1988 Td1989
																																																																														Let Td1991
																																																																															App o_param_r3m 
																																																																															FMul Td1990 Td1991
																																																																													FAdd Td1987 Td1992
																																																																											ExtFunApp fhalf Td1993,
																																																																										FAdd diag_part Td1994
																																																																					LetRec solver_second m dirvec b0 b1 b2 
																																																																						Let aa
																																																																							Let Td1938
																																																																								Let Ti1937
																																																																									Int:0
																																																																									Get dirvec Ti1937
																																																																								Let Td1940
																																																																									Let Ti1939
																																																																										Int:1
																																																																										Get dirvec Ti1939
																																																																									Let Td1942
																																																																										Let Ti1941
																																																																											Int:2
																																																																											Get dirvec Ti1941
																																																																										App quadraticm Td1938 Td1940 Td1942 
																																																																							Let Tb1943
																																																																								ExtFunApp fiszero aa,
																																																																								Let Ti1944
																																																																									Int:0
																																																																									IfEq Tb1943 Ti1944
																																																																										Let bb
																																																																											Let Td1946
																																																																												Let Ti1945
																																																																													Int:0
																																																																													Get dirvec Ti1945
																																																																												Let Td1948
																																																																													Let Ti1947
																																																																														Int:1
																																																																														Get dirvec Ti1947
																																																																													Let Td1950
																																																																														Let Ti1949
																																																																															Int:2
																																																																															Get dirvec Ti1949
																																																																														App bilinearm Td1946 Td1948 Td1950 b0 b1 b2 
																																																																											Let cc0
																																																																												App quadraticm b0 b1 b2 
																																																																												Let cc
																																																																													Let Ti1951
																																																																														App o_formm 
																																																																														Let Ti1952
																																																																															Int:3
																																																																															IfEq Ti1951 Ti1952
																																																																																Let Td1953
																																																																																	Float:1.000000
																																																																																	FSub cc0 Td1953
																																																																																Var cc0
																																																																													Let d
																																																																														Let Td1954
																																																																															ExtFunApp fsqr bb,
																																																																															Let Td1955
																																																																																FMul aa cc
																																																																																FSub Td1954 Td1955
																																																																														Let Tb1956
																																																																															ExtFunApp fispos d,
																																																																															Let Ti1957
																																																																																Int:0
																																																																																IfEq Tb1956 Ti1957
																																																																																	Int:0
																																																																																	Let sd
																																																																																		ExtFunApp sqrt d,
																																																																																		Let t1
																																																																																			Let Tb1958
																																																																																				App o_isinvertm 
																																																																																				Let Ti1959
																																																																																					Int:0
																																																																																					IfEq Tb1958 Ti1959
																																																																																						ExtFunApp fneg sd,
																																																																																						Var sd
																																																																																			Let Tu75
																																																																																				Let Ta1960
																																																																																					ExtArray solver_dist
																																																																																					Let Ti1961
																																																																																						Int:0
																																																																																						Let Td1964
																																																																																							Let Td1962
																																																																																								FSub t1 bb
																																																																																								Let Td1963
																																																																																									FReciprocal aa
																																																																																									FMul Td1962 Td1963
																																																																																							Put Ta1960 Ti1961 Td1964
																																																																																				Int:1
																																																																										Int:0
																																																																						LetRec solver index dirvec org 
																																																																							Let m
																																																																								Let Ta1925
																																																																									ExtArray objects
																																																																									Get Ta1925 index
																																																																								Let b0
																																																																									Let Td1927
																																																																										Let Ti1926
																																																																											Int:0
																																																																											Get org Ti1926
																																																																										Let Td1928
																																																																											App o_param_xm 
																																																																											FSub Td1927 Td1928
																																																																									Let b1
																																																																										Let Td1930
																																																																											Let Ti1929
																																																																												Int:1
																																																																												Get org Ti1929
																																																																											Let Td1931
																																																																												App o_param_ym 
																																																																												FSub Td1930 Td1931
																																																																										Let b2
																																																																											Let Td1933
																																																																												Let Ti1932
																																																																													Int:2
																																																																													Get org Ti1932
																																																																												Let Td1934
																																																																													App o_param_zm 
																																																																													FSub Td1933 Td1934
																																																																											Let m_shape
																																																																												App o_formm 
																																																																												Let Ti1935
																																																																													Int:1
																																																																													IfEq m_shape Ti1935
																																																																														App solver_rectm dirvec b0 b1 b2 
																																																																														Let Ti1936
																																																																															Int:2
																																																																															IfEq m_shape Ti1936
																																																																																App solver_surfacem dirvec b0 b1 b2 
																																																																																App solver_secondm dirvec b0 b1 b2 
																																																																							LetRec solver_rect_fast m v dconst b0 b1 b2 
																																																																								Let d0
																																																																									Let Td1840
																																																																										Let Td1839
																																																																											Let Ti1838
																																																																												Int:0
																																																																												Get dconst Ti1838
																																																																											FSub Td1839 b0
																																																																										Let Td1842
																																																																											Let Ti1841
																																																																												Int:1
																																																																												Get dconst Ti1841
																																																																											FMul Td1840 Td1842
																																																																									Let Ti1863
																																																																										Let Tb1849
																																																																											Let Td1847
																																																																												Let Td1846
																																																																													Let Td1845
																																																																														Let Td1844
																																																																															Let Ti1843
																																																																																Int:1
																																																																																Get v Ti1843
																																																																															FMul d0 Td1844
																																																																														FAdd Td1845 b1
																																																																													ExtFunApp fabs Td1846,
																																																																												Let Td1848
																																																																													App o_param_bm 
																																																																													ExtFunApp fless Td1847,Td1848,
																																																																											Let Ti1850
																																																																												Int:0
																																																																												IfEq Tb1849 Ti1850
																																																																													Int:0
																																																																													Let Tb1857
																																																																														Let Td1855
																																																																															Let Td1854
																																																																																Let Td1853
																																																																																	Let Td1852
																																																																																		Let Ti1851
																																																																																			Int:2
																																																																																			Get v Ti1851
																																																																																		FMul d0 Td1852
																																																																																	FAdd Td1853 b2
																																																																																ExtFunApp fabs Td1854,
																																																																															Let Td1856
																																																																																App o_param_cm 
																																																																																ExtFunApp fless Td1855,Td1856,
																																																																														Let Ti1858
																																																																															Int:0
																																																																															IfEq Tb1857 Ti1858
																																																																																Int:0
																																																																																Let Tb1861
																																																																																	Let Td1860
																																																																																		Let Ti1859
																																																																																			Int:1
																																																																																			Get dconst Ti1859
																																																																																		ExtFunApp fiszero Td1860,
																																																																																	Let Ti1862
																																																																																		Int:0
																																																																																		IfEq Tb1861 Ti1862
																																																																																			Int:1
																																																																																			Int:0
																																																																										Let Ti1864
																																																																											Int:0
																																																																											IfEq Ti1863 Ti1864
																																																																												Let d1
																																																																													Let Td1867
																																																																														Let Td1866
																																																																															Let Ti1865
																																																																																Int:2
																																																																																Get dconst Ti1865
																																																																															FSub Td1866 b1
																																																																														Let Td1869
																																																																															Let Ti1868
																																																																																Int:3
																																																																																Get dconst Ti1868
																																																																															FMul Td1867 Td1869
																																																																													Let Ti1890
																																																																														Let Tb1876
																																																																															Let Td1874
																																																																																Let Td1873
																																																																																	Let Td1872
																																																																																		Let Td1871
																																																																																			Let Ti1870
																																																																																				Int:0
																																																																																				Get v Ti1870
																																																																																			FMul d1 Td1871
																																																																																		FAdd Td1872 b0
																																																																																	ExtFunApp fabs Td1873,
																																																																																Let Td1875
																																																																																	App o_param_am 
																																																																																	ExtFunApp fless Td1874,Td1875,
																																																																															Let Ti1877
																																																																																Int:0
																																																																																IfEq Tb1876 Ti1877
																																																																																	Int:0
																																																																																	Let Tb1884
																																																																																		Let Td1882
																																																																																			Let Td1881
																																																																																				Let Td1880
																																																																																					Let Td1879
																																																																																						Let Ti1878
																																																																																							Int:2
																																																																																							Get v Ti1878
																																																																																						FMul d1 Td1879
																																																																																					FAdd Td1880 b2
																																																																																				ExtFunApp fabs Td1881,
																																																																																			Let Td1883
																																																																																				App o_param_cm 
																																																																																				ExtFunApp fless Td1882,Td1883,
																																																																																		Let Ti1885
																																																																																			Int:0
																																																																																			IfEq Tb1884 Ti1885
																																																																																				Int:0
																																																																																				Let Tb1888
																																																																																					Let Td1887
																																																																																						Let Ti1886
																																																																																							Int:3
																																																																																							Get dconst Ti1886
																																																																																						ExtFunApp fiszero Td1887,
																																																																																					Let Ti1889
																																																																																						Int:0
																																																																																						IfEq Tb1888 Ti1889
																																																																																							Int:1
																																																																																							Int:0
																																																																														Let Ti1891
																																																																															Int:0
																																																																															IfEq Ti1890 Ti1891
																																																																																Let d2
																																																																																	Let Td1894
																																																																																		Let Td1893
																																																																																			Let Ti1892
																																																																																				Int:4
																																																																																				Get dconst Ti1892
																																																																																			FSub Td1893 b2
																																																																																		Let Td1896
																																																																																			Let Ti1895
																																																																																				Int:5
																																																																																				Get dconst Ti1895
																																																																																			FMul Td1894 Td1896
																																																																																	Let Ti1917
																																																																																		Let Tb1903
																																																																																			Let Td1901
																																																																																				Let Td1900
																																																																																					Let Td1899
																																																																																						Let Td1898
																																																																																							Let Ti1897
																																																																																								Int:0
																																																																																								Get v Ti1897
																																																																																							FMul d2 Td1898
																																																																																						FAdd Td1899 b0
																																																																																					ExtFunApp fabs Td1900,
																																																																																				Let Td1902
																																																																																					App o_param_am 
																																																																																					ExtFunApp fless Td1901,Td1902,
																																																																																			Let Ti1904
																																																																																				Int:0
																																																																																				IfEq Tb1903 Ti1904
																																																																																					Int:0
																																																																																					Let Tb1911
																																																																																						Let Td1909
																																																																																							Let Td1908
																																																																																								Let Td1907
																																																																																									Let Td1906
																																																																																										Let Ti1905
																																																																																											Int:1
																																																																																											Get v Ti1905
																																																																																										FMul d2 Td1906
																																																																																									FAdd Td1907 b1
																																																																																								ExtFunApp fabs Td1908,
																																																																																							Let Td1910
																																																																																								App o_param_bm 
																																																																																								ExtFunApp fless Td1909,Td1910,
																																																																																						Let Ti1912
																																																																																							Int:0
																																																																																							IfEq Tb1911 Ti1912
																																																																																								Int:0
																																																																																								Let Tb1915
																																																																																									Let Td1914
																																																																																										Let Ti1913
																																																																																											Int:5
																																																																																											Get dconst Ti1913
																																																																																										ExtFunApp fiszero Td1914,
																																																																																									Let Ti1916
																																																																																										Int:0
																																																																																										IfEq Tb1915 Ti1916
																																																																																											Int:1
																																																																																											Int:0
																																																																																		Let Ti1918
																																																																																			Int:0
																																																																																			IfEq Ti1917 Ti1918
																																																																																				Int:0
																																																																																				Let Tu78
																																																																																					Let Ta1919
																																																																																						ExtArray solver_dist
																																																																																						Let Ti1920
																																																																																							Int:0
																																																																																							Put Ta1919 Ti1920 d2
																																																																																					Int:3
																																																																																Let Tu77
																																																																																	Let Ta1921
																																																																																		ExtArray solver_dist
																																																																																		Let Ti1922
																																																																																			Int:0
																																																																																			Put Ta1921 Ti1922 d1
																																																																																	Int:2
																																																																												Let Tu76
																																																																													Let Ta1923
																																																																														ExtArray solver_dist
																																																																														Let Ti1924
																																																																															Int:0
																																																																															Put Ta1923 Ti1924 d0
																																																																													Int:1
																																																																								LetRec solver_surface_fast m dconst b0 b1 b2 
																																																																									Let Tb1823
																																																																										Let Td1822
																																																																											Let Ti1821
																																																																												Int:0
																																																																												Get dconst Ti1821
																																																																											ExtFunApp fisneg Td1822,
																																																																										Let Ti1824
																																																																											Int:0
																																																																											IfEq Tb1823 Ti1824
																																																																												Int:0
																																																																												Let Tu79
																																																																													Let Ta1825
																																																																														ExtArray solver_dist
																																																																														Let Ti1826
																																																																															Int:0
																																																																															Let Td1837
																																																																																Let Td1833
																																																																																	Let Td1829
																																																																																		Let Td1828
																																																																																			Let Ti1827
																																																																																				Int:1
																																																																																				Get dconst Ti1827
																																																																																			FMul Td1828 b0
																																																																																		Let Td1832
																																																																																			Let Td1831
																																																																																				Let Ti1830
																																																																																					Int:2
																																																																																					Get dconst Ti1830
																																																																																				FMul Td1831 b1
																																																																																			FAdd Td1829 Td1832
																																																																																	Let Td1836
																																																																																		Let Td1835
																																																																																			Let Ti1834
																																																																																				Int:3
																																																																																				Get dconst Ti1834
																																																																																			FMul Td1835 b2
																																																																																		FAdd Td1833 Td1836
																																																																																Put Ta1825 Ti1826 Td1837
																																																																													Int:1
																																																																									LetRec solver_second_fast m dconst b0 b1 b2 
																																																																										Let aa
																																																																											Let Ti1785
																																																																												Int:0
																																																																												Get dconst Ti1785
																																																																											Let Tb1786
																																																																												ExtFunApp fiszero aa,
																																																																												Let Ti1787
																																																																													Int:0
																																																																													IfEq Tb1786 Ti1787
																																																																														Let neg_bb
																																																																															Let Td1794
																																																																																Let Td1790
																																																																																	Let Td1789
																																																																																		Let Ti1788
																																																																																			Int:1
																																																																																			Get dconst Ti1788
																																																																																		FMul Td1789 b0
																																																																																	Let Td1793
																																																																																		Let Td1792
																																																																																			Let Ti1791
																																																																																				Int:2
																																																																																				Get dconst Ti1791
																																																																																			FMul Td1792 b1
																																																																																		FAdd Td1790 Td1793
																																																																																Let Td1797
																																																																																	Let Td1796
																																																																																		Let Ti1795
																																																																																			Int:3
																																																																																			Get dconst Ti1795
																																																																																		FMul Td1796 b2
																																																																																	FAdd Td1794 Td1797
																																																																															Let cc0
																																																																																App quadraticm b0 b1 b2 
																																																																																Let cc
																																																																																	Let Ti1798
																																																																																		App o_formm 
																																																																																		Let Ti1799
																																																																																			Int:3
																																																																																			IfEq Ti1798 Ti1799
																																																																																				Let Td1800
																																																																																					Float:1.000000
																																																																																					FSub cc0 Td1800
																																																																																				Var cc0
																																																																																	Let d
																																																																																		Let Td1801
																																																																																			ExtFunApp fsqr neg_bb,
																																																																																			Let Td1802
																																																																																				FMul aa cc
																																																																																				FSub Td1801 Td1802
																																																																																		Let Tb1803
																																																																																			ExtFunApp fispos d,
																																																																																			Let Ti1804
																																																																																				Int:0
																																																																																				IfEq Tb1803 Ti1804
																																																																																					Int:0
																																																																																					Let Tu80
																																																																																						Let Tb1805
																																																																																							App o_isinvertm 
																																																																																							Let Ti1806
																																																																																								Int:0
																																																																																								IfEq Tb1805 Ti1806
																																																																																									Let Ta1807
																																																																																										ExtArray solver_dist
																																																																																										Let Ti1808
																																																																																											Int:0
																																																																																											Let Td1813
																																																																																												Let Td1810
																																																																																													Let Td1809
																																																																																														ExtFunApp sqrt d,
																																																																																														FSub neg_bb Td1809
																																																																																													Let Td1812
																																																																																														Let Ti1811
																																																																																															Int:4
																																																																																															Get dconst Ti1811
																																																																																														FMul Td1810 Td1812
																																																																																												Put Ta1807 Ti1808 Td1813
																																																																																									Let Ta1814
																																																																																										ExtArray solver_dist
																																																																																										Let Ti1815
																																																																																											Int:0
																																																																																											Let Td1820
																																																																																												Let Td1817
																																																																																													Let Td1816
																																																																																														ExtFunApp sqrt d,
																																																																																														FAdd neg_bb Td1816
																																																																																													Let Td1819
																																																																																														Let Ti1818
																																																																																															Int:4
																																																																																															Get dconst Ti1818
																																																																																														FMul Td1817 Td1819
																																																																																												Put Ta1814 Ti1815 Td1820
																																																																																						Int:1
																																																																														Int:0
																																																																										LetRec solver_fast index dirvec org 
																																																																											Let m
																																																																												Let Ta1772
																																																																													ExtArray objects
																																																																													Get Ta1772 index
																																																																												Let b0
																																																																													Let Td1774
																																																																														Let Ti1773
																																																																															Int:0
																																																																															Get org Ti1773
																																																																														Let Td1775
																																																																															App o_param_xm 
																																																																															FSub Td1774 Td1775
																																																																													Let b1
																																																																														Let Td1777
																																																																															Let Ti1776
																																																																																Int:1
																																																																																Get org Ti1776
																																																																															Let Td1778
																																																																																App o_param_ym 
																																																																																FSub Td1777 Td1778
																																																																														Let b2
																																																																															Let Td1780
																																																																																Let Ti1779
																																																																																	Int:2
																																																																																	Get org Ti1779
																																																																																Let Td1781
																																																																																	App o_param_zm 
																																																																																	FSub Td1780 Td1781
																																																																															Let dconsts
																																																																																App d_constdirvec 
																																																																																Let dconst
																																																																																	Get dconsts index
																																																																																	Let m_shape
																																																																																		App o_formm 
																																																																																		Let Ti1782
																																																																																			Int:1
																																																																																			IfEq m_shape Ti1782
																																																																																				Let Ta1783
																																																																																					App d_vecdirvec 
																																																																																					App solver_rect_fastm Ta1783 dconst b0 b1 b2 
																																																																																				Let Ti1784
																																																																																					Int:2
																																																																																					IfEq m_shape Ti1784
																																																																																						App solver_surface_fastm dconst b0 b1 b2 
																																																																																						App solver_second_fastm dconst b0 b1 b2 
																																																																											LetRec solver_surface_fast2 m dconst sconst b0 b1 b2 
																																																																												Let Tb1763
																																																																													Let Td1762
																																																																														Let Ti1761
																																																																															Int:0
																																																																															Get dconst Ti1761
																																																																														ExtFunApp fisneg Td1762,
																																																																													Let Ti1764
																																																																														Int:0
																																																																														IfEq Tb1763 Ti1764
																																																																															Int:0
																																																																															Let Tu81
																																																																																Let Ta1765
																																																																																	ExtArray solver_dist
																																																																																	Let Ti1766
																																																																																		Int:0
																																																																																		Let Td1771
																																																																																			Let Td1768
																																																																																				Let Ti1767
																																																																																					Int:0
																																																																																					Get dconst Ti1767
																																																																																				Let Td1770
																																																																																					Let Ti1769
																																																																																						Int:3
																																																																																						Get sconst Ti1769
																																																																																					FMul Td1768 Td1770
																																																																																			Put Ta1765 Ti1766 Td1771
																																																																																Int:1
																																																																												LetRec solver_second_fast2 m dconst sconst b0 b1 b2 
																																																																													Let aa
																																																																														Let Ti1727
																																																																															Int:0
																																																																															Get dconst Ti1727
																																																																														Let Tb1728
																																																																															ExtFunApp fiszero aa,
																																																																															Let Ti1729
																																																																																Int:0
																																																																																IfEq Tb1728 Ti1729
																																																																																	Let neg_bb
																																																																																		Let Td1736
																																																																																			Let Td1732
																																																																																				Let Td1731
																																																																																					Let Ti1730
																																																																																						Int:1
																																																																																						Get dconst Ti1730
																																																																																					FMul Td1731 b0
																																																																																				Let Td1735
																																																																																					Let Td1734
																																																																																						Let Ti1733
																																																																																							Int:2
																																																																																							Get dconst Ti1733
																																																																																						FMul Td1734 b1
																																																																																					FAdd Td1732 Td1735
																																																																																			Let Td1739
																																																																																				Let Td1738
																																																																																					Let Ti1737
																																																																																						Int:3
																																																																																						Get dconst Ti1737
																																																																																					FMul Td1738 b2
																																																																																				FAdd Td1736 Td1739
																																																																																		Let cc
																																																																																			Let Ti1740
																																																																																				Int:3
																																																																																				Get sconst Ti1740
																																																																																			Let d
																																																																																				Let Td1741
																																																																																					ExtFunApp fsqr neg_bb,
																																																																																					Let Td1742
																																																																																						FMul aa cc
																																																																																						FSub Td1741 Td1742
																																																																																				Let Tb1743
																																																																																					ExtFunApp fispos d,
																																																																																					Let Ti1744
																																																																																						Int:0
																																																																																						IfEq Tb1743 Ti1744
																																																																																							Int:0
																																																																																							Let Tu82
																																																																																								Let Tb1745
																																																																																									App o_isinvertm 
																																																																																									Let Ti1746
																																																																																										Int:0
																																																																																										IfEq Tb1745 Ti1746
																																																																																											Let Ta1747
																																																																																												ExtArray solver_dist
																																																																																												Let Ti1748
																																																																																													Int:0
																																																																																													Let Td1753
																																																																																														Let Td1750
																																																																																															Let Td1749
																																																																																																ExtFunApp sqrt d,
																																																																																																FSub neg_bb Td1749
																																																																																															Let Td1752
																																																																																																Let Ti1751
																																																																																																	Int:4
																																																																																																	Get dconst Ti1751
																																																																																																FMul Td1750 Td1752
																																																																																														Put Ta1747 Ti1748 Td1753
																																																																																											Let Ta1754
																																																																																												ExtArray solver_dist
																																																																																												Let Ti1755
																																																																																													Int:0
																																																																																													Let Td1760
																																																																																														Let Td1757
																																																																																															Let Td1756
																																																																																																ExtFunApp sqrt d,
																																																																																																FAdd neg_bb Td1756
																																																																																															Let Td1759
																																																																																																Let Ti1758
																																																																																																	Int:4
																																																																																																	Get dconst Ti1758
																																																																																																FMul Td1757 Td1759
																																																																																														Put Ta1754 Ti1755 Td1760
																																																																																								Int:1
																																																																																	Int:0
																																																																													LetRec solver_fast2 index dirvec 
																																																																														Let m
																																																																															Let Ta1720
																																																																																ExtArray objects
																																																																																Get Ta1720 index
																																																																															Let sconst
																																																																																App o_param_ctblm 
																																																																																Let b0
																																																																																	Let Ti1721
																																																																																		Int:0
																																																																																		Get sconst Ti1721
																																																																																	Let b1
																																																																																		Let Ti1722
																																																																																			Int:1
																																																																																			Get sconst Ti1722
																																																																																		Let b2
																																																																																			Let Ti1723
																																																																																				Int:2
																																																																																				Get sconst Ti1723
																																																																																			Let dconsts
																																																																																				App d_constdirvec 
																																																																																				Let dconst
																																																																																					Get dconsts index
																																																																																					Let m_shape
																																																																																						App o_formm 
																																																																																						Let Ti1724
																																																																																							Int:1
																																																																																							IfEq m_shape Ti1724
																																																																																								Let Ta1725
																																																																																									App d_vecdirvec 
																																																																																									App solver_rect_fastm Ta1725 dconst b0 b1 b2 
																																																																																								Let Ti1726
																																																																																									Int:2
																																																																																									IfEq m_shape Ti1726
																																																																																										App solver_surface_fast2m dconst sconst b0 b1 b2 
																																																																																										App solver_second_fast2m dconst sconst b0 b1 b2 
																																																																														LetRec setup_rect_table vec m 
																																																																															Let const
																																																																																Let Ti1658
																																																																																	Int:6
																																																																																	Let Td1659
																																																																																		Float:0.000000
																																																																																		ExtFunApp create_float_array Ti1658,Td1659,
																																																																																Let Tu88
																																																																																	Let Tb1662
																																																																																		Let Td1661
																																																																																			Let Ti1660
																																																																																				Int:0
																																																																																				Get vec Ti1660
																																																																																			ExtFunApp fiszero Td1661,
																																																																																		Let Ti1663
																																																																																			Int:0
																																																																																			IfEq Tb1662 Ti1663
																																																																																				Let Tu83
																																																																																					Let Ti1664
																																																																																						Int:0
																																																																																						Let Td1671
																																																																																							Let Tb1669
																																																																																								Let Tb1665
																																																																																									App o_isinvertm 
																																																																																									Let Tb1668
																																																																																										Let Td1667
																																																																																											Let Ti1666
																																																																																												Int:0
																																																																																												Get vec Ti1666
																																																																																											ExtFunApp fisneg Td1667,
																																																																																										App xorTb1665 Tb1668 
																																																																																								Let Td1670
																																																																																									App o_param_am 
																																																																																									App fneg_condTb1669 Td1670 
																																																																																							Put const Ti1664 Td1671
																																																																																					Let Ti1672
																																																																																						Int:1
																																																																																						Let Td1677
																																																																																							Let Td1673
																																																																																								Float:1.000000
																																																																																								Let Td1675
																																																																																									Let Ti1674
																																																																																										Int:0
																																																																																										Get vec Ti1674
																																																																																									Let Td1676
																																																																																										FReciprocal Td1675
																																																																																										FMul Td1673 Td1676
																																																																																							Put const Ti1672 Td1677
																																																																																				Let Ti1678
																																																																																					Int:1
																																																																																					Let Td1679
																																																																																						Float:0.000000
																																																																																						Put const Ti1678 Td1679
																																																																																	Let Tu87
																																																																																		Let Tb1682
																																																																																			Let Td1681
																																																																																				Let Ti1680
																																																																																					Int:1
																																																																																					Get vec Ti1680
																																																																																				ExtFunApp fiszero Td1681,
																																																																																			Let Ti1683
																																																																																				Int:0
																																																																																				IfEq Tb1682 Ti1683
																																																																																					Let Tu84
																																																																																						Let Ti1684
																																																																																							Int:2
																																																																																							Let Td1691
																																																																																								Let Tb1689
																																																																																									Let Tb1685
																																																																																										App o_isinvertm 
																																																																																										Let Tb1688
																																																																																											Let Td1687
																																																																																												Let Ti1686
																																																																																													Int:1
																																																																																													Get vec Ti1686
																																																																																												ExtFunApp fisneg Td1687,
																																																																																											App xorTb1685 Tb1688 
																																																																																									Let Td1690
																																																																																										App o_param_bm 
																																																																																										App fneg_condTb1689 Td1690 
																																																																																								Put const Ti1684 Td1691
																																																																																						Let Ti1692
																																																																																							Int:3
																																																																																							Let Td1697
																																																																																								Let Td1693
																																																																																									Float:1.000000
																																																																																									Let Td1695
																																																																																										Let Ti1694
																																																																																											Int:1
																																																																																											Get vec Ti1694
																																																																																										Let Td1696
																																																																																											FReciprocal Td1695
																																																																																											FMul Td1693 Td1696
																																																																																								Put const Ti1692 Td1697
																																																																																					Let Ti1698
																																																																																						Int:3
																																																																																						Let Td1699
																																																																																							Float:0.000000
																																																																																							Put const Ti1698 Td1699
																																																																																		Let Tu86
																																																																																			Let Tb1702
																																																																																				Let Td1701
																																																																																					Let Ti1700
																																																																																						Int:2
																																																																																						Get vec Ti1700
																																																																																					ExtFunApp fiszero Td1701,
																																																																																				Let Ti1703
																																																																																					Int:0
																																																																																					IfEq Tb1702 Ti1703
																																																																																						Let Tu85
																																																																																							Let Ti1704
																																																																																								Int:4
																																																																																								Let Td1711
																																																																																									Let Tb1709
																																																																																										Let Tb1705
																																																																																											App o_isinvertm 
																																																																																											Let Tb1708
																																																																																												Let Td1707
																																																																																													Let Ti1706
																																																																																														Int:2
																																																																																														Get vec Ti1706
																																																																																													ExtFunApp fisneg Td1707,
																																																																																												App xorTb1705 Tb1708 
																																																																																										Let Td1710
																																																																																											App o_param_cm 
																																																																																											App fneg_condTb1709 Td1710 
																																																																																									Put const Ti1704 Td1711
																																																																																							Let Ti1712
																																																																																								Int:5
																																																																																								Let Td1717
																																																																																									Let Td1713
																																																																																										Float:1.000000
																																																																																										Let Td1715
																																																																																											Let Ti1714
																																																																																												Int:2
																																																																																												Get vec Ti1714
																																																																																											Let Td1716
																																																																																												FReciprocal Td1715
																																																																																												FMul Td1713 Td1716
																																																																																									Put const Ti1712 Td1717
																																																																																						Let Ti1718
																																																																																							Int:5
																																																																																							Let Td1719
																																																																																								Float:0.000000
																																																																																								Put const Ti1718 Td1719
																																																																																			Var const
																																																																															LetRec setup_surface_table vec m 
																																																																																Let const
																																																																																	Let Ti1620
																																																																																		Int:4
																																																																																		Let Td1621
																																																																																			Float:0.000000
																																																																																			ExtFunApp create_float_array Ti1620,Td1621,
																																																																																	Let d
																																																																																		Let Td1630
																																																																																			Let Td1625
																																																																																				Let Td1623
																																																																																					Let Ti1622
																																																																																						Int:0
																																																																																						Get vec Ti1622
																																																																																					Let Td1624
																																																																																						App o_param_am 
																																																																																						FMul Td1623 Td1624
																																																																																				Let Td1629
																																																																																					Let Td1627
																																																																																						Let Ti1626
																																																																																							Int:1
																																																																																							Get vec Ti1626
																																																																																						Let Td1628
																																																																																							App o_param_bm 
																																																																																							FMul Td1627 Td1628
																																																																																					FAdd Td1625 Td1629
																																																																																			Let Td1634
																																																																																				Let Td1632
																																																																																					Let Ti1631
																																																																																						Int:2
																																																																																						Get vec Ti1631
																																																																																					Let Td1633
																																																																																						App o_param_cm 
																																																																																						FMul Td1632 Td1633
																																																																																				FAdd Td1630 Td1634
																																																																																		Let Tu92
																																																																																			Let Tb1635
																																																																																				ExtFunApp fispos d,
																																																																																				Let Ti1636
																																																																																					Int:0
																																																																																					IfEq Tb1635 Ti1636
																																																																																						Let Ti1637
																																																																																							Int:0
																																																																																							Let Td1638
																																																																																								Float:0.000000
																																																																																								Put const Ti1637 Td1638
																																																																																						Let Tu91
																																																																																							Let Ti1639
																																																																																								Int:0
																																																																																								Let Td1642
																																																																																									Let Td1640
																																																																																										Float:-1.000000
																																																																																										Let Td1641
																																																																																											FReciprocal d
																																																																																											FMul Td1640 Td1641
																																																																																									Put const Ti1639 Td1642
																																																																																							Let Tu90
																																																																																								Let Ti1643
																																																																																									Int:1
																																																																																									Let Td1647
																																																																																										Let Td1646
																																																																																											Let Td1644
																																																																																												App o_param_am 
																																																																																												Let Td1645
																																																																																													FReciprocal d
																																																																																													FMul Td1644 Td1645
																																																																																											ExtFunApp fneg Td1646,
																																																																																										Put const Ti1643 Td1647
																																																																																								Let Tu89
																																																																																									Let Ti1648
																																																																																										Int:2
																																																																																										Let Td1652
																																																																																											Let Td1651
																																																																																												Let Td1649
																																																																																													App o_param_bm 
																																																																																													Let Td1650
																																																																																														FReciprocal d
																																																																																														FMul Td1649 Td1650
																																																																																												ExtFunApp fneg Td1651,
																																																																																											Put const Ti1648 Td1652
																																																																																									Let Ti1653
																																																																																										Int:3
																																																																																										Let Td1657
																																																																																											Let Td1656
																																																																																												Let Td1654
																																																																																													App o_param_cm 
																																																																																													Let Td1655
																																																																																														FReciprocal d
																																																																																														FMul Td1654 Td1655
																																																																																												ExtFunApp fneg Td1656,
																																																																																											Put const Ti1653 Td1657
																																																																																			Var const
																																																																																LetRec setup_second_table v m 
																																																																																	Let const
																																																																																		Let Ti1552
																																																																																			Int:5
																																																																																			Let Td1553
																																																																																				Float:0.000000
																																																																																				ExtFunApp create_float_array Ti1552,Td1553,
																																																																																		Let aa
																																																																																			Let Td1555
																																																																																				Let Ti1554
																																																																																					Int:0
																																																																																					Get v Ti1554
																																																																																				Let Td1557
																																																																																					Let Ti1556
																																																																																						Int:1
																																																																																						Get v Ti1556
																																																																																					Let Td1559
																																																																																						Let Ti1558
																																																																																							Int:2
																																																																																							Get v Ti1558
																																																																																						App quadraticm Td1555 Td1557 Td1559 
																																																																																			Let c1
																																																																																				Let Td1563
																																																																																					Let Td1561
																																																																																						Let Ti1560
																																																																																							Int:0
																																																																																							Get v Ti1560
																																																																																						Let Td1562
																																																																																							App o_param_am 
																																																																																							FMul Td1561 Td1562
																																																																																					ExtFunApp fneg Td1563,
																																																																																				Let c2
																																																																																					Let Td1567
																																																																																						Let Td1565
																																																																																							Let Ti1564
																																																																																								Int:1
																																																																																								Get v Ti1564
																																																																																							Let Td1566
																																																																																								App o_param_bm 
																																																																																								FMul Td1565 Td1566
																																																																																						ExtFunApp fneg Td1567,
																																																																																					Let c3
																																																																																						Let Td1571
																																																																																							Let Td1569
																																																																																								Let Ti1568
																																																																																									Int:2
																																																																																									Get v Ti1568
																																																																																								Let Td1570
																																																																																									App o_param_cm 
																																																																																									FMul Td1569 Td1570
																																																																																							ExtFunApp fneg Td1571,
																																																																																						Let Tu99
																																																																																							Let Ti1572
																																																																																								Int:0
																																																																																								Put const Ti1572 aa
																																																																																							Let Tu98
																																																																																								Let Ti1573
																																																																																									App o_isrotm 
																																																																																									Let Ti1574
																																																																																										Int:0
																																																																																										IfEq Ti1573 Ti1574
																																																																																											Let Tu96
																																																																																												Let Ti1575
																																																																																													Int:1
																																																																																													Put const Ti1575 c1
																																																																																												Let Tu95
																																																																																													Let Ti1576
																																																																																														Int:2
																																																																																														Put const Ti1576 c2
																																																																																													Let Ti1577
																																																																																														Int:3
																																																																																														Put const Ti1577 c3
																																																																																											Let Tu94
																																																																																												Let Ti1578
																																																																																													Int:1
																																																																																													Let Td1589
																																																																																														Let Td1588
																																																																																															Let Td1587
																																																																																																Let Td1582
																																																																																																	Let Td1580
																																																																																																		Let Ti1579
																																																																																																			Int:2
																																																																																																			Get v Ti1579
																																																																																																		Let Td1581
																																																																																																			App o_param_r2m 
																																																																																																			FMul Td1580 Td1581
																																																																																																	Let Td1586
																																																																																																		Let Td1584
																																																																																																			Let Ti1583
																																																																																																				Int:1
																																																																																																				Get v Ti1583
																																																																																																			Let Td1585
																																																																																																				App o_param_r3m 
																																																																																																				FMul Td1584 Td1585
																																																																																																		FAdd Td1582 Td1586
																																																																																																ExtFunApp fhalf Td1587,
																																																																																															FSub c1 Td1588
																																																																																														Put const Ti1578 Td1589
																																																																																												Let Tu93
																																																																																													Let Ti1590
																																																																																														Int:2
																																																																																														Let Td1601
																																																																																															Let Td1600
																																																																																																Let Td1599
																																																																																																	Let Td1594
																																																																																																		Let Td1592
																																																																																																			Let Ti1591
																																																																																																				Int:2
																																																																																																				Get v Ti1591
																																																																																																			Let Td1593
																																																																																																				App o_param_r1m 
																																																																																																				FMul Td1592 Td1593
																																																																																																		Let Td1598
																																																																																																			Let Td1596
																																																																																																				Let Ti1595
																																																																																																					Int:0
																																																																																																					Get v Ti1595
																																																																																																				Let Td1597
																																																																																																					App o_param_r3m 
																																																																																																					FMul Td1596 Td1597
																																																																																																			FAdd Td1594 Td1598
																																																																																																	ExtFunApp fhalf Td1599,
																																																																																																FSub c2 Td1600
																																																																																															Put const Ti1590 Td1601
																																																																																													Let Ti1602
																																																																																														Int:3
																																																																																														Let Td1613
																																																																																															Let Td1612
																																																																																																Let Td1611
																																																																																																	Let Td1606
																																																																																																		Let Td1604
																																																																																																			Let Ti1603
																																																																																																				Int:1
																																																																																																				Get v Ti1603
																																																																																																			Let Td1605
																																																																																																				App o_param_r1m 
																																																																																																				FMul Td1604 Td1605
																																																																																																		Let Td1610
																																																																																																			Let Td1608
																																																																																																				Let Ti1607
																																																																																																					Int:0
																																																																																																					Get v Ti1607
																																																																																																				Let Td1609
																																																																																																					App o_param_r2m 
																																																																																																					FMul Td1608 Td1609
																																																																																																			FAdd Td1606 Td1610
																																																																																																	ExtFunApp fhalf Td1611,
																																																																																																FSub c3 Td1612
																																																																																															Put const Ti1602 Td1613
																																																																																								Let Tu97
																																																																																									Let Tb1614
																																																																																										ExtFunApp fiszero aa,
																																																																																										Let Ti1615
																																																																																											Int:0
																																																																																											IfEq Tb1614 Ti1615
																																																																																												Let Ti1616
																																																																																													Int:4
																																																																																													Let Td1619
																																																																																														Let Td1617
																																																																																															Float:1.000000
																																																																																															Let Td1618
																																																																																																FReciprocal aa
																																																																																																FMul Td1617 Td1618
																																																																																														Put const Ti1616 Td1619
																																																																																												Unit
																																																																																									Var const
																																																																																	LetRec iter_setup_dirvec_constants dirvec index 
																																																																																		Let Ti1543
																																																																																			Int:0
																																																																																			IfLE Ti1543 index
																																																																																				Let m
																																																																																					Let Ta1544
																																																																																						ExtArray objects
																																																																																						Get Ta1544 index
																																																																																					Let dconst
																																																																																						App d_constdirvec 
																																																																																						Let v
																																																																																							App d_vecdirvec 
																																																																																							Let m_shape
																																																																																								App o_formm 
																																																																																								Let Tu100
																																																																																									Let Ti1545
																																																																																										Int:1
																																																																																										IfEq m_shape Ti1545
																																																																																											Let Ta1546
																																																																																												App setup_rect_tablev m 
																																																																																												Put dconst index Ta1546
																																																																																											Let Ti1547
																																																																																												Int:2
																																																																																												IfEq m_shape Ti1547
																																																																																													Let Ta1548
																																																																																														App setup_surface_tablev m 
																																																																																														Put dconst index Ta1548
																																																																																													Let Ta1549
																																																																																														App setup_second_tablev m 
																																																																																														Put dconst index Ta1549
																																																																																									Let Ti1551
																																																																																										Let Ti1550
																																																																																											Int:1
																																																																																											Sub index Ti1550
																																																																																										App iter_setup_dirvec_constantsdirvec Ti1551 
																																																																																				Unit
																																																																																		LetRec setup_dirvec_constants dirvec 
																																																																																			Let Ti1542
																																																																																				Let Ti1540
																																																																																					Let Ta1538
																																																																																						ExtArray n_objects
																																																																																						Let Ti1539
																																																																																							Int:0
																																																																																							Get Ta1538 Ti1539
																																																																																					Let Ti1541
																																																																																						Int:1
																																																																																						Sub Ti1540 Ti1541
																																																																																				App iter_setup_dirvec_constantsdirvec Ti1542 
																																																																																			LetRec setup_startp_constants p index 
																																																																																				Let Ti1498
																																																																																					Int:0
																																																																																					IfLE Ti1498 index
																																																																																						Let obj
																																																																																							Let Ta1499
																																																																																								ExtArray objects
																																																																																								Get Ta1499 index
																																																																																							Let sconst
																																																																																								App o_param_ctblobj 
																																																																																								Let m_shape
																																																																																									App o_formobj 
																																																																																									Let Tu104
																																																																																										Let Ti1500
																																																																																											Int:0
																																																																																											Let Td1504
																																																																																												Let Td1502
																																																																																													Let Ti1501
																																																																																														Int:0
																																																																																														Get p Ti1501
																																																																																													Let Td1503
																																																																																														App o_param_xobj 
																																																																																														FSub Td1502 Td1503
																																																																																												Put sconst Ti1500 Td1504
																																																																																										Let Tu103
																																																																																											Let Ti1505
																																																																																												Int:1
																																																																																												Let Td1509
																																																																																													Let Td1507
																																																																																														Let Ti1506
																																																																																															Int:1
																																																																																															Get p Ti1506
																																																																																														Let Td1508
																																																																																															App o_param_yobj 
																																																																																															FSub Td1507 Td1508
																																																																																													Put sconst Ti1505 Td1509
																																																																																											Let Tu102
																																																																																												Let Ti1510
																																																																																													Int:2
																																																																																													Let Td1514
																																																																																														Let Td1512
																																																																																															Let Ti1511
																																																																																																Int:2
																																																																																																Get p Ti1511
																																																																																															Let Td1513
																																																																																																App o_param_zobj 
																																																																																																FSub Td1512 Td1513
																																																																																														Put sconst Ti1510 Td1514
																																																																																												Let Tu101
																																																																																													Let Ti1515
																																																																																														Int:2
																																																																																														IfEq m_shape Ti1515
																																																																																															Let Ti1516
																																																																																																Int:3
																																																																																																Let Td1524
																																																																																																	Let Ta1517
																																																																																																		App o_param_abcobj 
																																																																																																		Let Td1519
																																																																																																			Let Ti1518
																																																																																																				Int:0
																																																																																																				Get sconst Ti1518
																																																																																																			Let Td1521
																																																																																																				Let Ti1520
																																																																																																					Int:1
																																																																																																					Get sconst Ti1520
																																																																																																				Let Td1523
																																																																																																					Let Ti1522
																																																																																																						Int:2
																																																																																																						Get sconst Ti1522
																																																																																																					App veciprod2Ta1517 Td1519 Td1521 Td1523 
																																																																																																	Put sconst Ti1516 Td1524
																																																																																															Let Ti1525
																																																																																																Int:2
																																																																																																IfLE m_shape Ti1525
																																																																																																	Unit
																																																																																																	Let cc0
																																																																																																		Let Td1527
																																																																																																			Let Ti1526
																																																																																																				Int:0
																																																																																																				Get sconst Ti1526
																																																																																																			Let Td1529
																																																																																																				Let Ti1528
																																																																																																					Int:1
																																																																																																					Get sconst Ti1528
																																																																																																				Let Td1531
																																																																																																					Let Ti1530
																																																																																																						Int:2
																																																																																																						Get sconst Ti1530
																																																																																																					App quadraticobj Td1527 Td1529 Td1531 
																																																																																																		Let Ti1532
																																																																																																			Int:3
																																																																																																			Let Td1535
																																																																																																				Let Ti1533
																																																																																																					Int:3
																																																																																																					IfEq m_shape Ti1533
																																																																																																						Let Td1534
																																																																																																							Float:1.000000
																																																																																																							FSub cc0 Td1534
																																																																																																						Var cc0
																																																																																																				Put sconst Ti1532 Td1535
																																																																																													Let Ti1537
																																																																																														Let Ti1536
																																																																																															Int:1
																																																																																															Sub index Ti1536
																																																																																														App setup_startp_constantsp Ti1537 
																																																																																						Unit
																																																																																				LetRec setup_startp p 
																																																																																					Let Tu105
																																																																																						Let Ta1492
																																																																																							ExtArray startp_fast
																																																																																							App veccpyTa1492 p 
																																																																																						Let Ti1497
																																																																																							Let Ti1495
																																																																																								Let Ta1493
																																																																																									ExtArray n_objects
																																																																																									Let Ti1494
																																																																																										Int:0
																																																																																										Get Ta1493 Ti1494
																																																																																								Let Ti1496
																																																																																									Int:1
																																																																																									Sub Ti1495 Ti1496
																																																																																							App setup_startp_constantsp Ti1497 
																																																																																					LetRec is_rect_outside m p0 p1 p2 
																																																																																						Let Ti1488
																																																																																							Let Tb1480
																																																																																								Let Td1478
																																																																																									ExtFunApp fabs p0,
																																																																																									Let Td1479
																																																																																										App o_param_am 
																																																																																										ExtFunApp fless Td1478,Td1479,
																																																																																								Let Ti1481
																																																																																									Int:0
																																																																																									IfEq Tb1480 Ti1481
																																																																																										Int:0
																																																																																										Let Tb1484
																																																																																											Let Td1482
																																																																																												ExtFunApp fabs p1,
																																																																																												Let Td1483
																																																																																													App o_param_bm 
																																																																																													ExtFunApp fless Td1482,Td1483,
																																																																																											Let Ti1485
																																																																																												Int:0
																																																																																												IfEq Tb1484 Ti1485
																																																																																													Int:0
																																																																																													Let Td1486
																																																																																														ExtFunApp fabs p2,
																																																																																														Let Td1487
																																																																																															App o_param_cm 
																																																																																															ExtFunApp fless Td1486,Td1487,
																																																																																							Let Ti1489
																																																																																								Int:0
																																																																																								IfEq Ti1488 Ti1489
																																																																																									Let Tb1490
																																																																																										App o_isinvertm 
																																																																																										Let Ti1491
																																																																																											Int:0
																																																																																											IfEq Tb1490 Ti1491
																																																																																												Int:1
																																																																																												Int:0
																																																																																									App o_isinvertm 
																																																																																						LetRec is_plane_outside m p0 p1 p2 
																																																																																							Let w
																																																																																								Let Ta1473
																																																																																									App o_param_abcm 
																																																																																									App veciprod2Ta1473 p0 p1 p2 
																																																																																								Let Tb1476
																																																																																									Let Tb1474
																																																																																										App o_isinvertm 
																																																																																										Let Tb1475
																																																																																											ExtFunApp fisneg w,
																																																																																											App xorTb1474 Tb1475 
																																																																																									Let Ti1477
																																																																																										Int:0
																																																																																										IfEq Tb1476 Ti1477
																																																																																											Int:1
																																																																																											Int:0
																																																																																							LetRec is_second_outside m p0 p1 p2 
																																																																																								Let w
																																																																																									App quadraticm p0 p1 p2 
																																																																																									Let w2
																																																																																										Let Ti1466
																																																																																											App o_formm 
																																																																																											Let Ti1467
																																																																																												Int:3
																																																																																												IfEq Ti1466 Ti1467
																																																																																													Let Td1468
																																																																																														Float:1.000000
																																																																																														FSub w Td1468
																																																																																													Var w
																																																																																										Let Tb1471
																																																																																											Let Tb1469
																																																																																												App o_isinvertm 
																																																																																												Let Tb1470
																																																																																													ExtFunApp fisneg w2,
																																																																																													App xorTb1469 Tb1470 
																																																																																											Let Ti1472
																																																																																												Int:0
																																																																																												IfEq Tb1471 Ti1472
																																																																																													Int:1
																																																																																													Int:0
																																																																																								LetRec is_outside m q0 q1 q2 
																																																																																									Let p0
																																																																																										Let Td1461
																																																																																											App o_param_xm 
																																																																																											FSub q0 Td1461
																																																																																										Let p1
																																																																																											Let Td1462
																																																																																												App o_param_ym 
																																																																																												FSub q1 Td1462
																																																																																											Let p2
																																																																																												Let Td1463
																																																																																													App o_param_zm 
																																																																																													FSub q2 Td1463
																																																																																												Let m_shape
																																																																																													App o_formm 
																																																																																													Let Ti1464
																																																																																														Int:1
																																																																																														IfEq m_shape Ti1464
																																																																																															App is_rect_outsidem p0 p1 p2 
																																																																																															Let Ti1465
																																																																																																Int:2
																																																																																																IfEq m_shape Ti1465
																																																																																																	App is_plane_outsidem p0 p1 p2 
																																																																																																	App is_second_outsidem p0 p1 p2 
																																																																																									LetRec check_all_inside ofs iand q0 q1 q2 
																																																																																										Let head
																																																																																											Get iand ofs
																																																																																											Let Ti1454
																																																																																												Let Ti1453
																																																																																													Int:1
																																																																																													Neg Ti1453
																																																																																												IfEq head Ti1454
																																																																																													Int:1
																																																																																													Let Tb1457
																																																																																														Let Tt1456
																																																																																															Let Ta1455
																																																																																																ExtArray objects
																																																																																																Get Ta1455 head
																																																																																															App is_outsideTt1456 q0 q1 q2 
																																																																																														Let Ti1458
																																																																																															Int:0
																																																																																															IfEq Tb1457 Ti1458
																																																																																																Let Ti1460
																																																																																																	Let Ti1459
																																																																																																		Int:1
																																																																																																		Add ofs Ti1459
																																																																																																	App check_all_insideTi1460 iand q0 q1 q2 
																																																																																																Int:0
																																																																																										LetRec shadow_check_and_group iand_ofs and_group 
																																																																																											Let Ti1409
																																																																																												Get and_group iand_ofs
																																																																																												Let Ti1411
																																																																																													Let Ti1410
																																																																																														Int:1
																																																																																														Neg Ti1410
																																																																																													IfEq Ti1409 Ti1411
																																																																																														Int:0
																																																																																														Let obj
																																																																																															Get and_group iand_ofs
																																																																																															Let t0
																																																																																																Let Tt1412
																																																																																																	ExtTuple light_dirvec
																																																																																																	Let Ta1413
																																																																																																		ExtArray intersection_point
																																																																																																		App solver_fastobj Tt1412 Ta1413 
																																																																																																Let t0p
																																																																																																	Let Ta1414
																																																																																																		ExtArray solver_dist
																																																																																																		Let Ti1415
																																																																																																			Int:0
																																																																																																			Get Ta1414 Ti1415
																																																																																																	Let Ti1418
																																																																																																		Let Ti1416
																																																																																																			Int:0
																																																																																																			IfEq t0 Ti1416
																																																																																																				Int:0
																																																																																																				Let Td1417
																																																																																																					Float:-0.200000
																																																																																																					ExtFunApp fless t0p,Td1417,
																																																																																																		Let Ti1419
																																																																																																			Int:0
																																																																																																			IfEq Ti1418 Ti1419
																																																																																																				Let Tb1422
																																																																																																					Let Tt1421
																																																																																																						Let Ta1420
																																																																																																							ExtArray objects
																																																																																																							Get Ta1420 obj
																																																																																																						App o_isinvertTt1421 
																																																																																																					Let Ti1423
																																																																																																						Int:0
																																																																																																						IfEq Tb1422 Ti1423
																																																																																																							Int:0
																																																																																																							Let Ti1425
																																																																																																								Let Ti1424
																																																																																																									Int:1
																																																																																																									Add iand_ofs Ti1424
																																																																																																								App shadow_check_and_groupTi1425 and_group 
																																																																																																				Let t
																																																																																																					Let Td1426
																																																																																																						Float:0.010000
																																																																																																						FAdd t0p Td1426
																																																																																																					Let q0
																																																																																																						Let Td1430
																																																																																																							Let Td1429
																																																																																																								Let Ta1427
																																																																																																									ExtArray light
																																																																																																									Let Ti1428
																																																																																																										Int:0
																																																																																																										Get Ta1427 Ti1428
																																																																																																								FMul Td1429 t
																																																																																																							Let Td1433
																																																																																																								Let Ta1431
																																																																																																									ExtArray intersection_point
																																																																																																									Let Ti1432
																																																																																																										Int:0
																																																																																																										Get Ta1431 Ti1432
																																																																																																								FAdd Td1430 Td1433
																																																																																																						Let q1
																																																																																																							Let Td1437
																																																																																																								Let Td1436
																																																																																																									Let Ta1434
																																																																																																										ExtArray light
																																																																																																										Let Ti1435
																																																																																																											Int:1
																																																																																																											Get Ta1434 Ti1435
																																																																																																									FMul Td1436 t
																																																																																																								Let Td1440
																																																																																																									Let Ta1438
																																																																																																										ExtArray intersection_point
																																																																																																										Let Ti1439
																																																																																																											Int:1
																																																																																																											Get Ta1438 Ti1439
																																																																																																									FAdd Td1437 Td1440
																																																																																																							Let q2
																																																																																																								Let Td1444
																																																																																																									Let Td1443
																																																																																																										Let Ta1441
																																																																																																											ExtArray light
																																																																																																											Let Ti1442
																																																																																																												Int:2
																																																																																																												Get Ta1441 Ti1442
																																																																																																										FMul Td1443 t
																																																																																																									Let Td1447
																																																																																																										Let Ta1445
																																																																																																											ExtArray intersection_point
																																																																																																											Let Ti1446
																																																																																																												Int:2
																																																																																																												Get Ta1445 Ti1446
																																																																																																										FAdd Td1444 Td1447
																																																																																																								Let Tb1449
																																																																																																									Let Ti1448
																																																																																																										Int:0
																																																																																																										App check_all_insideTi1448 and_group q0 q1 q2 
																																																																																																									Let Ti1450
																																																																																																										Int:0
																																																																																																										IfEq Tb1449 Ti1450
																																																																																																											Let Ti1452
																																																																																																												Let Ti1451
																																																																																																													Int:1
																																																																																																													Add iand_ofs Ti1451
																																																																																																												App shadow_check_and_groupTi1452 and_group 
																																																																																																											Int:1
																																																																																											LetRec shadow_check_one_or_group ofs or_group 
																																																																																												Let head
																																																																																													Get or_group ofs
																																																																																													Let Ti1403
																																																																																														Let Ti1402
																																																																																															Int:1
																																																																																															Neg Ti1402
																																																																																														IfEq head Ti1403
																																																																																															Int:0
																																																																																															Let and_group
																																																																																																Let Ta1404
																																																																																																	ExtArray and_net
																																																																																																	Get Ta1404 head
																																																																																																Let shadow_p
																																																																																																	Let Ti1405
																																																																																																		Int:0
																																																																																																		App shadow_check_and_groupTi1405 and_group 
																																																																																																	Let Ti1406
																																																																																																		Int:0
																																																																																																		IfEq shadow_p Ti1406
																																																																																																			Let Ti1408
																																																																																																				Let Ti1407
																																																																																																					Int:1
																																																																																																					Add ofs Ti1407
																																																																																																				App shadow_check_one_or_groupTi1408 or_group 
																																																																																																			Int:1
																																																																																												LetRec shadow_check_one_or_matrix ofs or_matrix 
																																																																																													Let head
																																																																																														Get or_matrix ofs
																																																																																														Let range_primitive
																																																																																															Let Ti1377
																																																																																																Int:0
																																																																																																Get head Ti1377
																																																																																															Let Ti1379
																																																																																																Let Ti1378
																																																																																																	Int:1
																																																																																																	Neg Ti1378
																																																																																																IfEq range_primitive Ti1379
																																																																																																	Int:0
																																																																																																	Let Ti1393
																																																																																																		Let Ti1380
																																																																																																			Int:99
																																																																																																			IfEq range_primitive Ti1380
																																																																																																				Int:1
																																																																																																				Let t
																																																																																																					Let Tt1381
																																																																																																						ExtTuple light_dirvec
																																																																																																						Let Ta1382
																																																																																																							ExtArray intersection_point
																																																																																																							App solver_fastrange_primitive Tt1381 Ta1382 
																																																																																																					Let Ti1383
																																																																																																						Int:0
																																																																																																						IfEq t Ti1383
																																																																																																							Int:0
																																																																																																							Let Tb1388
																																																																																																								Let Td1386
																																																																																																									Let Ta1384
																																																																																																										ExtArray solver_dist
																																																																																																										Let Ti1385
																																																																																																											Int:0
																																																																																																											Get Ta1384 Ti1385
																																																																																																									Let Td1387
																																																																																																										Float:-0.100000
																																																																																																										ExtFunApp fless Td1386,Td1387,
																																																																																																								Let Ti1389
																																																																																																									Int:0
																																																																																																									IfEq Tb1388 Ti1389
																																																																																																										Int:0
																																																																																																										Let Tb1391
																																																																																																											Let Ti1390
																																																																																																												Int:1
																																																																																																												App shadow_check_one_or_groupTi1390 head 
																																																																																																											Let Ti1392
																																																																																																												Int:0
																																																																																																												IfEq Tb1391 Ti1392
																																																																																																													Int:0
																																																																																																													Int:1
																																																																																																		Let Ti1394
																																																																																																			Int:0
																																																																																																			IfEq Ti1393 Ti1394
																																																																																																				Let Ti1396
																																																																																																					Let Ti1395
																																																																																																						Int:1
																																																																																																						Add ofs Ti1395
																																																																																																					App shadow_check_one_or_matrixTi1396 or_matrix 
																																																																																																				Let Tb1398
																																																																																																					Let Ti1397
																																																																																																						Int:1
																																																																																																						App shadow_check_one_or_groupTi1397 head 
																																																																																																					Let Ti1399
																																																																																																						Int:0
																																																																																																						IfEq Tb1398 Ti1399
																																																																																																							Let Ti1401
																																																																																																								Let Ti1400
																																																																																																									Int:1
																																																																																																									Add ofs Ti1400
																																																																																																								App shadow_check_one_or_matrixTi1401 or_matrix 
																																																																																																							Int:1
																																																																																													LetRec solve_each_element iand_ofs and_group dirvec 
																																																																																														Let iobj
																																																																																															Get and_group iand_ofs
																																																																																															Let Ti1327
																																																																																																Let Ti1326
																																																																																																	Int:1
																																																																																																	Neg Ti1326
																																																																																																IfEq iobj Ti1327
																																																																																																	Unit
																																																																																																	Let t0
																																																																																																		Let Ta1328
																																																																																																			ExtArray startp
																																																																																																			App solveriobj dirvec Ta1328 
																																																																																																		Let Ti1329
																																																																																																			Int:0
																																																																																																			IfEq t0 Ti1329
																																																																																																				Let Tb1332
																																																																																																					Let Tt1331
																																																																																																						Let Ta1330
																																																																																																							ExtArray objects
																																																																																																							Get Ta1330 iobj
																																																																																																						App o_isinvertTt1331 
																																																																																																					Let Ti1333
																																																																																																						Int:0
																																																																																																						IfEq Tb1332 Ti1333
																																																																																																							Unit
																																																																																																							Let Ti1335
																																																																																																								Let Ti1334
																																																																																																									Int:1
																																																																																																									Add iand_ofs Ti1334
																																																																																																								App solve_each_elementTi1335 and_group dirvec 
																																																																																																				Let t0p
																																																																																																					Let Ta1336
																																																																																																						ExtArray solver_dist
																																																																																																						Let Ti1337
																																																																																																							Int:0
																																																																																																							Get Ta1336 Ti1337
																																																																																																					Let Tu109
																																																																																																						Let Tb1339
																																																																																																							Let Td1338
																																																																																																								Float:0.000000
																																																																																																								ExtFunApp fless Td1338,t0p,
																																																																																																							Let Ti1340
																																																																																																								Int:0
																																																																																																								IfEq Tb1339 Ti1340
																																																																																																									Unit
																																																																																																									Let Tb1344
																																																																																																										Let Td1343
																																																																																																											Let Ta1341
																																																																																																												ExtArray tmin
																																																																																																												Let Ti1342
																																																																																																													Int:0
																																																																																																													Get Ta1341 Ti1342
																																																																																																											ExtFunApp fless t0p,Td1343,
																																																																																																										Let Ti1345
																																																																																																											Int:0
																																																																																																											IfEq Tb1344 Ti1345
																																																																																																												Unit
																																																																																																												Let t
																																																																																																													Let Td1346
																																																																																																														Float:0.010000
																																																																																																														FAdd t0p Td1346
																																																																																																													Let q0
																																																																																																														Let Td1349
																																																																																																															Let Td1348
																																																																																																																Let Ti1347
																																																																																																																	Int:0
																																																																																																																	Get dirvec Ti1347
																																																																																																																FMul Td1348 t
																																																																																																															Let Td1352
																																																																																																																Let Ta1350
																																																																																																																	ExtArray startp
																																																																																																																	Let Ti1351
																																																																																																																		Int:0
																																																																																																																		Get Ta1350 Ti1351
																																																																																																																FAdd Td1349 Td1352
																																																																																																														Let q1
																																																																																																															Let Td1355
																																																																																																																Let Td1354
																																																																																																																	Let Ti1353
																																																																																																																		Int:1
																																																																																																																		Get dirvec Ti1353
																																																																																																																	FMul Td1354 t
																																																																																																																Let Td1358
																																																																																																																	Let Ta1356
																																																																																																																		ExtArray startp
																																																																																																																		Let Ti1357
																																																																																																																			Int:1
																																																																																																																			Get Ta1356 Ti1357
																																																																																																																	FAdd Td1355 Td1358
																																																																																																															Let q2
																																																																																																																Let Td1361
																																																																																																																	Let Td1360
																																																																																																																		Let Ti1359
																																																																																																																			Int:2
																																																																																																																			Get dirvec Ti1359
																																																																																																																		FMul Td1360 t
																																																																																																																	Let Td1364
																																																																																																																		Let Ta1362
																																																																																																																			ExtArray startp
																																																																																																																			Let Ti1363
																																																																																																																				Int:2
																																																																																																																				Get Ta1362 Ti1363
																																																																																																																		FAdd Td1361 Td1364
																																																																																																																Let Tb1366
																																																																																																																	Let Ti1365
																																																																																																																		Int:0
																																																																																																																		App check_all_insideTi1365 and_group q0 q1 q2 
																																																																																																																	Let Ti1367
																																																																																																																		Int:0
																																																																																																																		IfEq Tb1366 Ti1367
																																																																																																																			Unit
																																																																																																																			Let Tu108
																																																																																																																				Let Ta1368
																																																																																																																					ExtArray tmin
																																																																																																																					Let Ti1369
																																																																																																																						Int:0
																																																																																																																						Put Ta1368 Ti1369 t
																																																																																																																				Let Tu107
																																																																																																																					Let Ta1370
																																																																																																																						ExtArray intersection_point
																																																																																																																						App vecsetTa1370 q0 q1 q2 
																																																																																																																					Let Tu106
																																																																																																																						Let Ta1371
																																																																																																																							ExtArray intersected_object_id
																																																																																																																							Let Ti1372
																																																																																																																								Int:0
																																																																																																																								Put Ta1371 Ti1372 iobj
																																																																																																																						Let Ta1373
																																																																																																																							ExtArray intsec_rectside
																																																																																																																							Let Ti1374
																																																																																																																								Int:0
																																																																																																																								Put Ta1373 Ti1374 t0
																																																																																																						Let Ti1376
																																																																																																							Let Ti1375
																																																																																																								Int:1
																																																																																																								Add iand_ofs Ti1375
																																																																																																							App solve_each_elementTi1376 and_group dirvec 
																																																																																														LetRec solve_one_or_network ofs or_group dirvec 
																																																																																															Let head
																																																																																																Get or_group ofs
																																																																																																Let Ti1321
																																																																																																	Let Ti1320
																																																																																																		Int:1
																																																																																																		Neg Ti1320
																																																																																																	IfEq head Ti1321
																																																																																																		Unit
																																																																																																		Let and_group
																																																																																																			Let Ta1322
																																																																																																				ExtArray and_net
																																																																																																				Get Ta1322 head
																																																																																																			Let Tu110
																																																																																																				Let Ti1323
																																																																																																					Int:0
																																																																																																					App solve_each_elementTi1323 and_group dirvec 
																																																																																																				Let Ti1325
																																																																																																					Let Ti1324
																																																																																																						Int:1
																																																																																																						Add ofs Ti1324
																																																																																																					App solve_one_or_networkTi1325 or_group dirvec 
																																																																																															LetRec trace_or_matrix ofs or_network dirvec 
																																																																																																Let head
																																																																																																	Get or_network ofs
																																																																																																	Let range_primitive
																																																																																																		Let Ti1303
																																																																																																			Int:0
																																																																																																			Get head Ti1303
																																																																																																		Let Ti1305
																																																																																																			Let Ti1304
																																																																																																				Int:1
																																																																																																				Neg Ti1304
																																																																																																			IfEq range_primitive Ti1305
																																																																																																				Unit
																																																																																																				Let Tu111
																																																																																																					Let Ti1306
																																																																																																						Int:99
																																																																																																						IfEq range_primitive Ti1306
																																																																																																							Let Ti1307
																																																																																																								Int:1
																																																																																																								App solve_one_or_networkTi1307 head dirvec 
																																																																																																							Let t
																																																																																																								Let Ta1308
																																																																																																									ExtArray startp
																																																																																																									App solverrange_primitive dirvec Ta1308 
																																																																																																								Let Ti1309
																																																																																																									Int:0
																																																																																																									IfEq t Ti1309
																																																																																																										Unit
																																																																																																										Let tp
																																																																																																											Let Ta1310
																																																																																																												ExtArray solver_dist
																																																																																																												Let Ti1311
																																																																																																													Int:0
																																																																																																													Get Ta1310 Ti1311
																																																																																																											Let Tb1315
																																																																																																												Let Td1314
																																																																																																													Let Ta1312
																																																																																																														ExtArray tmin
																																																																																																														Let Ti1313
																																																																																																															Int:0
																																																																																																															Get Ta1312 Ti1313
																																																																																																													ExtFunApp fless tp,Td1314,
																																																																																																												Let Ti1316
																																																																																																													Int:0
																																																																																																													IfEq Tb1315 Ti1316
																																																																																																														Unit
																																																																																																														Let Ti1317
																																																																																																															Int:1
																																																																																																															App solve_one_or_networkTi1317 head dirvec 
																																																																																																					Let Ti1319
																																																																																																						Let Ti1318
																																																																																																							Int:1
																																																																																																							Add ofs Ti1318
																																																																																																						App trace_or_matrixTi1319 or_network dirvec 
																																																																																																LetRec judge_intersection dirvec 
																																																																																																	Let Tu113
																																																																																																		Let Ta1290
																																																																																																			ExtArray tmin
																																																																																																			Let Ti1291
																																																																																																				Int:0
																																																																																																				Let Td1292
																																																																																																					Float:1000000000.000000
																																																																																																					Put Ta1290 Ti1291 Td1292
																																																																																																		Let Tu112
																																																																																																			Let Ti1293
																																																																																																				Int:0
																																																																																																				Let Ta1296
																																																																																																					Let Ta1294
																																																																																																						ExtArray or_net
																																																																																																						Let Ti1295
																																																																																																							Int:0
																																																																																																							Get Ta1294 Ti1295
																																																																																																					App trace_or_matrixTi1293 Ta1296 dirvec 
																																																																																																			Let t
																																																																																																				Let Ta1297
																																																																																																					ExtArray tmin
																																																																																																					Let Ti1298
																																																																																																						Int:0
																																																																																																						Get Ta1297 Ti1298
																																																																																																				Let Tb1300
																																																																																																					Let Td1299
																																																																																																						Float:-0.100000
																																																																																																						ExtFunApp fless Td1299,t,
																																																																																																					Let Ti1301
																																																																																																						Int:0
																																																																																																						IfEq Tb1300 Ti1301
																																																																																																							Int:0
																																																																																																							Let Td1302
																																																																																																								Float:100000000.000000
																																																																																																								ExtFunApp fless t,Td1302,
																																																																																																	LetRec solve_each_element_fast iand_ofs and_group dirvec 
																																																																																																		Let vec
																																																																																																			App d_vecdirvec 
																																																																																																			Let iobj
																																																																																																				Get and_group iand_ofs
																																																																																																				Let Ti1241
																																																																																																					Let Ti1240
																																																																																																						Int:1
																																																																																																						Neg Ti1240
																																																																																																					IfEq iobj Ti1241
																																																																																																						Unit
																																																																																																						Let t0
																																																																																																							App solver_fast2iobj dirvec 
																																																																																																							Let Ti1242
																																																																																																								Int:0
																																																																																																								IfEq t0 Ti1242
																																																																																																									Let Tb1245
																																																																																																										Let Tt1244
																																																																																																											Let Ta1243
																																																																																																												ExtArray objects
																																																																																																												Get Ta1243 iobj
																																																																																																											App o_isinvertTt1244 
																																																																																																										Let Ti1246
																																																																																																											Int:0
																																																																																																											IfEq Tb1245 Ti1246
																																																																																																												Unit
																																																																																																												Let Ti1248
																																																																																																													Let Ti1247
																																																																																																														Int:1
																																																																																																														Add iand_ofs Ti1247
																																																																																																													App solve_each_element_fastTi1248 and_group dirvec 
																																																																																																									Let t0p
																																																																																																										Let Ta1249
																																																																																																											ExtArray solver_dist
																																																																																																											Let Ti1250
																																																																																																												Int:0
																																																																																																												Get Ta1249 Ti1250
																																																																																																										Let Tu117
																																																																																																											Let Tb1252
																																																																																																												Let Td1251
																																																																																																													Float:0.000000
																																																																																																													ExtFunApp fless Td1251,t0p,
																																																																																																												Let Ti1253
																																																																																																													Int:0
																																																																																																													IfEq Tb1252 Ti1253
																																																																																																														Unit
																																																																																																														Let Tb1257
																																																																																																															Let Td1256
																																																																																																																Let Ta1254
																																																																																																																	ExtArray tmin
																																																																																																																	Let Ti1255
																																																																																																																		Int:0
																																																																																																																		Get Ta1254 Ti1255
																																																																																																																ExtFunApp fless t0p,Td1256,
																																																																																																															Let Ti1258
																																																																																																																Int:0
																																																																																																																IfEq Tb1257 Ti1258
																																																																																																																	Unit
																																																																																																																	Let t
																																																																																																																		Let Td1259
																																																																																																																			Float:0.010000
																																																																																																																			FAdd t0p Td1259
																																																																																																																		Let q0
																																																																																																																			Let Td1262
																																																																																																																				Let Td1261
																																																																																																																					Let Ti1260
																																																																																																																						Int:0
																																																																																																																						Get vec Ti1260
																																																																																																																					FMul Td1261 t
																																																																																																																				Let Td1265
																																																																																																																					Let Ta1263
																																																																																																																						ExtArray startp_fast
																																																																																																																						Let Ti1264
																																																																																																																							Int:0
																																																																																																																							Get Ta1263 Ti1264
																																																																																																																					FAdd Td1262 Td1265
																																																																																																																			Let q1
																																																																																																																				Let Td1268
																																																																																																																					Let Td1267
																																																																																																																						Let Ti1266
																																																																																																																							Int:1
																																																																																																																							Get vec Ti1266
																																																																																																																						FMul Td1267 t
																																																																																																																					Let Td1271
																																																																																																																						Let Ta1269
																																																																																																																							ExtArray startp_fast
																																																																																																																							Let Ti1270
																																																																																																																								Int:1
																																																																																																																								Get Ta1269 Ti1270
																																																																																																																						FAdd Td1268 Td1271
																																																																																																																				Let q2
																																																																																																																					Let Td1274
																																																																																																																						Let Td1273
																																																																																																																							Let Ti1272
																																																																																																																								Int:2
																																																																																																																								Get vec Ti1272
																																																																																																																							FMul Td1273 t
																																																																																																																						Let Td1277
																																																																																																																							Let Ta1275
																																																																																																																								ExtArray startp_fast
																																																																																																																								Let Ti1276
																																																																																																																									Int:2
																																																																																																																									Get Ta1275 Ti1276
																																																																																																																							FAdd Td1274 Td1277
																																																																																																																					Let Tb1279
																																																																																																																						Let Ti1278
																																																																																																																							Int:0
																																																																																																																							App check_all_insideTi1278 and_group q0 q1 q2 
																																																																																																																						Let Ti1280
																																																																																																																							Int:0
																																																																																																																							IfEq Tb1279 Ti1280
																																																																																																																								Unit
																																																																																																																								Let Tu116
																																																																																																																									Let Ta1281
																																																																																																																										ExtArray tmin
																																																																																																																										Let Ti1282
																																																																																																																											Int:0
																																																																																																																											Put Ta1281 Ti1282 t
																																																																																																																									Let Tu115
																																																																																																																										Let Ta1283
																																																																																																																											ExtArray intersection_point
																																																																																																																											App vecsetTa1283 q0 q1 q2 
																																																																																																																										Let Tu114
																																																																																																																											Let Ta1284
																																																																																																																												ExtArray intersected_object_id
																																																																																																																												Let Ti1285
																																																																																																																													Int:0
																																																																																																																													Put Ta1284 Ti1285 iobj
																																																																																																																											Let Ta1286
																																																																																																																												ExtArray intsec_rectside
																																																																																																																												Let Ti1287
																																																																																																																													Int:0
																																																																																																																													Put Ta1286 Ti1287 t0
																																																																																																											Let Ti1289
																																																																																																												Let Ti1288
																																																																																																													Int:1
																																																																																																													Add iand_ofs Ti1288
																																																																																																												App solve_each_element_fastTi1289 and_group dirvec 
																																																																																																		LetRec solve_one_or_network_fast ofs or_group dirvec 
																																																																																																			Let head
																																																																																																				Get or_group ofs
																																																																																																				Let Ti1235
																																																																																																					Let Ti1234
																																																																																																						Int:1
																																																																																																						Neg Ti1234
																																																																																																					IfEq head Ti1235
																																																																																																						Unit
																																																																																																						Let and_group
																																																																																																							Let Ta1236
																																																																																																								ExtArray and_net
																																																																																																								Get Ta1236 head
																																																																																																							Let Tu118
																																																																																																								Let Ti1237
																																																																																																									Int:0
																																																																																																									App solve_each_element_fastTi1237 and_group dirvec 
																																																																																																								Let Ti1239
																																																																																																									Let Ti1238
																																																																																																										Int:1
																																																																																																										Add ofs Ti1238
																																																																																																									App solve_one_or_network_fastTi1239 or_group dirvec 
																																																																																																			LetRec trace_or_matrix_fast ofs or_network dirvec 
																																																																																																				Let head
																																																																																																					Get or_network ofs
																																																																																																					Let range_primitive
																																																																																																						Let Ti1218
																																																																																																							Int:0
																																																																																																							Get head Ti1218
																																																																																																						Let Ti1220
																																																																																																							Let Ti1219
																																																																																																								Int:1
																																																																																																								Neg Ti1219
																																																																																																							IfEq range_primitive Ti1220
																																																																																																								Unit
																																																																																																								Let Tu119
																																																																																																									Let Ti1221
																																																																																																										Int:99
																																																																																																										IfEq range_primitive Ti1221
																																																																																																											Let Ti1222
																																																																																																												Int:1
																																																																																																												App solve_one_or_network_fastTi1222 head dirvec 
																																																																																																											Let t
																																																																																																												App solver_fast2range_primitive dirvec 
																																																																																																												Let Ti1223
																																																																																																													Int:0
																																																																																																													IfEq t Ti1223
																																																																																																														Unit
																																																																																																														Let tp
																																																																																																															Let Ta1224
																																																																																																																ExtArray solver_dist
																																																																																																																Let Ti1225
																																																																																																																	Int:0
																																																																																																																	Get Ta1224 Ti1225
																																																																																																															Let Tb1229
																																																																																																																Let Td1228
																																																																																																																	Let Ta1226
																																																																																																																		ExtArray tmin
																																																																																																																		Let Ti1227
																																																																																																																			Int:0
																																																																																																																			Get Ta1226 Ti1227
																																																																																																																	ExtFunApp fless tp,Td1228,
																																																																																																																Let Ti1230
																																																																																																																	Int:0
																																																																																																																	IfEq Tb1229 Ti1230
																																																																																																																		Unit
																																																																																																																		Let Ti1231
																																																																																																																			Int:1
																																																																																																																			App solve_one_or_network_fastTi1231 head dirvec 
																																																																																																									Let Ti1233
																																																																																																										Let Ti1232
																																																																																																											Int:1
																																																																																																											Add ofs Ti1232
																																																																																																										App trace_or_matrix_fastTi1233 or_network dirvec 
																																																																																																				LetRec judge_intersection_fast dirvec 
																																																																																																					Let Tu121
																																																																																																						Let Ta1205
																																																																																																							ExtArray tmin
																																																																																																							Let Ti1206
																																																																																																								Int:0
																																																																																																								Let Td1207
																																																																																																									Float:1000000000.000000
																																																																																																									Put Ta1205 Ti1206 Td1207
																																																																																																						Let Tu120
																																																																																																							Let Ti1208
																																																																																																								Int:0
																																																																																																								Let Ta1211
																																																																																																									Let Ta1209
																																																																																																										ExtArray or_net
																																																																																																										Let Ti1210
																																																																																																											Int:0
																																																																																																											Get Ta1209 Ti1210
																																																																																																									App trace_or_matrix_fastTi1208 Ta1211 dirvec 
																																																																																																							Let t
																																																																																																								Let Ta1212
																																																																																																									ExtArray tmin
																																																																																																									Let Ti1213
																																																																																																										Int:0
																																																																																																										Get Ta1212 Ti1213
																																																																																																								Let Tb1215
																																																																																																									Let Td1214
																																																																																																										Float:-0.100000
																																																																																																										ExtFunApp fless Td1214,t,
																																																																																																									Let Ti1216
																																																																																																										Int:0
																																																																																																										IfEq Tb1215 Ti1216
																																																																																																											Int:0
																																																																																																											Let Td1217
																																																																																																												Float:100000000.000000
																																																																																																												ExtFunApp fless t,Td1217,
																																																																																																					LetRec get_nvector_rect dirvec 
																																																																																																						Let rectside
																																																																																																							Let Ta1194
																																																																																																								ExtArray intsec_rectside
																																																																																																								Let Ti1195
																																																																																																									Int:0
																																																																																																									Get Ta1194 Ti1195
																																																																																																							Let Tu122
																																																																																																								Let Ta1196
																																																																																																									ExtArray nvector
																																																																																																									App vecbzeroTa1196 
																																																																																																								Let Ta1197
																																																																																																									ExtArray nvector
																																																																																																									Let Ti1199
																																																																																																										Let Ti1198
																																																																																																											Int:1
																																																																																																											Sub rectside Ti1198
																																																																																																										Let Td1204
																																																																																																											Let Td1203
																																																																																																												Let Td1202
																																																																																																													Let Ti1201
																																																																																																														Let Ti1200
																																																																																																															Int:1
																																																																																																															Sub rectside Ti1200
																																																																																																														Get dirvec Ti1201
																																																																																																													App sgnTd1202 
																																																																																																												ExtFunApp fneg Td1203,
																																																																																																											Put Ta1197 Ti1199 Td1204
																																																																																																						LetRec get_nvector_plane m 
																																																																																																							Let Tu124
																																																																																																								Let Ta1182
																																																																																																									ExtArray nvector
																																																																																																									Let Ti1183
																																																																																																										Int:0
																																																																																																										Let Td1185
																																																																																																											Let Td1184
																																																																																																												App o_param_am 
																																																																																																												ExtFunApp fneg Td1184,
																																																																																																											Put Ta1182 Ti1183 Td1185
																																																																																																								Let Tu123
																																																																																																									Let Ta1186
																																																																																																										ExtArray nvector
																																																																																																										Let Ti1187
																																																																																																											Int:1
																																																																																																											Let Td1189
																																																																																																												Let Td1188
																																																																																																													App o_param_bm 
																																																																																																													ExtFunApp fneg Td1188,
																																																																																																												Put Ta1186 Ti1187 Td1189
																																																																																																									Let Ta1190
																																																																																																										ExtArray nvector
																																																																																																										Let Ti1191
																																																																																																											Int:2
																																																																																																											Let Td1193
																																																																																																												Let Td1192
																																																																																																													App o_param_cm 
																																																																																																													ExtFunApp fneg Td1192,
																																																																																																												Put Ta1190 Ti1191 Td1193
																																																																																																							LetRec get_nvector_second m 
																																																																																																								Let p0
																																																																																																									Let Td1132
																																																																																																										Let Ta1130
																																																																																																											ExtArray intersection_point
																																																																																																											Let Ti1131
																																																																																																												Int:0
																																																																																																												Get Ta1130 Ti1131
																																																																																																										Let Td1133
																																																																																																											App o_param_xm 
																																																																																																											FSub Td1132 Td1133
																																																																																																									Let p1
																																																																																																										Let Td1136
																																																																																																											Let Ta1134
																																																																																																												ExtArray intersection_point
																																																																																																												Let Ti1135
																																																																																																													Int:1
																																																																																																													Get Ta1134 Ti1135
																																																																																																											Let Td1137
																																																																																																												App o_param_ym 
																																																																																																												FSub Td1136 Td1137
																																																																																																										Let p2
																																																																																																											Let Td1140
																																																																																																												Let Ta1138
																																																																																																													ExtArray intersection_point
																																																																																																													Let Ti1139
																																																																																																														Int:2
																																																																																																														Get Ta1138 Ti1139
																																																																																																												Let Td1141
																																																																																																													App o_param_zm 
																																																																																																													FSub Td1140 Td1141
																																																																																																											Let d0
																																																																																																												Let Td1142
																																																																																																													App o_param_am 
																																																																																																													FMul p0 Td1142
																																																																																																												Let d1
																																																																																																													Let Td1143
																																																																																																														App o_param_bm 
																																																																																																														FMul p1 Td1143
																																																																																																													Let d2
																																																																																																														Let Td1144
																																																																																																															App o_param_cm 
																																																																																																															FMul p2 Td1144
																																																																																																														Let Tu129
																																																																																																															Let Ti1145
																																																																																																																App o_isrotm 
																																																																																																																Let Ti1146
																																																																																																																	Int:0
																																																																																																																	IfEq Ti1145 Ti1146
																																																																																																																		Let Tu126
																																																																																																																			Let Ta1147
																																																																																																																				ExtArray nvector
																																																																																																																				Let Ti1148
																																																																																																																					Int:0
																																																																																																																					Put Ta1147 Ti1148 d0
																																																																																																																			Let Tu125
																																																																																																																				Let Ta1149
																																																																																																																					ExtArray nvector
																																																																																																																					Let Ti1150
																																																																																																																						Int:1
																																																																																																																						Put Ta1149 Ti1150 d1
																																																																																																																				Let Ta1151
																																																																																																																					ExtArray nvector
																																																																																																																					Let Ti1152
																																																																																																																						Int:2
																																																																																																																						Put Ta1151 Ti1152 d2
																																																																																																																		Let Tu128
																																																																																																																			Let Ta1153
																																																																																																																				ExtArray nvector
																																																																																																																				Let Ti1154
																																																																																																																					Int:0
																																																																																																																					Let Td1161
																																																																																																																						Let Td1160
																																																																																																																							Let Td1159
																																																																																																																								Let Td1156
																																																																																																																									Let Td1155
																																																																																																																										App o_param_r3m 
																																																																																																																										FMul p1 Td1155
																																																																																																																									Let Td1158
																																																																																																																										Let Td1157
																																																																																																																											App o_param_r2m 
																																																																																																																											FMul p2 Td1157
																																																																																																																										FAdd Td1156 Td1158
																																																																																																																								ExtFunApp fhalf Td1159,
																																																																																																																							FAdd d0 Td1160
																																																																																																																						Put Ta1153 Ti1154 Td1161
																																																																																																																			Let Tu127
																																																																																																																				Let Ta1162
																																																																																																																					ExtArray nvector
																																																																																																																					Let Ti1163
																																																																																																																						Int:1
																																																																																																																						Let Td1170
																																																																																																																							Let Td1169
																																																																																																																								Let Td1168
																																																																																																																									Let Td1165
																																																																																																																										Let Td1164
																																																																																																																											App o_param_r3m 
																																																																																																																											FMul p0 Td1164
																																																																																																																										Let Td1167
																																																																																																																											Let Td1166
																																																																																																																												App o_param_r1m 
																																																																																																																												FMul p2 Td1166
																																																																																																																											FAdd Td1165 Td1167
																																																																																																																									ExtFunApp fhalf Td1168,
																																																																																																																								FAdd d1 Td1169
																																																																																																																							Put Ta1162 Ti1163 Td1170
																																																																																																																				Let Ta1171
																																																																																																																					ExtArray nvector
																																																																																																																					Let Ti1172
																																																																																																																						Int:2
																																																																																																																						Let Td1179
																																																																																																																							Let Td1178
																																																																																																																								Let Td1177
																																																																																																																									Let Td1174
																																																																																																																										Let Td1173
																																																																																																																											App o_param_r2m 
																																																																																																																											FMul p0 Td1173
																																																																																																																										Let Td1176
																																																																																																																											Let Td1175
																																																																																																																												App o_param_r1m 
																																																																																																																												FMul p1 Td1175
																																																																																																																											FAdd Td1174 Td1176
																																																																																																																									ExtFunApp fhalf Td1177,
																																																																																																																								FAdd d2 Td1178
																																																																																																																							Put Ta1171 Ti1172 Td1179
																																																																																																															Let Ta1180
																																																																																																																ExtArray nvector
																																																																																																																Let Tb1181
																																																																																																																	App o_isinvertm 
																																																																																																																	App vecunit_sgnTa1180 Tb1181 
																																																																																																								LetRec get_nvector m dirvec 
																																																																																																									Let m_shape
																																																																																																										App o_formm 
																																																																																																										Let Ti1128
																																																																																																											Int:1
																																																																																																											IfEq m_shape Ti1128
																																																																																																												App get_nvector_rectdirvec 
																																																																																																												Let Ti1129
																																																																																																													Int:2
																																																																																																													IfEq m_shape Ti1129
																																																																																																														App get_nvector_planem 
																																																																																																														App get_nvector_secondm 
																																																																																																									LetRec utexture m p 
																																																																																																										Let m_tex
																																																																																																											App o_texturetypem 
																																																																																																											Let Tu134
																																																																																																												Let Ta989
																																																																																																													ExtArray texture_color
																																																																																																													Let Ti990
																																																																																																														Int:0
																																																																																																														Let Td991
																																																																																																															App o_color_redm 
																																																																																																															Put Ta989 Ti990 Td991
																																																																																																												Let Tu133
																																																																																																													Let Ta992
																																																																																																														ExtArray texture_color
																																																																																																														Let Ti993
																																																																																																															Int:1
																																																																																																															Let Td994
																																																																																																																App o_color_greenm 
																																																																																																																Put Ta992 Ti993 Td994
																																																																																																													Let Tu132
																																																																																																														Let Ta995
																																																																																																															ExtArray texture_color
																																																																																																															Let Ti996
																																																																																																																Int:2
																																																																																																																Let Td997
																																																																																																																	App o_color_bluem 
																																																																																																																	Put Ta995 Ti996 Td997
																																																																																																														Let Ti998
																																																																																																															Int:1
																																																																																																															IfEq m_tex Ti998
																																																																																																																Let w1
																																																																																																																	Let Td1000
																																																																																																																		Let Ti999
																																																																																																																			Int:0
																																																																																																																			Get p Ti999
																																																																																																																		Let Td1001
																																																																																																																			App o_param_xm 
																																																																																																																			FSub Td1000 Td1001
																																																																																																																	Let flag1
																																																																																																																		Let d1
																																																																																																																			Let Td1004
																																																																																																																				Let Td1003
																																																																																																																					Let Td1002
																																																																																																																						Float:0.050000
																																																																																																																						FMul w1 Td1002
																																																																																																																					ExtFunApp floor Td1003,
																																																																																																																				Let Td1005
																																																																																																																					Float:20.000000
																																																																																																																					FMul Td1004 Td1005
																																																																																																																			Let Td1006
																																																																																																																				FSub w1 d1
																																																																																																																				Let Td1007
																																																																																																																					Float:10.000000
																																																																																																																					ExtFunApp fless Td1006,Td1007,
																																																																																																																		Let w3
																																																																																																																			Let Td1009
																																																																																																																				Let Ti1008
																																																																																																																					Int:2
																																																																																																																					Get p Ti1008
																																																																																																																				Let Td1010
																																																																																																																					App o_param_zm 
																																																																																																																					FSub Td1009 Td1010
																																																																																																																			Let flag2
																																																																																																																				Let d2
																																																																																																																					Let Td1013
																																																																																																																						Let Td1012
																																																																																																																							Let Td1011
																																																																																																																								Float:0.050000
																																																																																																																								FMul w3 Td1011
																																																																																																																							ExtFunApp floor Td1012,
																																																																																																																						Let Td1014
																																																																																																																							Float:20.000000
																																																																																																																							FMul Td1013 Td1014
																																																																																																																					Let Td1015
																																																																																																																						FSub w3 d2
																																																																																																																						Let Td1016
																																																																																																																							Float:10.000000
																																																																																																																							ExtFunApp fless Td1015,Td1016,
																																																																																																																				Let Ta1017
																																																																																																																					ExtArray texture_color
																																																																																																																					Let Ti1018
																																																																																																																						Int:1
																																																																																																																						Let Td1022
																																																																																																																							Let Ti1019
																																																																																																																								Int:0
																																																																																																																								IfEq flag1 Ti1019
																																																																																																																									Let Ti1020
																																																																																																																										Int:0
																																																																																																																										IfEq flag2 Ti1020
																																																																																																																											Float:255.000000
																																																																																																																											Float:0.000000
																																																																																																																									Let Ti1021
																																																																																																																										Int:0
																																																																																																																										IfEq flag2 Ti1021
																																																																																																																											Float:0.000000
																																																																																																																											Float:255.000000
																																																																																																																							Put Ta1017 Ti1018 Td1022
																																																																																																																Let Ti1023
																																																																																																																	Int:2
																																																																																																																	IfEq m_tex Ti1023
																																																																																																																		Let w2
																																																																																																																			Let Td1028
																																																																																																																				Let Td1027
																																																																																																																					Let Td1025
																																																																																																																						Let Ti1024
																																																																																																																							Int:1
																																																																																																																							Get p Ti1024
																																																																																																																						Let Td1026
																																																																																																																							Float:0.250000
																																																																																																																							FMul Td1025 Td1026
																																																																																																																					ExtFunApp sin Td1027,
																																																																																																																				ExtFunApp fsqr Td1028,
																																																																																																																			Let Tu130
																																																																																																																				Let Ta1029
																																																																																																																					ExtArray texture_color
																																																																																																																					Let Ti1030
																																																																																																																						Int:0
																																																																																																																						Let Td1032
																																																																																																																							Let Td1031
																																																																																																																								Float:255.000000
																																																																																																																								FMul Td1031 w2
																																																																																																																							Put Ta1029 Ti1030 Td1032
																																																																																																																				Let Ta1033
																																																																																																																					ExtArray texture_color
																																																																																																																					Let Ti1034
																																																																																																																						Int:1
																																																																																																																						Let Td1038
																																																																																																																							Let Td1035
																																																																																																																								Float:255.000000
																																																																																																																								Let Td1037
																																																																																																																									Let Td1036
																																																																																																																										Float:1.000000
																																																																																																																										FSub Td1036 w2
																																																																																																																									FMul Td1035 Td1037
																																																																																																																							Put Ta1033 Ti1034 Td1038
																																																																																																																		Let Ti1039
																																																																																																																			Int:3
																																																																																																																			IfEq m_tex Ti1039
																																																																																																																				Let w1
																																																																																																																					Let Td1041
																																																																																																																						Let Ti1040
																																																																																																																							Int:0
																																																																																																																							Get p Ti1040
																																																																																																																						Let Td1042
																																																																																																																							App o_param_xm 
																																																																																																																							FSub Td1041 Td1042
																																																																																																																					Let w3
																																																																																																																						Let Td1044
																																																																																																																							Let Ti1043
																																																																																																																								Int:2
																																																																																																																								Get p Ti1043
																																																																																																																							Let Td1045
																																																																																																																								App o_param_zm 
																																																																																																																								FSub Td1044 Td1045
																																																																																																																						Let w2
																																																																																																																							Let Td1049
																																																																																																																								Let Td1048
																																																																																																																									Let Td1046
																																																																																																																										ExtFunApp fsqr w1,
																																																																																																																										Let Td1047
																																																																																																																											ExtFunApp fsqr w3,
																																																																																																																											FAdd Td1046 Td1047
																																																																																																																									ExtFunApp sqrt Td1048,
																																																																																																																								Let Td1050
																																																																																																																									Float:10.000000
																																																																																																																									Let Td1051
																																																																																																																										FReciprocal Td1050
																																																																																																																										FMul Td1049 Td1051
																																																																																																																							Let w4
																																																																																																																								Let Td1053
																																																																																																																									Let Td1052
																																																																																																																										ExtFunApp floor w2,
																																																																																																																										FSub w2 Td1052
																																																																																																																									Let Td1054
																																																																																																																										Float:3.141593
																																																																																																																										FMul Td1053 Td1054
																																																																																																																								Let cws
																																																																																																																									Let Td1055
																																																																																																																										ExtFunApp cos w4,
																																																																																																																										ExtFunApp fsqr Td1055,
																																																																																																																									Let Tu131
																																																																																																																										Let Ta1056
																																																																																																																											ExtArray texture_color
																																																																																																																											Let Ti1057
																																																																																																																												Int:1
																																																																																																																												Let Td1059
																																																																																																																													Let Td1058
																																																																																																																														Float:255.000000
																																																																																																																														FMul cws Td1058
																																																																																																																													Put Ta1056 Ti1057 Td1059
																																																																																																																										Let Ta1060
																																																																																																																											ExtArray texture_color
																																																																																																																											Let Ti1061
																																																																																																																												Int:2
																																																																																																																												Let Td1065
																																																																																																																													Let Td1063
																																																																																																																														Let Td1062
																																																																																																																															Float:1.000000
																																																																																																																															FSub Td1062 cws
																																																																																																																														Let Td1064
																																																																																																																															Float:255.000000
																																																																																																																															FMul Td1063 Td1064
																																																																																																																													Put Ta1060 Ti1061 Td1065
																																																																																																																				Let Ti1066
																																																																																																																					Int:4
																																																																																																																					IfEq m_tex Ti1066
																																																																																																																						Let w1
																																																																																																																							Let Td1070
																																																																																																																								Let Td1068
																																																																																																																									Let Ti1067
																																																																																																																										Int:0
																																																																																																																										Get p Ti1067
																																																																																																																									Let Td1069
																																																																																																																										App o_param_xm 
																																																																																																																										FSub Td1068 Td1069
																																																																																																																								Let Td1072
																																																																																																																									Let Td1071
																																																																																																																										App o_param_am 
																																																																																																																										ExtFunApp sqrt Td1071,
																																																																																																																									FMul Td1070 Td1072
																																																																																																																							Let w3
																																																																																																																								Let Td1076
																																																																																																																									Let Td1074
																																																																																																																										Let Ti1073
																																																																																																																											Int:2
																																																																																																																											Get p Ti1073
																																																																																																																										Let Td1075
																																																																																																																											App o_param_zm 
																																																																																																																											FSub Td1074 Td1075
																																																																																																																									Let Td1078
																																																																																																																										Let Td1077
																																																																																																																											App o_param_cm 
																																																																																																																											ExtFunApp sqrt Td1077,
																																																																																																																										FMul Td1076 Td1078
																																																																																																																								Let w4
																																																																																																																									Let Td1079
																																																																																																																										ExtFunApp fsqr w1,
																																																																																																																										Let Td1080
																																																																																																																											ExtFunApp fsqr w3,
																																																																																																																											FAdd Td1079 Td1080
																																																																																																																									Let w7
																																																																																																																										Let Tb1083
																																																																																																																											Let Td1081
																																																																																																																												ExtFunApp fabs w1,
																																																																																																																												Let Td1082
																																																																																																																													Float:0.000100
																																																																																																																													ExtFunApp fless Td1081,Td1082,
																																																																																																																											Let Ti1084
																																																																																																																												Int:0
																																																																																																																												IfEq Tb1083 Ti1084
																																																																																																																													Let w5
																																																																																																																														Let Td1086
																																																																																																																															Let Td1085
																																																																																																																																FReciprocal w1
																																																																																																																																FMul w3 Td1085
																																																																																																																															ExtFunApp fabs Td1086,
																																																																																																																														Let Td1089
																																																																																																																															Let Td1087
																																																																																																																																ExtFunApp atan w5,
																																																																																																																																Let Td1088
																																																																																																																																	Float:30.000000
																																																																																																																																	FMul Td1087 Td1088
																																																																																																																															Let Td1090
																																																																																																																																Float:3.141593
																																																																																																																																Let Td1091
																																																																																																																																	FReciprocal Td1090
																																																																																																																																	FMul Td1089 Td1091
																																																																																																																													Float:15.000000
																																																																																																																										Let w9
																																																																																																																											Let Td1092
																																																																																																																												ExtFunApp floor w7,
																																																																																																																												FSub w7 Td1092
																																																																																																																											Let w2
																																																																																																																												Let Td1096
																																																																																																																													Let Td1094
																																																																																																																														Let Ti1093
																																																																																																																															Int:1
																																																																																																																															Get p Ti1093
																																																																																																																														Let Td1095
																																																																																																																															App o_param_ym 
																																																																																																																															FSub Td1094 Td1095
																																																																																																																													Let Td1098
																																																																																																																														Let Td1097
																																																																																																																															App o_param_bm 
																																																																																																																															ExtFunApp sqrt Td1097,
																																																																																																																														FMul Td1096 Td1098
																																																																																																																												Let w8
																																																																																																																													Let Tb1101
																																																																																																																														Let Td1099
																																																																																																																															ExtFunApp fabs w4,
																																																																																																																															Let Td1100
																																																																																																																																Float:0.000100
																																																																																																																																ExtFunApp fless Td1099,Td1100,
																																																																																																																														Let Ti1102
																																																																																																																															Int:0
																																																																																																																															IfEq Tb1101 Ti1102
																																																																																																																																Let w6
																																																																																																																																	Let Td1104
																																																																																																																																		Let Td1103
																																																																																																																																			FReciprocal w4
																																																																																																																																			FMul w2 Td1103
																																																																																																																																		ExtFunApp fabs Td1104,
																																																																																																																																	Let Td1107
																																																																																																																																		Let Td1105
																																																																																																																																			ExtFunApp atan w6,
																																																																																																																																			Let Td1106
																																																																																																																																				Float:30.000000
																																																																																																																																				FMul Td1105 Td1106
																																																																																																																																		Let Td1108
																																																																																																																																			Float:3.141593
																																																																																																																																			Let Td1109
																																																																																																																																				FReciprocal Td1108
																																																																																																																																				FMul Td1107 Td1109
																																																																																																																																Float:15.000000
																																																																																																																													Let w10
																																																																																																																														Let Td1110
																																																																																																																															ExtFunApp floor w8,
																																																																																																																															FSub w8 Td1110
																																																																																																																														Let w11
																																																																																																																															Let Td1115
																																																																																																																																Let Td1111
																																																																																																																																	Float:0.150000
																																																																																																																																	Let Td1114
																																																																																																																																		Let Td1113
																																																																																																																																			Let Td1112
																																																																																																																																				Float:0.500000
																																																																																																																																				FSub Td1112 w9
																																																																																																																																			ExtFunApp fsqr Td1113,
																																																																																																																																		FSub Td1111 Td1114
																																																																																																																																Let Td1118
																																																																																																																																	Let Td1117
																																																																																																																																		Let Td1116
																																																																																																																																			Float:0.500000
																																																																																																																																			FSub Td1116 w10
																																																																																																																																		ExtFunApp fsqr Td1117,
																																																																																																																																	FSub Td1115 Td1118
																																																																																																																															Let w12
																																																																																																																																Let Tb1119
																																																																																																																																	ExtFunApp fisneg w11,
																																																																																																																																	Let Ti1120
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb1119 Ti1120
																																																																																																																																			Var w11
																																																																																																																																			Float:0.000000
																																																																																																																																Let Ta1121
																																																																																																																																	ExtArray texture_color
																																																																																																																																	Let Ti1122
																																																																																																																																		Int:2
																																																																																																																																		Let Td1127
																																																																																																																																			Let Td1124
																																																																																																																																				Let Td1123
																																																																																																																																					Float:255.000000
																																																																																																																																					FMul Td1123 w12
																																																																																																																																				Let Td1125
																																																																																																																																					Float:0.300000
																																																																																																																																					Let Td1126
																																																																																																																																						FReciprocal Td1125
																																																																																																																																						FMul Td1124 Td1126
																																																																																																																																			Put Ta1121 Ti1122 Td1127
																																																																																																																						Unit
																																																																																																										LetRec add_light bright hilight hilight_scale 
																																																																																																											Let Tu137
																																																																																																												Let Tb963
																																																																																																													ExtFunApp fispos bright,
																																																																																																													Let Ti964
																																																																																																														Int:0
																																																																																																														IfEq Tb963 Ti964
																																																																																																															Unit
																																																																																																															Let Ta965
																																																																																																																ExtArray rgb
																																																																																																																Let Ta966
																																																																																																																	ExtArray texture_color
																																																																																																																	App vecaccumTa965 bright Ta966 
																																																																																																												Let Tb967
																																																																																																													ExtFunApp fispos hilight,
																																																																																																													Let Ti968
																																																																																																														Int:0
																																																																																																														IfEq Tb967 Ti968
																																																																																																															Unit
																																																																																																															Let ihl
																																																																																																																Let Td970
																																																																																																																	Let Td969
																																																																																																																		ExtFunApp fsqr hilight,
																																																																																																																		ExtFunApp fsqr Td969,
																																																																																																																	FMul Td970 hilight_scale
																																																																																																																Let Tu136
																																																																																																																	Let Ta971
																																																																																																																		ExtArray rgb
																																																																																																																		Let Ti972
																																																																																																																			Int:0
																																																																																																																			Let Td976
																																																																																																																				Let Td975
																																																																																																																					Let Ta973
																																																																																																																						ExtArray rgb
																																																																																																																						Let Ti974
																																																																																																																							Int:0
																																																																																																																							Get Ta973 Ti974
																																																																																																																					FAdd Td975 ihl
																																																																																																																				Put Ta971 Ti972 Td976
																																																																																																																	Let Tu135
																																																																																																																		Let Ta977
																																																																																																																			ExtArray rgb
																																																																																																																			Let Ti978
																																																																																																																				Int:1
																																																																																																																				Let Td982
																																																																																																																					Let Td981
																																																																																																																						Let Ta979
																																																																																																																							ExtArray rgb
																																																																																																																							Let Ti980
																																																																																																																								Int:1
																																																																																																																								Get Ta979 Ti980
																																																																																																																						FAdd Td981 ihl
																																																																																																																					Put Ta977 Ti978 Td982
																																																																																																																		Let Ta983
																																																																																																																			ExtArray rgb
																																																																																																																			Let Ti984
																																																																																																																				Int:2
																																																																																																																				Let Td988
																																																																																																																					Let Td987
																																																																																																																						Let Ta985
																																																																																																																							ExtArray rgb
																																																																																																																							Let Ti986
																																																																																																																								Int:2
																																																																																																																								Get Ta985 Ti986
																																																																																																																						FAdd Td987 ihl
																																																																																																																					Put Ta983 Ti984 Td988
																																																																																																											LetRec trace_reflections index diffuse hilight_scale dirvec 
																																																																																																												Let Ti938
																																																																																																													Int:0
																																																																																																													IfLE Ti938 index
																																																																																																														Let rinfo
																																																																																																															Let Ta939
																																																																																																																ExtArray reflections
																																																																																																																Get Ta939 index
																																																																																																															Let dvec
																																																																																																																App r_dvecrinfo 
																																																																																																																Let Tu138
																																																																																																																	Let Tb940
																																																																																																																		App judge_intersection_fastdvec 
																																																																																																																		Let Ti941
																																																																																																																			Int:0
																																																																																																																			IfEq Tb940 Ti941
																																																																																																																				Unit
																																																																																																																				Let surface_id
																																																																																																																					Let Ti945
																																																																																																																						Let Ti944
																																																																																																																							Let Ta942
																																																																																																																								ExtArray intersected_object_id
																																																																																																																								Let Ti943
																																																																																																																									Int:0
																																																																																																																									Get Ta942 Ti943
																																																																																																																							ShiftL2 Ti944
																																																																																																																						Let Ti948
																																																																																																																							Let Ta946
																																																																																																																								ExtArray intsec_rectside
																																																																																																																								Let Ti947
																																																																																																																									Int:0
																																																																																																																									Get Ta946 Ti947
																																																																																																																							Add Ti945 Ti948
																																																																																																																					Let Ti949
																																																																																																																						App r_surface_idrinfo 
																																																																																																																						IfEq surface_id Ti949
																																																																																																																							Let Tb954
																																																																																																																								Let Ti950
																																																																																																																									Int:0
																																																																																																																									Let Ta953
																																																																																																																										Let Ta951
																																																																																																																											ExtArray or_net
																																																																																																																											Let Ti952
																																																																																																																												Int:0
																																																																																																																												Get Ta951 Ti952
																																																																																																																										App shadow_check_one_or_matrixTi950 Ta953 
																																																																																																																								Let Ti955
																																																																																																																									Int:0
																																																																																																																									IfEq Tb954 Ti955
																																																																																																																										Let p
																																																																																																																											Let Ta956
																																																																																																																												ExtArray nvector
																																																																																																																												Let Ta957
																																																																																																																													App d_vecdvec 
																																																																																																																													App veciprodTa956 Ta957 
																																																																																																																											Let scale
																																																																																																																												App r_brightrinfo 
																																																																																																																												Let bright
																																																																																																																													Let Td958
																																																																																																																														FMul scale diffuse
																																																																																																																														FMul Td958 p
																																																																																																																													Let hilight
																																																																																																																														Let Td960
																																																																																																																															Let Ta959
																																																																																																																																App d_vecdvec 
																																																																																																																																App veciproddirvec Ta959 
																																																																																																																															FMul scale Td960
																																																																																																																														App add_lightbright hilight hilight_scale 
																																																																																																																										Unit
																																																																																																																							Unit
																																																																																																																	Let Ti962
																																																																																																																		Let Ti961
																																																																																																																			Int:1
																																																																																																																			Sub index Ti961
																																																																																																																		App trace_reflectionsTi962 diffuse hilight_scale dirvec 
																																																																																																														Unit
																																																																																																												LetRec trace_ray nref energy dirvec pixel dist 
																																																																																																													Let Ti833
																																																																																																														Int:4
																																																																																																														IfLE nref Ti833
																																																																																																															Let surface_ids
																																																																																																																App p_surface_idspixel 
																																																																																																																Let Tb834
																																																																																																																	App judge_intersectiondirvec 
																																																																																																																	Let Ti835
																																																																																																																		Int:0
																																																																																																																		IfEq Tb834 Ti835
																																																																																																																			Let Tu155
																																																																																																																				Let Ti837
																																																																																																																					Let Ti836
																																																																																																																						Int:1
																																																																																																																						Neg Ti836
																																																																																																																					Put surface_ids nref Ti837
																																																																																																																				Let Ti838
																																																																																																																					Int:0
																																																																																																																					IfEq nref Ti838
																																																																																																																						Unit
																																																																																																																						Let hl
																																																																																																																							Let Td840
																																																																																																																								Let Ta839
																																																																																																																									ExtArray light
																																																																																																																									App veciproddirvec Ta839 
																																																																																																																								ExtFunApp fneg Td840,
																																																																																																																							Let Tb841
																																																																																																																								ExtFunApp fispos hl,
																																																																																																																								Let Ti842
																																																																																																																									Int:0
																																																																																																																									IfEq Tb841 Ti842
																																																																																																																										Unit
																																																																																																																										Let ihl
																																																																																																																											Let Td845
																																																																																																																												Let Td844
																																																																																																																													Let Td843
																																																																																																																														ExtFunApp fsqr hl,
																																																																																																																														FMul Td843 hl
																																																																																																																													FMul Td844 energy
																																																																																																																												Let Td848
																																																																																																																													Let Ta846
																																																																																																																														ExtArray beam
																																																																																																																														Let Ti847
																																																																																																																															Int:0
																																																																																																																															Get Ta846 Ti847
																																																																																																																													FMul Td845 Td848
																																																																																																																											Let Tu154
																																																																																																																												Let Ta849
																																																																																																																													ExtArray rgb
																																																																																																																													Let Ti850
																																																																																																																														Int:0
																																																																																																																														Let Td854
																																																																																																																															Let Td853
																																																																																																																																Let Ta851
																																																																																																																																	ExtArray rgb
																																																																																																																																	Let Ti852
																																																																																																																																		Int:0
																																																																																																																																		Get Ta851 Ti852
																																																																																																																																FAdd Td853 ihl
																																																																																																																															Put Ta849 Ti850 Td854
																																																																																																																												Let Tu153
																																																																																																																													Let Ta855
																																																																																																																														ExtArray rgb
																																																																																																																														Let Ti856
																																																																																																																															Int:1
																																																																																																																															Let Td860
																																																																																																																																Let Td859
																																																																																																																																	Let Ta857
																																																																																																																																		ExtArray rgb
																																																																																																																																		Let Ti858
																																																																																																																																			Int:1
																																																																																																																																			Get Ta857 Ti858
																																																																																																																																	FAdd Td859 ihl
																																																																																																																																Put Ta855 Ti856 Td860
																																																																																																																													Let Ta861
																																																																																																																														ExtArray rgb
																																																																																																																														Let Ti862
																																																																																																																															Int:2
																																																																																																																															Let Td866
																																																																																																																																Let Td865
																																																																																																																																	Let Ta863
																																																																																																																																		ExtArray rgb
																																																																																																																																		Let Ti864
																																																																																																																																			Int:2
																																																																																																																																			Get Ta863 Ti864
																																																																																																																																	FAdd Td865 ihl
																																																																																																																																Put Ta861 Ti862 Td866
																																																																																																																			Let obj_id
																																																																																																																				Let Ta867
																																																																																																																					ExtArray intersected_object_id
																																																																																																																					Let Ti868
																																																																																																																						Int:0
																																																																																																																						Get Ta867 Ti868
																																																																																																																				Let obj
																																																																																																																					Let Ta869
																																																																																																																						ExtArray objects
																																																																																																																						Get Ta869 obj_id
																																																																																																																					Let m_surface
																																																																																																																						App o_reflectiontypeobj 
																																																																																																																						Let diffuse
																																																																																																																							Let Td870
																																																																																																																								App o_diffuseobj 
																																																																																																																								FMul Td870 energy
																																																																																																																							Let Tu152
																																																																																																																								App get_nvectorobj dirvec 
																																																																																																																								Let Tu151
																																																																																																																									Let Ta871
																																																																																																																										ExtArray startp
																																																																																																																										Let Ta872
																																																																																																																											ExtArray intersection_point
																																																																																																																											App veccpyTa871 Ta872 
																																																																																																																									Let Tu150
																																																																																																																										Let Ta873
																																																																																																																											ExtArray intersection_point
																																																																																																																											App utextureobj Ta873 
																																																																																																																										Let Tu149
																																																																																																																											Let Ti878
																																																																																																																												Let Ti874
																																																																																																																													ShiftL2 obj_id
																																																																																																																													Let Ti877
																																																																																																																														Let Ta875
																																																																																																																															ExtArray intsec_rectside
																																																																																																																															Let Ti876
																																																																																																																																Int:0
																																																																																																																																Get Ta875 Ti876
																																																																																																																														Add Ti874 Ti877
																																																																																																																												Put surface_ids nref Ti878
																																																																																																																											Let intersection_points
																																																																																																																												App p_intersection_pointspixel 
																																																																																																																												Let Tu148
																																																																																																																													Let Ta879
																																																																																																																														Get intersection_points nref
																																																																																																																														Let Ta880
																																																																																																																															ExtArray intersection_point
																																																																																																																															App veccpyTa879 Ta880 
																																																																																																																													Let calc_diffuse
																																																																																																																														App p_calc_diffusepixel 
																																																																																																																														Let Tu147
																																																																																																																															Let Tb883
																																																																																																																																Let Td881
																																																																																																																																	App o_diffuseobj 
																																																																																																																																	Let Td882
																																																																																																																																		Float:0.500000
																																																																																																																																		ExtFunApp fless Td881,Td882,
																																																																																																																																Let Ti884
																																																																																																																																	Int:0
																																																																																																																																	IfEq Tb883 Ti884
																																																																																																																																		Let Tu141
																																																																																																																																			Let Ti885
																																																																																																																																				Int:1
																																																																																																																																				Put calc_diffuse nref Ti885
																																																																																																																																			Let energya
																																																																																																																																				App p_energypixel 
																																																																																																																																				Let Tu140
																																																																																																																																					Let Ta886
																																																																																																																																						Get energya nref
																																																																																																																																						Let Ta887
																																																																																																																																							ExtArray texture_color
																																																																																																																																							App veccpyTa886 Ta887 
																																																																																																																																					Let Tu139
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
																																																																																																																																									ExtArray nvector
																																																																																																																																									App veccpyTa894 Ta895 
																																																																																																																																		Let Ti896
																																																																																																																																			Int:0
																																																																																																																																			Put calc_diffuse nref Ti896
																																																																																																																															Let w
																																																																																																																																Let Td897
																																																																																																																																	Float:-2.000000
																																																																																																																																	Let Td899
																																																																																																																																		Let Ta898
																																																																																																																																			ExtArray nvector
																																																																																																																																			App veciproddirvec Ta898 
																																																																																																																																		FMul Td897 Td899
																																																																																																																																Let Tu146
																																																																																																																																	Let Ta900
																																																																																																																																		ExtArray nvector
																																																																																																																																		App vecaccumdirvec w Ta900 
																																																																																																																																	Let hilight_scale
																																																																																																																																		Let Td901
																																																																																																																																			App o_hilightobj 
																																																																																																																																			FMul energy Td901
																																																																																																																																		Let Tu145
																																																																																																																																			Let Tb906
																																																																																																																																				Let Ti902
																																																																																																																																					Int:0
																																																																																																																																					Let Ta905
																																																																																																																																						Let Ta903
																																																																																																																																							ExtArray or_net
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
																																																																																																																																										ExtArray nvector
																																																																																																																																										Let Ta909
																																																																																																																																											ExtArray light
																																																																																																																																											App veciprodTa908 Ta909 
																																																																																																																																									ExtFunApp fneg Td910,
																																																																																																																																								FMul Td911 diffuse
																																																																																																																																							Let hilight
																																																																																																																																								Let Td913
																																																																																																																																									Let Ta912
																																																																																																																																										ExtArray light
																																																																																																																																										App veciproddirvec Ta912 
																																																																																																																																									ExtFunApp fneg Td913,
																																																																																																																																								App add_lightbright hilight hilight_scale 
																																																																																																																																						Unit
																																																																																																																																			Let Tu144
																																																																																																																																				Let Ta914
																																																																																																																																					ExtArray intersection_point
																																																																																																																																					App setup_startpTa914 
																																																																																																																																				Let Tu143
																																																																																																																																					Let Ti919
																																																																																																																																						Let Ti917
																																																																																																																																							Let Ta915
																																																																																																																																								ExtArray n_reflections
																																																																																																																																								Let Ti916
																																																																																																																																									Int:0
																																																																																																																																									Get Ta915 Ti916
																																																																																																																																							Let Ti918
																																																																																																																																								Int:1
																																																																																																																																								Sub Ti917 Ti918
																																																																																																																																						App trace_reflectionsTi919 diffuse hilight_scale dirvec 
																																																																																																																																					Let Tb921
																																																																																																																																						Let Td920
																																																																																																																																							Float:0.100000
																																																																																																																																							ExtFunApp fless Td920,energy,
																																																																																																																																						Let Ti922
																																																																																																																																							Int:0
																																																																																																																																							IfEq Tb921 Ti922
																																																																																																																																								Unit
																																																																																																																																								Let Tu142
																																																																																																																																									Let Ti923
																																																																																																																																										Int:4
																																																																																																																																										IfLE Ti923 nref
																																																																																																																																											Unit
																																																																																																																																											Let Ti925
																																																																																																																																												Let Ti924
																																																																																																																																													Int:1
																																																																																																																																													Add nref Ti924
																																																																																																																																												Let Ti927
																																																																																																																																													Let Ti926
																																																																																																																																														Int:1
																																																																																																																																														Neg Ti926
																																																																																																																																													Put surface_ids Ti925 Ti927
																																																																																																																																									Let Ti928
																																																																																																																																										Int:2
																																																																																																																																										IfEq m_surface Ti928
																																																																																																																																											Let energy2
																																																																																																																																												Let Td931
																																																																																																																																													Let Td929
																																																																																																																																														Float:1.000000
																																																																																																																																														Let Td930
																																																																																																																																															App o_diffuseobj 
																																																																																																																																															FSub Td929 Td930
																																																																																																																																													FMul energy Td931
																																																																																																																																												Let Ti933
																																																																																																																																													Let Ti932
																																																																																																																																														Int:1
																																																																																																																																														Add nref Ti932
																																																																																																																																													Let Td937
																																																																																																																																														Let Td936
																																																																																																																																															Let Ta934
																																																																																																																																																ExtArray tmin
																																																																																																																																																Let Ti935
																																																																																																																																																	Int:0
																																																																																																																																																	Get Ta934 Ti935
																																																																																																																																															FAdd dist Td936
																																																																																																																																														App trace_rayTi933 energy2 dirvec pixel Td937 
																																																																																																																																											Unit
																																																																																																															Unit
																																																																																																													LetRec trace_diffuse_ray dirvec energy 
																																																																																																														Let Tb809
																																																																																																															App judge_intersection_fastdirvec 
																																																																																																															Let Ti810
																																																																																																																Int:0
																																																																																																																IfEq Tb809 Ti810
																																																																																																																	Unit
																																																																																																																	Let obj
																																																																																																																		Let Ta811
																																																																																																																			ExtArray objects
																																																																																																																			Let Ti814
																																																																																																																				Let Ta812
																																																																																																																					ExtArray intersected_object_id
																																																																																																																					Let Ti813
																																																																																																																						Int:0
																																																																																																																						Get Ta812 Ti813
																																																																																																																				Get Ta811 Ti814
																																																																																																																		Let Tu157
																																																																																																																			Let Ta815
																																																																																																																				App d_vecdirvec 
																																																																																																																				App get_nvectorobj Ta815 
																																																																																																																			Let Tu156
																																																																																																																				Let Ta816
																																																																																																																					ExtArray intersection_point
																																																																																																																					App utextureobj Ta816 
																																																																																																																				Let Tb821
																																																																																																																					Let Ti817
																																																																																																																						Int:0
																																																																																																																						Let Ta820
																																																																																																																							Let Ta818
																																																																																																																								ExtArray or_net
																																																																																																																								Let Ti819
																																																																																																																									Int:0
																																																																																																																									Get Ta818 Ti819
																																																																																																																							App shadow_check_one_or_matrixTi817 Ta820 
																																																																																																																					Let Ti822
																																																																																																																						Int:0
																																																																																																																						IfEq Tb821 Ti822
																																																																																																																							Let br
																																																																																																																								Let Td825
																																																																																																																									Let Ta823
																																																																																																																										ExtArray nvector
																																																																																																																										Let Ta824
																																																																																																																											ExtArray light
																																																																																																																											App veciprodTa823 Ta824 
																																																																																																																									ExtFunApp fneg Td825,
																																																																																																																								Let bright
																																																																																																																									Let Tb826
																																																																																																																										ExtFunApp fispos br,
																																																																																																																										Let Ti827
																																																																																																																											Int:0
																																																																																																																											IfEq Tb826 Ti827
																																																																																																																												Float:0.000000
																																																																																																																												Var br
																																																																																																																									Let Ta828
																																																																																																																										ExtArray diffuse_ray
																																																																																																																										Let Td831
																																																																																																																											Let Td829
																																																																																																																												FMul energy bright
																																																																																																																												Let Td830
																																																																																																																													App o_diffuseobj 
																																																																																																																													FMul Td829 Td830
																																																																																																																											Let Ta832
																																																																																																																												ExtArray texture_color
																																																																																																																												App vecaccumTa828 Td831 Ta832 
																																																																																																																							Unit
																																																																																																														LetRec iter_trace_diffuse_rays dirvec_group nvector org index 
																																																																																																															Let Ti792
																																																																																																																Int:0
																																																																																																																IfLE Ti792 index
																																																																																																																	Let p
																																																																																																																		Let Ta794
																																																																																																																			Let Tt793
																																																																																																																				Get dirvec_group index
																																																																																																																				App d_vecTt793 
																																																																																																																			App veciprodTa794 nvector 
																																																																																																																		Let Tu158
																																																																																																																			Let Tb795
																																																																																																																				ExtFunApp fisneg p,
																																																																																																																				Let Ti796
																																																																																																																					Int:0
																																																																																																																					IfEq Tb795 Ti796
																																																																																																																						Let Tt797
																																																																																																																							Get dirvec_group index
																																																																																																																							Let Td800
																																																																																																																								Let Td798
																																																																																																																									Float:150.000000
																																																																																																																									Let Td799
																																																																																																																										FReciprocal Td798
																																																																																																																										FMul p Td799
																																																																																																																								App trace_diffuse_rayTt797 Td800 
																																																																																																																						Let Tt803
																																																																																																																							Let Ti802
																																																																																																																								Let Ti801
																																																																																																																									Int:1
																																																																																																																									Add index Ti801
																																																																																																																								Get dirvec_group Ti802
																																																																																																																							Let Td806
																																																																																																																								Let Td804
																																																																																																																									Float:-150.000000
																																																																																																																									Let Td805
																																																																																																																										FReciprocal Td804
																																																																																																																										FMul p Td805
																																																																																																																								App trace_diffuse_rayTt803 Td806 
																																																																																																																			Let Ti808
																																																																																																																				Let Ti807
																																																																																																																					Int:2
																																																																																																																					Sub index Ti807
																																																																																																																				App iter_trace_diffuse_raysdirvec_group nvector org Ti808 
																																																																																																																	Unit
																																																																																																															LetRec trace_diffuse_rays dirvec_group nvector org 
																																																																																																																Let Tu159
																																																																																																																	App setup_startporg 
																																																																																																																	Let Ti791
																																																																																																																		Int:118
																																																																																																																		App iter_trace_diffuse_raysdirvec_group nvector org Ti791 
																																																																																																																LetRec trace_diffuse_ray_80percent group_id nvector org 
																																																																																																																	Let Tu163
																																																																																																																		Let Ti771
																																																																																																																			Int:0
																																																																																																																			IfEq group_id Ti771
																																																																																																																				Unit
																																																																																																																				Let Ta774
																																																																																																																					Let Ta772
																																																																																																																						ExtArray dirvecs
																																																																																																																						Let Ti773
																																																																																																																							Int:0
																																																																																																																							Get Ta772 Ti773
																																																																																																																					App trace_diffuse_raysTa774 nvector org 
																																																																																																																		Let Tu162
																																																																																																																			Let Ti775
																																																																																																																				Int:1
																																																																																																																				IfEq group_id Ti775
																																																																																																																					Unit
																																																																																																																					Let Ta778
																																																																																																																						Let Ta776
																																																																																																																							ExtArray dirvecs
																																																																																																																							Let Ti777
																																																																																																																								Int:1
																																																																																																																								Get Ta776 Ti777
																																																																																																																						App trace_diffuse_raysTa778 nvector org 
																																																																																																																			Let Tu161
																																																																																																																				Let Ti779
																																																																																																																					Int:2
																																																																																																																					IfEq group_id Ti779
																																																																																																																						Unit
																																																																																																																						Let Ta782
																																																																																																																							Let Ta780
																																																																																																																								ExtArray dirvecs
																																																																																																																								Let Ti781
																																																																																																																									Int:2
																																																																																																																									Get Ta780 Ti781
																																																																																																																							App trace_diffuse_raysTa782 nvector org 
																																																																																																																				Let Tu160
																																																																																																																					Let Ti783
																																																																																																																						Int:3
																																																																																																																						IfEq group_id Ti783
																																																																																																																							Unit
																																																																																																																							Let Ta786
																																																																																																																								Let Ta784
																																																																																																																									ExtArray dirvecs
																																																																																																																									Let Ti785
																																																																																																																										Int:3
																																																																																																																										Get Ta784 Ti785
																																																																																																																								App trace_diffuse_raysTa786 nvector org 
																																																																																																																					Let Ti787
																																																																																																																						Int:4
																																																																																																																						IfEq group_id Ti787
																																																																																																																							Unit
																																																																																																																							Let Ta790
																																																																																																																								Let Ta788
																																																																																																																									ExtArray dirvecs
																																																																																																																									Let Ti789
																																																																																																																										Int:4
																																																																																																																										Get Ta788 Ti789
																																																																																																																								App trace_diffuse_raysTa790 nvector org 
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
																																																																																																																							Let Ta763
																																																																																																																								ExtArray diffuse_ray
																																																																																																																								Let Ta764
																																																																																																																									Get ray20p nref
																																																																																																																									App veccpyTa763 Ta764 
																																																																																																																							Let Tu164
																																																																																																																								Let Ti765
																																																																																																																									App p_group_idpixel 
																																																																																																																									Let Ta766
																																																																																																																										Get nvectors nref
																																																																																																																										Let Ta767
																																																																																																																											Get intersection_points nref
																																																																																																																											App trace_diffuse_ray_80percentTi765 Ta766 Ta767 
																																																																																																																								Let Ta768
																																																																																																																									ExtArray rgb
																																																																																																																									Let Ta769
																																																																																																																										Get energya nref
																																																																																																																										Let Ta770
																																																																																																																											ExtArray diffuse_ray
																																																																																																																											App vecaccumvTa768 Ta769 Ta770 
																																																																																																																		LetRec calc_diffuse_using_5points x prev cur next nref 
																																																																																																																			Let r_up
																																																																																																																				Let Tt740
																																																																																																																					Get prev x
																																																																																																																					App p_received_ray_20percentTt740 
																																																																																																																				Let r_left
																																																																																																																					Let Tt743
																																																																																																																						Let Ti742
																																																																																																																							Let Ti741
																																																																																																																								Int:1
																																																																																																																								Sub x Ti741
																																																																																																																							Get cur Ti742
																																																																																																																						App p_received_ray_20percentTt743 
																																																																																																																					Let r_center
																																																																																																																						Let Tt744
																																																																																																																							Get cur x
																																																																																																																							App p_received_ray_20percentTt744 
																																																																																																																						Let r_right
																																																																																																																							Let Tt747
																																																																																																																								Let Ti746
																																																																																																																									Let Ti745
																																																																																																																										Int:1
																																																																																																																										Add x Ti745
																																																																																																																									Get cur Ti746
																																																																																																																								App p_received_ray_20percentTt747 
																																																																																																																							Let r_down
																																																																																																																								Let Tt748
																																																																																																																									Get next x
																																																																																																																									App p_received_ray_20percentTt748 
																																																																																																																								Let Tu170
																																																																																																																									Let Ta749
																																																																																																																										ExtArray diffuse_ray
																																																																																																																										Let Ta750
																																																																																																																											Get r_up nref
																																																																																																																											App veccpyTa749 Ta750 
																																																																																																																									Let Tu169
																																																																																																																										Let Ta751
																																																																																																																											ExtArray diffuse_ray
																																																																																																																											Let Ta752
																																																																																																																												Get r_left nref
																																																																																																																												App vecaddTa751 Ta752 
																																																																																																																										Let Tu168
																																																																																																																											Let Ta753
																																																																																																																												ExtArray diffuse_ray
																																																																																																																												Let Ta754
																																																																																																																													Get r_center nref
																																																																																																																													App vecaddTa753 Ta754 
																																																																																																																											Let Tu167
																																																																																																																												Let Ta755
																																																																																																																													ExtArray diffuse_ray
																																																																																																																													Let Ta756
																																																																																																																														Get r_right nref
																																																																																																																														App vecaddTa755 Ta756 
																																																																																																																												Let Tu166
																																																																																																																													Let Ta757
																																																																																																																														ExtArray diffuse_ray
																																																																																																																														Let Ta758
																																																																																																																															Get r_down nref
																																																																																																																															App vecaddTa757 Ta758 
																																																																																																																													Let energya
																																																																																																																														Let Tt759
																																																																																																																															Get cur x
																																																																																																																															App p_energyTt759 
																																																																																																																														Let Ta760
																																																																																																																															ExtArray rgb
																																																																																																																															Let Ta761
																																																																																																																																Get energya nref
																																																																																																																																Let Ta762
																																																																																																																																	ExtArray diffuse_ray
																																																																																																																																	App vecaccumvTa760 Ta761 Ta762 
																																																																																																																			LetRec do_without_neighbors pixel nref 
																																																																																																																				Let Ti733
																																																																																																																					Int:4
																																																																																																																					IfLE nref Ti733
																																																																																																																						Let surface_ids
																																																																																																																							App p_surface_idspixel 
																																																																																																																							Let Ti734
																																																																																																																								Int:0
																																																																																																																								Let Ti735
																																																																																																																									Get surface_ids nref
																																																																																																																									IfLE Ti734 Ti735
																																																																																																																										Let calc_diffuse
																																																																																																																											App p_calc_diffusepixel 
																																																																																																																											Let Tu171
																																																																																																																												Let Tb736
																																																																																																																													Get calc_diffuse nref
																																																																																																																													Let Ti737
																																																																																																																														Int:0
																																																																																																																														IfEq Tb736 Ti737
																																																																																																																															Unit
																																																																																																																															App calc_diffuse_using_1pointpixel nref 
																																																																																																																												Let Ti739
																																																																																																																													Let Ti738
																																																																																																																														Int:1
																																																																																																																														Add nref Ti738
																																																																																																																													App do_without_neighborspixel Ti739 
																																																																																																																										Unit
																																																																																																																						Unit
																																																																																																																				LetRec neighbors_exist x y next 
																																																																																																																					Let Ti723
																																																																																																																						Let Ta721
																																																																																																																							ExtArray image_size
																																																																																																																							Let Ti722
																																																																																																																								Int:1
																																																																																																																								Get Ta721 Ti722
																																																																																																																						Let Ti725
																																																																																																																							Let Ti724
																																																																																																																								Int:1
																																																																																																																								Add y Ti724
																																																																																																																							IfLE Ti723 Ti725
																																																																																																																								Int:0
																																																																																																																								Let Ti726
																																																																																																																									Int:0
																																																																																																																									IfLE y Ti726
																																																																																																																										Int:0
																																																																																																																										Let Ti729
																																																																																																																											Let Ta727
																																																																																																																												ExtArray image_size
																																																																																																																												Let Ti728
																																																																																																																													Int:0
																																																																																																																													Get Ta727 Ti728
																																																																																																																											Let Ti731
																																																																																																																												Let Ti730
																																																																																																																													Int:1
																																																																																																																													Add x Ti730
																																																																																																																												IfLE Ti729 Ti731
																																																																																																																													Int:0
																																																																																																																													Let Ti732
																																																																																																																														Int:0
																																																																																																																														IfLE x Ti732
																																																																																																																															Int:0
																																																																																																																															Int:1
																																																																																																																					LetRec get_surface_id pixel index 
																																																																																																																						Let surface_ids
																																																																																																																							App p_surface_idspixel 
																																																																																																																							Get surface_ids index
																																																																																																																						LetRec neighbors_are_available x prev cur next nref 
																																																																																																																							Let sid_center
																																																																																																																								Let Tt708
																																																																																																																									Get cur x
																																																																																																																									App get_surface_idTt708 nref 
																																																																																																																								Let Ti710
																																																																																																																									Let Tt709
																																																																																																																										Get prev x
																																																																																																																										App get_surface_idTt709 nref 
																																																																																																																									IfEq Ti710 sid_center
																																																																																																																										Let Ti712
																																																																																																																											Let Tt711
																																																																																																																												Get next x
																																																																																																																												App get_surface_idTt711 nref 
																																																																																																																											IfEq Ti712 sid_center
																																																																																																																												Let Ti716
																																																																																																																													Let Tt715
																																																																																																																														Let Ti714
																																																																																																																															Let Ti713
																																																																																																																																Int:1
																																																																																																																																Sub x Ti713
																																																																																																																															Get cur Ti714
																																																																																																																														App get_surface_idTt715 nref 
																																																																																																																													IfEq Ti716 sid_center
																																																																																																																														Let Ti720
																																																																																																																															Let Tt719
																																																																																																																																Let Ti718
																																																																																																																																	Let Ti717
																																																																																																																																		Int:1
																																																																																																																																		Add x Ti717
																																																																																																																																	Get cur Ti718
																																																																																																																																App get_surface_idTt719 nref 
																																																																																																																															IfEq Ti720 sid_center
																																																																																																																																Int:1
																																																																																																																																Int:0
																																																																																																																														Int:0
																																																																																																																												Int:0
																																																																																																																										Int:0
																																																																																																																							LetRec try_exploit_neighbors x y prev cur next nref 
																																																																																																																								Let pixel
																																																																																																																									Get cur x
																																																																																																																									Let Ti698
																																																																																																																										Int:4
																																																																																																																										IfLE nref Ti698
																																																																																																																											Let Ti699
																																																																																																																												Int:0
																																																																																																																												Let Ti700
																																																																																																																													App get_surface_idpixel nref 
																																																																																																																													IfLE Ti699 Ti700
																																																																																																																														Let Tb701
																																																																																																																															App neighbors_are_availablex prev cur next nref 
																																																																																																																															Let Ti702
																																																																																																																																Int:0
																																																																																																																																IfEq Tb701 Ti702
																																																																																																																																	Let Tt703
																																																																																																																																		Get cur x
																																																																																																																																		App do_without_neighborsTt703 nref 
																																																																																																																																	Let calc_diffuse
																																																																																																																																		App p_calc_diffusepixel 
																																																																																																																																		Let Tu172
																																																																																																																																			Let Tb704
																																																																																																																																				Get calc_diffuse nref
																																																																																																																																				Let Ti705
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb704 Ti705
																																																																																																																																						Unit
																																																																																																																																						App calc_diffuse_using_5pointsx prev cur next nref 
																																																																																																																																			Let Ti707
																																																																																																																																				Let Ti706
																																																																																																																																					Int:1
																																																																																																																																					Add nref Ti706
																																																																																																																																				App try_exploit_neighborsx y prev cur next Ti707 
																																																																																																																														Unit
																																																																																																																											Unit
																																																																																																																								LetRec write_ppm_header Tu173 
																																																																																																																									Let Tu181
																																																																																																																										Let Ti683
																																																																																																																											Int:80
																																																																																																																											ExtFunApp print_char Ti683,
																																																																																																																										Let Tu180
																																																																																																																											Let Ti686
																																																																																																																												Let Ti684
																																																																																																																													Int:48
																																																																																																																													Let Ti685
																																																																																																																														Int:3
																																																																																																																														Add Ti684 Ti685
																																																																																																																												ExtFunApp print_char Ti686,
																																																																																																																											Let Tu179
																																																																																																																												Let Ti687
																																																																																																																													Int:10
																																																																																																																													ExtFunApp print_char Ti687,
																																																																																																																												Let Tu178
																																																																																																																													Let Ti690
																																																																																																																														Let Ta688
																																																																																																																															ExtArray image_size
																																																																																																																															Let Ti689
																																																																																																																																Int:0
																																																																																																																																Get Ta688 Ti689
																																																																																																																														ExtFunApp print_int Ti690,
																																																																																																																													Let Tu177
																																																																																																																														Let Ti691
																																																																																																																															Int:32
																																																																																																																															ExtFunApp print_char Ti691,
																																																																																																																														Let Tu176
																																																																																																																															Let Ti694
																																																																																																																																Let Ta692
																																																																																																																																	ExtArray image_size
																																																																																																																																	Let Ti693
																																																																																																																																		Int:1
																																																																																																																																		Get Ta692 Ti693
																																																																																																																																ExtFunApp print_int Ti694,
																																																																																																																															Let Tu175
																																																																																																																																Let Ti695
																																																																																																																																	Int:32
																																																																																																																																	ExtFunApp print_char Ti695,
																																																																																																																																Let Tu174
																																																																																																																																	Let Ti696
																																																																																																																																		Int:255
																																																																																																																																		ExtFunApp print_int Ti696,
																																																																																																																																	Let Ti697
																																																																																																																																		Int:10
																																																																																																																																		ExtFunApp print_char Ti697,
																																																																																																																									LetRec write_rgb_element x 
																																																																																																																										Let ix
																																																																																																																											ExtFunApp int_of_float x,
																																																																																																																											Let elem
																																																																																																																												Let Ti681
																																																																																																																													Int:255
																																																																																																																													IfLE ix Ti681
																																																																																																																														Let Ti682
																																																																																																																															Int:0
																																																																																																																															IfLE Ti682 ix
																																																																																																																																Var ix
																																																																																																																																Int:0
																																																																																																																														Int:255
																																																																																																																												ExtFunApp print_int elem,
																																																																																																																										LetRec write_rgb Tu182 
																																																																																																																											Let Tu187
																																																																																																																												Let Td671
																																																																																																																													Let Ta669
																																																																																																																														ExtArray rgb
																																																																																																																														Let Ti670
																																																																																																																															Int:0
																																																																																																																															Get Ta669 Ti670
																																																																																																																													App write_rgb_elementTd671 
																																																																																																																												Let Tu186
																																																																																																																													Let Ti672
																																																																																																																														Int:32
																																																																																																																														ExtFunApp print_char Ti672,
																																																																																																																													Let Tu185
																																																																																																																														Let Td675
																																																																																																																															Let Ta673
																																																																																																																																ExtArray rgb
																																																																																																																																Let Ti674
																																																																																																																																	Int:1
																																																																																																																																	Get Ta673 Ti674
																																																																																																																															App write_rgb_elementTd675 
																																																																																																																														Let Tu184
																																																																																																																															Let Ti676
																																																																																																																																Int:32
																																																																																																																																ExtFunApp print_char Ti676,
																																																																																																																															Let Tu183
																																																																																																																																Let Td679
																																																																																																																																	Let Ta677
																																																																																																																																		ExtArray rgb
																																																																																																																																		Let Ti678
																																																																																																																																			Int:2
																																																																																																																																			Get Ta677 Ti678
																																																																																																																																	App write_rgb_elementTd679 
																																																																																																																																Let Ti680
																																																																																																																																	Int:10
																																																																																																																																	ExtFunApp print_char Ti680,
																																																																																																																											LetRec pretrace_diffuse_rays pixel nref 
																																																																																																																												Let Ti656
																																																																																																																													Int:4
																																																																																																																													IfLE nref Ti656
																																																																																																																														Let sid
																																																																																																																															App get_surface_idpixel nref 
																																																																																																																															Let Ti657
																																																																																																																																Int:0
																																																																																																																																IfLE Ti657 sid
																																																																																																																																	Let calc_diffuse
																																																																																																																																		App p_calc_diffusepixel 
																																																																																																																																		Let Tu190
																																																																																																																																			Let Tb658
																																																																																																																																				Get calc_diffuse nref
																																																																																																																																				Let Ti659
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb658 Ti659
																																																																																																																																						Unit
																																																																																																																																						Let group_id
																																																																																																																																							App p_group_idpixel 
																																																																																																																																							Let Tu189
																																																																																																																																								Let Ta660
																																																																																																																																									ExtArray diffuse_ray
																																																																																																																																									App vecbzeroTa660 
																																																																																																																																								Let nvectors
																																																																																																																																									App p_nvectorspixel 
																																																																																																																																									Let intersection_points
																																																																																																																																										App p_intersection_pointspixel 
																																																																																																																																										Let Tu188
																																																																																																																																											Let Ta662
																																																																																																																																												Let Ta661
																																																																																																																																													ExtArray dirvecs
																																																																																																																																													Get Ta661 group_id
																																																																																																																																												Let Ta663
																																																																																																																																													Get nvectors nref
																																																																																																																																													Let Ta664
																																																																																																																																														Get intersection_points nref
																																																																																																																																														App trace_diffuse_raysTa662 Ta663 Ta664 
																																																																																																																																											Let ray20p
																																																																																																																																												App p_received_ray_20percentpixel 
																																																																																																																																												Let Ta665
																																																																																																																																													Get ray20p nref
																																																																																																																																													Let Ta666
																																																																																																																																														ExtArray diffuse_ray
																																																																																																																																														App veccpyTa665 Ta666 
																																																																																																																																			Let Ti668
																																																																																																																																				Let Ti667
																																																																																																																																					Int:1
																																																																																																																																					Add nref Ti667
																																																																																																																																				App pretrace_diffuse_rayspixel Ti668 
																																																																																																																																	Unit
																																																																																																																														Unit
																																																																																																																												LetRec pretrace_pixels line x group_id lc0 lc1 lc2 
																																																																																																																													Let Ti606
																																																																																																																														Int:0
																																																																																																																														IfLE Ti606 x
																																																																																																																															Let xdisp
																																																																																																																																Let Td609
																																																																																																																																	Let Ta607
																																																																																																																																		ExtArray scan_pitch
																																																																																																																																		Let Ti608
																																																																																																																																			Int:0
																																																																																																																																			Get Ta607 Ti608
																																																																																																																																	Let Td614
																																																																																																																																		Let Ti613
																																																																																																																																			Let Ti612
																																																																																																																																				Let Ta610
																																																																																																																																					ExtArray image_center
																																																																																																																																					Let Ti611
																																																																																																																																						Int:0
																																																																																																																																						Get Ta610 Ti611
																																																																																																																																				Sub x Ti612
																																																																																																																																			ExtFunApp float_of_int Ti613,
																																																																																																																																		FMul Td609 Td614
																																																																																																																																Let Tu200
																																																																																																																																	Let Ta615
																																																																																																																																		ExtArray ptrace_dirvec
																																																																																																																																		Let Ti616
																																																																																																																																			Int:0
																																																																																																																																			Let Td621
																																																																																																																																				Let Td620
																																																																																																																																					Let Td619
																																																																																																																																						Let Ta617
																																																																																																																																							ExtArray screenx_dir
																																																																																																																																							Let Ti618
																																																																																																																																								Int:0
																																																																																																																																								Get Ta617 Ti618
																																																																																																																																						FMul xdisp Td619
																																																																																																																																					FAdd Td620 lc0
																																																																																																																																				Put Ta615 Ti616 Td621
																																																																																																																																	Let Tu199
																																																																																																																																		Let Ta622
																																																																																																																																			ExtArray ptrace_dirvec
																																																																																																																																			Let Ti623
																																																																																																																																				Int:1
																																																																																																																																				Let Td628
																																																																																																																																					Let Td627
																																																																																																																																						Let Td626
																																																																																																																																							Let Ta624
																																																																																																																																								ExtArray screenx_dir
																																																																																																																																								Let Ti625
																																																																																																																																									Int:1
																																																																																																																																									Get Ta624 Ti625
																																																																																																																																							FMul xdisp Td626
																																																																																																																																						FAdd Td627 lc1
																																																																																																																																					Put Ta622 Ti623 Td628
																																																																																																																																		Let Tu198
																																																																																																																																			Let Ta629
																																																																																																																																				ExtArray ptrace_dirvec
																																																																																																																																				Let Ti630
																																																																																																																																					Int:2
																																																																																																																																					Let Td635
																																																																																																																																						Let Td634
																																																																																																																																							Let Td633
																																																																																																																																								Let Ta631
																																																																																																																																									ExtArray screenx_dir
																																																																																																																																									Let Ti632
																																																																																																																																										Int:2
																																																																																																																																										Get Ta631 Ti632
																																																																																																																																								FMul xdisp Td633
																																																																																																																																							FAdd Td634 lc2
																																																																																																																																						Put Ta629 Ti630 Td635
																																																																																																																																			Let Tu197
																																																																																																																																				Let Ta636
																																																																																																																																					ExtArray ptrace_dirvec
																																																																																																																																					Let Ti637
																																																																																																																																						Int:0
																																																																																																																																						App vecunit_sgnTa636 Ti637 
																																																																																																																																				Let Tu196
																																																																																																																																					Let Ta638
																																																																																																																																						ExtArray rgb
																																																																																																																																						App vecbzeroTa638 
																																																																																																																																					Let Tu195
																																																																																																																																						Let Ta639
																																																																																																																																							ExtArray startp
																																																																																																																																							Let Ta640
																																																																																																																																								ExtArray viewpoint
																																																																																																																																								App veccpyTa639 Ta640 
																																																																																																																																						Let Tu194
																																																																																																																																							Let Ti641
																																																																																																																																								Int:0
																																																																																																																																								Let Td642
																																																																																																																																									Float:1.000000
																																																																																																																																									Let Ta643
																																																																																																																																										ExtArray ptrace_dirvec
																																																																																																																																										Let Tt644
																																																																																																																																											Get line x
																																																																																																																																											Let Td645
																																																																																																																																												Float:0.000000
																																																																																																																																												App trace_rayTi641 Td642 Ta643 Tt644 Td645 
																																																																																																																																							Let Tu193
																																																																																																																																								Let Ta647
																																																																																																																																									Let Tt646
																																																																																																																																										Get line x
																																																																																																																																										App p_rgbTt646 
																																																																																																																																									Let Ta648
																																																																																																																																										ExtArray rgb
																																																																																																																																										App veccpyTa647 Ta648 
																																																																																																																																								Let Tu192
																																																																																																																																									Let Tt649
																																																																																																																																										Get line x
																																																																																																																																										App p_set_group_idTt649 group_id 
																																																																																																																																									Let Tu191
																																																																																																																																										Let Tt650
																																																																																																																																											Get line x
																																																																																																																																											Let Ti651
																																																																																																																																												Int:0
																																																																																																																																												App pretrace_diffuse_raysTt650 Ti651 
																																																																																																																																										Let Ti653
																																																																																																																																											Let Ti652
																																																																																																																																												Int:1
																																																																																																																																												Sub x Ti652
																																																																																																																																											Let Ti655
																																																																																																																																												Let Ti654
																																																																																																																																													Int:1
																																																																																																																																													App add_mod5group_id Ti654 
																																																																																																																																												App pretrace_pixelsline Ti653 Ti655 lc0 lc1 lc2 
																																																																																																																															Unit
																																																																																																																													LetRec pretrace_line line y group_id 
																																																																																																																														Let ydisp
																																																																																																																															Let Td574
																																																																																																																																Let Ta572
																																																																																																																																	ExtArray scan_pitch
																																																																																																																																	Let Ti573
																																																																																																																																		Int:0
																																																																																																																																		Get Ta572 Ti573
																																																																																																																																Let Td579
																																																																																																																																	Let Ti578
																																																																																																																																		Let Ti577
																																																																																																																																			Let Ta575
																																																																																																																																				ExtArray image_center
																																																																																																																																				Let Ti576
																																																																																																																																					Int:1
																																																																																																																																					Get Ta575 Ti576
																																																																																																																																			Sub y Ti577
																																																																																																																																		ExtFunApp float_of_int Ti578,
																																																																																																																																	FMul Td574 Td579
																																																																																																																															Let lc0
																																																																																																																																Let Td583
																																																																																																																																	Let Td582
																																																																																																																																		Let Ta580
																																																																																																																																			ExtArray screeny_dir
																																																																																																																																			Let Ti581
																																																																																																																																				Int:0
																																																																																																																																				Get Ta580 Ti581
																																																																																																																																		FMul ydisp Td582
																																																																																																																																	Let Td586
																																																																																																																																		Let Ta584
																																																																																																																																			ExtArray screenz_dir
																																																																																																																																			Let Ti585
																																																																																																																																				Int:0
																																																																																																																																				Get Ta584 Ti585
																																																																																																																																		FAdd Td583 Td586
																																																																																																																																Let lc1
																																																																																																																																	Let Td590
																																																																																																																																		Let Td589
																																																																																																																																			Let Ta587
																																																																																																																																				ExtArray screeny_dir
																																																																																																																																				Let Ti588
																																																																																																																																					Int:1
																																																																																																																																					Get Ta587 Ti588
																																																																																																																																			FMul ydisp Td589
																																																																																																																																		Let Td593
																																																																																																																																			Let Ta591
																																																																																																																																				ExtArray screenz_dir
																																																																																																																																				Let Ti592
																																																																																																																																					Int:1
																																																																																																																																					Get Ta591 Ti592
																																																																																																																																			FAdd Td590 Td593
																																																																																																																																	Let lc2
																																																																																																																																		Let Td597
																																																																																																																																			Let Td596
																																																																																																																																				Let Ta594
																																																																																																																																					ExtArray screeny_dir
																																																																																																																																					Let Ti595
																																																																																																																																						Int:2
																																																																																																																																						Get Ta594 Ti595
																																																																																																																																				FMul ydisp Td596
																																																																																																																																			Let Td600
																																																																																																																																				Let Ta598
																																																																																																																																					ExtArray screenz_dir
																																																																																																																																					Let Ti599
																																																																																																																																						Int:2
																																																																																																																																						Get Ta598 Ti599
																																																																																																																																				FAdd Td597 Td600
																																																																																																																																		Let Ti605
																																																																																																																																			Let Ti603
																																																																																																																																				Let Ta601
																																																																																																																																					ExtArray image_size
																																																																																																																																					Let Ti602
																																																																																																																																						Int:0
																																																																																																																																						Get Ta601 Ti602
																																																																																																																																				Let Ti604
																																																																																																																																					Int:1
																																																																																																																																					Sub Ti603 Ti604
																																																																																																																																			App pretrace_pixelsline Ti605 group_id lc0 lc1 lc2 
																																																																																																																														LetRec scan_pixel x y prev cur next 
																																																																																																																															Let Ti560
																																																																																																																																Let Ta558
																																																																																																																																	ExtArray image_size
																																																																																																																																	Let Ti559
																																																																																																																																		Int:0
																																																																																																																																		Get Ta558 Ti559
																																																																																																																																IfLE Ti560 x
																																																																																																																																	Unit
																																																																																																																																	Let Tu203
																																																																																																																																		Let Ta561
																																																																																																																																			ExtArray rgb
																																																																																																																																			Let Ta563
																																																																																																																																				Let Tt562
																																																																																																																																					Get cur x
																																																																																																																																					App p_rgbTt562 
																																																																																																																																				App veccpyTa561 Ta563 
																																																																																																																																		Let Tu202
																																																																																																																																			Let Tb564
																																																																																																																																				App neighbors_existx y next 
																																																																																																																																				Let Ti565
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb564 Ti565
																																																																																																																																						Let Tt566
																																																																																																																																							Get cur x
																																																																																																																																							Let Ti567
																																																																																																																																								Int:0
																																																																																																																																								App do_without_neighborsTt566 Ti567 
																																																																																																																																						Let Ti568
																																																																																																																																							Int:0
																																																																																																																																							App try_exploit_neighborsx y prev cur next Ti568 
																																																																																																																																			Let Tu201
																																																																																																																																				Let Tu569
																																																																																																																																					Unit
																																																																																																																																					App write_rgbTu569 
																																																																																																																																				Let Ti571
																																																																																																																																					Let Ti570
																																																																																																																																						Int:1
																																																																																																																																						Add x Ti570
																																																																																																																																					App scan_pixelTi571 y prev cur next 
																																																																																																																															LetRec scan_line y prev cur next group_id 
																																																																																																																																Let Ti545
																																																																																																																																	Let Ta543
																																																																																																																																		ExtArray image_size
																																																																																																																																		Let Ti544
																																																																																																																																			Int:1
																																																																																																																																			Get Ta543 Ti544
																																																																																																																																	IfLE Ti545 y
																																																																																																																																		Unit
																																																																																																																																		Let Tu205
																																																																																																																																			Let Ti550
																																																																																																																																				Let Ti548
																																																																																																																																					Let Ta546
																																																																																																																																						ExtArray image_size
																																																																																																																																						Let Ti547
																																																																																																																																							Int:1
																																																																																																																																							Get Ta546 Ti547
																																																																																																																																					Let Ti549
																																																																																																																																						Int:1
																																																																																																																																						Sub Ti548 Ti549
																																																																																																																																				IfLE Ti550 y
																																																																																																																																					Unit
																																																																																																																																					Let Ti552
																																																																																																																																						Let Ti551
																																																																																																																																							Int:1
																																																																																																																																							Add y Ti551
																																																																																																																																						App pretrace_linenext Ti552 group_id 
																																																																																																																																			Let Tu204
																																																																																																																																				Let Ti553
																																																																																																																																					Int:0
																																																																																																																																					App scan_pixelTi553 y prev cur next 
																																																																																																																																				Let Ti555
																																																																																																																																					Let Ti554
																																																																																																																																						Int:1
																																																																																																																																						Add y Ti554
																																																																																																																																					Let Ti557
																																																																																																																																						Let Ti556
																																																																																																																																							Int:2
																																																																																																																																							App add_mod5group_id Ti556 
																																																																																																																																						App scan_lineTi555 cur next prev Ti557 
																																																																																																																																LetRec create_float5x3array Tu206 
																																																																																																																																	Let vec
																																																																																																																																		Let Ti524
																																																																																																																																			Int:3
																																																																																																																																			Let Td525
																																																																																																																																				Float:0.000000
																																																																																																																																				ExtFunApp create_float_array Ti524,Td525,
																																																																																																																																		Let array
																																																																																																																																			Let Ti526
																																																																																																																																				Int:5
																																																																																																																																				ExtFunApp create_array Ti526,vec,
																																																																																																																																			Let Tu210
																																																																																																																																				Let Ti527
																																																																																																																																					Int:1
																																																																																																																																					Let Ta530
																																																																																																																																						Let Ti528
																																																																																																																																							Int:3
																																																																																																																																							Let Td529
																																																																																																																																								Float:0.000000
																																																																																																																																								ExtFunApp create_float_array Ti528,Td529,
																																																																																																																																						Put array Ti527 Ta530
																																																																																																																																				Let Tu209
																																																																																																																																					Let Ti531
																																																																																																																																						Int:2
																																																																																																																																						Let Ta534
																																																																																																																																							Let Ti532
																																																																																																																																								Int:3
																																																																																																																																								Let Td533
																																																																																																																																									Float:0.000000
																																																																																																																																									ExtFunApp create_float_array Ti532,Td533,
																																																																																																																																							Put array Ti531 Ta534
																																																																																																																																					Let Tu208
																																																																																																																																						Let Ti535
																																																																																																																																							Int:3
																																																																																																																																							Let Ta538
																																																																																																																																								Let Ti536
																																																																																																																																									Int:3
																																																																																																																																									Let Td537
																																																																																																																																										Float:0.000000
																																																																																																																																										ExtFunApp create_float_array Ti536,Td537,
																																																																																																																																								Put array Ti535 Ta538
																																																																																																																																						Let Tu207
																																																																																																																																							Let Ti539
																																																																																																																																								Int:4
																																																																																																																																								Let Ta542
																																																																																																																																									Let Ti540
																																																																																																																																										Int:3
																																																																																																																																										Let Td541
																																																																																																																																											Float:0.000000
																																																																																																																																											ExtFunApp create_float_array Ti540,Td541,
																																																																																																																																									Put array Ti539 Ta542
																																																																																																																																							Var array
																																																																																																																																	LetRec create_pixel Tu211 
																																																																																																																																		Let m_rgb
																																																																																																																																			Let Ti512
																																																																																																																																				Int:3
																																																																																																																																				Let Td513
																																																																																																																																					Float:0.000000
																																																																																																																																					ExtFunApp create_float_array Ti512,Td513,
																																																																																																																																			Let m_isect_ps
																																																																																																																																				Let Tu514
																																																																																																																																					Unit
																																																																																																																																					App create_float5x3arrayTu514 
																																																																																																																																				Let m_sids
																																																																																																																																					Let Ti515
																																																																																																																																						Int:5
																																																																																																																																						Let Ti516
																																																																																																																																							Int:0
																																																																																																																																							ExtFunApp create_array Ti515,Ti516,
																																																																																																																																					Let m_cdif
																																																																																																																																						Let Ti517
																																																																																																																																							Int:5
																																																																																																																																							Let Ti518
																																																																																																																																								Int:0
																																																																																																																																								ExtFunApp create_array Ti517,Ti518,
																																																																																																																																						Let m_engy
																																																																																																																																							Let Tu519
																																																																																																																																								Unit
																																																																																																																																								App create_float5x3arrayTu519 
																																																																																																																																							Let m_r20p
																																																																																																																																								Let Tu520
																																																																																																																																									Unit
																																																																																																																																									App create_float5x3arrayTu520 
																																																																																																																																								Let m_gid
																																																																																																																																									Let Ti521
																																																																																																																																										Int:1
																																																																																																																																										Let Ti522
																																																																																																																																											Int:0
																																																																																																																																											ExtFunApp create_array Ti521,Ti522,
																																																																																																																																									Let m_nvectors
																																																																																																																																										Let Tu523
																																																																																																																																											Unit
																																																																																																																																											App create_float5x3arrayTu523 
																																																																																																																																										Tuple (m_rgb,m_isect_ps,m_sids,m_cdif,m_engy,m_r20p,m_gid,m_nvectors,)
																																																																																																																																		LetRec init_line_elements line n 
																																																																																																																																			Let Ti507
																																																																																																																																				Int:0
																																																																																																																																				IfLE Ti507 n
																																																																																																																																					Let Tu212
																																																																																																																																						Let Tt509
																																																																																																																																							Let Tu508
																																																																																																																																								Unit
																																																																																																																																								App create_pixelTu508 
																																																																																																																																							Put line n Tt509
																																																																																																																																						Let Ti511
																																																																																																																																							Let Ti510
																																																																																																																																								Int:1
																																																																																																																																								Sub n Ti510
																																																																																																																																							App init_line_elementsline Ti511 
																																																																																																																																					Var line
																																																																																																																																			LetRec create_pixelline Tu213 
																																																																																																																																				Let line
																																																																																																																																					Let Ti499
																																																																																																																																						Let Ta497
																																																																																																																																							ExtArray image_size
																																																																																																																																							Let Ti498
																																																																																																																																								Int:0
																																																																																																																																								Get Ta497 Ti498
																																																																																																																																						Let Tt501
																																																																																																																																							Let Tu500
																																																																																																																																								Unit
																																																																																																																																								App create_pixelTu500 
																																																																																																																																							ExtFunApp create_array Ti499,Tt501,
																																																																																																																																					Let Ti506
																																																																																																																																						Let Ti504
																																																																																																																																							Let Ta502
																																																																																																																																								ExtArray image_size
																																																																																																																																								Let Ti503
																																																																																																																																									Int:0
																																																																																																																																									Get Ta502 Ti503
																																																																																																																																							Let Ti505
																																																																																																																																								Int:2
																																																																																																																																								Sub Ti504 Ti505
																																																																																																																																						App init_line_elementsline Ti506 
																																																																																																																																				LetRec tan x 
																																																																																																																																					Let Td494
																																																																																																																																						ExtFunApp sin x,
																																																																																																																																						Let Td495
																																																																																																																																							ExtFunApp cos x,
																																																																																																																																							Let Td496
																																																																																																																																								FReciprocal Td495
																																																																																																																																								FMul Td494 Td496
																																																																																																																																					LetRec adjust_position h ratio 
																																																																																																																																						Let l
																																																																																																																																							Let Td490
																																																																																																																																								Let Td488
																																																																																																																																									FMul h h
																																																																																																																																									Let Td489
																																																																																																																																										Float:0.100000
																																																																																																																																										FAdd Td488 Td489
																																																																																																																																								ExtFunApp sqrt Td490,
																																																																																																																																							Let tan_h
																																																																																																																																								Let Td491
																																																																																																																																									Float:1.000000
																																																																																																																																									Let Td492
																																																																																																																																										FReciprocal l
																																																																																																																																										FMul Td491 Td492
																																																																																																																																								Let theta_h
																																																																																																																																									ExtFunApp atan tan_h,
																																																																																																																																									Let tan_m
																																																																																																																																										Let Td493
																																																																																																																																											FMul theta_h ratio
																																																																																																																																											App tanTd493 
																																																																																																																																										FMul tan_m l
																																																																																																																																						LetRec calc_dirvec icount x y rx ry group_id index 
																																																																																																																																							Let Ti443
																																																																																																																																								Int:5
																																																																																																																																								IfLE Ti443 icount
																																																																																																																																									Let l
																																																																																																																																										Let Td448
																																																																																																																																											Let Td446
																																																																																																																																												Let Td444
																																																																																																																																													ExtFunApp fsqr x,
																																																																																																																																													Let Td445
																																																																																																																																														ExtFunApp fsqr y,
																																																																																																																																														FAdd Td444 Td445
																																																																																																																																												Let Td447
																																																																																																																																													Float:1.000000
																																																																																																																																													FAdd Td446 Td447
																																																																																																																																											ExtFunApp sqrt Td448,
																																																																																																																																										Let vx
																																																																																																																																											Let Td449
																																																																																																																																												FReciprocal l
																																																																																																																																												FMul x Td449
																																																																																																																																											Let vy
																																																																																																																																												Let Td450
																																																																																																																																													FReciprocal l
																																																																																																																																													FMul y Td450
																																																																																																																																												Let vz
																																																																																																																																													Let Td451
																																																																																																																																														Float:1.000000
																																																																																																																																														Let Td452
																																																																																																																																															FReciprocal l
																																																																																																																																															FMul Td451 Td452
																																																																																																																																													Let dgroup
																																																																																																																																														Let Ta453
																																																																																																																																															ExtArray dirvecs
																																																																																																																																															Get Ta453 group_id
																																																																																																																																														Let Tu218
																																																																																																																																															Let Ta455
																																																																																																																																																Let Tt454
																																																																																																																																																	Get dgroup index
																																																																																																																																																	App d_vecTt454 
																																																																																																																																																App vecsetTa455 vx vy vz 
																																																																																																																																															Let Tu217
																																																																																																																																																Let Ta459
																																																																																																																																																	Let Tt458
																																																																																																																																																		Let Ti457
																																																																																																																																																			Let Ti456
																																																																																																																																																				Int:40
																																																																																																																																																				Add index Ti456
																																																																																																																																																			Get dgroup Ti457
																																																																																																																																																		App d_vecTt458 
																																																																																																																																																	Let Td460
																																																																																																																																																		ExtFunApp fneg vy,
																																																																																																																																																		App vecsetTa459 vx vz Td460 
																																																																																																																																																Let Tu216
																																																																																																																																																	Let Ta464
																																																																																																																																																		Let Tt463
																																																																																																																																																			Let Ti462
																																																																																																																																																				Let Ti461
																																																																																																																																																					Int:80
																																																																																																																																																					Add index Ti461
																																																																																																																																																				Get dgroup Ti462
																																																																																																																																																			App d_vecTt463 
																																																																																																																																																		Let Td465
																																																																																																																																																			ExtFunApp fneg vx,
																																																																																																																																																			Let Td466
																																																																																																																																																				ExtFunApp fneg vy,
																																																																																																																																																				App vecsetTa464 vz Td465 Td466 
																																																																																																																																																	Let Tu215
																																																																																																																																																		Let Ta470
																																																																																																																																																			Let Tt469
																																																																																																																																																				Let Ti468
																																																																																																																																																					Let Ti467
																																																																																																																																																						Int:1
																																																																																																																																																						Add index Ti467
																																																																																																																																																					Get dgroup Ti468
																																																																																																																																																				App d_vecTt469 
																																																																																																																																																			Let Td471
																																																																																																																																																				ExtFunApp fneg vx,
																																																																																																																																																				Let Td472
																																																																																																																																																					ExtFunApp fneg vy,
																																																																																																																																																					Let Td473
																																																																																																																																																						ExtFunApp fneg vz,
																																																																																																																																																						App vecsetTa470 Td471 Td472 Td473 
																																																																																																																																																		Let Tu214
																																																																																																																																																			Let Ta477
																																																																																																																																																				Let Tt476
																																																																																																																																																					Let Ti475
																																																																																																																																																						Let Ti474
																																																																																																																																																							Int:41
																																																																																																																																																							Add index Ti474
																																																																																																																																																						Get dgroup Ti475
																																																																																																																																																					App d_vecTt476 
																																																																																																																																																				Let Td478
																																																																																																																																																					ExtFunApp fneg vx,
																																																																																																																																																					Let Td479
																																																																																																																																																						ExtFunApp fneg vz,
																																																																																																																																																						App vecsetTa477 Td478 Td479 vy 
																																																																																																																																																			Let Ta483
																																																																																																																																																				Let Tt482
																																																																																																																																																					Let Ti481
																																																																																																																																																						Let Ti480
																																																																																																																																																							Int:81
																																																																																																																																																							Add index Ti480
																																																																																																																																																						Get dgroup Ti481
																																																																																																																																																					App d_vecTt482 
																																																																																																																																																				Let Td484
																																																																																																																																																					ExtFunApp fneg vz,
																																																																																																																																																					App vecsetTa483 Td484 vx vy 
																																																																																																																																									Let x2
																																																																																																																																										App adjust_positiony rx 
																																																																																																																																										Let Ti486
																																																																																																																																											Let Ti485
																																																																																																																																												Int:1
																																																																																																																																												Add icount Ti485
																																																																																																																																											Let Td487
																																																																																																																																												App adjust_positionx2 ry 
																																																																																																																																												App calc_dirvecTi486 x2 Td487 rx ry group_id index 
																																																																																																																																							LetRec calc_dirvecs col ry group_id index 
																																																																																																																																								Let Ti422
																																																																																																																																									Int:0
																																																																																																																																									IfLE Ti422 col
																																																																																																																																										Let rx
																																																																																																																																											Let Td425
																																																																																																																																												Let Td423
																																																																																																																																													ExtFunApp float_of_int col,
																																																																																																																																													Let Td424
																																																																																																																																														Float:0.200000
																																																																																																																																														FMul Td423 Td424
																																																																																																																																												Let Td426
																																																																																																																																													Float:0.900000
																																																																																																																																													FSub Td425 Td426
																																																																																																																																											Let Tu220
																																																																																																																																												Let Ti427
																																																																																																																																													Int:0
																																																																																																																																													Let Td428
																																																																																																																																														Float:0.000000
																																																																																																																																														Let Td429
																																																																																																																																															Float:0.000000
																																																																																																																																															App calc_dirvecTi427 Td428 Td429 rx ry group_id index 
																																																																																																																																												Let rx2
																																																																																																																																													Let Td432
																																																																																																																																														Let Td430
																																																																																																																																															ExtFunApp float_of_int col,
																																																																																																																																															Let Td431
																																																																																																																																																Float:0.200000
																																																																																																																																																FMul Td430 Td431
																																																																																																																																														Let Td433
																																																																																																																																															Float:0.100000
																																																																																																																																															FAdd Td432 Td433
																																																																																																																																													Let Tu219
																																																																																																																																														Let Ti434
																																																																																																																																															Int:0
																																																																																																																																															Let Td435
																																																																																																																																																Float:0.000000
																																																																																																																																																Let Td436
																																																																																																																																																	Float:0.000000
																																																																																																																																																	Let Ti438
																																																																																																																																																		Let Ti437
																																																																																																																																																			Int:2
																																																																																																																																																			Add index Ti437
																																																																																																																																																		App calc_dirvecTi434 Td435 Td436 rx2 ry group_id Ti438 
																																																																																																																																														Let Ti440
																																																																																																																																															Let Ti439
																																																																																																																																																Int:1
																																																																																																																																																Sub col Ti439
																																																																																																																																															Let Ti442
																																																																																																																																																Let Ti441
																																																																																																																																																	Int:1
																																																																																																																																																	App add_mod5group_id Ti441 
																																																																																																																																																App calc_dirvecsTi440 ry Ti442 index 
																																																																																																																																										Unit
																																																																																																																																								LetRec calc_dirvec_rows row group_id index 
																																																																																																																																									Let Ti410
																																																																																																																																										Int:0
																																																																																																																																										IfLE Ti410 row
																																																																																																																																											Let ry
																																																																																																																																												Let Td413
																																																																																																																																													Let Td411
																																																																																																																																														ExtFunApp float_of_int row,
																																																																																																																																														Let Td412
																																																																																																																																															Float:0.200000
																																																																																																																																															FMul Td411 Td412
																																																																																																																																													Let Td414
																																																																																																																																														Float:0.900000
																																																																																																																																														FSub Td413 Td414
																																																																																																																																												Let Tu221
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
																																																																																																																																									LetRec create_dirvec Tu222 
																																																																																																																																										Let v3
																																																																																																																																											Let Ti405
																																																																																																																																												Int:3
																																																																																																																																												Let Td406
																																																																																																																																													Float:0.000000
																																																																																																																																													ExtFunApp create_float_array Ti405,Td406,
																																																																																																																																											Let consts
																																																																																																																																												Let Ti409
																																																																																																																																													Let Ta407
																																																																																																																																														ExtArray n_objects
																																																																																																																																														Let Ti408
																																																																																																																																															Int:0
																																																																																																																																															Get Ta407 Ti408
																																																																																																																																													ExtFunApp create_array Ti409,v3,
																																																																																																																																												Tuple (v3,consts,)
																																																																																																																																										LetRec create_dirvec_elements d index 
																																																																																																																																											Let Ti400
																																																																																																																																												Int:0
																																																																																																																																												IfLE Ti400 index
																																																																																																																																													Let Tu223
																																																																																																																																														Let Tt402
																																																																																																																																															Let Tu401
																																																																																																																																																Unit
																																																																																																																																																App create_dirvecTu401 
																																																																																																																																															Put d index Tt402
																																																																																																																																														Let Ti404
																																																																																																																																															Let Ti403
																																																																																																																																																Int:1
																																																																																																																																																Sub index Ti403
																																																																																																																																															App create_dirvec_elementsd Ti404 
																																																																																																																																													Unit
																																																																																																																																											LetRec create_dirvecs index 
																																																																																																																																												Let Ti389
																																																																																																																																													Int:0
																																																																																																																																													IfLE Ti389 index
																																																																																																																																														Let Tu225
																																																																																																																																															Let Ta390
																																																																																																																																																ExtArray dirvecs
																																																																																																																																																Let Ta394
																																																																																																																																																	Let Ti391
																																																																																																																																																		Int:120
																																																																																																																																																		Let Tt393
																																																																																																																																																			Let Tu392
																																																																																																																																																				Unit
																																																																																																																																																				App create_dirvecTu392 
																																																																																																																																																			ExtFunApp create_array Ti391,Tt393,
																																																																																																																																																	Put Ta390 index Ta394
																																																																																																																																															Let Tu224
																																																																																																																																																Let Ta396
																																																																																																																																																	Let Ta395
																																																																																																																																																		ExtArray dirvecs
																																																																																																																																																		Get Ta395 index
																																																																																																																																																	Let Ti397
																																																																																																																																																		Int:118
																																																																																																																																																		App create_dirvec_elementsTa396 Ti397 
																																																																																																																																																Let Ti399
																																																																																																																																																	Let Ti398
																																																																																																																																																		Int:1
																																																																																																																																																		Sub index Ti398
																																																																																																																																																	App create_dirvecsTi399 
																																																																																																																																														Unit
																																																																																																																																												LetRec init_dirvec_constants vecset index 
																																																																																																																																													Let Ti385
																																																																																																																																														Int:0
																																																																																																																																														IfLE Ti385 index
																																																																																																																																															Let Tu226
																																																																																																																																																Let Tt386
																																																																																																																																																	Get vecset index
																																																																																																																																																	App setup_dirvec_constantsTt386 
																																																																																																																																																Let Ti388
																																																																																																																																																	Let Ti387
																																																																																																																																																		Int:1
																																																																																																																																																		Sub index Ti387
																																																																																																																																																	App init_dirvec_constantsvecset Ti388 
																																																																																																																																															Unit
																																																																																																																																													LetRec init_vecset_constants index 
																																																																																																																																														Let Ti379
																																																																																																																																															Int:0
																																																																																																																																															IfLE Ti379 index
																																																																																																																																																Let Tu227
																																																																																																																																																	Let Ta381
																																																																																																																																																		Let Ta380
																																																																																																																																																			ExtArray dirvecs
																																																																																																																																																			Get Ta380 index
																																																																																																																																																		Let Ti382
																																																																																																																																																			Int:119
																																																																																																																																																			App init_dirvec_constantsTa381 Ti382 
																																																																																																																																																	Let Ti384
																																																																																																																																																		Let Ti383
																																																																																																																																																			Int:1
																																																																																																																																																			Sub index Ti383
																																																																																																																																																		App init_vecset_constantsTi384 
																																																																																																																																																Unit
																																																																																																																																														LetRec init_dirvecs Tu228 
																																																																																																																																															Let Tu230
																																																																																																																																																Let Ti374
																																																																																																																																																	Int:4
																																																																																																																																																	App create_dirvecsTi374 
																																																																																																																																																Let Tu229
																																																																																																																																																	Let Ti375
																																																																																																																																																		Int:9
																																																																																																																																																		Let Ti376
																																																																																																																																																			Int:0
																																																																																																																																																			Let Ti377
																																																																																																																																																				Int:0
																																																																																																																																																				App calc_dirvec_rowsTi375 Ti376 Ti377 
																																																																																																																																																	Let Ti378
																																																																																																																																																		Int:4
																																																																																																																																																		App init_vecset_constantsTi378 
																																																																																																																																															LetRec add_reflection index surface_id bright v0 v1 v2 
																																																																																																																																																Let dvec
																																																																																																																																																	Let Tu370
																																																																																																																																																		Unit
																																																																																																																																																		App create_dirvecTu370 
																																																																																																																																																	Let Tu232
																																																																																																																																																		Let Ta371
																																																																																																																																																			App d_vecdvec 
																																																																																																																																																			App vecsetTa371 v0 v1 v2 
																																																																																																																																																		Let Tu231
																																																																																																																																																			App setup_dirvec_constantsdvec 
																																																																																																																																																			Let Ta372
																																																																																																																																																				ExtArray reflections
																																																																																																																																																				Let Tt373
																																																																																																																																																					Tuple (surface_id,dvec,bright,)
																																																																																																																																																					Put Ta372 index Tt373
																																																																																																																																																LetRec setup_rect_reflection obj_id obj 
																																																																																																																																																	Let sid
																																																																																																																																																		ShiftL2 obj_id
																																																																																																																																																		Let nr
																																																																																																																																																			Let Ta334
																																																																																																																																																				ExtArray n_reflections
																																																																																																																																																				Let Ti335
																																																																																																																																																					Int:0
																																																																																																																																																					Get Ta334 Ti335
																																																																																																																																																			Let br
																																																																																																																																																				Let Td336
																																																																																																																																																					Float:1.000000
																																																																																																																																																					Let Td337
																																																																																																																																																						App o_diffuseobj 
																																																																																																																																																						FSub Td336 Td337
																																																																																																																																																				Let n0
																																																																																																																																																					Let Td340
																																																																																																																																																						Let Ta338
																																																																																																																																																							ExtArray light
																																																																																																																																																							Let Ti339
																																																																																																																																																								Int:0
																																																																																																																																																								Get Ta338 Ti339
																																																																																																																																																						ExtFunApp fneg Td340,
																																																																																																																																																					Let n1
																																																																																																																																																						Let Td343
																																																																																																																																																							Let Ta341
																																																																																																																																																								ExtArray light
																																																																																																																																																								Let Ti342
																																																																																																																																																									Int:1
																																																																																																																																																									Get Ta341 Ti342
																																																																																																																																																							ExtFunApp fneg Td343,
																																																																																																																																																						Let n2
																																																																																																																																																							Let Td346
																																																																																																																																																								Let Ta344
																																																																																																																																																									ExtArray light
																																																																																																																																																									Let Ti345
																																																																																																																																																										Int:2
																																																																																																																																																										Get Ta344 Ti345
																																																																																																																																																								ExtFunApp fneg Td346,
																																																																																																																																																							Let Tu235
																																																																																																																																																								Let Ti348
																																																																																																																																																									Let Ti347
																																																																																																																																																										Int:1
																																																																																																																																																										Add sid Ti347
																																																																																																																																																									Let Td351
																																																																																																																																																										Let Ta349
																																																																																																																																																											ExtArray light
																																																																																																																																																											Let Ti350
																																																																																																																																																												Int:0
																																																																																																																																																												Get Ta349 Ti350
																																																																																																																																																										App add_reflectionnr Ti348 br Td351 n1 n2 
																																																																																																																																																								Let Tu234
																																																																																																																																																									Let Ti353
																																																																																																																																																										Let Ti352
																																																																																																																																																											Int:1
																																																																																																																																																											Add nr Ti352
																																																																																																																																																										Let Ti355
																																																																																																																																																											Let Ti354
																																																																																																																																																												Int:2
																																																																																																																																																												Add sid Ti354
																																																																																																																																																											Let Td358
																																																																																																																																																												Let Ta356
																																																																																																																																																													ExtArray light
																																																																																																																																																													Let Ti357
																																																																																																																																																														Int:1
																																																																																																																																																														Get Ta356 Ti357
																																																																																																																																																												App add_reflectionTi353 Ti355 br n0 Td358 n2 
																																																																																																																																																									Let Tu233
																																																																																																																																																										Let Ti360
																																																																																																																																																											Let Ti359
																																																																																																																																																												Int:2
																																																																																																																																																												Add nr Ti359
																																																																																																																																																											Let Ti362
																																																																																																																																																												Let Ti361
																																																																																																																																																													Int:3
																																																																																																																																																													Add sid Ti361
																																																																																																																																																												Let Td365
																																																																																																																																																													Let Ta363
																																																																																																																																																														ExtArray light
																																																																																																																																																														Let Ti364
																																																																																																																																																															Int:2
																																																																																																																																																															Get Ta363 Ti364
																																																																																																																																																													App add_reflectionTi360 Ti362 br n0 n1 Td365 
																																																																																																																																																										Let Ta366
																																																																																																																																																											ExtArray n_reflections
																																																																																																																																																											Let Ti367
																																																																																																																																																												Int:0
																																																																																																																																																												Let Ti369
																																																																																																																																																													Let Ti368
																																																																																																																																																														Int:3
																																																																																																																																																														Add nr Ti368
																																																																																																																																																													Put Ta366 Ti367 Ti369
																																																																																																																																																	LetRec setup_surface_reflection obj_id obj 
																																																																																																																																																		Let sid
																																																																																																																																																			Let Ti298
																																																																																																																																																				ShiftL2 obj_id
																																																																																																																																																				Let Ti299
																																																																																																																																																					Int:1
																																																																																																																																																					Add Ti298 Ti299
																																																																																																																																																			Let nr
																																																																																																																																																				Let Ta300
																																																																																																																																																					ExtArray n_reflections
																																																																																																																																																					Let Ti301
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta300 Ti301
																																																																																																																																																				Let br
																																																																																																																																																					Let Td302
																																																																																																																																																						Float:1.000000
																																																																																																																																																						Let Td303
																																																																																																																																																							App o_diffuseobj 
																																																																																																																																																							FSub Td302 Td303
																																																																																																																																																					Let p
																																																																																																																																																						Let Ta304
																																																																																																																																																							ExtArray light
																																																																																																																																																							Let Ta305
																																																																																																																																																								App o_param_abcobj 
																																																																																																																																																								App veciprodTa304 Ta305 
																																																																																																																																																						Let Tu236
																																																																																																																																																							Let Td313
																																																																																																																																																								Let Td309
																																																																																																																																																									Let Td308
																																																																																																																																																										Let Td306
																																																																																																																																																											Float:2.000000
																																																																																																																																																											Let Td307
																																																																																																																																																												App o_param_aobj 
																																																																																																																																																												FMul Td306 Td307
																																																																																																																																																										FMul Td308 p
																																																																																																																																																									Let Td312
																																																																																																																																																										Let Ta310
																																																																																																																																																											ExtArray light
																																																																																																																																																											Let Ti311
																																																																																																																																																												Int:0
																																																																																																																																																												Get Ta310 Ti311
																																																																																																																																																										FSub Td309 Td312
																																																																																																																																																								Let Td321
																																																																																																																																																									Let Td317
																																																																																																																																																										Let Td316
																																																																																																																																																											Let Td314
																																																																																																																																																												Float:2.000000
																																																																																																																																																												Let Td315
																																																																																																																																																													App o_param_bobj 
																																																																																																																																																													FMul Td314 Td315
																																																																																																																																																											FMul Td316 p
																																																																																																																																																										Let Td320
																																																																																																																																																											Let Ta318
																																																																																																																																																												ExtArray light
																																																																																																																																																												Let Ti319
																																																																																																																																																													Int:1
																																																																																																																																																													Get Ta318 Ti319
																																																																																																																																																											FSub Td317 Td320
																																																																																																																																																									Let Td329
																																																																																																																																																										Let Td325
																																																																																																																																																											Let Td324
																																																																																																																																																												Let Td322
																																																																																																																																																													Float:2.000000
																																																																																																																																																													Let Td323
																																																																																																																																																														App o_param_cobj 
																																																																																																																																																														FMul Td322 Td323
																																																																																																																																																												FMul Td324 p
																																																																																																																																																											Let Td328
																																																																																																																																																												Let Ta326
																																																																																																																																																													ExtArray light
																																																																																																																																																													Let Ti327
																																																																																																																																																														Int:2
																																																																																																																																																														Get Ta326 Ti327
																																																																																																																																																												FSub Td325 Td328
																																																																																																																																																										App add_reflectionnr sid br Td313 Td321 Td329 
																																																																																																																																																							Let Ta330
																																																																																																																																																								ExtArray n_reflections
																																																																																																																																																								Let Ti331
																																																																																																																																																									Int:0
																																																																																																																																																									Let Ti333
																																																																																																																																																										Let Ti332
																																																																																																																																																											Int:1
																																																																																																																																																											Add nr Ti332
																																																																																																																																																										Put Ta330 Ti331 Ti333
																																																																																																																																																		LetRec setup_reflections obj_id 
																																																																																																																																																			Let Ti288
																																																																																																																																																				Int:0
																																																																																																																																																				IfLE Ti288 obj_id
																																																																																																																																																					Let obj
																																																																																																																																																						Let Ta289
																																																																																																																																																							ExtArray objects
																																																																																																																																																							Get Ta289 obj_id
																																																																																																																																																						Let Ti290
																																																																																																																																																							App o_reflectiontypeobj 
																																																																																																																																																							Let Ti291
																																																																																																																																																								Int:2
																																																																																																																																																								IfEq Ti290 Ti291
																																																																																																																																																									Let Tb294
																																																																																																																																																										Let Td292
																																																																																																																																																											App o_diffuseobj 
																																																																																																																																																											Let Td293
																																																																																																																																																												Float:1.000000
																																																																																																																																																												ExtFunApp fless Td292,Td293,
																																																																																																																																																										Let Ti295
																																																																																																																																																											Int:0
																																																																																																																																																											IfEq Tb294 Ti295
																																																																																																																																																												Unit
																																																																																																																																																												Let m_shape
																																																																																																																																																													App o_formobj 
																																																																																																																																																													Let Ti296
																																																																																																																																																														Int:1
																																																																																																																																																														IfEq m_shape Ti296
																																																																																																																																																															App setup_rect_reflectionobj_id obj 
																																																																																																																																																															Let Ti297
																																																																																																																																																																Int:2
																																																																																																																																																																IfEq m_shape Ti297
																																																																																																																																																																	App setup_surface_reflectionobj_id obj 
																																																																																																																																																																	Unit
																																																																																																																																																									Unit
																																																																																																																																																					Unit
																																																																																																																																																			LetRec rt size_x size_y 
																																																																																																																																																				Let Tu248
																																																																																																																																																					Let Ta253
																																																																																																																																																						ExtArray image_size
																																																																																																																																																						Let Ti254
																																																																																																																																																							Int:0
																																																																																																																																																							Put Ta253 Ti254 size_x
																																																																																																																																																					Let Tu247
																																																																																																																																																						Let Ta255
																																																																																																																																																							ExtArray image_size
																																																																																																																																																							Let Ti256
																																																																																																																																																								Int:1
																																																																																																																																																								Put Ta255 Ti256 size_y
																																																																																																																																																						Let Tu246
																																																																																																																																																							Let Ta257
																																																																																																																																																								ExtArray image_center
																																																																																																																																																								Let Ti258
																																																																																																																																																									Int:0
																																																																																																																																																									Let Ti259
																																																																																																																																																										ShiftR1 size_x
																																																																																																																																																										Put Ta257 Ti258 Ti259
																																																																																																																																																							Let Tu245
																																																																																																																																																								Let Ta260
																																																																																																																																																									ExtArray image_center
																																																																																																																																																									Let Ti261
																																																																																																																																																										Int:1
																																																																																																																																																										Let Ti262
																																																																																																																																																											ShiftR1 size_y
																																																																																																																																																											Put Ta260 Ti261 Ti262
																																																																																																																																																								Let Tu244
																																																																																																																																																									Let Ta263
																																																																																																																																																										ExtArray scan_pitch
																																																																																																																																																										Let Ti264
																																																																																																																																																											Int:0
																																																																																																																																																											Let Td268
																																																																																																																																																												Let Td265
																																																																																																																																																													Float:128.000000
																																																																																																																																																													Let Td266
																																																																																																																																																														ExtFunApp float_of_int size_x,
																																																																																																																																																														Let Td267
																																																																																																																																																															FReciprocal Td266
																																																																																																																																																															FMul Td265 Td267
																																																																																																																																																												Put Ta263 Ti264 Td268
																																																																																																																																																									Let prev
																																																																																																																																																										Let Tu269
																																																																																																																																																											Unit
																																																																																																																																																											App create_pixellineTu269 
																																																																																																																																																										Let cur
																																																																																																																																																											Let Tu270
																																																																																																																																																												Unit
																																																																																																																																																												App create_pixellineTu270 
																																																																																																																																																											Let next
																																																																																																																																																												Let Tu271
																																																																																																																																																													Unit
																																																																																																																																																													App create_pixellineTu271 
																																																																																																																																																												Let Tu243
																																																																																																																																																													Let Tu272
																																																																																																																																																														Unit
																																																																																																																																																														App read_parameterTu272 
																																																																																																																																																													Let Tu242
																																																																																																																																																														Let Tu273
																																																																																																																																																															Unit
																																																																																																																																																															App write_ppm_headerTu273 
																																																																																																																																																														Let Tu241
																																																																																																																																																															Let Tu274
																																																																																																																																																																Unit
																																																																																																																																																																App init_dirvecsTu274 
																																																																																																																																																															Let Tu240
																																																																																																																																																																Let Ta276
																																																																																																																																																																	Let Tt275
																																																																																																																																																																		ExtTuple light_dirvec
																																																																																																																																																																		App d_vecTt275 
																																																																																																																																																																	Let Ta277
																																																																																																																																																																		ExtArray light
																																																																																																																																																																		App veccpyTa276 Ta277 
																																																																																																																																																																Let Tu239
																																																																																																																																																																	Let Tt278
																																																																																																																																																																		ExtTuple light_dirvec
																																																																																																																																																																		App setup_dirvec_constantsTt278 
																																																																																																																																																																	Let Tu238
																																																																																																																																																																		Let Ti283
																																																																																																																																																																			Let Ti281
																																																																																																																																																																				Let Ta279
																																																																																																																																																																					ExtArray n_objects
																																																																																																																																																																					Let Ti280
																																																																																																																																																																						Int:0
																																																																																																																																																																						Get Ta279 Ti280
																																																																																																																																																																				Let Ti282
																																																																																																																																																																					Int:1
																																																																																																																																																																					Sub Ti281 Ti282
																																																																																																																																																																			App setup_reflectionsTi283 
																																																																																																																																																																		Let Tu237
																																																																																																																																																																			Let Ti284
																																																																																																																																																																				Int:0
																																																																																																																																																																				Let Ti285
																																																																																																																																																																					Int:0
																																																																																																																																																																					App pretrace_linecur Ti284 Ti285 
																																																																																																																																																																			Let Ti286
																																																																																																																																																																				Int:0
																																																																																																																																																																				Let Ti287
																																																																																																																																																																					Int:2
																																																																																																																																																																					App scan_lineTi286 prev cur next Ti287 
																																																																																																																																																				Let Tu249
																																																																																																																																																					Let Ti250
																																																																																																																																																						Int:512
																																																																																																																																																						Let Ti251
																																																																																																																																																							Int:512
																																																																																																																																																							App rtTi250 Ti251 
																																																																																																																																																					Let Ti252
																																																																																																																																																						Int:0
																																																																																																																																																						ExtFunApp print_int Ti252,
