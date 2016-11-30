LetRec fneg x 
	FNeg x
	LetRec fispos x 
		Let Td2638
			Float:0.000000
			IfLE x Td2638
				Int:0
				Int:1
		LetRec fisneg x 
			Let Td2637
				Float:0.000000
				IfLE Td2637 x
					Int:0
					Int:1
			LetRec fiszero x 
				Let Td2636
					Float:0.000000
					IfEq x Td2636
						Int:1
						Int:0
				LetRec fhalf x 
					Let Td2635
						Float:0.500000
						FMul x Td2635
					LetRec fsqr x 
						FMul x x
						LetRec fabs x 
							Let Td2634
								Float:0.000000
								IfLE Td2634 x
									Var x
									App fnegx 
							LetRec fless x y 
								Let z
									FSub x y
									App fisnegz 
								LetRec fflag a 
									Let Td2632
										Float:0.000000
										IfLE Td2632 a
											Int:1
											Let Ti2633
												Int:1
												Neg Ti2633
									LetRec xor x y 
										Let Ti2630
											Int:0
											IfEq x Ti2630
												Var y
												Let Ti2631
													Int:0
													IfEq y Ti2631
														Int:1
														Int:0
										LetRec sgn x 
											Let Tb2626
												App fiszerox 
												Let Ti2627
													Int:0
													IfEq Tb2626 Ti2627
														Let Tb2628
															App fisposx 
															Let Ti2629
																Int:0
																IfEq Tb2628 Ti2629
																	Float:-1.000000
																	Float:1.000000
														Float:0.000000
											LetRec fneg_cond cond x 
												Let Ti2625
													Int:0
													IfEq cond Ti2625
														App fnegx 
														Var x
												LetRec add_mod5 x y 
													Let sum
														Add x y
														Let Ti2623
															Int:5
															IfLE Ti2623 sum
																Let Ti2624
																	Int:5
																	Sub sum Ti2624
																Var sum
													LetRec vecset v x y z 
														Let Tu2
															Let Ti2620
																Int:0
																Put v Ti2620 x
															Let Tu1
																Let Ti2621
																	Int:1
																	Put v Ti2621 y
																Let Ti2622
																	Int:2
																	Put v Ti2622 z
														LetRec vecfill v elem 
															Let Tu4
																Let Ti2617
																	Int:0
																	Put v Ti2617 elem
																Let Tu3
																	Let Ti2618
																		Int:1
																		Put v Ti2618 elem
																	Let Ti2619
																		Int:2
																		Put v Ti2619 elem
															LetRec vecbzero v 
																Let Td2616
																	Float:0.000000
																	App vecfillv Td2616 
																LetRec veccpy dest src 
																	Let Tu6
																		Let Ti2607
																			Int:0
																			Let Td2609
																				Let Ti2608
																					Int:0
																					Get src Ti2608
																				Put dest Ti2607 Td2609
																		Let Tu5
																			Let Ti2610
																				Int:1
																				Let Td2612
																					Let Ti2611
																						Int:1
																						Get src Ti2611
																					Put dest Ti2610 Td2612
																			Let Ti2613
																				Int:2
																				Let Td2615
																					Let Ti2614
																						Int:2
																						Get src Ti2614
																					Put dest Ti2613 Td2615
																	LetRec vecdist2 p q 
																		Let Td2600
																			Let Td2593
																				Let Td2592
																					Let Td2589
																						Let Ti2588
																							Int:0
																							Get p Ti2588
																						Let Td2591
																							Let Ti2590
																								Int:0
																								Get q Ti2590
																							FSub Td2589 Td2591
																					App fsqrTd2592 
																				Let Td2599
																					Let Td2598
																						Let Td2595
																							Let Ti2594
																								Int:1
																								Get p Ti2594
																							Let Td2597
																								Let Ti2596
																									Int:1
																									Get q Ti2596
																								FSub Td2595 Td2597
																						App fsqrTd2598 
																					FAdd Td2593 Td2599
																			Let Td2606
																				Let Td2605
																					Let Td2602
																						Let Ti2601
																							Int:2
																							Get p Ti2601
																						Let Td2604
																							Let Ti2603
																								Int:2
																								Get q Ti2603
																							FSub Td2602 Td2604
																					App fsqrTd2605 
																				FAdd Td2600 Td2606
																		LetRec vecunit v 
																			Let il
																				Let Td2562
																					Float:1.000000
																					Let Td2574
																						Let Td2573
																							Let Td2569
																								Let Td2565
																									Let Td2564
																										Let Ti2563
																											Int:0
																											Get v Ti2563
																										App fsqrTd2564 
																									Let Td2568
																										Let Td2567
																											Let Ti2566
																												Int:1
																												Get v Ti2566
																											App fsqrTd2567 
																										FAdd Td2565 Td2568
																								Let Td2572
																									Let Td2571
																										Let Ti2570
																											Int:2
																											Get v Ti2570
																										App fsqrTd2571 
																									FAdd Td2569 Td2572
																							ExtFunApp sqrt Td2573,
																						Let Td2575
																							FReciprocal Td2574
																							FMul Td2562 Td2575
																				Let Tu8
																					Let Ti2576
																						Int:0
																						Let Td2579
																							Let Td2578
																								Let Ti2577
																									Int:0
																									Get v Ti2577
																								FMul Td2578 il
																							Put v Ti2576 Td2579
																					Let Tu7
																						Let Ti2580
																							Int:1
																							Let Td2583
																								Let Td2582
																									Let Ti2581
																										Int:1
																										Get v Ti2581
																									FMul Td2582 il
																								Put v Ti2580 Td2583
																						Let Ti2584
																							Int:2
																							Let Td2587
																								Let Td2586
																									Let Ti2585
																										Int:2
																										Get v Ti2585
																									FMul Td2586 il
																								Put v Ti2584 Td2587
																			LetRec vecunit_sgn v inv 
																				Let l
																					Let Td2542
																						Let Td2538
																							Let Td2534
																								Let Td2533
																									Let Ti2532
																										Int:0
																										Get v Ti2532
																									App fsqrTd2533 
																								Let Td2537
																									Let Td2536
																										Let Ti2535
																											Int:1
																											Get v Ti2535
																										App fsqrTd2536 
																									FAdd Td2534 Td2537
																							Let Td2541
																								Let Td2540
																									Let Ti2539
																										Int:2
																										Get v Ti2539
																									App fsqrTd2540 
																								FAdd Td2538 Td2541
																						ExtFunApp sqrt Td2542,
																					Let il
																						Let Tb2543
																							App fiszerol 
																							Let Ti2544
																								Int:0
																								IfEq Tb2543 Ti2544
																									Let Ti2545
																										Int:0
																										IfEq inv Ti2545
																											Let Td2546
																												Float:1.000000
																												Let Td2547
																													FReciprocal l
																													FMul Td2546 Td2547
																											Let Td2548
																												Float:-1.000000
																												Let Td2549
																													FReciprocal l
																													FMul Td2548 Td2549
																									Float:1.000000
																						Let Tu10
																							Let Ti2550
																								Int:0
																								Let Td2553
																									Let Td2552
																										Let Ti2551
																											Int:0
																											Get v Ti2551
																										FMul Td2552 il
																									Put v Ti2550 Td2553
																							Let Tu9
																								Let Ti2554
																									Int:1
																									Let Td2557
																										Let Td2556
																											Let Ti2555
																												Int:1
																												Get v Ti2555
																											FMul Td2556 il
																										Put v Ti2554 Td2557
																								Let Ti2558
																									Int:2
																									Let Td2561
																										Let Td2560
																											Let Ti2559
																												Int:2
																												Get v Ti2559
																											FMul Td2560 il
																										Put v Ti2558 Td2561
																				LetRec veciprod v w 
																					Let Td2526
																						Let Td2520
																							Let Td2517
																								Let Ti2516
																									Int:0
																									Get v Ti2516
																								Let Td2519
																									Let Ti2518
																										Int:0
																										Get w Ti2518
																									FMul Td2517 Td2519
																							Let Td2525
																								Let Td2522
																									Let Ti2521
																										Int:1
																										Get v Ti2521
																									Let Td2524
																										Let Ti2523
																											Int:1
																											Get w Ti2523
																										FMul Td2522 Td2524
																								FAdd Td2520 Td2525
																						Let Td2531
																							Let Td2528
																								Let Ti2527
																									Int:2
																									Get v Ti2527
																								Let Td2530
																									Let Ti2529
																										Int:2
																										Get w Ti2529
																									FMul Td2528 Td2530
																							FAdd Td2526 Td2531
																					LetRec veciprod2 v w0 w1 w2 
																						Let Td2512
																							Let Td2508
																								Let Td2507
																									Let Ti2506
																										Int:0
																										Get v Ti2506
																									FMul Td2507 w0
																								Let Td2511
																									Let Td2510
																										Let Ti2509
																											Int:1
																											Get v Ti2509
																										FMul Td2510 w1
																									FAdd Td2508 Td2511
																							Let Td2515
																								Let Td2514
																									Let Ti2513
																										Int:2
																										Get v Ti2513
																									FMul Td2514 w2
																								FAdd Td2512 Td2515
																						LetRec vecaccum dest scale v 
																							Let Tu12
																								Let Ti2485
																									Int:0
																									Let Td2491
																										Let Td2487
																											Let Ti2486
																												Int:0
																												Get dest Ti2486
																											Let Td2490
																												Let Td2489
																													Let Ti2488
																														Int:0
																														Get v Ti2488
																													FMul scale Td2489
																												FAdd Td2487 Td2490
																										Put dest Ti2485 Td2491
																								Let Tu11
																									Let Ti2492
																										Int:1
																										Let Td2498
																											Let Td2494
																												Let Ti2493
																													Int:1
																													Get dest Ti2493
																												Let Td2497
																													Let Td2496
																														Let Ti2495
																															Int:1
																															Get v Ti2495
																														FMul scale Td2496
																													FAdd Td2494 Td2497
																											Put dest Ti2492 Td2498
																									Let Ti2499
																										Int:2
																										Let Td2505
																											Let Td2501
																												Let Ti2500
																													Int:2
																													Get dest Ti2500
																												Let Td2504
																													Let Td2503
																														Let Ti2502
																															Int:2
																															Get v Ti2502
																														FMul scale Td2503
																													FAdd Td2501 Td2504
																											Put dest Ti2499 Td2505
																							LetRec vecadd dest v 
																								Let Tu14
																									Let Ti2467
																										Int:0
																										Let Td2472
																											Let Td2469
																												Let Ti2468
																													Int:0
																													Get dest Ti2468
																												Let Td2471
																													Let Ti2470
																														Int:0
																														Get v Ti2470
																													FAdd Td2469 Td2471
																											Put dest Ti2467 Td2472
																									Let Tu13
																										Let Ti2473
																											Int:1
																											Let Td2478
																												Let Td2475
																													Let Ti2474
																														Int:1
																														Get dest Ti2474
																													Let Td2477
																														Let Ti2476
																															Int:1
																															Get v Ti2476
																														FAdd Td2475 Td2477
																												Put dest Ti2473 Td2478
																										Let Ti2479
																											Int:2
																											Let Td2484
																												Let Td2481
																													Let Ti2480
																														Int:2
																														Get dest Ti2480
																													Let Td2483
																														Let Ti2482
																															Int:2
																															Get v Ti2482
																														FAdd Td2481 Td2483
																												Put dest Ti2479 Td2484
																								LetRec vecmul dest v 
																									Let Tu16
																										Let Ti2449
																											Int:0
																											Let Td2454
																												Let Td2451
																													Let Ti2450
																														Int:0
																														Get dest Ti2450
																													Let Td2453
																														Let Ti2452
																															Int:0
																															Get v Ti2452
																														FMul Td2451 Td2453
																												Put dest Ti2449 Td2454
																										Let Tu15
																											Let Ti2455
																												Int:1
																												Let Td2460
																													Let Td2457
																														Let Ti2456
																															Int:1
																															Get dest Ti2456
																														Let Td2459
																															Let Ti2458
																																Int:1
																																Get v Ti2458
																															FMul Td2457 Td2459
																													Put dest Ti2455 Td2460
																											Let Ti2461
																												Int:2
																												Let Td2466
																													Let Td2463
																														Let Ti2462
																															Int:2
																															Get dest Ti2462
																														Let Td2465
																															Let Ti2464
																																Int:2
																																Get v Ti2464
																															FMul Td2463 Td2465
																													Put dest Ti2461 Td2466
																									LetRec vecscale dest scale 
																										Let Tu18
																											Let Ti2437
																												Int:0
																												Let Td2440
																													Let Td2439
																														Let Ti2438
																															Int:0
																															Get dest Ti2438
																														FMul Td2439 scale
																													Put dest Ti2437 Td2440
																											Let Tu17
																												Let Ti2441
																													Int:1
																													Let Td2444
																														Let Td2443
																															Let Ti2442
																																Int:1
																																Get dest Ti2442
																															FMul Td2443 scale
																														Put dest Ti2441 Td2444
																												Let Ti2445
																													Int:2
																													Let Td2448
																														Let Td2447
																															Let Ti2446
																																Int:2
																																Get dest Ti2446
																															FMul Td2447 scale
																														Put dest Ti2445 Td2448
																										LetRec vecaccumv dest v w 
																											Let Tu20
																												Let Ti2410
																													Int:0
																													Let Td2418
																														Let Td2412
																															Let Ti2411
																																Int:0
																																Get dest Ti2411
																															Let Td2417
																																Let Td2414
																																	Let Ti2413
																																		Int:0
																																		Get v Ti2413
																																	Let Td2416
																																		Let Ti2415
																																			Int:0
																																			Get w Ti2415
																																		FMul Td2414 Td2416
																																FAdd Td2412 Td2417
																														Put dest Ti2410 Td2418
																												Let Tu19
																													Let Ti2419
																														Int:1
																														Let Td2427
																															Let Td2421
																																Let Ti2420
																																	Int:1
																																	Get dest Ti2420
																																Let Td2426
																																	Let Td2423
																																		Let Ti2422
																																			Int:1
																																			Get v Ti2422
																																		Let Td2425
																																			Let Ti2424
																																				Int:1
																																				Get w Ti2424
																																			FMul Td2423 Td2425
																																	FAdd Td2421 Td2426
																															Put dest Ti2419 Td2427
																													Let Ti2428
																														Int:2
																														Let Td2436
																															Let Td2430
																																Let Ti2429
																																	Int:2
																																	Get dest Ti2429
																																Let Td2435
																																	Let Td2432
																																		Let Ti2431
																																			Int:2
																																			Get v Ti2431
																																		Let Td2434
																																			Let Ti2433
																																				Int:2
																																				Get w Ti2433
																																			FMul Td2432 Td2434
																																	FAdd Td2430 Td2435
																															Put dest Ti2428 Td2436
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
																																		Let Ti2409
																																			Int:0
																																			Get m_abc Ti2409
																																	LetRec o_param_b m 
																																		LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																			Let Ti2408
																																				Int:1
																																				Get m_abc Ti2408
																																		LetRec o_param_c m 
																																			LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																				Let Ti2407
																																					Int:2
																																					Get m_abc Ti2407
																																			LetRec o_param_abc m 
																																				LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																					Var m_abc
																																				LetRec o_param_x m 
																																					LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																						Let Ti2406
																																							Int:0
																																							Get m_xyz Ti2406
																																					LetRec o_param_y m 
																																						LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																							Let Ti2405
																																								Int:1
																																								Get m_xyz Ti2405
																																						LetRec o_param_z m 
																																							LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																								Let Ti2404
																																									Int:2
																																									Get m_xyz Ti2404
																																							LetRec o_diffuse m 
																																								LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																									Let Ti2403
																																										Int:0
																																										Get m_surfparams Ti2403
																																								LetRec o_hilight m 
																																									LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
 m
																																										Let Ti2402
																																											Int:1
																																											Get m_surfparams Ti2402
																																									LetRec o_color_red m 
																																										LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																											Let Ti2401
																																												Int:0
																																												Get m_color Ti2401
																																										LetRec o_color_green m 
																																											LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																												Let Ti2400
																																													Int:1
																																													Get m_color Ti2400
																																											LetRec o_color_blue m 
																																												LetTuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
 m
																																													Let Ti2399
																																														Int:2
																																														Get m_color Ti2399
																																												LetRec o_param_r1 m 
																																													LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																														Let Ti2398
																																															Int:0
																																															Get m_rot123 Ti2398
																																													LetRec o_param_r2 m 
																																														LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																															Let Ti2397
																																																Int:1
																																																Get m_rot123 Ti2397
																																														LetRec o_param_r3 m 
																																															LetTuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
 m
																																																Let Ti2396
																																																	Int:2
																																																	Get m_rot123 Ti2396
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
																																																								Let Ti2395
																																																									Int:0
																																																									Get m_gid Ti2395
																																																							LetRec p_set_group_id pixel id 
																																																								LetTuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,m_gid,xm_nvectors,)
 pixel
																																																									Let Ti2394
																																																										Int:0
																																																										Put m_gid Ti2394 id
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
																																																															Let Td2393
																																																																Float:0.017453
																																																																FMul x Td2393
																																																															LetRec read_screen_settings Tu21 
																																																																Let Tu35
																																																																	Let Ta2317
																																																																		ExtArray 288
																																																																		Let Ti2318
																																																																			Int:0
																																																																			Let Td2320
																																																																				Let Tu2319
																																																																					Unit
																																																																					ExtFunApp read_float Tu2319,
																																																																				Put Ta2317 Ti2318 Td2320
																																																																	Let Tu34
																																																																		Let Ta2321
																																																																			ExtArray 288
																																																																			Let Ti2322
																																																																				Int:1
																																																																				Let Td2324
																																																																					Let Tu2323
																																																																						Unit
																																																																						ExtFunApp read_float Tu2323,
																																																																					Put Ta2321 Ti2322 Td2324
																																																																		Let Tu33
																																																																			Let Ta2325
																																																																				ExtArray 288
																																																																				Let Ti2326
																																																																					Int:2
																																																																					Let Td2328
																																																																						Let Tu2327
																																																																							Unit
																																																																							ExtFunApp read_float Tu2327,
																																																																						Put Ta2325 Ti2326 Td2328
																																																																			Let v1
																																																																				Let Td2330
																																																																					Let Tu2329
																																																																						Unit
																																																																						ExtFunApp read_float Tu2329,
																																																																					App radTd2330 
																																																																				Let cos_v1
																																																																					ExtFunApp cos v1,
																																																																					Let sin_v1
																																																																						ExtFunApp sin v1,
																																																																						Let v2
																																																																							Let Td2332
																																																																								Let Tu2331
																																																																									Unit
																																																																									ExtFunApp read_float Tu2331,
																																																																								App radTd2332 
																																																																							Let cos_v2
																																																																								ExtFunApp cos v2,
																																																																								Let sin_v2
																																																																									ExtFunApp sin v2,
																																																																									Let Tu32
																																																																										Let Ta2333
																																																																											ExtArray 684
																																																																											Let Ti2334
																																																																												Int:0
																																																																												Let Td2337
																																																																													Let Td2335
																																																																														FMul cos_v1 sin_v2
																																																																														Let Td2336
																																																																															Float:200.000000
																																																																															FMul Td2335 Td2336
																																																																													Put Ta2333 Ti2334 Td2337
																																																																										Let Tu31
																																																																											Let Ta2338
																																																																												ExtArray 684
																																																																												Let Ti2339
																																																																													Int:1
																																																																													Let Td2341
																																																																														Let Td2340
																																																																															Float:-200.000000
																																																																															FMul sin_v1 Td2340
																																																																														Put Ta2338 Ti2339 Td2341
																																																																											Let Tu30
																																																																												Let Ta2342
																																																																													ExtArray 684
																																																																													Let Ti2343
																																																																														Int:2
																																																																														Let Td2346
																																																																															Let Td2344
																																																																																FMul cos_v1 cos_v2
																																																																																Let Td2345
																																																																																	Float:200.000000
																																																																																	FMul Td2344 Td2345
																																																																															Put Ta2342 Ti2343 Td2346
																																																																												Let Tu29
																																																																													Let Ta2347
																																																																														ExtArray 660
																																																																														Let Ti2348
																																																																															Int:0
																																																																															Put Ta2347 Ti2348 cos_v2
																																																																													Let Tu28
																																																																														Let Ta2349
																																																																															ExtArray 660
																																																																															Let Ti2350
																																																																																Int:1
																																																																																Let Td2351
																																																																																	Float:0.000000
																																																																																	Put Ta2349 Ti2350 Td2351
																																																																														Let Tu27
																																																																															Let Ta2352
																																																																																ExtArray 660
																																																																																Let Ti2353
																																																																																	Int:2
																																																																																	Let Td2354
																																																																																		App fnegsin_v2 
																																																																																		Put Ta2352 Ti2353 Td2354
																																																																															Let Tu26
																																																																																Let Ta2355
																																																																																	ExtArray 672
																																																																																	Let Ti2356
																																																																																		Int:0
																																																																																		Let Td2358
																																																																																			Let Td2357
																																																																																				App fnegsin_v1 
																																																																																				FMul Td2357 sin_v2
																																																																																			Put Ta2355 Ti2356 Td2358
																																																																																Let Tu25
																																																																																	Let Ta2359
																																																																																		ExtArray 672
																																																																																		Let Ti2360
																																																																																			Int:1
																																																																																			Let Td2361
																																																																																				App fnegcos_v1 
																																																																																				Put Ta2359 Ti2360 Td2361
																																																																																	Let Tu24
																																																																																		Let Ta2362
																																																																																			ExtArray 672
																																																																																			Let Ti2363
																																																																																				Int:2
																																																																																				Let Td2365
																																																																																					Let Td2364
																																																																																						App fnegsin_v1 
																																																																																						FMul Td2364 cos_v2
																																																																																					Put Ta2362 Ti2363 Td2365
																																																																																		Let Tu23
																																																																																			Let Ta2366
																																																																																				ExtArray 300
																																																																																				Let Ti2367
																																																																																					Int:0
																																																																																					Let Td2374
																																																																																						Let Td2370
																																																																																							Let Ta2368
																																																																																								ExtArray 288
																																																																																								Let Ti2369
																																																																																									Int:0
																																																																																									Get Ta2368 Ti2369
																																																																																							Let Td2373
																																																																																								Let Ta2371
																																																																																									ExtArray 684
																																																																																									Let Ti2372
																																																																																										Int:0
																																																																																										Get Ta2371 Ti2372
																																																																																								FSub Td2370 Td2373
																																																																																						Put Ta2366 Ti2367 Td2374
																																																																																			Let Tu22
																																																																																				Let Ta2375
																																																																																					ExtArray 300
																																																																																					Let Ti2376
																																																																																						Int:1
																																																																																						Let Td2383
																																																																																							Let Td2379
																																																																																								Let Ta2377
																																																																																									ExtArray 288
																																																																																									Let Ti2378
																																																																																										Int:1
																																																																																										Get Ta2377 Ti2378
																																																																																								Let Td2382
																																																																																									Let Ta2380
																																																																																										ExtArray 684
																																																																																										Let Ti2381
																																																																																											Int:1
																																																																																											Get Ta2380 Ti2381
																																																																																									FSub Td2379 Td2382
																																																																																							Put Ta2375 Ti2376 Td2383
																																																																																				Let Ta2384
																																																																																					ExtArray 300
																																																																																					Let Ti2385
																																																																																						Int:2
																																																																																						Let Td2392
																																																																																							Let Td2388
																																																																																								Let Ta2386
																																																																																									ExtArray 288
																																																																																									Let Ti2387
																																																																																										Int:2
																																																																																										Get Ta2386 Ti2387
																																																																																								Let Td2391
																																																																																									Let Ta2389
																																																																																										ExtArray 684
																																																																																										Let Ti2390
																																																																																											Int:2
																																																																																											Get Ta2389 Ti2390
																																																																																									FSub Td2388 Td2391
																																																																																							Put Ta2384 Ti2385 Td2392
																																																																LetRec read_light Tu36 
																																																																	Let nl
																																																																		Let Tu2299
																																																																			Unit
																																																																			ExtFunApp read_int Tu2299,
																																																																		Let l1
																																																																			Let Td2301
																																																																				Let Tu2300
																																																																					Unit
																																																																					ExtFunApp read_float Tu2300,
																																																																				App radTd2301 
																																																																			Let sl1
																																																																				ExtFunApp sin l1,
																																																																				Let Tu39
																																																																					Let Ta2302
																																																																						ExtArray 312
																																																																						Let Ti2303
																																																																							Int:1
																																																																							Let Td2304
																																																																								App fnegsl1 
																																																																								Put Ta2302 Ti2303 Td2304
																																																																					Let l2
																																																																						Let Td2306
																																																																							Let Tu2305
																																																																								Unit
																																																																								ExtFunApp read_float Tu2305,
																																																																							App radTd2306 
																																																																						Let cl1
																																																																							ExtFunApp cos l1,
																																																																							Let sl2
																																																																								ExtFunApp sin l2,
																																																																								Let Tu38
																																																																									Let Ta2307
																																																																										ExtArray 312
																																																																										Let Ti2308
																																																																											Int:0
																																																																											Let Td2309
																																																																												FMul cl1 sl2
																																																																												Put Ta2307 Ti2308 Td2309
																																																																									Let cl2
																																																																										ExtFunApp cos l2,
																																																																										Let Tu37
																																																																											Let Ta2310
																																																																												ExtArray 312
																																																																												Let Ti2311
																																																																													Int:2
																																																																													Let Td2312
																																																																														FMul cl1 cl2
																																																																														Put Ta2310 Ti2311 Td2312
																																																																											Let Ta2313
																																																																												ExtArray 324
																																																																												Let Ti2314
																																																																													Int:0
																																																																													Let Td2316
																																																																														Let Tu2315
																																																																															Unit
																																																																															ExtFunApp read_float Tu2315,
																																																																														Put Ta2313 Ti2314 Td2316
																																																																	LetRec rotate_quadratic_matrix abc rot 
																																																																		Let cos_x
																																																																			Let Td2213
																																																																				Let Ti2212
																																																																					Int:0
																																																																					Get rot Ti2212
																																																																				ExtFunApp cos Td2213,
																																																																			Let sin_x
																																																																				Let Td2215
																																																																					Let Ti2214
																																																																						Int:0
																																																																						Get rot Ti2214
																																																																					ExtFunApp sin Td2215,
																																																																				Let cos_y
																																																																					Let Td2217
																																																																						Let Ti2216
																																																																							Int:1
																																																																							Get rot Ti2216
																																																																						ExtFunApp cos Td2217,
																																																																					Let sin_y
																																																																						Let Td2219
																																																																							Let Ti2218
																																																																								Int:1
																																																																								Get rot Ti2218
																																																																							ExtFunApp sin Td2219,
																																																																						Let cos_z
																																																																							Let Td2221
																																																																								Let Ti2220
																																																																									Int:2
																																																																									Get rot Ti2220
																																																																								ExtFunApp cos Td2221,
																																																																							Let sin_z
																																																																								Let Td2223
																																																																									Let Ti2222
																																																																										Int:2
																																																																										Get rot Ti2222
																																																																									ExtFunApp sin Td2223,
																																																																								Let m00
																																																																									FMul cos_y cos_z
																																																																									Let m01
																																																																										Let Td2225
																																																																											Let Td2224
																																																																												FMul sin_x sin_y
																																																																												FMul Td2224 cos_z
																																																																											Let Td2226
																																																																												FMul cos_x sin_z
																																																																												FSub Td2225 Td2226
																																																																										Let m02
																																																																											Let Td2228
																																																																												Let Td2227
																																																																													FMul cos_x sin_y
																																																																													FMul Td2227 cos_z
																																																																												Let Td2229
																																																																													FMul sin_x sin_z
																																																																													FAdd Td2228 Td2229
																																																																											Let m10
																																																																												FMul cos_y sin_z
																																																																												Let m11
																																																																													Let Td2231
																																																																														Let Td2230
																																																																															FMul sin_x sin_y
																																																																															FMul Td2230 sin_z
																																																																														Let Td2232
																																																																															FMul cos_x cos_z
																																																																															FAdd Td2231 Td2232
																																																																													Let m12
																																																																														Let Td2234
																																																																															Let Td2233
																																																																																FMul cos_x sin_y
																																																																																FMul Td2233 sin_z
																																																																															Let Td2235
																																																																																FMul sin_x cos_z
																																																																																FSub Td2234 Td2235
																																																																														Let m20
																																																																															App fnegsin_y 
																																																																															Let m21
																																																																																FMul sin_x cos_y
																																																																																Let m22
																																																																																	FMul cos_x cos_y
																																																																																	Let ao
																																																																																		Let Ti2236
																																																																																			Int:0
																																																																																			Get abc Ti2236
																																																																																		Let bo
																																																																																			Let Ti2237
																																																																																				Int:1
																																																																																				Get abc Ti2237
																																																																																			Let co
																																																																																				Let Ti2238
																																																																																					Int:2
																																																																																					Get abc Ti2238
																																																																																				Let Tu44
																																																																																					Let Ti2239
																																																																																						Int:0
																																																																																						Let Td2247
																																																																																							Let Td2244
																																																																																								Let Td2241
																																																																																									Let Td2240
																																																																																										App fsqrm00 
																																																																																										FMul ao Td2240
																																																																																									Let Td2243
																																																																																										Let Td2242
																																																																																											App fsqrm10 
																																																																																											FMul bo Td2242
																																																																																										FAdd Td2241 Td2243
																																																																																								Let Td2246
																																																																																									Let Td2245
																																																																																										App fsqrm20 
																																																																																										FMul co Td2245
																																																																																									FAdd Td2244 Td2246
																																																																																							Put abc Ti2239 Td2247
																																																																																					Let Tu43
																																																																																						Let Ti2248
																																																																																							Int:1
																																																																																							Let Td2256
																																																																																								Let Td2253
																																																																																									Let Td2250
																																																																																										Let Td2249
																																																																																											App fsqrm01 
																																																																																											FMul ao Td2249
																																																																																										Let Td2252
																																																																																											Let Td2251
																																																																																												App fsqrm11 
																																																																																												FMul bo Td2251
																																																																																											FAdd Td2250 Td2252
																																																																																									Let Td2255
																																																																																										Let Td2254
																																																																																											App fsqrm21 
																																																																																											FMul co Td2254
																																																																																										FAdd Td2253 Td2255
																																																																																								Put abc Ti2248 Td2256
																																																																																						Let Tu42
																																																																																							Let Ti2257
																																																																																								Int:2
																																																																																								Let Td2265
																																																																																									Let Td2262
																																																																																										Let Td2259
																																																																																											Let Td2258
																																																																																												App fsqrm02 
																																																																																												FMul ao Td2258
																																																																																											Let Td2261
																																																																																												Let Td2260
																																																																																													App fsqrm12 
																																																																																													FMul bo Td2260
																																																																																												FAdd Td2259 Td2261
																																																																																										Let Td2264
																																																																																											Let Td2263
																																																																																												App fsqrm22 
																																																																																												FMul co Td2263
																																																																																											FAdd Td2262 Td2264
																																																																																									Put abc Ti2257 Td2265
																																																																																							Let Tu41
																																																																																								Let Ti2266
																																																																																									Int:0
																																																																																									Let Td2276
																																																																																										Let Td2267
																																																																																											Float:2.000000
																																																																																											Let Td2275
																																																																																												Let Td2272
																																																																																													Let Td2269
																																																																																														Let Td2268
																																																																																															FMul ao m01
																																																																																															FMul Td2268 m02
																																																																																														Let Td2271
																																																																																															Let Td2270
																																																																																																FMul bo m11
																																																																																																FMul Td2270 m12
																																																																																															FAdd Td2269 Td2271
																																																																																													Let Td2274
																																																																																														Let Td2273
																																																																																															FMul co m21
																																																																																															FMul Td2273 m22
																																																																																														FAdd Td2272 Td2274
																																																																																												FMul Td2267 Td2275
																																																																																										Put rot Ti2266 Td2276
																																																																																								Let Tu40
																																																																																									Let Ti2277
																																																																																										Int:1
																																																																																										Let Td2287
																																																																																											Let Td2278
																																																																																												Float:2.000000
																																																																																												Let Td2286
																																																																																													Let Td2283
																																																																																														Let Td2280
																																																																																															Let Td2279
																																																																																																FMul ao m00
																																																																																																FMul Td2279 m02
																																																																																															Let Td2282
																																																																																																Let Td2281
																																																																																																	FMul bo m10
																																																																																																	FMul Td2281 m12
																																																																																																FAdd Td2280 Td2282
																																																																																														Let Td2285
																																																																																															Let Td2284
																																																																																																FMul co m20
																																																																																																FMul Td2284 m22
																																																																																															FAdd Td2283 Td2285
																																																																																													FMul Td2278 Td2286
																																																																																											Put rot Ti2277 Td2287
																																																																																									Let Ti2288
																																																																																										Int:2
																																																																																										Let Td2298
																																																																																											Let Td2289
																																																																																												Float:2.000000
																																																																																												Let Td2297
																																																																																													Let Td2294
																																																																																														Let Td2291
																																																																																															Let Td2290
																																																																																																FMul ao m00
																																																																																																FMul Td2290 m01
																																																																																															Let Td2293
																																																																																																Let Td2292
																																																																																																	FMul bo m10
																																																																																																	FMul Td2292 m11
																																																																																																FAdd Td2291 Td2293
																																																																																														Let Td2296
																																																																																															Let Td2295
																																																																																																FMul co m20
																																																																																																FMul Td2295 m21
																																																																																															FAdd Td2294 Td2296
																																																																																													FMul Td2289 Td2297
																																																																																											Put rot Ti2288 Td2298
																																																																		LetRec read_nth_object n 
																																																																			Let texture
																																																																				Let Tu2115
																																																																					Unit
																																																																					ExtFunApp read_int Tu2115,
																																																																				Let Ti2117
																																																																					Let Ti2116
																																																																						Int:1
																																																																						Neg Ti2116
																																																																					IfEq texture Ti2117
																																																																						Int:0
																																																																						Let form
																																																																							Let Tu2118
																																																																								Unit
																																																																								ExtFunApp read_int Tu2118,
																																																																							Let refltype
																																																																								Let Tu2119
																																																																									Unit
																																																																									ExtFunApp read_int Tu2119,
																																																																								Let isrot_p
																																																																									Let Tu2120
																																																																										Unit
																																																																										ExtFunApp read_int Tu2120,
																																																																									Let abc
																																																																										Let Ti2121
																																																																											Int:3
																																																																											Let Td2122
																																																																												Float:0.000000
																																																																												ExtFunApp create_float_array Ti2121,Td2122,
																																																																										Let Tu63
																																																																											Let Ti2123
																																																																												Int:0
																																																																												Let Td2125
																																																																													Let Tu2124
																																																																														Unit
																																																																														ExtFunApp read_float Tu2124,
																																																																													Put abc Ti2123 Td2125
																																																																											Let Tu62
																																																																												Let Ti2126
																																																																													Int:1
																																																																													Let Td2128
																																																																														Let Tu2127
																																																																															Unit
																																																																															ExtFunApp read_float Tu2127,
																																																																														Put abc Ti2126 Td2128
																																																																												Let Tu61
																																																																													Let Ti2129
																																																																														Int:2
																																																																														Let Td2131
																																																																															Let Tu2130
																																																																																Unit
																																																																																ExtFunApp read_float Tu2130,
																																																																															Put abc Ti2129 Td2131
																																																																													Let xyz
																																																																														Let Ti2132
																																																																															Int:3
																																																																															Let Td2133
																																																																																Float:0.000000
																																																																																ExtFunApp create_float_array Ti2132,Td2133,
																																																																														Let Tu60
																																																																															Let Ti2134
																																																																																Int:0
																																																																																Let Td2136
																																																																																	Let Tu2135
																																																																																		Unit
																																																																																		ExtFunApp read_float Tu2135,
																																																																																	Put xyz Ti2134 Td2136
																																																																															Let Tu59
																																																																																Let Ti2137
																																																																																	Int:1
																																																																																	Let Td2139
																																																																																		Let Tu2138
																																																																																			Unit
																																																																																			ExtFunApp read_float Tu2138,
																																																																																		Put xyz Ti2137 Td2139
																																																																																Let Tu58
																																																																																	Let Ti2140
																																																																																		Int:2
																																																																																		Let Td2142
																																																																																			Let Tu2141
																																																																																				Unit
																																																																																				ExtFunApp read_float Tu2141,
																																																																																			Put xyz Ti2140 Td2142
																																																																																	Let m_invert
																																																																																		Let Td2144
																																																																																			Let Tu2143
																																																																																				Unit
																																																																																				ExtFunApp read_float Tu2143,
																																																																																			App fisnegTd2144 
																																																																																		Let reflparam
																																																																																			Let Ti2145
																																																																																				Int:2
																																																																																				Let Td2146
																																																																																					Float:0.000000
																																																																																					ExtFunApp create_float_array Ti2145,Td2146,
																																																																																			Let Tu57
																																																																																				Let Ti2147
																																																																																					Int:0
																																																																																					Let Td2149
																																																																																						Let Tu2148
																																																																																							Unit
																																																																																							ExtFunApp read_float Tu2148,
																																																																																						Put reflparam Ti2147 Td2149
																																																																																				Let Tu56
																																																																																					Let Ti2150
																																																																																						Int:1
																																																																																						Let Td2152
																																																																																							Let Tu2151
																																																																																								Unit
																																																																																								ExtFunApp read_float Tu2151,
																																																																																							Put reflparam Ti2150 Td2152
																																																																																					Let color
																																																																																						Let Ti2153
																																																																																							Int:3
																																																																																							Let Td2154
																																																																																								Float:0.000000
																																																																																								ExtFunApp create_float_array Ti2153,Td2154,
																																																																																						Let Tu55
																																																																																							Let Ti2155
																																																																																								Int:0
																																																																																								Let Td2157
																																																																																									Let Tu2156
																																																																																										Unit
																																																																																										ExtFunApp read_float Tu2156,
																																																																																									Put color Ti2155 Td2157
																																																																																							Let Tu54
																																																																																								Let Ti2158
																																																																																									Int:1
																																																																																									Let Td2160
																																																																																										Let Tu2159
																																																																																											Unit
																																																																																											ExtFunApp read_float Tu2159,
																																																																																										Put color Ti2158 Td2160
																																																																																								Let Tu53
																																																																																									Let Ti2161
																																																																																										Int:2
																																																																																										Let Td2163
																																																																																											Let Tu2162
																																																																																												Unit
																																																																																												ExtFunApp read_float Tu2162,
																																																																																											Put color Ti2161 Td2163
																																																																																									Let rotation
																																																																																										Let Ti2164
																																																																																											Int:3
																																																																																											Let Td2165
																																																																																												Float:0.000000
																																																																																												ExtFunApp create_float_array Ti2164,Td2165,
																																																																																										Let Tu52
																																																																																											Let Ti2166
																																																																																												Int:0
																																																																																												IfEq isrot_p Ti2166
																																																																																													Unit
																																																																																													Let Tu46
																																																																																														Let Ti2167
																																																																																															Int:0
																																																																																															Let Td2170
																																																																																																Let Td2169
																																																																																																	Let Tu2168
																																																																																																		Unit
																																																																																																		ExtFunApp read_float Tu2168,
																																																																																																	App radTd2169 
																																																																																																Put rotation Ti2167 Td2170
																																																																																														Let Tu45
																																																																																															Let Ti2171
																																																																																																Int:1
																																																																																																Let Td2174
																																																																																																	Let Td2173
																																																																																																		Let Tu2172
																																																																																																			Unit
																																																																																																			ExtFunApp read_float Tu2172,
																																																																																																		App radTd2173 
																																																																																																	Put rotation Ti2171 Td2174
																																																																																															Let Ti2175
																																																																																																Int:2
																																																																																																Let Td2178
																																																																																																	Let Td2177
																																																																																																		Let Tu2176
																																																																																																			Unit
																																																																																																			ExtFunApp read_float Tu2176,
																																																																																																		App radTd2177 
																																																																																																	Put rotation Ti2175 Td2178
																																																																																											Let m_invert2
																																																																																												Let Ti2179
																																																																																													Int:2
																																																																																													IfEq form Ti2179
																																																																																														Int:1
																																																																																														Var m_invert
																																																																																												Let ctbl
																																																																																													Let Ti2180
																																																																																														Int:4
																																																																																														Let Td2181
																																																																																															Float:0.000000
																																																																																															ExtFunApp create_float_array Ti2180,Td2181,
																																																																																													Let obj
																																																																																														Tuple (texture,form,refltype,isrot_p,abc,xyz,m_invert2,reflparam,color,rotation,ctbl,)
																																																																																														Let Tu51
																																																																																															Let Ta2182
																																																																																																ExtArray 48
																																																																																																Put Ta2182 n obj
																																																																																															Let Tu50
																																																																																																Let Ti2183
																																																																																																	Int:3
																																																																																																	IfEq form Ti2183
																																																																																																		Let a
																																																																																																			Let Ti2184
																																																																																																				Int:0
																																																																																																				Get abc Ti2184
																																																																																																			Let Tu48
																																																																																																				Let Ti2185
																																																																																																					Int:0
																																																																																																					Let Td2191
																																																																																																						Let Tb2186
																																																																																																							App fiszeroa 
																																																																																																							Let Ti2187
																																																																																																								Int:0
																																																																																																								IfEq Tb2186 Ti2187
																																																																																																									Let Td2188
																																																																																																										App sgna 
																																																																																																										Let Td2189
																																																																																																											App fsqra 
																																																																																																											Let Td2190
																																																																																																												FReciprocal Td2189
																																																																																																												FMul Td2188 Td2190
																																																																																																									Float:0.000000
																																																																																																						Put abc Ti2185 Td2191
																																																																																																				Let b
																																																																																																					Let Ti2192
																																																																																																						Int:1
																																																																																																						Get abc Ti2192
																																																																																																					Let Tu47
																																																																																																						Let Ti2193
																																																																																																							Int:1
																																																																																																							Let Td2199
																																																																																																								Let Tb2194
																																																																																																									App fiszerob 
																																																																																																									Let Ti2195
																																																																																																										Int:0
																																																																																																										IfEq Tb2194 Ti2195
																																																																																																											Let Td2196
																																																																																																												App sgnb 
																																																																																																												Let Td2197
																																																																																																													App fsqrb 
																																																																																																													Let Td2198
																																																																																																														FReciprocal Td2197
																																																																																																														FMul Td2196 Td2198
																																																																																																											Float:0.000000
																																																																																																								Put abc Ti2193 Td2199
																																																																																																						Let c
																																																																																																							Let Ti2200
																																																																																																								Int:2
																																																																																																								Get abc Ti2200
																																																																																																							Let Ti2201
																																																																																																								Int:2
																																																																																																								Let Td2207
																																																																																																									Let Tb2202
																																																																																																										App fiszeroc 
																																																																																																										Let Ti2203
																																																																																																											Int:0
																																																																																																											IfEq Tb2202 Ti2203
																																																																																																												Let Td2204
																																																																																																													App sgnc 
																																																																																																													Let Td2205
																																																																																																														App fsqrc 
																																																																																																														Let Td2206
																																																																																																															FReciprocal Td2205
																																																																																																															FMul Td2204 Td2206
																																																																																																												Float:0.000000
																																																																																																									Put abc Ti2201 Td2207
																																																																																																		Let Ti2208
																																																																																																			Int:2
																																																																																																			IfEq form Ti2208
																																																																																																				Let Ti2210
																																																																																																					Let Ti2209
																																																																																																						Int:0
																																																																																																						IfEq m_invert Ti2209
																																																																																																							Int:1
																																																																																																							Int:0
																																																																																																					App vecunit_sgnabc Ti2210 
																																																																																																				Unit
																																																																																																Let Tu49
																																																																																																	Let Ti2211
																																																																																																		Int:0
																																																																																																		IfEq isrot_p Ti2211
																																																																																																			Unit
																																																																																																			App rotate_quadratic_matrixabc rotation 
																																																																																																	Int:1
																																																																			LetRec read_object n 
																																																																				Let Ti2108
																																																																					Int:60
																																																																					IfLE Ti2108 n
																																																																						Unit
																																																																						Let Tb2109
																																																																							App read_nth_objectn 
																																																																							Let Ti2110
																																																																								Int:0
																																																																								IfEq Tb2109 Ti2110
																																																																									Let Ta2111
																																																																										ExtArray 0
																																																																										Let Ti2112
																																																																											Int:0
																																																																											Put Ta2111 Ti2112 n
																																																																									Let Ti2114
																																																																										Let Ti2113
																																																																											Int:1
																																																																											Add n Ti2113
																																																																										App read_objectTi2114 
																																																																				LetRec read_all_object Tu64 
																																																																					Let Ti2107
																																																																						Int:0
																																																																						App read_objectTi2107 
																																																																					LetRec read_net_item length 
																																																																						Let item
																																																																							Let Tu2098
																																																																								Unit
																																																																								ExtFunApp read_int Tu2098,
																																																																							Let Ti2100
																																																																								Let Ti2099
																																																																									Int:1
																																																																									Neg Ti2099
																																																																								IfEq item Ti2100
																																																																									Let Ti2102
																																																																										Let Ti2101
																																																																											Int:1
																																																																											Add length Ti2101
																																																																										Let Ti2104
																																																																											Let Ti2103
																																																																												Int:1
																																																																												Neg Ti2103
																																																																											ExtFunApp create_array Ti2102,Ti2104,
																																																																									Let v
																																																																										Let Ti2106
																																																																											Let Ti2105
																																																																												Int:1
																																																																												Add length Ti2105
																																																																											App read_net_itemTi2106 
																																																																										Let Tu65
																																																																											Put v length item
																																																																											Var v
																																																																						LetRec read_or_network length 
																																																																							Let net
																																																																								Let Ti2089
																																																																									Int:0
																																																																									App read_net_itemTi2089 
																																																																								Let Ti2091
																																																																									Let Ti2090
																																																																										Int:0
																																																																										Get net Ti2090
																																																																									Let Ti2093
																																																																										Let Ti2092
																																																																											Int:1
																																																																											Neg Ti2092
																																																																										IfEq Ti2091 Ti2093
																																																																											Let Ti2095
																																																																												Let Ti2094
																																																																													Int:1
																																																																													Add length Ti2094
																																																																												ExtFunApp create_array Ti2095,net,
																																																																											Let v
																																																																												Let Ti2097
																																																																													Let Ti2096
																																																																														Int:1
																																																																														Add length Ti2096
																																																																													App read_or_networkTi2097 
																																																																												Let Tu66
																																																																													Put v length net
																																																																													Var v
																																																																							LetRec read_and_network n 
																																																																								Let net
																																																																									Let Ti2081
																																																																										Int:0
																																																																										App read_net_itemTi2081 
																																																																									Let Ti2083
																																																																										Let Ti2082
																																																																											Int:0
																																																																											Get net Ti2082
																																																																										Let Ti2085
																																																																											Let Ti2084
																																																																												Int:1
																																																																												Neg Ti2084
																																																																											IfEq Ti2083 Ti2085
																																																																												Unit
																																																																												Let Tu67
																																																																													Let Ta2086
																																																																														ExtArray 332
																																																																														Put Ta2086 n net
																																																																													Let Ti2088
																																																																														Let Ti2087
																																																																															Int:1
																																																																															Add n Ti2087
																																																																														App read_and_networkTi2088 
																																																																								LetRec read_parameter Tu68 
																																																																									Let Tu72
																																																																										Let Tu2073
																																																																											Unit
																																																																											App read_screen_settingsTu2073 
																																																																										Let Tu71
																																																																											Let Tu2074
																																																																												Unit
																																																																												App read_lightTu2074 
																																																																											Let Tu70
																																																																												Let Tu2075
																																																																													Unit
																																																																													App read_all_objectTu2075 
																																																																												Let Tu69
																																																																													Let Ti2076
																																																																														Int:0
																																																																														App read_and_networkTi2076 
																																																																													Let Ta2077
																																																																														ExtArray 536
																																																																														Let Ti2078
																																																																															Int:0
																																																																															Let Ta2080
																																																																																Let Ti2079
																																																																																	Int:0
																																																																																	App read_or_networkTi2079 
																																																																																Put Ta2077 Ti2078 Ta2080
																																																																									LetRec solver_rect_surface m dirvec b0 b1 b2 i0 i1 i2 
																																																																										Let Tb2047
																																																																											Let Td2046
																																																																												Get dirvec i0
																																																																												App fiszeroTd2046 
																																																																											Let Ti2048
																																																																												Int:0
																																																																												IfEq Tb2047 Ti2048
																																																																													Let abc
																																																																														App o_param_abcm 
																																																																														Let d
																																																																															Let Tb2052
																																																																																Let Tb2049
																																																																																	App o_isinvertm 
																																																																																	Let Tb2051
																																																																																		Let Td2050
																																																																																			Get dirvec i0
																																																																																			App fisnegTd2050 
																																																																																		App xorTb2049 Tb2051 
																																																																																Let Td2053
																																																																																	Get abc i0
																																																																																	App fneg_condTb2052 Td2053 
																																																																															Let d2
																																																																																Let Td2054
																																																																																	FSub d b0
																																																																																	Let Td2055
																																																																																		Get dirvec i0
																																																																																		Let Td2056
																																																																																			FReciprocal Td2055
																																																																																			FMul Td2054 Td2056
																																																																																Let Tb2062
																																																																																	Let Td2060
																																																																																		Let Td2059
																																																																																			Let Td2058
																																																																																				Let Td2057
																																																																																					Get dirvec i1
																																																																																					FMul d2 Td2057
																																																																																				FAdd Td2058 b1
																																																																																			App fabsTd2059 
																																																																																		Let Td2061
																																																																																			Get abc i1
																																																																																			App flessTd2060 Td2061 
																																																																																	Let Ti2063
																																																																																		Int:0
																																																																																		IfEq Tb2062 Ti2063
																																																																																			Int:0
																																																																																			Let Tb2069
																																																																																				Let Td2067
																																																																																					Let Td2066
																																																																																						Let Td2065
																																																																																							Let Td2064
																																																																																								Get dirvec i2
																																																																																								FMul d2 Td2064
																																																																																							FAdd Td2065 b2
																																																																																						App fabsTd2066 
																																																																																					Let Td2068
																																																																																						Get abc i2
																																																																																						App flessTd2067 Td2068 
																																																																																				Let Ti2070
																																																																																					Int:0
																																																																																					IfEq Tb2069 Ti2070
																																																																																						Int:0
																																																																																						Let Tu73
																																																																																							Let Ta2071
																																																																																								ExtArray 540
																																																																																								Let Ti2072
																																																																																									Int:0
																																																																																									Put Ta2071 Ti2072 d2
																																																																																							Int:1
																																																																													Int:0
																																																																										LetRec solver_rect m dirvec b0 b1 b2 
																																																																											Let Tb2034
																																																																												Let Ti2031
																																																																													Int:0
																																																																													Let Ti2032
																																																																														Int:1
																																																																														Let Ti2033
																																																																															Int:2
																																																																															App solver_rect_surfacem dirvec b0 b1 b2 Ti2031 Ti2032 Ti2033 
																																																																												Let Ti2035
																																																																													Int:0
																																																																													IfEq Tb2034 Ti2035
																																																																														Let Tb2039
																																																																															Let Ti2036
																																																																																Int:1
																																																																																Let Ti2037
																																																																																	Int:2
																																																																																	Let Ti2038
																																																																																		Int:0
																																																																																		App solver_rect_surfacem dirvec b1 b2 b0 Ti2036 Ti2037 Ti2038 
																																																																															Let Ti2040
																																																																																Int:0
																																																																																IfEq Tb2039 Ti2040
																																																																																	Let Tb2044
																																																																																		Let Ti2041
																																																																																			Int:2
																																																																																			Let Ti2042
																																																																																				Int:0
																																																																																				Let Ti2043
																																																																																					Int:1
																																																																																					App solver_rect_surfacem dirvec b2 b0 b1 Ti2041 Ti2042 Ti2043 
																																																																																		Let Ti2045
																																																																																			Int:0
																																																																																			IfEq Tb2044 Ti2045
																																																																																				Int:0
																																																																																				Int:3
																																																																																	Int:2
																																																																														Int:1
																																																																											LetRec solver_surface m dirvec b0 b1 b2 
																																																																												Let abc
																																																																													App o_param_abcm 
																																																																													Let d
																																																																														App veciproddirvec abc 
																																																																														Let Tb2023
																																																																															App fisposd 
																																																																															Let Ti2024
																																																																																Int:0
																																																																																IfEq Tb2023 Ti2024
																																																																																	Int:0
																																																																																	Let Tu74
																																																																																		Let Ta2025
																																																																																			ExtArray 540
																																																																																			Let Ti2026
																																																																																				Int:0
																																																																																				Let Td2030
																																																																																					Let Td2028
																																																																																						Let Td2027
																																																																																							App veciprod2abc b0 b1 b2 
																																																																																							App fnegTd2027 
																																																																																						Let Td2029
																																																																																							FReciprocal d
																																																																																							FMul Td2028 Td2029
																																																																																					Put Ta2025 Ti2026 Td2030
																																																																																		Int:1
																																																																												LetRec quadratic m v0 v1 v2 
																																																																													Let diag_part
																																																																														Let Td2006
																																																																															Let Td2002
																																																																																Let Td2000
																																																																																	App fsqrv0 
																																																																																	Let Td2001
																																																																																		App o_param_am 
																																																																																		FMul Td2000 Td2001
																																																																																Let Td2005
																																																																																	Let Td2003
																																																																																		App fsqrv1 
																																																																																		Let Td2004
																																																																																			App o_param_bm 
																																																																																			FMul Td2003 Td2004
																																																																																	FAdd Td2002 Td2005
																																																																															Let Td2009
																																																																																Let Td2007
																																																																																	App fsqrv2 
																																																																																	Let Td2008
																																																																																		App o_param_cm 
																																																																																		FMul Td2007 Td2008
																																																																																FAdd Td2006 Td2009
																																																																														Let Ti2010
																																																																															App o_isrotm 
																																																																															Let Ti2011
																																																																																Int:0
																																																																																IfEq Ti2010 Ti2011
																																																																																	Var diag_part
																																																																																	Let Td2019
																																																																																		Let Td2015
																																																																																			Let Td2014
																																																																																				Let Td2012
																																																																																					FMul v1 v2
																																																																																					Let Td2013
																																																																																						App o_param_r1m 
																																																																																						FMul Td2012 Td2013
																																																																																				FAdd diag_part Td2014
																																																																																			Let Td2018
																																																																																				Let Td2016
																																																																																					FMul v2 v0
																																																																																					Let Td2017
																																																																																						App o_param_r2m 
																																																																																						FMul Td2016 Td2017
																																																																																				FAdd Td2015 Td2018
																																																																																		Let Td2022
																																																																																			Let Td2020
																																																																																				FMul v0 v1
																																																																																				Let Td2021
																																																																																					App o_param_r3m 
																																																																																					FMul Td2020 Td2021
																																																																																			FAdd Td2019 Td2022
																																																																													LetRec bilinear m v0 v1 v2 w0 w1 w2 
																																																																														Let diag_part
																																																																															Let Td1976
																																																																																Let Td1972
																																																																																	Let Td1970
																																																																																		FMul v0 w0
																																																																																		Let Td1971
																																																																																			App o_param_am 
																																																																																			FMul Td1970 Td1971
																																																																																	Let Td1975
																																																																																		Let Td1973
																																																																																			FMul v1 w1
																																																																																			Let Td1974
																																																																																				App o_param_bm 
																																																																																				FMul Td1973 Td1974
																																																																																		FAdd Td1972 Td1975
																																																																																Let Td1979
																																																																																	Let Td1977
																																																																																		FMul v2 w2
																																																																																		Let Td1978
																																																																																			App o_param_cm 
																																																																																			FMul Td1977 Td1978
																																																																																	FAdd Td1976 Td1979
																																																																															Let Ti1980
																																																																																App o_isrotm 
																																																																																Let Ti1981
																																																																																	Int:0
																																																																																	IfEq Ti1980 Ti1981
																																																																																		Var diag_part
																																																																																		Let Td1999
																																																																																			Let Td1998
																																																																																				Let Td1992
																																																																																					Let Td1986
																																																																																						Let Td1984
																																																																																							Let Td1982
																																																																																								FMul v2 w1
																																																																																								Let Td1983
																																																																																									FMul v1 w2
																																																																																									FAdd Td1982 Td1983
																																																																																							Let Td1985
																																																																																								App o_param_r1m 
																																																																																								FMul Td1984 Td1985
																																																																																						Let Td1991
																																																																																							Let Td1989
																																																																																								Let Td1987
																																																																																									FMul v0 w2
																																																																																									Let Td1988
																																																																																										FMul v2 w0
																																																																																										FAdd Td1987 Td1988
																																																																																								Let Td1990
																																																																																									App o_param_r2m 
																																																																																									FMul Td1989 Td1990
																																																																																							FAdd Td1986 Td1991
																																																																																					Let Td1997
																																																																																						Let Td1995
																																																																																							Let Td1993
																																																																																								FMul v0 w1
																																																																																								Let Td1994
																																																																																									FMul v1 w0
																																																																																									FAdd Td1993 Td1994
																																																																																							Let Td1996
																																																																																								App o_param_r3m 
																																																																																								FMul Td1995 Td1996
																																																																																						FAdd Td1992 Td1997
																																																																																				App fhalfTd1998 
																																																																																			FAdd diag_part Td1999
																																																																														LetRec solver_second m dirvec b0 b1 b2 
																																																																															Let aa
																																																																																Let Td1943
																																																																																	Let Ti1942
																																																																																		Int:0
																																																																																		Get dirvec Ti1942
																																																																																	Let Td1945
																																																																																		Let Ti1944
																																																																																			Int:1
																																																																																			Get dirvec Ti1944
																																																																																		Let Td1947
																																																																																			Let Ti1946
																																																																																				Int:2
																																																																																				Get dirvec Ti1946
																																																																																			App quadraticm Td1943 Td1945 Td1947 
																																																																																Let Tb1948
																																																																																	App fiszeroaa 
																																																																																	Let Ti1949
																																																																																		Int:0
																																																																																		IfEq Tb1948 Ti1949
																																																																																			Let bb
																																																																																				Let Td1951
																																																																																					Let Ti1950
																																																																																						Int:0
																																																																																						Get dirvec Ti1950
																																																																																					Let Td1953
																																																																																						Let Ti1952
																																																																																							Int:1
																																																																																							Get dirvec Ti1952
																																																																																						Let Td1955
																																																																																							Let Ti1954
																																																																																								Int:2
																																																																																								Get dirvec Ti1954
																																																																																							App bilinearm Td1951 Td1953 Td1955 b0 b1 b2 
																																																																																				Let cc0
																																																																																					App quadraticm b0 b1 b2 
																																																																																					Let cc
																																																																																						Let Ti1956
																																																																																							App o_formm 
																																																																																							Let Ti1957
																																																																																								Int:3
																																																																																								IfEq Ti1956 Ti1957
																																																																																									Let Td1958
																																																																																										Float:1.000000
																																																																																										FSub cc0 Td1958
																																																																																									Var cc0
																																																																																						Let d
																																																																																							Let Td1959
																																																																																								App fsqrbb 
																																																																																								Let Td1960
																																																																																									FMul aa cc
																																																																																									FSub Td1959 Td1960
																																																																																							Let Tb1961
																																																																																								App fisposd 
																																																																																								Let Ti1962
																																																																																									Int:0
																																																																																									IfEq Tb1961 Ti1962
																																																																																										Int:0
																																																																																										Let sd
																																																																																											ExtFunApp sqrt d,
																																																																																											Let t1
																																																																																												Let Tb1963
																																																																																													App o_isinvertm 
																																																																																													Let Ti1964
																																																																																														Int:0
																																																																																														IfEq Tb1963 Ti1964
																																																																																															App fnegsd 
																																																																																															Var sd
																																																																																												Let Tu75
																																																																																													Let Ta1965
																																																																																														ExtArray 540
																																																																																														Let Ti1966
																																																																																															Int:0
																																																																																															Let Td1969
																																																																																																Let Td1967
																																																																																																	FSub t1 bb
																																																																																																	Let Td1968
																																																																																																		FReciprocal aa
																																																																																																		FMul Td1967 Td1968
																																																																																																Put Ta1965 Ti1966 Td1969
																																																																																													Int:1
																																																																																			Int:0
																																																																															LetRec solver index dirvec org 
																																																																																Let m
																																																																																	Let Ta1930
																																																																																		ExtArray 48
																																																																																		Get Ta1930 index
																																																																																	Let b0
																																																																																		Let Td1932
																																																																																			Let Ti1931
																																																																																				Int:0
																																																																																				Get org Ti1931
																																																																																			Let Td1933
																																																																																				App o_param_xm 
																																																																																				FSub Td1932 Td1933
																																																																																		Let b1
																																																																																			Let Td1935
																																																																																				Let Ti1934
																																																																																					Int:1
																																																																																					Get org Ti1934
																																																																																				Let Td1936
																																																																																					App o_param_ym 
																																																																																					FSub Td1935 Td1936
																																																																																			Let b2
																																																																																				Let Td1938
																																																																																					Let Ti1937
																																																																																						Int:2
																																																																																						Get org Ti1937
																																																																																					Let Td1939
																																																																																						App o_param_zm 
																																																																																						FSub Td1938 Td1939
																																																																																				Let m_shape
																																																																																					App o_formm 
																																																																																					Let Ti1940
																																																																																						Int:1
																																																																																						IfEq m_shape Ti1940
																																																																																							App solver_rectm dirvec b0 b1 b2 
																																																																																							Let Ti1941
																																																																																								Int:2
																																																																																								IfEq m_shape Ti1941
																																																																																									App solver_surfacem dirvec b0 b1 b2 
																																																																																									App solver_secondm dirvec b0 b1 b2 
																																																																																LetRec solver_rect_fast m v dconst b0 b1 b2 
																																																																																	Let d0
																																																																																		Let Td1845
																																																																																			Let Td1844
																																																																																				Let Ti1843
																																																																																					Int:0
																																																																																					Get dconst Ti1843
																																																																																				FSub Td1844 b0
																																																																																			Let Td1847
																																																																																				Let Ti1846
																																																																																					Int:1
																																																																																					Get dconst Ti1846
																																																																																				FMul Td1845 Td1847
																																																																																		Let Ti1868
																																																																																			Let Tb1854
																																																																																				Let Td1852
																																																																																					Let Td1851
																																																																																						Let Td1850
																																																																																							Let Td1849
																																																																																								Let Ti1848
																																																																																									Int:1
																																																																																									Get v Ti1848
																																																																																								FMul d0 Td1849
																																																																																							FAdd Td1850 b1
																																																																																						App fabsTd1851 
																																																																																					Let Td1853
																																																																																						App o_param_bm 
																																																																																						App flessTd1852 Td1853 
																																																																																				Let Ti1855
																																																																																					Int:0
																																																																																					IfEq Tb1854 Ti1855
																																																																																						Int:0
																																																																																						Let Tb1862
																																																																																							Let Td1860
																																																																																								Let Td1859
																																																																																									Let Td1858
																																																																																										Let Td1857
																																																																																											Let Ti1856
																																																																																												Int:2
																																																																																												Get v Ti1856
																																																																																											FMul d0 Td1857
																																																																																										FAdd Td1858 b2
																																																																																									App fabsTd1859 
																																																																																								Let Td1861
																																																																																									App o_param_cm 
																																																																																									App flessTd1860 Td1861 
																																																																																							Let Ti1863
																																																																																								Int:0
																																																																																								IfEq Tb1862 Ti1863
																																																																																									Int:0
																																																																																									Let Tb1866
																																																																																										Let Td1865
																																																																																											Let Ti1864
																																																																																												Int:1
																																																																																												Get dconst Ti1864
																																																																																											App fiszeroTd1865 
																																																																																										Let Ti1867
																																																																																											Int:0
																																																																																											IfEq Tb1866 Ti1867
																																																																																												Int:1
																																																																																												Int:0
																																																																																			Let Ti1869
																																																																																				Int:0
																																																																																				IfEq Ti1868 Ti1869
																																																																																					Let d1
																																																																																						Let Td1872
																																																																																							Let Td1871
																																																																																								Let Ti1870
																																																																																									Int:2
																																																																																									Get dconst Ti1870
																																																																																								FSub Td1871 b1
																																																																																							Let Td1874
																																																																																								Let Ti1873
																																																																																									Int:3
																																																																																									Get dconst Ti1873
																																																																																								FMul Td1872 Td1874
																																																																																						Let Ti1895
																																																																																							Let Tb1881
																																																																																								Let Td1879
																																																																																									Let Td1878
																																																																																										Let Td1877
																																																																																											Let Td1876
																																																																																												Let Ti1875
																																																																																													Int:0
																																																																																													Get v Ti1875
																																																																																												FMul d1 Td1876
																																																																																											FAdd Td1877 b0
																																																																																										App fabsTd1878 
																																																																																									Let Td1880
																																																																																										App o_param_am 
																																																																																										App flessTd1879 Td1880 
																																																																																								Let Ti1882
																																																																																									Int:0
																																																																																									IfEq Tb1881 Ti1882
																																																																																										Int:0
																																																																																										Let Tb1889
																																																																																											Let Td1887
																																																																																												Let Td1886
																																																																																													Let Td1885
																																																																																														Let Td1884
																																																																																															Let Ti1883
																																																																																																Int:2
																																																																																																Get v Ti1883
																																																																																															FMul d1 Td1884
																																																																																														FAdd Td1885 b2
																																																																																													App fabsTd1886 
																																																																																												Let Td1888
																																																																																													App o_param_cm 
																																																																																													App flessTd1887 Td1888 
																																																																																											Let Ti1890
																																																																																												Int:0
																																																																																												IfEq Tb1889 Ti1890
																																																																																													Int:0
																																																																																													Let Tb1893
																																																																																														Let Td1892
																																																																																															Let Ti1891
																																																																																																Int:3
																																																																																																Get dconst Ti1891
																																																																																															App fiszeroTd1892 
																																																																																														Let Ti1894
																																																																																															Int:0
																																																																																															IfEq Tb1893 Ti1894
																																																																																																Int:1
																																																																																																Int:0
																																																																																							Let Ti1896
																																																																																								Int:0
																																																																																								IfEq Ti1895 Ti1896
																																																																																									Let d2
																																																																																										Let Td1899
																																																																																											Let Td1898
																																																																																												Let Ti1897
																																																																																													Int:4
																																																																																													Get dconst Ti1897
																																																																																												FSub Td1898 b2
																																																																																											Let Td1901
																																																																																												Let Ti1900
																																																																																													Int:5
																																																																																													Get dconst Ti1900
																																																																																												FMul Td1899 Td1901
																																																																																										Let Ti1922
																																																																																											Let Tb1908
																																																																																												Let Td1906
																																																																																													Let Td1905
																																																																																														Let Td1904
																																																																																															Let Td1903
																																																																																																Let Ti1902
																																																																																																	Int:0
																																																																																																	Get v Ti1902
																																																																																																FMul d2 Td1903
																																																																																															FAdd Td1904 b0
																																																																																														App fabsTd1905 
																																																																																													Let Td1907
																																																																																														App o_param_am 
																																																																																														App flessTd1906 Td1907 
																																																																																												Let Ti1909
																																																																																													Int:0
																																																																																													IfEq Tb1908 Ti1909
																																																																																														Int:0
																																																																																														Let Tb1916
																																																																																															Let Td1914
																																																																																																Let Td1913
																																																																																																	Let Td1912
																																																																																																		Let Td1911
																																																																																																			Let Ti1910
																																																																																																				Int:1
																																																																																																				Get v Ti1910
																																																																																																			FMul d2 Td1911
																																																																																																		FAdd Td1912 b1
																																																																																																	App fabsTd1913 
																																																																																																Let Td1915
																																																																																																	App o_param_bm 
																																																																																																	App flessTd1914 Td1915 
																																																																																															Let Ti1917
																																																																																																Int:0
																																																																																																IfEq Tb1916 Ti1917
																																																																																																	Int:0
																																																																																																	Let Tb1920
																																																																																																		Let Td1919
																																																																																																			Let Ti1918
																																																																																																				Int:5
																																																																																																				Get dconst Ti1918
																																																																																																			App fiszeroTd1919 
																																																																																																		Let Ti1921
																																																																																																			Int:0
																																																																																																			IfEq Tb1920 Ti1921
																																																																																																				Int:1
																																																																																																				Int:0
																																																																																											Let Ti1923
																																																																																												Int:0
																																																																																												IfEq Ti1922 Ti1923
																																																																																													Int:0
																																																																																													Let Tu78
																																																																																														Let Ta1924
																																																																																															ExtArray 540
																																																																																															Let Ti1925
																																																																																																Int:0
																																																																																																Put Ta1924 Ti1925 d2
																																																																																														Int:3
																																																																																									Let Tu77
																																																																																										Let Ta1926
																																																																																											ExtArray 540
																																																																																											Let Ti1927
																																																																																												Int:0
																																																																																												Put Ta1926 Ti1927 d1
																																																																																										Int:2
																																																																																					Let Tu76
																																																																																						Let Ta1928
																																																																																							ExtArray 540
																																																																																							Let Ti1929
																																																																																								Int:0
																																																																																								Put Ta1928 Ti1929 d0
																																																																																						Int:1
																																																																																	LetRec solver_surface_fast m dconst b0 b1 b2 
																																																																																		Let Tb1828
																																																																																			Let Td1827
																																																																																				Let Ti1826
																																																																																					Int:0
																																																																																					Get dconst Ti1826
																																																																																				App fisnegTd1827 
																																																																																			Let Ti1829
																																																																																				Int:0
																																																																																				IfEq Tb1828 Ti1829
																																																																																					Int:0
																																																																																					Let Tu79
																																																																																						Let Ta1830
																																																																																							ExtArray 540
																																																																																							Let Ti1831
																																																																																								Int:0
																																																																																								Let Td1842
																																																																																									Let Td1838
																																																																																										Let Td1834
																																																																																											Let Td1833
																																																																																												Let Ti1832
																																																																																													Int:1
																																																																																													Get dconst Ti1832
																																																																																												FMul Td1833 b0
																																																																																											Let Td1837
																																																																																												Let Td1836
																																																																																													Let Ti1835
																																																																																														Int:2
																																																																																														Get dconst Ti1835
																																																																																													FMul Td1836 b1
																																																																																												FAdd Td1834 Td1837
																																																																																										Let Td1841
																																																																																											Let Td1840
																																																																																												Let Ti1839
																																																																																													Int:3
																																																																																													Get dconst Ti1839
																																																																																												FMul Td1840 b2
																																																																																											FAdd Td1838 Td1841
																																																																																									Put Ta1830 Ti1831 Td1842
																																																																																						Int:1
																																																																																		LetRec solver_second_fast m dconst b0 b1 b2 
																																																																																			Let aa
																																																																																				Let Ti1790
																																																																																					Int:0
																																																																																					Get dconst Ti1790
																																																																																				Let Tb1791
																																																																																					App fiszeroaa 
																																																																																					Let Ti1792
																																																																																						Int:0
																																																																																						IfEq Tb1791 Ti1792
																																																																																							Let neg_bb
																																																																																								Let Td1799
																																																																																									Let Td1795
																																																																																										Let Td1794
																																																																																											Let Ti1793
																																																																																												Int:1
																																																																																												Get dconst Ti1793
																																																																																											FMul Td1794 b0
																																																																																										Let Td1798
																																																																																											Let Td1797
																																																																																												Let Ti1796
																																																																																													Int:2
																																																																																													Get dconst Ti1796
																																																																																												FMul Td1797 b1
																																																																																											FAdd Td1795 Td1798
																																																																																									Let Td1802
																																																																																										Let Td1801
																																																																																											Let Ti1800
																																																																																												Int:3
																																																																																												Get dconst Ti1800
																																																																																											FMul Td1801 b2
																																																																																										FAdd Td1799 Td1802
																																																																																								Let cc0
																																																																																									App quadraticm b0 b1 b2 
																																																																																									Let cc
																																																																																										Let Ti1803
																																																																																											App o_formm 
																																																																																											Let Ti1804
																																																																																												Int:3
																																																																																												IfEq Ti1803 Ti1804
																																																																																													Let Td1805
																																																																																														Float:1.000000
																																																																																														FSub cc0 Td1805
																																																																																													Var cc0
																																																																																										Let d
																																																																																											Let Td1806
																																																																																												App fsqrneg_bb 
																																																																																												Let Td1807
																																																																																													FMul aa cc
																																																																																													FSub Td1806 Td1807
																																																																																											Let Tb1808
																																																																																												App fisposd 
																																																																																												Let Ti1809
																																																																																													Int:0
																																																																																													IfEq Tb1808 Ti1809
																																																																																														Int:0
																																																																																														Let Tu80
																																																																																															Let Tb1810
																																																																																																App o_isinvertm 
																																																																																																Let Ti1811
																																																																																																	Int:0
																																																																																																	IfEq Tb1810 Ti1811
																																																																																																		Let Ta1812
																																																																																																			ExtArray 540
																																																																																																			Let Ti1813
																																																																																																				Int:0
																																																																																																				Let Td1818
																																																																																																					Let Td1815
																																																																																																						Let Td1814
																																																																																																							ExtFunApp sqrt d,
																																																																																																							FSub neg_bb Td1814
																																																																																																						Let Td1817
																																																																																																							Let Ti1816
																																																																																																								Int:4
																																																																																																								Get dconst Ti1816
																																																																																																							FMul Td1815 Td1817
																																																																																																					Put Ta1812 Ti1813 Td1818
																																																																																																		Let Ta1819
																																																																																																			ExtArray 540
																																																																																																			Let Ti1820
																																																																																																				Int:0
																																																																																																				Let Td1825
																																																																																																					Let Td1822
																																																																																																						Let Td1821
																																																																																																							ExtFunApp sqrt d,
																																																																																																							FAdd neg_bb Td1821
																																																																																																						Let Td1824
																																																																																																							Let Ti1823
																																																																																																								Int:4
																																																																																																								Get dconst Ti1823
																																																																																																							FMul Td1822 Td1824
																																																																																																					Put Ta1819 Ti1820 Td1825
																																																																																															Int:1
																																																																																							Int:0
																																																																																			LetRec solver_fast index dirvec org 
																																																																																				Let m
																																																																																					Let Ta1777
																																																																																						ExtArray 48
																																																																																						Get Ta1777 index
																																																																																					Let b0
																																																																																						Let Td1779
																																																																																							Let Ti1778
																																																																																								Int:0
																																																																																								Get org Ti1778
																																																																																							Let Td1780
																																																																																								App o_param_xm 
																																																																																								FSub Td1779 Td1780
																																																																																						Let b1
																																																																																							Let Td1782
																																																																																								Let Ti1781
																																																																																									Int:1
																																																																																									Get org Ti1781
																																																																																								Let Td1783
																																																																																									App o_param_ym 
																																																																																									FSub Td1782 Td1783
																																																																																							Let b2
																																																																																								Let Td1785
																																																																																									Let Ti1784
																																																																																										Int:2
																																																																																										Get org Ti1784
																																																																																									Let Td1786
																																																																																										App o_param_zm 
																																																																																										FSub Td1785 Td1786
																																																																																								Let dconsts
																																																																																									App d_constdirvec 
																																																																																									Let dconst
																																																																																										Get dconsts index
																																																																																										Let m_shape
																																																																																											App o_formm 
																																																																																											Let Ti1787
																																																																																												Int:1
																																																																																												IfEq m_shape Ti1787
																																																																																													Let Ta1788
																																																																																														App d_vecdirvec 
																																																																																														App solver_rect_fastm Ta1788 dconst b0 b1 b2 
																																																																																													Let Ti1789
																																																																																														Int:2
																																																																																														IfEq m_shape Ti1789
																																																																																															App solver_surface_fastm dconst b0 b1 b2 
																																																																																															App solver_second_fastm dconst b0 b1 b2 
																																																																																				LetRec solver_surface_fast2 m dconst sconst b0 b1 b2 
																																																																																					Let Tb1768
																																																																																						Let Td1767
																																																																																							Let Ti1766
																																																																																								Int:0
																																																																																								Get dconst Ti1766
																																																																																							App fisnegTd1767 
																																																																																						Let Ti1769
																																																																																							Int:0
																																																																																							IfEq Tb1768 Ti1769
																																																																																								Int:0
																																																																																								Let Tu81
																																																																																									Let Ta1770
																																																																																										ExtArray 540
																																																																																										Let Ti1771
																																																																																											Int:0
																																																																																											Let Td1776
																																																																																												Let Td1773
																																																																																													Let Ti1772
																																																																																														Int:0
																																																																																														Get dconst Ti1772
																																																																																													Let Td1775
																																																																																														Let Ti1774
																																																																																															Int:3
																																																																																															Get sconst Ti1774
																																																																																														FMul Td1773 Td1775
																																																																																												Put Ta1770 Ti1771 Td1776
																																																																																									Int:1
																																																																																					LetRec solver_second_fast2 m dconst sconst b0 b1 b2 
																																																																																						Let aa
																																																																																							Let Ti1732
																																																																																								Int:0
																																																																																								Get dconst Ti1732
																																																																																							Let Tb1733
																																																																																								App fiszeroaa 
																																																																																								Let Ti1734
																																																																																									Int:0
																																																																																									IfEq Tb1733 Ti1734
																																																																																										Let neg_bb
																																																																																											Let Td1741
																																																																																												Let Td1737
																																																																																													Let Td1736
																																																																																														Let Ti1735
																																																																																															Int:1
																																																																																															Get dconst Ti1735
																																																																																														FMul Td1736 b0
																																																																																													Let Td1740
																																																																																														Let Td1739
																																																																																															Let Ti1738
																																																																																																Int:2
																																																																																																Get dconst Ti1738
																																																																																															FMul Td1739 b1
																																																																																														FAdd Td1737 Td1740
																																																																																												Let Td1744
																																																																																													Let Td1743
																																																																																														Let Ti1742
																																																																																															Int:3
																																																																																															Get dconst Ti1742
																																																																																														FMul Td1743 b2
																																																																																													FAdd Td1741 Td1744
																																																																																											Let cc
																																																																																												Let Ti1745
																																																																																													Int:3
																																																																																													Get sconst Ti1745
																																																																																												Let d
																																																																																													Let Td1746
																																																																																														App fsqrneg_bb 
																																																																																														Let Td1747
																																																																																															FMul aa cc
																																																																																															FSub Td1746 Td1747
																																																																																													Let Tb1748
																																																																																														App fisposd 
																																																																																														Let Ti1749
																																																																																															Int:0
																																																																																															IfEq Tb1748 Ti1749
																																																																																																Int:0
																																																																																																Let Tu82
																																																																																																	Let Tb1750
																																																																																																		App o_isinvertm 
																																																																																																		Let Ti1751
																																																																																																			Int:0
																																																																																																			IfEq Tb1750 Ti1751
																																																																																																				Let Ta1752
																																																																																																					ExtArray 540
																																																																																																					Let Ti1753
																																																																																																						Int:0
																																																																																																						Let Td1758
																																																																																																							Let Td1755
																																																																																																								Let Td1754
																																																																																																									ExtFunApp sqrt d,
																																																																																																									FSub neg_bb Td1754
																																																																																																								Let Td1757
																																																																																																									Let Ti1756
																																																																																																										Int:4
																																																																																																										Get dconst Ti1756
																																																																																																									FMul Td1755 Td1757
																																																																																																							Put Ta1752 Ti1753 Td1758
																																																																																																				Let Ta1759
																																																																																																					ExtArray 540
																																																																																																					Let Ti1760
																																																																																																						Int:0
																																																																																																						Let Td1765
																																																																																																							Let Td1762
																																																																																																								Let Td1761
																																																																																																									ExtFunApp sqrt d,
																																																																																																									FAdd neg_bb Td1761
																																																																																																								Let Td1764
																																																																																																									Let Ti1763
																																																																																																										Int:4
																																																																																																										Get dconst Ti1763
																																																																																																									FMul Td1762 Td1764
																																																																																																							Put Ta1759 Ti1760 Td1765
																																																																																																	Int:1
																																																																																										Int:0
																																																																																						LetRec solver_fast2 index dirvec 
																																																																																							Let m
																																																																																								Let Ta1725
																																																																																									ExtArray 48
																																																																																									Get Ta1725 index
																																																																																								Let sconst
																																																																																									App o_param_ctblm 
																																																																																									Let b0
																																																																																										Let Ti1726
																																																																																											Int:0
																																																																																											Get sconst Ti1726
																																																																																										Let b1
																																																																																											Let Ti1727
																																																																																												Int:1
																																																																																												Get sconst Ti1727
																																																																																											Let b2
																																																																																												Let Ti1728
																																																																																													Int:2
																																																																																													Get sconst Ti1728
																																																																																												Let dconsts
																																																																																													App d_constdirvec 
																																																																																													Let dconst
																																																																																														Get dconsts index
																																																																																														Let m_shape
																																																																																															App o_formm 
																																																																																															Let Ti1729
																																																																																																Int:1
																																																																																																IfEq m_shape Ti1729
																																																																																																	Let Ta1730
																																																																																																		App d_vecdirvec 
																																																																																																		App solver_rect_fastm Ta1730 dconst b0 b1 b2 
																																																																																																	Let Ti1731
																																																																																																		Int:2
																																																																																																		IfEq m_shape Ti1731
																																																																																																			App solver_surface_fast2m dconst sconst b0 b1 b2 
																																																																																																			App solver_second_fast2m dconst sconst b0 b1 b2 
																																																																																							LetRec setup_rect_table vec m 
																																																																																								Let const
																																																																																									Let Ti1663
																																																																																										Int:6
																																																																																										Let Td1664
																																																																																											Float:0.000000
																																																																																											ExtFunApp create_float_array Ti1663,Td1664,
																																																																																									Let Tu88
																																																																																										Let Tb1667
																																																																																											Let Td1666
																																																																																												Let Ti1665
																																																																																													Int:0
																																																																																													Get vec Ti1665
																																																																																												App fiszeroTd1666 
																																																																																											Let Ti1668
																																																																																												Int:0
																																																																																												IfEq Tb1667 Ti1668
																																																																																													Let Tu83
																																																																																														Let Ti1669
																																																																																															Int:0
																																																																																															Let Td1676
																																																																																																Let Tb1674
																																																																																																	Let Tb1670
																																																																																																		App o_isinvertm 
																																																																																																		Let Tb1673
																																																																																																			Let Td1672
																																																																																																				Let Ti1671
																																																																																																					Int:0
																																																																																																					Get vec Ti1671
																																																																																																				App fisnegTd1672 
																																																																																																			App xorTb1670 Tb1673 
																																																																																																	Let Td1675
																																																																																																		App o_param_am 
																																																																																																		App fneg_condTb1674 Td1675 
																																																																																																Put const Ti1669 Td1676
																																																																																														Let Ti1677
																																																																																															Int:1
																																																																																															Let Td1682
																																																																																																Let Td1678
																																																																																																	Float:1.000000
																																																																																																	Let Td1680
																																																																																																		Let Ti1679
																																																																																																			Int:0
																																																																																																			Get vec Ti1679
																																																																																																		Let Td1681
																																																																																																			FReciprocal Td1680
																																																																																																			FMul Td1678 Td1681
																																																																																																Put const Ti1677 Td1682
																																																																																													Let Ti1683
																																																																																														Int:1
																																																																																														Let Td1684
																																																																																															Float:0.000000
																																																																																															Put const Ti1683 Td1684
																																																																																										Let Tu87
																																																																																											Let Tb1687
																																																																																												Let Td1686
																																																																																													Let Ti1685
																																																																																														Int:1
																																																																																														Get vec Ti1685
																																																																																													App fiszeroTd1686 
																																																																																												Let Ti1688
																																																																																													Int:0
																																																																																													IfEq Tb1687 Ti1688
																																																																																														Let Tu84
																																																																																															Let Ti1689
																																																																																																Int:2
																																																																																																Let Td1696
																																																																																																	Let Tb1694
																																																																																																		Let Tb1690
																																																																																																			App o_isinvertm 
																																																																																																			Let Tb1693
																																																																																																				Let Td1692
																																																																																																					Let Ti1691
																																																																																																						Int:1
																																																																																																						Get vec Ti1691
																																																																																																					App fisnegTd1692 
																																																																																																				App xorTb1690 Tb1693 
																																																																																																		Let Td1695
																																																																																																			App o_param_bm 
																																																																																																			App fneg_condTb1694 Td1695 
																																																																																																	Put const Ti1689 Td1696
																																																																																															Let Ti1697
																																																																																																Int:3
																																																																																																Let Td1702
																																																																																																	Let Td1698
																																																																																																		Float:1.000000
																																																																																																		Let Td1700
																																																																																																			Let Ti1699
																																																																																																				Int:1
																																																																																																				Get vec Ti1699
																																																																																																			Let Td1701
																																																																																																				FReciprocal Td1700
																																																																																																				FMul Td1698 Td1701
																																																																																																	Put const Ti1697 Td1702
																																																																																														Let Ti1703
																																																																																															Int:3
																																																																																															Let Td1704
																																																																																																Float:0.000000
																																																																																																Put const Ti1703 Td1704
																																																																																											Let Tu86
																																																																																												Let Tb1707
																																																																																													Let Td1706
																																																																																														Let Ti1705
																																																																																															Int:2
																																																																																															Get vec Ti1705
																																																																																														App fiszeroTd1706 
																																																																																													Let Ti1708
																																																																																														Int:0
																																																																																														IfEq Tb1707 Ti1708
																																																																																															Let Tu85
																																																																																																Let Ti1709
																																																																																																	Int:4
																																																																																																	Let Td1716
																																																																																																		Let Tb1714
																																																																																																			Let Tb1710
																																																																																																				App o_isinvertm 
																																																																																																				Let Tb1713
																																																																																																					Let Td1712
																																																																																																						Let Ti1711
																																																																																																							Int:2
																																																																																																							Get vec Ti1711
																																																																																																						App fisnegTd1712 
																																																																																																					App xorTb1710 Tb1713 
																																																																																																			Let Td1715
																																																																																																				App o_param_cm 
																																																																																																				App fneg_condTb1714 Td1715 
																																																																																																		Put const Ti1709 Td1716
																																																																																																Let Ti1717
																																																																																																	Int:5
																																																																																																	Let Td1722
																																																																																																		Let Td1718
																																																																																																			Float:1.000000
																																																																																																			Let Td1720
																																																																																																				Let Ti1719
																																																																																																					Int:2
																																																																																																					Get vec Ti1719
																																																																																																				Let Td1721
																																																																																																					FReciprocal Td1720
																																																																																																					FMul Td1718 Td1721
																																																																																																		Put const Ti1717 Td1722
																																																																																															Let Ti1723
																																																																																																Int:5
																																																																																																Let Td1724
																																																																																																	Float:0.000000
																																																																																																	Put const Ti1723 Td1724
																																																																																												Var const
																																																																																								LetRec setup_surface_table vec m 
																																																																																									Let const
																																																																																										Let Ti1625
																																																																																											Int:4
																																																																																											Let Td1626
																																																																																												Float:0.000000
																																																																																												ExtFunApp create_float_array Ti1625,Td1626,
																																																																																										Let d
																																																																																											Let Td1635
																																																																																												Let Td1630
																																																																																													Let Td1628
																																																																																														Let Ti1627
																																																																																															Int:0
																																																																																															Get vec Ti1627
																																																																																														Let Td1629
																																																																																															App o_param_am 
																																																																																															FMul Td1628 Td1629
																																																																																													Let Td1634
																																																																																														Let Td1632
																																																																																															Let Ti1631
																																																																																																Int:1
																																																																																																Get vec Ti1631
																																																																																															Let Td1633
																																																																																																App o_param_bm 
																																																																																																FMul Td1632 Td1633
																																																																																														FAdd Td1630 Td1634
																																																																																												Let Td1639
																																																																																													Let Td1637
																																																																																														Let Ti1636
																																																																																															Int:2
																																																																																															Get vec Ti1636
																																																																																														Let Td1638
																																																																																															App o_param_cm 
																																																																																															FMul Td1637 Td1638
																																																																																													FAdd Td1635 Td1639
																																																																																											Let Tu92
																																																																																												Let Tb1640
																																																																																													App fisposd 
																																																																																													Let Ti1641
																																																																																														Int:0
																																																																																														IfEq Tb1640 Ti1641
																																																																																															Let Ti1642
																																																																																																Int:0
																																																																																																Let Td1643
																																																																																																	Float:0.000000
																																																																																																	Put const Ti1642 Td1643
																																																																																															Let Tu91
																																																																																																Let Ti1644
																																																																																																	Int:0
																																																																																																	Let Td1647
																																																																																																		Let Td1645
																																																																																																			Float:-1.000000
																																																																																																			Let Td1646
																																																																																																				FReciprocal d
																																																																																																				FMul Td1645 Td1646
																																																																																																		Put const Ti1644 Td1647
																																																																																																Let Tu90
																																																																																																	Let Ti1648
																																																																																																		Int:1
																																																																																																		Let Td1652
																																																																																																			Let Td1651
																																																																																																				Let Td1649
																																																																																																					App o_param_am 
																																																																																																					Let Td1650
																																																																																																						FReciprocal d
																																																																																																						FMul Td1649 Td1650
																																																																																																				App fnegTd1651 
																																																																																																			Put const Ti1648 Td1652
																																																																																																	Let Tu89
																																																																																																		Let Ti1653
																																																																																																			Int:2
																																																																																																			Let Td1657
																																																																																																				Let Td1656
																																																																																																					Let Td1654
																																																																																																						App o_param_bm 
																																																																																																						Let Td1655
																																																																																																							FReciprocal d
																																																																																																							FMul Td1654 Td1655
																																																																																																					App fnegTd1656 
																																																																																																				Put const Ti1653 Td1657
																																																																																																		Let Ti1658
																																																																																																			Int:3
																																																																																																			Let Td1662
																																																																																																				Let Td1661
																																																																																																					Let Td1659
																																																																																																						App o_param_cm 
																																																																																																						Let Td1660
																																																																																																							FReciprocal d
																																																																																																							FMul Td1659 Td1660
																																																																																																					App fnegTd1661 
																																																																																																				Put const Ti1658 Td1662
																																																																																												Var const
																																																																																									LetRec setup_second_table v m 
																																																																																										Let const
																																																																																											Let Ti1557
																																																																																												Int:5
																																																																																												Let Td1558
																																																																																													Float:0.000000
																																																																																													ExtFunApp create_float_array Ti1557,Td1558,
																																																																																											Let aa
																																																																																												Let Td1560
																																																																																													Let Ti1559
																																																																																														Int:0
																																																																																														Get v Ti1559
																																																																																													Let Td1562
																																																																																														Let Ti1561
																																																																																															Int:1
																																																																																															Get v Ti1561
																																																																																														Let Td1564
																																																																																															Let Ti1563
																																																																																																Int:2
																																																																																																Get v Ti1563
																																																																																															App quadraticm Td1560 Td1562 Td1564 
																																																																																												Let c1
																																																																																													Let Td1568
																																																																																														Let Td1566
																																																																																															Let Ti1565
																																																																																																Int:0
																																																																																																Get v Ti1565
																																																																																															Let Td1567
																																																																																																App o_param_am 
																																																																																																FMul Td1566 Td1567
																																																																																														App fnegTd1568 
																																																																																													Let c2
																																																																																														Let Td1572
																																																																																															Let Td1570
																																																																																																Let Ti1569
																																																																																																	Int:1
																																																																																																	Get v Ti1569
																																																																																																Let Td1571
																																																																																																	App o_param_bm 
																																																																																																	FMul Td1570 Td1571
																																																																																															App fnegTd1572 
																																																																																														Let c3
																																																																																															Let Td1576
																																																																																																Let Td1574
																																																																																																	Let Ti1573
																																																																																																		Int:2
																																																																																																		Get v Ti1573
																																																																																																	Let Td1575
																																																																																																		App o_param_cm 
																																																																																																		FMul Td1574 Td1575
																																																																																																App fnegTd1576 
																																																																																															Let Tu99
																																																																																																Let Ti1577
																																																																																																	Int:0
																																																																																																	Put const Ti1577 aa
																																																																																																Let Tu98
																																																																																																	Let Ti1578
																																																																																																		App o_isrotm 
																																																																																																		Let Ti1579
																																																																																																			Int:0
																																																																																																			IfEq Ti1578 Ti1579
																																																																																																				Let Tu96
																																																																																																					Let Ti1580
																																																																																																						Int:1
																																																																																																						Put const Ti1580 c1
																																																																																																					Let Tu95
																																																																																																						Let Ti1581
																																																																																																							Int:2
																																																																																																							Put const Ti1581 c2
																																																																																																						Let Ti1582
																																																																																																							Int:3
																																																																																																							Put const Ti1582 c3
																																																																																																				Let Tu94
																																																																																																					Let Ti1583
																																																																																																						Int:1
																																																																																																						Let Td1594
																																																																																																							Let Td1593
																																																																																																								Let Td1592
																																																																																																									Let Td1587
																																																																																																										Let Td1585
																																																																																																											Let Ti1584
																																																																																																												Int:2
																																																																																																												Get v Ti1584
																																																																																																											Let Td1586
																																																																																																												App o_param_r2m 
																																																																																																												FMul Td1585 Td1586
																																																																																																										Let Td1591
																																																																																																											Let Td1589
																																																																																																												Let Ti1588
																																																																																																													Int:1
																																																																																																													Get v Ti1588
																																																																																																												Let Td1590
																																																																																																													App o_param_r3m 
																																																																																																													FMul Td1589 Td1590
																																																																																																											FAdd Td1587 Td1591
																																																																																																									App fhalfTd1592 
																																																																																																								FSub c1 Td1593
																																																																																																							Put const Ti1583 Td1594
																																																																																																					Let Tu93
																																																																																																						Let Ti1595
																																																																																																							Int:2
																																																																																																							Let Td1606
																																																																																																								Let Td1605
																																																																																																									Let Td1604
																																																																																																										Let Td1599
																																																																																																											Let Td1597
																																																																																																												Let Ti1596
																																																																																																													Int:2
																																																																																																													Get v Ti1596
																																																																																																												Let Td1598
																																																																																																													App o_param_r1m 
																																																																																																													FMul Td1597 Td1598
																																																																																																											Let Td1603
																																																																																																												Let Td1601
																																																																																																													Let Ti1600
																																																																																																														Int:0
																																																																																																														Get v Ti1600
																																																																																																													Let Td1602
																																																																																																														App o_param_r3m 
																																																																																																														FMul Td1601 Td1602
																																																																																																												FAdd Td1599 Td1603
																																																																																																										App fhalfTd1604 
																																																																																																									FSub c2 Td1605
																																																																																																								Put const Ti1595 Td1606
																																																																																																						Let Ti1607
																																																																																																							Int:3
																																																																																																							Let Td1618
																																																																																																								Let Td1617
																																																																																																									Let Td1616
																																																																																																										Let Td1611
																																																																																																											Let Td1609
																																																																																																												Let Ti1608
																																																																																																													Int:1
																																																																																																													Get v Ti1608
																																																																																																												Let Td1610
																																																																																																													App o_param_r1m 
																																																																																																													FMul Td1609 Td1610
																																																																																																											Let Td1615
																																																																																																												Let Td1613
																																																																																																													Let Ti1612
																																																																																																														Int:0
																																																																																																														Get v Ti1612
																																																																																																													Let Td1614
																																																																																																														App o_param_r2m 
																																																																																																														FMul Td1613 Td1614
																																																																																																												FAdd Td1611 Td1615
																																																																																																										App fhalfTd1616 
																																																																																																									FSub c3 Td1617
																																																																																																								Put const Ti1607 Td1618
																																																																																																	Let Tu97
																																																																																																		Let Tb1619
																																																																																																			App fiszeroaa 
																																																																																																			Let Ti1620
																																																																																																				Int:0
																																																																																																				IfEq Tb1619 Ti1620
																																																																																																					Let Ti1621
																																																																																																						Int:4
																																																																																																						Let Td1624
																																																																																																							Let Td1622
																																																																																																								Float:1.000000
																																																																																																								Let Td1623
																																																																																																									FReciprocal aa
																																																																																																									FMul Td1622 Td1623
																																																																																																							Put const Ti1621 Td1624
																																																																																																					Unit
																																																																																																		Var const
																																																																																										LetRec iter_setup_dirvec_constants dirvec index 
																																																																																											Let Ti1548
																																																																																												Int:0
																																																																																												IfLE Ti1548 index
																																																																																													Let m
																																																																																														Let Ta1549
																																																																																															ExtArray 48
																																																																																															Get Ta1549 index
																																																																																														Let dconst
																																																																																															App d_constdirvec 
																																																																																															Let v
																																																																																																App d_vecdirvec 
																																																																																																Let m_shape
																																																																																																	App o_formm 
																																																																																																	Let Tu100
																																																																																																		Let Ti1550
																																																																																																			Int:1
																																																																																																			IfEq m_shape Ti1550
																																																																																																				Let Ta1551
																																																																																																					App setup_rect_tablev m 
																																																																																																					Put dconst index Ta1551
																																																																																																				Let Ti1552
																																																																																																					Int:2
																																																																																																					IfEq m_shape Ti1552
																																																																																																						Let Ta1553
																																																																																																							App setup_surface_tablev m 
																																																																																																							Put dconst index Ta1553
																																																																																																						Let Ta1554
																																																																																																							App setup_second_tablev m 
																																																																																																							Put dconst index Ta1554
																																																																																																		Let Ti1556
																																																																																																			Let Ti1555
																																																																																																				Int:1
																																																																																																				Sub index Ti1555
																																																																																																			App iter_setup_dirvec_constantsdirvec Ti1556 
																																																																																													Unit
																																																																																											LetRec setup_dirvec_constants dirvec 
																																																																																												Let Ti1547
																																																																																													Let Ti1545
																																																																																														Let Ta1543
																																																																																															ExtArray 0
																																																																																															Let Ti1544
																																																																																																Int:0
																																																																																																Get Ta1543 Ti1544
																																																																																														Let Ti1546
																																																																																															Int:1
																																																																																															Sub Ti1545 Ti1546
																																																																																													App iter_setup_dirvec_constantsdirvec Ti1547 
																																																																																												LetRec setup_startp_constants p index 
																																																																																													Let Ti1503
																																																																																														Int:0
																																																																																														IfLE Ti1503 index
																																																																																															Let obj
																																																																																																Let Ta1504
																																																																																																	ExtArray 48
																																																																																																	Get Ta1504 index
																																																																																																Let sconst
																																																																																																	App o_param_ctblobj 
																																																																																																	Let m_shape
																																																																																																		App o_formobj 
																																																																																																		Let Tu104
																																																																																																			Let Ti1505
																																																																																																				Int:0
																																																																																																				Let Td1509
																																																																																																					Let Td1507
																																																																																																						Let Ti1506
																																																																																																							Int:0
																																																																																																							Get p Ti1506
																																																																																																						Let Td1508
																																																																																																							App o_param_xobj 
																																																																																																							FSub Td1507 Td1508
																																																																																																					Put sconst Ti1505 Td1509
																																																																																																			Let Tu103
																																																																																																				Let Ti1510
																																																																																																					Int:1
																																																																																																					Let Td1514
																																																																																																						Let Td1512
																																																																																																							Let Ti1511
																																																																																																								Int:1
																																																																																																								Get p Ti1511
																																																																																																							Let Td1513
																																																																																																								App o_param_yobj 
																																																																																																								FSub Td1512 Td1513
																																																																																																						Put sconst Ti1510 Td1514
																																																																																																				Let Tu102
																																																																																																					Let Ti1515
																																																																																																						Int:2
																																																																																																						Let Td1519
																																																																																																							Let Td1517
																																																																																																								Let Ti1516
																																																																																																									Int:2
																																																																																																									Get p Ti1516
																																																																																																								Let Td1518
																																																																																																									App o_param_zobj 
																																																																																																									FSub Td1517 Td1518
																																																																																																							Put sconst Ti1515 Td1519
																																																																																																					Let Tu101
																																																																																																						Let Ti1520
																																																																																																							Int:2
																																																																																																							IfEq m_shape Ti1520
																																																																																																								Let Ti1521
																																																																																																									Int:3
																																																																																																									Let Td1529
																																																																																																										Let Ta1522
																																																																																																											App o_param_abcobj 
																																																																																																											Let Td1524
																																																																																																												Let Ti1523
																																																																																																													Int:0
																																																																																																													Get sconst Ti1523
																																																																																																												Let Td1526
																																																																																																													Let Ti1525
																																																																																																														Int:1
																																																																																																														Get sconst Ti1525
																																																																																																													Let Td1528
																																																																																																														Let Ti1527
																																																																																																															Int:2
																																																																																																															Get sconst Ti1527
																																																																																																														App veciprod2Ta1522 Td1524 Td1526 Td1528 
																																																																																																										Put sconst Ti1521 Td1529
																																																																																																								Let Ti1530
																																																																																																									Int:2
																																																																																																									IfLE m_shape Ti1530
																																																																																																										Unit
																																																																																																										Let cc0
																																																																																																											Let Td1532
																																																																																																												Let Ti1531
																																																																																																													Int:0
																																																																																																													Get sconst Ti1531
																																																																																																												Let Td1534
																																																																																																													Let Ti1533
																																																																																																														Int:1
																																																																																																														Get sconst Ti1533
																																																																																																													Let Td1536
																																																																																																														Let Ti1535
																																																																																																															Int:2
																																																																																																															Get sconst Ti1535
																																																																																																														App quadraticobj Td1532 Td1534 Td1536 
																																																																																																											Let Ti1537
																																																																																																												Int:3
																																																																																																												Let Td1540
																																																																																																													Let Ti1538
																																																																																																														Int:3
																																																																																																														IfEq m_shape Ti1538
																																																																																																															Let Td1539
																																																																																																																Float:1.000000
																																																																																																																FSub cc0 Td1539
																																																																																																															Var cc0
																																																																																																													Put sconst Ti1537 Td1540
																																																																																																						Let Ti1542
																																																																																																							Let Ti1541
																																																																																																								Int:1
																																																																																																								Sub index Ti1541
																																																																																																							App setup_startp_constantsp Ti1542 
																																																																																															Unit
																																																																																													LetRec setup_startp p 
																																																																																														Let Tu105
																																																																																															Let Ta1497
																																																																																																ExtArray 648
																																																																																																App veccpyTa1497 p 
																																																																																															Let Ti1502
																																																																																																Let Ti1500
																																																																																																	Let Ta1498
																																																																																																		ExtArray 0
																																																																																																		Let Ti1499
																																																																																																			Int:0
																																																																																																			Get Ta1498 Ti1499
																																																																																																	Let Ti1501
																																																																																																		Int:1
																																																																																																		Sub Ti1500 Ti1501
																																																																																																App setup_startp_constantsp Ti1502 
																																																																																														LetRec is_rect_outside m p0 p1 p2 
																																																																																															Let Ti1493
																																																																																																Let Tb1485
																																																																																																	Let Td1483
																																																																																																		App fabsp0 
																																																																																																		Let Td1484
																																																																																																			App o_param_am 
																																																																																																			App flessTd1483 Td1484 
																																																																																																	Let Ti1486
																																																																																																		Int:0
																																																																																																		IfEq Tb1485 Ti1486
																																																																																																			Int:0
																																																																																																			Let Tb1489
																																																																																																				Let Td1487
																																																																																																					App fabsp1 
																																																																																																					Let Td1488
																																																																																																						App o_param_bm 
																																																																																																						App flessTd1487 Td1488 
																																																																																																				Let Ti1490
																																																																																																					Int:0
																																																																																																					IfEq Tb1489 Ti1490
																																																																																																						Int:0
																																																																																																						Let Td1491
																																																																																																							App fabsp2 
																																																																																																							Let Td1492
																																																																																																								App o_param_cm 
																																																																																																								App flessTd1491 Td1492 
																																																																																																Let Ti1494
																																																																																																	Int:0
																																																																																																	IfEq Ti1493 Ti1494
																																																																																																		Let Tb1495
																																																																																																			App o_isinvertm 
																																																																																																			Let Ti1496
																																																																																																				Int:0
																																																																																																				IfEq Tb1495 Ti1496
																																																																																																					Int:1
																																																																																																					Int:0
																																																																																																		App o_isinvertm 
																																																																																															LetRec is_plane_outside m p0 p1 p2 
																																																																																																Let w
																																																																																																	Let Ta1478
																																																																																																		App o_param_abcm 
																																																																																																		App veciprod2Ta1478 p0 p1 p2 
																																																																																																	Let Tb1481
																																																																																																		Let Tb1479
																																																																																																			App o_isinvertm 
																																																																																																			Let Tb1480
																																																																																																				App fisnegw 
																																																																																																				App xorTb1479 Tb1480 
																																																																																																		Let Ti1482
																																																																																																			Int:0
																																																																																																			IfEq Tb1481 Ti1482
																																																																																																				Int:1
																																																																																																				Int:0
																																																																																																LetRec is_second_outside m p0 p1 p2 
																																																																																																	Let w
																																																																																																		App quadraticm p0 p1 p2 
																																																																																																		Let w2
																																																																																																			Let Ti1471
																																																																																																				App o_formm 
																																																																																																				Let Ti1472
																																																																																																					Int:3
																																																																																																					IfEq Ti1471 Ti1472
																																																																																																						Let Td1473
																																																																																																							Float:1.000000
																																																																																																							FSub w Td1473
																																																																																																						Var w
																																																																																																			Let Tb1476
																																																																																																				Let Tb1474
																																																																																																					App o_isinvertm 
																																																																																																					Let Tb1475
																																																																																																						App fisnegw2 
																																																																																																						App xorTb1474 Tb1475 
																																																																																																				Let Ti1477
																																																																																																					Int:0
																																																																																																					IfEq Tb1476 Ti1477
																																																																																																						Int:1
																																																																																																						Int:0
																																																																																																	LetRec is_outside m q0 q1 q2 
																																																																																																		Let p0
																																																																																																			Let Td1466
																																																																																																				App o_param_xm 
																																																																																																				FSub q0 Td1466
																																																																																																			Let p1
																																																																																																				Let Td1467
																																																																																																					App o_param_ym 
																																																																																																					FSub q1 Td1467
																																																																																																				Let p2
																																																																																																					Let Td1468
																																																																																																						App o_param_zm 
																																																																																																						FSub q2 Td1468
																																																																																																					Let m_shape
																																																																																																						App o_formm 
																																																																																																						Let Ti1469
																																																																																																							Int:1
																																																																																																							IfEq m_shape Ti1469
																																																																																																								App is_rect_outsidem p0 p1 p2 
																																																																																																								Let Ti1470
																																																																																																									Int:2
																																																																																																									IfEq m_shape Ti1470
																																																																																																										App is_plane_outsidem p0 p1 p2 
																																																																																																										App is_second_outsidem p0 p1 p2 
																																																																																																		LetRec check_all_inside ofs iand q0 q1 q2 
																																																																																																			Let head
																																																																																																				Get iand ofs
																																																																																																				Let Ti1459
																																																																																																					Let Ti1458
																																																																																																						Int:1
																																																																																																						Neg Ti1458
																																																																																																					IfEq head Ti1459
																																																																																																						Int:1
																																																																																																						Let Tb1462
																																																																																																							Let Tt1461
																																																																																																								Let Ta1460
																																																																																																									ExtArray 48
																																																																																																									Get Ta1460 head
																																																																																																								App is_outsideTt1461 q0 q1 q2 
																																																																																																							Let Ti1463
																																																																																																								Int:0
																																																																																																								IfEq Tb1462 Ti1463
																																																																																																									Let Ti1465
																																																																																																										Let Ti1464
																																																																																																											Int:1
																																																																																																											Add ofs Ti1464
																																																																																																										App check_all_insideTi1465 iand q0 q1 q2 
																																																																																																									Int:0
																																																																																																			LetRec shadow_check_and_group iand_ofs and_group 
																																																																																																				Let Ti1414
																																																																																																					Get and_group iand_ofs
																																																																																																					Let Ti1416
																																																																																																						Let Ti1415
																																																																																																							Int:1
																																																																																																							Neg Ti1415
																																																																																																						IfEq Ti1414 Ti1416
																																																																																																							Int:0
																																																																																																							Let obj
																																																																																																								Get and_group iand_ofs
																																																																																																								Let t0
																																																																																																									Let Tt1417
																																																																																																										ExtTuple 988
																																																																																																										Let Ta1418
																																																																																																											ExtArray 552
																																																																																																											App solver_fastobj Tt1417 Ta1418 
																																																																																																									Let t0p
																																																																																																										Let Ta1419
																																																																																																											ExtArray 540
																																																																																																											Let Ti1420
																																																																																																												Int:0
																																																																																																												Get Ta1419 Ti1420
																																																																																																										Let Ti1423
																																																																																																											Let Ti1421
																																																																																																												Int:0
																																																																																																												IfEq t0 Ti1421
																																																																																																													Int:0
																																																																																																													Let Td1422
																																																																																																														Float:-0.200000
																																																																																																														App flesst0p Td1422 
																																																																																																											Let Ti1424
																																																																																																												Int:0
																																																																																																												IfEq Ti1423 Ti1424
																																																																																																													Let Tb1427
																																																																																																														Let Tt1426
																																																																																																															Let Ta1425
																																																																																																																ExtArray 48
																																																																																																																Get Ta1425 obj
																																																																																																															App o_isinvertTt1426 
																																																																																																														Let Ti1428
																																																																																																															Int:0
																																																																																																															IfEq Tb1427 Ti1428
																																																																																																																Int:0
																																																																																																																Let Ti1430
																																																																																																																	Let Ti1429
																																																																																																																		Int:1
																																																																																																																		Add iand_ofs Ti1429
																																																																																																																	App shadow_check_and_groupTi1430 and_group 
																																																																																																													Let t
																																																																																																														Let Td1431
																																																																																																															Float:0.010000
																																																																																																															FAdd t0p Td1431
																																																																																																														Let q0
																																																																																																															Let Td1435
																																																																																																																Let Td1434
																																																																																																																	Let Ta1432
																																																																																																																		ExtArray 312
																																																																																																																		Let Ti1433
																																																																																																																			Int:0
																																																																																																																			Get Ta1432 Ti1433
																																																																																																																	FMul Td1434 t
																																																																																																																Let Td1438
																																																																																																																	Let Ta1436
																																																																																																																		ExtArray 552
																																																																																																																		Let Ti1437
																																																																																																																			Int:0
																																																																																																																			Get Ta1436 Ti1437
																																																																																																																	FAdd Td1435 Td1438
																																																																																																															Let q1
																																																																																																																Let Td1442
																																																																																																																	Let Td1441
																																																																																																																		Let Ta1439
																																																																																																																			ExtArray 312
																																																																																																																			Let Ti1440
																																																																																																																				Int:1
																																																																																																																				Get Ta1439 Ti1440
																																																																																																																		FMul Td1441 t
																																																																																																																	Let Td1445
																																																																																																																		Let Ta1443
																																																																																																																			ExtArray 552
																																																																																																																			Let Ti1444
																																																																																																																				Int:1
																																																																																																																				Get Ta1443 Ti1444
																																																																																																																		FAdd Td1442 Td1445
																																																																																																																Let q2
																																																																																																																	Let Td1449
																																																																																																																		Let Td1448
																																																																																																																			Let Ta1446
																																																																																																																				ExtArray 312
																																																																																																																				Let Ti1447
																																																																																																																					Int:2
																																																																																																																					Get Ta1446 Ti1447
																																																																																																																			FMul Td1448 t
																																																																																																																		Let Td1452
																																																																																																																			Let Ta1450
																																																																																																																				ExtArray 552
																																																																																																																				Let Ti1451
																																																																																																																					Int:2
																																																																																																																					Get Ta1450 Ti1451
																																																																																																																			FAdd Td1449 Td1452
																																																																																																																	Let Tb1454
																																																																																																																		Let Ti1453
																																																																																																																			Int:0
																																																																																																																			App check_all_insideTi1453 and_group q0 q1 q2 
																																																																																																																		Let Ti1455
																																																																																																																			Int:0
																																																																																																																			IfEq Tb1454 Ti1455
																																																																																																																				Let Ti1457
																																																																																																																					Let Ti1456
																																																																																																																						Int:1
																																																																																																																						Add iand_ofs Ti1456
																																																																																																																					App shadow_check_and_groupTi1457 and_group 
																																																																																																																				Int:1
																																																																																																				LetRec shadow_check_one_or_group ofs or_group 
																																																																																																					Let head
																																																																																																						Get or_group ofs
																																																																																																						Let Ti1408
																																																																																																							Let Ti1407
																																																																																																								Int:1
																																																																																																								Neg Ti1407
																																																																																																							IfEq head Ti1408
																																																																																																								Int:0
																																																																																																								Let and_group
																																																																																																									Let Ta1409
																																																																																																										ExtArray 332
																																																																																																										Get Ta1409 head
																																																																																																									Let shadow_p
																																																																																																										Let Ti1410
																																																																																																											Int:0
																																																																																																											App shadow_check_and_groupTi1410 and_group 
																																																																																																										Let Ti1411
																																																																																																											Int:0
																																																																																																											IfEq shadow_p Ti1411
																																																																																																												Let Ti1413
																																																																																																													Let Ti1412
																																																																																																														Int:1
																																																																																																														Add ofs Ti1412
																																																																																																													App shadow_check_one_or_groupTi1413 or_group 
																																																																																																												Int:1
																																																																																																					LetRec shadow_check_one_or_matrix ofs or_matrix 
																																																																																																						Let head
																																																																																																							Get or_matrix ofs
																																																																																																							Let range_primitive
																																																																																																								Let Ti1382
																																																																																																									Int:0
																																																																																																									Get head Ti1382
																																																																																																								Let Ti1384
																																																																																																									Let Ti1383
																																																																																																										Int:1
																																																																																																										Neg Ti1383
																																																																																																									IfEq range_primitive Ti1384
																																																																																																										Int:0
																																																																																																										Let Ti1398
																																																																																																											Let Ti1385
																																																																																																												Int:99
																																																																																																												IfEq range_primitive Ti1385
																																																																																																													Int:1
																																																																																																													Let t
																																																																																																														Let Tt1386
																																																																																																															ExtTuple 988
																																																																																																															Let Ta1387
																																																																																																																ExtArray 552
																																																																																																																App solver_fastrange_primitive Tt1386 Ta1387 
																																																																																																														Let Ti1388
																																																																																																															Int:0
																																																																																																															IfEq t Ti1388
																																																																																																																Int:0
																																																																																																																Let Tb1393
																																																																																																																	Let Td1391
																																																																																																																		Let Ta1389
																																																																																																																			ExtArray 540
																																																																																																																			Let Ti1390
																																																																																																																				Int:0
																																																																																																																				Get Ta1389 Ti1390
																																																																																																																		Let Td1392
																																																																																																																			Float:-0.100000
																																																																																																																			App flessTd1391 Td1392 
																																																																																																																	Let Ti1394
																																																																																																																		Int:0
																																																																																																																		IfEq Tb1393 Ti1394
																																																																																																																			Int:0
																																																																																																																			Let Tb1396
																																																																																																																				Let Ti1395
																																																																																																																					Int:1
																																																																																																																					App shadow_check_one_or_groupTi1395 head 
																																																																																																																				Let Ti1397
																																																																																																																					Int:0
																																																																																																																					IfEq Tb1396 Ti1397
																																																																																																																						Int:0
																																																																																																																						Int:1
																																																																																																											Let Ti1399
																																																																																																												Int:0
																																																																																																												IfEq Ti1398 Ti1399
																																																																																																													Let Ti1401
																																																																																																														Let Ti1400
																																																																																																															Int:1
																																																																																																															Add ofs Ti1400
																																																																																																														App shadow_check_one_or_matrixTi1401 or_matrix 
																																																																																																													Let Tb1403
																																																																																																														Let Ti1402
																																																																																																															Int:1
																																																																																																															App shadow_check_one_or_groupTi1402 head 
																																																																																																														Let Ti1404
																																																																																																															Int:0
																																																																																																															IfEq Tb1403 Ti1404
																																																																																																																Let Ti1406
																																																																																																																	Let Ti1405
																																																																																																																		Int:1
																																																																																																																		Add ofs Ti1405
																																																																																																																	App shadow_check_one_or_matrixTi1406 or_matrix 
																																																																																																																Int:1
																																																																																																						LetRec solve_each_element iand_ofs and_group dirvec 
																																																																																																							Let iobj
																																																																																																								Get and_group iand_ofs
																																																																																																								Let Ti1332
																																																																																																									Let Ti1331
																																																																																																										Int:1
																																																																																																										Neg Ti1331
																																																																																																									IfEq iobj Ti1332
																																																																																																										Unit
																																																																																																										Let t0
																																																																																																											Let Ta1333
																																																																																																												ExtArray 636
																																																																																																												App solveriobj dirvec Ta1333 
																																																																																																											Let Ti1334
																																																																																																												Int:0
																																																																																																												IfEq t0 Ti1334
																																																																																																													Let Tb1337
																																																																																																														Let Tt1336
																																																																																																															Let Ta1335
																																																																																																																ExtArray 48
																																																																																																																Get Ta1335 iobj
																																																																																																															App o_isinvertTt1336 
																																																																																																														Let Ti1338
																																																																																																															Int:0
																																																																																																															IfEq Tb1337 Ti1338
																																																																																																																Unit
																																																																																																																Let Ti1340
																																																																																																																	Let Ti1339
																																																																																																																		Int:1
																																																																																																																		Add iand_ofs Ti1339
																																																																																																																	App solve_each_elementTi1340 and_group dirvec 
																																																																																																													Let t0p
																																																																																																														Let Ta1341
																																																																																																															ExtArray 540
																																																																																																															Let Ti1342
																																																																																																																Int:0
																																																																																																																Get Ta1341 Ti1342
																																																																																																														Let Tu109
																																																																																																															Let Tb1344
																																																																																																																Let Td1343
																																																																																																																	Float:0.000000
																																																																																																																	App flessTd1343 t0p 
																																																																																																																Let Ti1345
																																																																																																																	Int:0
																																																																																																																	IfEq Tb1344 Ti1345
																																																																																																																		Unit
																																																																																																																		Let Tb1349
																																																																																																																			Let Td1348
																																																																																																																				Let Ta1346
																																																																																																																					ExtArray 548
																																																																																																																					Let Ti1347
																																																																																																																						Int:0
																																																																																																																						Get Ta1346 Ti1347
																																																																																																																				App flesst0p Td1348 
																																																																																																																			Let Ti1350
																																																																																																																				Int:0
																																																																																																																				IfEq Tb1349 Ti1350
																																																																																																																					Unit
																																																																																																																					Let t
																																																																																																																						Let Td1351
																																																																																																																							Float:0.010000
																																																																																																																							FAdd t0p Td1351
																																																																																																																						Let q0
																																																																																																																							Let Td1354
																																																																																																																								Let Td1353
																																																																																																																									Let Ti1352
																																																																																																																										Int:0
																																																																																																																										Get dirvec Ti1352
																																																																																																																									FMul Td1353 t
																																																																																																																								Let Td1357
																																																																																																																									Let Ta1355
																																																																																																																										ExtArray 636
																																																																																																																										Let Ti1356
																																																																																																																											Int:0
																																																																																																																											Get Ta1355 Ti1356
																																																																																																																									FAdd Td1354 Td1357
																																																																																																																							Let q1
																																																																																																																								Let Td1360
																																																																																																																									Let Td1359
																																																																																																																										Let Ti1358
																																																																																																																											Int:1
																																																																																																																											Get dirvec Ti1358
																																																																																																																										FMul Td1359 t
																																																																																																																									Let Td1363
																																																																																																																										Let Ta1361
																																																																																																																											ExtArray 636
																																																																																																																											Let Ti1362
																																																																																																																												Int:1
																																																																																																																												Get Ta1361 Ti1362
																																																																																																																										FAdd Td1360 Td1363
																																																																																																																								Let q2
																																																																																																																									Let Td1366
																																																																																																																										Let Td1365
																																																																																																																											Let Ti1364
																																																																																																																												Int:2
																																																																																																																												Get dirvec Ti1364
																																																																																																																											FMul Td1365 t
																																																																																																																										Let Td1369
																																																																																																																											Let Ta1367
																																																																																																																												ExtArray 636
																																																																																																																												Let Ti1368
																																																																																																																													Int:2
																																																																																																																													Get Ta1367 Ti1368
																																																																																																																											FAdd Td1366 Td1369
																																																																																																																									Let Tb1371
																																																																																																																										Let Ti1370
																																																																																																																											Int:0
																																																																																																																											App check_all_insideTi1370 and_group q0 q1 q2 
																																																																																																																										Let Ti1372
																																																																																																																											Int:0
																																																																																																																											IfEq Tb1371 Ti1372
																																																																																																																												Unit
																																																																																																																												Let Tu108
																																																																																																																													Let Ta1373
																																																																																																																														ExtArray 548
																																																																																																																														Let Ti1374
																																																																																																																															Int:0
																																																																																																																															Put Ta1373 Ti1374 t
																																																																																																																													Let Tu107
																																																																																																																														Let Ta1375
																																																																																																																															ExtArray 552
																																																																																																																															App vecsetTa1375 q0 q1 q2 
																																																																																																																														Let Tu106
																																																																																																																															Let Ta1376
																																																																																																																																ExtArray 564
																																																																																																																																Let Ti1377
																																																																																																																																	Int:0
																																																																																																																																	Put Ta1376 Ti1377 iobj
																																																																																																																															Let Ta1378
																																																																																																																																ExtArray 544
																																																																																																																																Let Ti1379
																																																																																																																																	Int:0
																																																																																																																																	Put Ta1378 Ti1379 t0
																																																																																																															Let Ti1381
																																																																																																																Let Ti1380
																																																																																																																	Int:1
																																																																																																																	Add iand_ofs Ti1380
																																																																																																																App solve_each_elementTi1381 and_group dirvec 
																																																																																																							LetRec solve_one_or_network ofs or_group dirvec 
																																																																																																								Let head
																																																																																																									Get or_group ofs
																																																																																																									Let Ti1326
																																																																																																										Let Ti1325
																																																																																																											Int:1
																																																																																																											Neg Ti1325
																																																																																																										IfEq head Ti1326
																																																																																																											Unit
																																																																																																											Let and_group
																																																																																																												Let Ta1327
																																																																																																													ExtArray 332
																																																																																																													Get Ta1327 head
																																																																																																												Let Tu110
																																																																																																													Let Ti1328
																																																																																																														Int:0
																																																																																																														App solve_each_elementTi1328 and_group dirvec 
																																																																																																													Let Ti1330
																																																																																																														Let Ti1329
																																																																																																															Int:1
																																																																																																															Add ofs Ti1329
																																																																																																														App solve_one_or_networkTi1330 or_group dirvec 
																																																																																																								LetRec trace_or_matrix ofs or_network dirvec 
																																																																																																									Let head
																																																																																																										Get or_network ofs
																																																																																																										Let range_primitive
																																																																																																											Let Ti1308
																																																																																																												Int:0
																																																																																																												Get head Ti1308
																																																																																																											Let Ti1310
																																																																																																												Let Ti1309
																																																																																																													Int:1
																																																																																																													Neg Ti1309
																																																																																																												IfEq range_primitive Ti1310
																																																																																																													Unit
																																																																																																													Let Tu111
																																																																																																														Let Ti1311
																																																																																																															Int:99
																																																																																																															IfEq range_primitive Ti1311
																																																																																																																Let Ti1312
																																																																																																																	Int:1
																																																																																																																	App solve_one_or_networkTi1312 head dirvec 
																																																																																																																Let t
																																																																																																																	Let Ta1313
																																																																																																																		ExtArray 636
																																																																																																																		App solverrange_primitive dirvec Ta1313 
																																																																																																																	Let Ti1314
																																																																																																																		Int:0
																																																																																																																		IfEq t Ti1314
																																																																																																																			Unit
																																																																																																																			Let tp
																																																																																																																				Let Ta1315
																																																																																																																					ExtArray 540
																																																																																																																					Let Ti1316
																																																																																																																						Int:0
																																																																																																																						Get Ta1315 Ti1316
																																																																																																																				Let Tb1320
																																																																																																																					Let Td1319
																																																																																																																						Let Ta1317
																																																																																																																							ExtArray 548
																																																																																																																							Let Ti1318
																																																																																																																								Int:0
																																																																																																																								Get Ta1317 Ti1318
																																																																																																																						App flesstp Td1319 
																																																																																																																					Let Ti1321
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1320 Ti1321
																																																																																																																							Unit
																																																																																																																							Let Ti1322
																																																																																																																								Int:1
																																																																																																																								App solve_one_or_networkTi1322 head dirvec 
																																																																																																														Let Ti1324
																																																																																																															Let Ti1323
																																																																																																																Int:1
																																																																																																																Add ofs Ti1323
																																																																																																															App trace_or_matrixTi1324 or_network dirvec 
																																																																																																									LetRec judge_intersection dirvec 
																																																																																																										Let Tu113
																																																																																																											Let Ta1295
																																																																																																												ExtArray 548
																																																																																																												Let Ti1296
																																																																																																													Int:0
																																																																																																													Let Td1297
																																																																																																														Float:1000000000.000000
																																																																																																														Put Ta1295 Ti1296 Td1297
																																																																																																											Let Tu112
																																																																																																												Let Ti1298
																																																																																																													Int:0
																																																																																																													Let Ta1301
																																																																																																														Let Ta1299
																																																																																																															ExtArray 536
																																																																																																															Let Ti1300
																																																																																																																Int:0
																																																																																																																Get Ta1299 Ti1300
																																																																																																														App trace_or_matrixTi1298 Ta1301 dirvec 
																																																																																																												Let t
																																																																																																													Let Ta1302
																																																																																																														ExtArray 548
																																																																																																														Let Ti1303
																																																																																																															Int:0
																																																																																																															Get Ta1302 Ti1303
																																																																																																													Let Tb1305
																																																																																																														Let Td1304
																																																																																																															Float:-0.100000
																																																																																																															App flessTd1304 t 
																																																																																																														Let Ti1306
																																																																																																															Int:0
																																																																																																															IfEq Tb1305 Ti1306
																																																																																																																Int:0
																																																																																																																Let Td1307
																																																																																																																	Float:100000000.000000
																																																																																																																	App flesst Td1307 
																																																																																																										LetRec solve_each_element_fast iand_ofs and_group dirvec 
																																																																																																											Let vec
																																																																																																												App d_vecdirvec 
																																																																																																												Let iobj
																																																																																																													Get and_group iand_ofs
																																																																																																													Let Ti1246
																																																																																																														Let Ti1245
																																																																																																															Int:1
																																																																																																															Neg Ti1245
																																																																																																														IfEq iobj Ti1246
																																																																																																															Unit
																																																																																																															Let t0
																																																																																																																App solver_fast2iobj dirvec 
																																																																																																																Let Ti1247
																																																																																																																	Int:0
																																																																																																																	IfEq t0 Ti1247
																																																																																																																		Let Tb1250
																																																																																																																			Let Tt1249
																																																																																																																				Let Ta1248
																																																																																																																					ExtArray 48
																																																																																																																					Get Ta1248 iobj
																																																																																																																				App o_isinvertTt1249 
																																																																																																																			Let Ti1251
																																																																																																																				Int:0
																																																																																																																				IfEq Tb1250 Ti1251
																																																																																																																					Unit
																																																																																																																					Let Ti1253
																																																																																																																						Let Ti1252
																																																																																																																							Int:1
																																																																																																																							Add iand_ofs Ti1252
																																																																																																																						App solve_each_element_fastTi1253 and_group dirvec 
																																																																																																																		Let t0p
																																																																																																																			Let Ta1254
																																																																																																																				ExtArray 540
																																																																																																																				Let Ti1255
																																																																																																																					Int:0
																																																																																																																					Get Ta1254 Ti1255
																																																																																																																			Let Tu117
																																																																																																																				Let Tb1257
																																																																																																																					Let Td1256
																																																																																																																						Float:0.000000
																																																																																																																						App flessTd1256 t0p 
																																																																																																																					Let Ti1258
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1257 Ti1258
																																																																																																																							Unit
																																																																																																																							Let Tb1262
																																																																																																																								Let Td1261
																																																																																																																									Let Ta1259
																																																																																																																										ExtArray 548
																																																																																																																										Let Ti1260
																																																																																																																											Int:0
																																																																																																																											Get Ta1259 Ti1260
																																																																																																																									App flesst0p Td1261 
																																																																																																																								Let Ti1263
																																																																																																																									Int:0
																																																																																																																									IfEq Tb1262 Ti1263
																																																																																																																										Unit
																																																																																																																										Let t
																																																																																																																											Let Td1264
																																																																																																																												Float:0.010000
																																																																																																																												FAdd t0p Td1264
																																																																																																																											Let q0
																																																																																																																												Let Td1267
																																																																																																																													Let Td1266
																																																																																																																														Let Ti1265
																																																																																																																															Int:0
																																																																																																																															Get vec Ti1265
																																																																																																																														FMul Td1266 t
																																																																																																																													Let Td1270
																																																																																																																														Let Ta1268
																																																																																																																															ExtArray 648
																																																																																																																															Let Ti1269
																																																																																																																																Int:0
																																																																																																																																Get Ta1268 Ti1269
																																																																																																																														FAdd Td1267 Td1270
																																																																																																																												Let q1
																																																																																																																													Let Td1273
																																																																																																																														Let Td1272
																																																																																																																															Let Ti1271
																																																																																																																																Int:1
																																																																																																																																Get vec Ti1271
																																																																																																																															FMul Td1272 t
																																																																																																																														Let Td1276
																																																																																																																															Let Ta1274
																																																																																																																																ExtArray 648
																																																																																																																																Let Ti1275
																																																																																																																																	Int:1
																																																																																																																																	Get Ta1274 Ti1275
																																																																																																																															FAdd Td1273 Td1276
																																																																																																																													Let q2
																																																																																																																														Let Td1279
																																																																																																																															Let Td1278
																																																																																																																																Let Ti1277
																																																																																																																																	Int:2
																																																																																																																																	Get vec Ti1277
																																																																																																																																FMul Td1278 t
																																																																																																																															Let Td1282
																																																																																																																																Let Ta1280
																																																																																																																																	ExtArray 648
																																																																																																																																	Let Ti1281
																																																																																																																																		Int:2
																																																																																																																																		Get Ta1280 Ti1281
																																																																																																																																FAdd Td1279 Td1282
																																																																																																																														Let Tb1284
																																																																																																																															Let Ti1283
																																																																																																																																Int:0
																																																																																																																																App check_all_insideTi1283 and_group q0 q1 q2 
																																																																																																																															Let Ti1285
																																																																																																																																Int:0
																																																																																																																																IfEq Tb1284 Ti1285
																																																																																																																																	Unit
																																																																																																																																	Let Tu116
																																																																																																																																		Let Ta1286
																																																																																																																																			ExtArray 548
																																																																																																																																			Let Ti1287
																																																																																																																																				Int:0
																																																																																																																																				Put Ta1286 Ti1287 t
																																																																																																																																		Let Tu115
																																																																																																																																			Let Ta1288
																																																																																																																																				ExtArray 552
																																																																																																																																				App vecsetTa1288 q0 q1 q2 
																																																																																																																																			Let Tu114
																																																																																																																																				Let Ta1289
																																																																																																																																					ExtArray 564
																																																																																																																																					Let Ti1290
																																																																																																																																						Int:0
																																																																																																																																						Put Ta1289 Ti1290 iobj
																																																																																																																																				Let Ta1291
																																																																																																																																					ExtArray 544
																																																																																																																																					Let Ti1292
																																																																																																																																						Int:0
																																																																																																																																						Put Ta1291 Ti1292 t0
																																																																																																																				Let Ti1294
																																																																																																																					Let Ti1293
																																																																																																																						Int:1
																																																																																																																						Add iand_ofs Ti1293
																																																																																																																					App solve_each_element_fastTi1294 and_group dirvec 
																																																																																																											LetRec solve_one_or_network_fast ofs or_group dirvec 
																																																																																																												Let head
																																																																																																													Get or_group ofs
																																																																																																													Let Ti1240
																																																																																																														Let Ti1239
																																																																																																															Int:1
																																																																																																															Neg Ti1239
																																																																																																														IfEq head Ti1240
																																																																																																															Unit
																																																																																																															Let and_group
																																																																																																																Let Ta1241
																																																																																																																	ExtArray 332
																																																																																																																	Get Ta1241 head
																																																																																																																Let Tu118
																																																																																																																	Let Ti1242
																																																																																																																		Int:0
																																																																																																																		App solve_each_element_fastTi1242 and_group dirvec 
																																																																																																																	Let Ti1244
																																																																																																																		Let Ti1243
																																																																																																																			Int:1
																																																																																																																			Add ofs Ti1243
																																																																																																																		App solve_one_or_network_fastTi1244 or_group dirvec 
																																																																																																												LetRec trace_or_matrix_fast ofs or_network dirvec 
																																																																																																													Let head
																																																																																																														Get or_network ofs
																																																																																																														Let range_primitive
																																																																																																															Let Ti1223
																																																																																																																Int:0
																																																																																																																Get head Ti1223
																																																																																																															Let Ti1225
																																																																																																																Let Ti1224
																																																																																																																	Int:1
																																																																																																																	Neg Ti1224
																																																																																																																IfEq range_primitive Ti1225
																																																																																																																	Unit
																																																																																																																	Let Tu119
																																																																																																																		Let Ti1226
																																																																																																																			Int:99
																																																																																																																			IfEq range_primitive Ti1226
																																																																																																																				Let Ti1227
																																																																																																																					Int:1
																																																																																																																					App solve_one_or_network_fastTi1227 head dirvec 
																																																																																																																				Let t
																																																																																																																					App solver_fast2range_primitive dirvec 
																																																																																																																					Let Ti1228
																																																																																																																						Int:0
																																																																																																																						IfEq t Ti1228
																																																																																																																							Unit
																																																																																																																							Let tp
																																																																																																																								Let Ta1229
																																																																																																																									ExtArray 540
																																																																																																																									Let Ti1230
																																																																																																																										Int:0
																																																																																																																										Get Ta1229 Ti1230
																																																																																																																								Let Tb1234
																																																																																																																									Let Td1233
																																																																																																																										Let Ta1231
																																																																																																																											ExtArray 548
																																																																																																																											Let Ti1232
																																																																																																																												Int:0
																																																																																																																												Get Ta1231 Ti1232
																																																																																																																										App flesstp Td1233 
																																																																																																																									Let Ti1235
																																																																																																																										Int:0
																																																																																																																										IfEq Tb1234 Ti1235
																																																																																																																											Unit
																																																																																																																											Let Ti1236
																																																																																																																												Int:1
																																																																																																																												App solve_one_or_network_fastTi1236 head dirvec 
																																																																																																																		Let Ti1238
																																																																																																																			Let Ti1237
																																																																																																																				Int:1
																																																																																																																				Add ofs Ti1237
																																																																																																																			App trace_or_matrix_fastTi1238 or_network dirvec 
																																																																																																													LetRec judge_intersection_fast dirvec 
																																																																																																														Let Tu121
																																																																																																															Let Ta1210
																																																																																																																ExtArray 548
																																																																																																																Let Ti1211
																																																																																																																	Int:0
																																																																																																																	Let Td1212
																																																																																																																		Float:1000000000.000000
																																																																																																																		Put Ta1210 Ti1211 Td1212
																																																																																																															Let Tu120
																																																																																																																Let Ti1213
																																																																																																																	Int:0
																																																																																																																	Let Ta1216
																																																																																																																		Let Ta1214
																																																																																																																			ExtArray 536
																																																																																																																			Let Ti1215
																																																																																																																				Int:0
																																																																																																																				Get Ta1214 Ti1215
																																																																																																																		App trace_or_matrix_fastTi1213 Ta1216 dirvec 
																																																																																																																Let t
																																																																																																																	Let Ta1217
																																																																																																																		ExtArray 548
																																																																																																																		Let Ti1218
																																																																																																																			Int:0
																																																																																																																			Get Ta1217 Ti1218
																																																																																																																	Let Tb1220
																																																																																																																		Let Td1219
																																																																																																																			Float:-0.100000
																																																																																																																			App flessTd1219 t 
																																																																																																																		Let Ti1221
																																																																																																																			Int:0
																																																																																																																			IfEq Tb1220 Ti1221
																																																																																																																				Int:0
																																																																																																																				Let Td1222
																																																																																																																					Float:100000000.000000
																																																																																																																					App flesst Td1222 
																																																																																																														LetRec get_nvector_rect dirvec 
																																																																																																															Let rectside
																																																																																																																Let Ta1199
																																																																																																																	ExtArray 544
																																																																																																																	Let Ti1200
																																																																																																																		Int:0
																																																																																																																		Get Ta1199 Ti1200
																																																																																																																Let Tu122
																																																																																																																	Let Ta1201
																																																																																																																		ExtArray 568
																																																																																																																		App vecbzeroTa1201 
																																																																																																																	Let Ta1202
																																																																																																																		ExtArray 568
																																																																																																																		Let Ti1204
																																																																																																																			Let Ti1203
																																																																																																																				Int:1
																																																																																																																				Sub rectside Ti1203
																																																																																																																			Let Td1209
																																																																																																																				Let Td1208
																																																																																																																					Let Td1207
																																																																																																																						Let Ti1206
																																																																																																																							Let Ti1205
																																																																																																																								Int:1
																																																																																																																								Sub rectside Ti1205
																																																																																																																							Get dirvec Ti1206
																																																																																																																						App sgnTd1207 
																																																																																																																					App fnegTd1208 
																																																																																																																				Put Ta1202 Ti1204 Td1209
																																																																																																															LetRec get_nvector_plane m 
																																																																																																																Let Tu124
																																																																																																																	Let Ta1187
																																																																																																																		ExtArray 568
																																																																																																																		Let Ti1188
																																																																																																																			Int:0
																																																																																																																			Let Td1190
																																																																																																																				Let Td1189
																																																																																																																					App o_param_am 
																																																																																																																					App fnegTd1189 
																																																																																																																				Put Ta1187 Ti1188 Td1190
																																																																																																																	Let Tu123
																																																																																																																		Let Ta1191
																																																																																																																			ExtArray 568
																																																																																																																			Let Ti1192
																																																																																																																				Int:1
																																																																																																																				Let Td1194
																																																																																																																					Let Td1193
																																																																																																																						App o_param_bm 
																																																																																																																						App fnegTd1193 
																																																																																																																					Put Ta1191 Ti1192 Td1194
																																																																																																																		Let Ta1195
																																																																																																																			ExtArray 568
																																																																																																																			Let Ti1196
																																																																																																																				Int:2
																																																																																																																				Let Td1198
																																																																																																																					Let Td1197
																																																																																																																						App o_param_cm 
																																																																																																																						App fnegTd1197 
																																																																																																																					Put Ta1195 Ti1196 Td1198
																																																																																																																LetRec get_nvector_second m 
																																																																																																																	Let p0
																																																																																																																		Let Td1137
																																																																																																																			Let Ta1135
																																																																																																																				ExtArray 552
																																																																																																																				Let Ti1136
																																																																																																																					Int:0
																																																																																																																					Get Ta1135 Ti1136
																																																																																																																			Let Td1138
																																																																																																																				App o_param_xm 
																																																																																																																				FSub Td1137 Td1138
																																																																																																																		Let p1
																																																																																																																			Let Td1141
																																																																																																																				Let Ta1139
																																																																																																																					ExtArray 552
																																																																																																																					Let Ti1140
																																																																																																																						Int:1
																																																																																																																						Get Ta1139 Ti1140
																																																																																																																				Let Td1142
																																																																																																																					App o_param_ym 
																																																																																																																					FSub Td1141 Td1142
																																																																																																																			Let p2
																																																																																																																				Let Td1145
																																																																																																																					Let Ta1143
																																																																																																																						ExtArray 552
																																																																																																																						Let Ti1144
																																																																																																																							Int:2
																																																																																																																							Get Ta1143 Ti1144
																																																																																																																					Let Td1146
																																																																																																																						App o_param_zm 
																																																																																																																						FSub Td1145 Td1146
																																																																																																																				Let d0
																																																																																																																					Let Td1147
																																																																																																																						App o_param_am 
																																																																																																																						FMul p0 Td1147
																																																																																																																					Let d1
																																																																																																																						Let Td1148
																																																																																																																							App o_param_bm 
																																																																																																																							FMul p1 Td1148
																																																																																																																						Let d2
																																																																																																																							Let Td1149
																																																																																																																								App o_param_cm 
																																																																																																																								FMul p2 Td1149
																																																																																																																							Let Tu129
																																																																																																																								Let Ti1150
																																																																																																																									App o_isrotm 
																																																																																																																									Let Ti1151
																																																																																																																										Int:0
																																																																																																																										IfEq Ti1150 Ti1151
																																																																																																																											Let Tu126
																																																																																																																												Let Ta1152
																																																																																																																													ExtArray 568
																																																																																																																													Let Ti1153
																																																																																																																														Int:0
																																																																																																																														Put Ta1152 Ti1153 d0
																																																																																																																												Let Tu125
																																																																																																																													Let Ta1154
																																																																																																																														ExtArray 568
																																																																																																																														Let Ti1155
																																																																																																																															Int:1
																																																																																																																															Put Ta1154 Ti1155 d1
																																																																																																																													Let Ta1156
																																																																																																																														ExtArray 568
																																																																																																																														Let Ti1157
																																																																																																																															Int:2
																																																																																																																															Put Ta1156 Ti1157 d2
																																																																																																																											Let Tu128
																																																																																																																												Let Ta1158
																																																																																																																													ExtArray 568
																																																																																																																													Let Ti1159
																																																																																																																														Int:0
																																																																																																																														Let Td1166
																																																																																																																															Let Td1165
																																																																																																																																Let Td1164
																																																																																																																																	Let Td1161
																																																																																																																																		Let Td1160
																																																																																																																																			App o_param_r3m 
																																																																																																																																			FMul p1 Td1160
																																																																																																																																		Let Td1163
																																																																																																																																			Let Td1162
																																																																																																																																				App o_param_r2m 
																																																																																																																																				FMul p2 Td1162
																																																																																																																																			FAdd Td1161 Td1163
																																																																																																																																	App fhalfTd1164 
																																																																																																																																FAdd d0 Td1165
																																																																																																																															Put Ta1158 Ti1159 Td1166
																																																																																																																												Let Tu127
																																																																																																																													Let Ta1167
																																																																																																																														ExtArray 568
																																																																																																																														Let Ti1168
																																																																																																																															Int:1
																																																																																																																															Let Td1175
																																																																																																																																Let Td1174
																																																																																																																																	Let Td1173
																																																																																																																																		Let Td1170
																																																																																																																																			Let Td1169
																																																																																																																																				App o_param_r3m 
																																																																																																																																				FMul p0 Td1169
																																																																																																																																			Let Td1172
																																																																																																																																				Let Td1171
																																																																																																																																					App o_param_r1m 
																																																																																																																																					FMul p2 Td1171
																																																																																																																																				FAdd Td1170 Td1172
																																																																																																																																		App fhalfTd1173 
																																																																																																																																	FAdd d1 Td1174
																																																																																																																																Put Ta1167 Ti1168 Td1175
																																																																																																																													Let Ta1176
																																																																																																																														ExtArray 568
																																																																																																																														Let Ti1177
																																																																																																																															Int:2
																																																																																																																															Let Td1184
																																																																																																																																Let Td1183
																																																																																																																																	Let Td1182
																																																																																																																																		Let Td1179
																																																																																																																																			Let Td1178
																																																																																																																																				App o_param_r2m 
																																																																																																																																				FMul p0 Td1178
																																																																																																																																			Let Td1181
																																																																																																																																				Let Td1180
																																																																																																																																					App o_param_r1m 
																																																																																																																																					FMul p1 Td1180
																																																																																																																																				FAdd Td1179 Td1181
																																																																																																																																		App fhalfTd1182 
																																																																																																																																	FAdd d2 Td1183
																																																																																																																																Put Ta1176 Ti1177 Td1184
																																																																																																																								Let Ta1185
																																																																																																																									ExtArray 568
																																																																																																																									Let Tb1186
																																																																																																																										App o_isinvertm 
																																																																																																																										App vecunit_sgnTa1185 Tb1186 
																																																																																																																	LetRec get_nvector m dirvec 
																																																																																																																		Let m_shape
																																																																																																																			App o_formm 
																																																																																																																			Let Ti1133
																																																																																																																				Int:1
																																																																																																																				IfEq m_shape Ti1133
																																																																																																																					App get_nvector_rectdirvec 
																																																																																																																					Let Ti1134
																																																																																																																						Int:2
																																																																																																																						IfEq m_shape Ti1134
																																																																																																																							App get_nvector_planem 
																																																																																																																							App get_nvector_secondm 
																																																																																																																		LetRec utexture m p 
																																																																																																																			Let m_tex
																																																																																																																				App o_texturetypem 
																																																																																																																				Let Tu134
																																																																																																																					Let Ta994
																																																																																																																						ExtArray 580
																																																																																																																						Let Ti995
																																																																																																																							Int:0
																																																																																																																							Let Td996
																																																																																																																								App o_color_redm 
																																																																																																																								Put Ta994 Ti995 Td996
																																																																																																																					Let Tu133
																																																																																																																						Let Ta997
																																																																																																																							ExtArray 580
																																																																																																																							Let Ti998
																																																																																																																								Int:1
																																																																																																																								Let Td999
																																																																																																																									App o_color_greenm 
																																																																																																																									Put Ta997 Ti998 Td999
																																																																																																																						Let Tu132
																																																																																																																							Let Ta1000
																																																																																																																								ExtArray 580
																																																																																																																								Let Ti1001
																																																																																																																									Int:2
																																																																																																																									Let Td1002
																																																																																																																										App o_color_bluem 
																																																																																																																										Put Ta1000 Ti1001 Td1002
																																																																																																																							Let Ti1003
																																																																																																																								Int:1
																																																																																																																								IfEq m_tex Ti1003
																																																																																																																									Let w1
																																																																																																																										Let Td1005
																																																																																																																											Let Ti1004
																																																																																																																												Int:0
																																																																																																																												Get p Ti1004
																																																																																																																											Let Td1006
																																																																																																																												App o_param_xm 
																																																																																																																												FSub Td1005 Td1006
																																																																																																																										Let flag1
																																																																																																																											Let d1
																																																																																																																												Let Td1009
																																																																																																																													Let Td1008
																																																																																																																														Let Td1007
																																																																																																																															Float:0.050000
																																																																																																																															FMul w1 Td1007
																																																																																																																														ExtFunApp floor Td1008,
																																																																																																																													Let Td1010
																																																																																																																														Float:20.000000
																																																																																																																														FMul Td1009 Td1010
																																																																																																																												Let Td1011
																																																																																																																													FSub w1 d1
																																																																																																																													Let Td1012
																																																																																																																														Float:10.000000
																																																																																																																														App flessTd1011 Td1012 
																																																																																																																											Let w3
																																																																																																																												Let Td1014
																																																																																																																													Let Ti1013
																																																																																																																														Int:2
																																																																																																																														Get p Ti1013
																																																																																																																													Let Td1015
																																																																																																																														App o_param_zm 
																																																																																																																														FSub Td1014 Td1015
																																																																																																																												Let flag2
																																																																																																																													Let d2
																																																																																																																														Let Td1018
																																																																																																																															Let Td1017
																																																																																																																																Let Td1016
																																																																																																																																	Float:0.050000
																																																																																																																																	FMul w3 Td1016
																																																																																																																																ExtFunApp floor Td1017,
																																																																																																																															Let Td1019
																																																																																																																																Float:20.000000
																																																																																																																																FMul Td1018 Td1019
																																																																																																																														Let Td1020
																																																																																																																															FSub w3 d2
																																																																																																																															Let Td1021
																																																																																																																																Float:10.000000
																																																																																																																																App flessTd1020 Td1021 
																																																																																																																													Let Ta1022
																																																																																																																														ExtArray 580
																																																																																																																														Let Ti1023
																																																																																																																															Int:1
																																																																																																																															Let Td1027
																																																																																																																																Let Ti1024
																																																																																																																																	Int:0
																																																																																																																																	IfEq flag1 Ti1024
																																																																																																																																		Let Ti1025
																																																																																																																																			Int:0
																																																																																																																																			IfEq flag2 Ti1025
																																																																																																																																				Float:255.000000
																																																																																																																																				Float:0.000000
																																																																																																																																		Let Ti1026
																																																																																																																																			Int:0
																																																																																																																																			IfEq flag2 Ti1026
																																																																																																																																				Float:0.000000
																																																																																																																																				Float:255.000000
																																																																																																																																Put Ta1022 Ti1023 Td1027
																																																																																																																									Let Ti1028
																																																																																																																										Int:2
																																																																																																																										IfEq m_tex Ti1028
																																																																																																																											Let w2
																																																																																																																												Let Td1033
																																																																																																																													Let Td1032
																																																																																																																														Let Td1030
																																																																																																																															Let Ti1029
																																																																																																																																Int:1
																																																																																																																																Get p Ti1029
																																																																																																																															Let Td1031
																																																																																																																																Float:0.250000
																																																																																																																																FMul Td1030 Td1031
																																																																																																																														ExtFunApp sin Td1032,
																																																																																																																													App fsqrTd1033 
																																																																																																																												Let Tu130
																																																																																																																													Let Ta1034
																																																																																																																														ExtArray 580
																																																																																																																														Let Ti1035
																																																																																																																															Int:0
																																																																																																																															Let Td1037
																																																																																																																																Let Td1036
																																																																																																																																	Float:255.000000
																																																																																																																																	FMul Td1036 w2
																																																																																																																																Put Ta1034 Ti1035 Td1037
																																																																																																																													Let Ta1038
																																																																																																																														ExtArray 580
																																																																																																																														Let Ti1039
																																																																																																																															Int:1
																																																																																																																															Let Td1043
																																																																																																																																Let Td1040
																																																																																																																																	Float:255.000000
																																																																																																																																	Let Td1042
																																																																																																																																		Let Td1041
																																																																																																																																			Float:1.000000
																																																																																																																																			FSub Td1041 w2
																																																																																																																																		FMul Td1040 Td1042
																																																																																																																																Put Ta1038 Ti1039 Td1043
																																																																																																																											Let Ti1044
																																																																																																																												Int:3
																																																																																																																												IfEq m_tex Ti1044
																																																																																																																													Let w1
																																																																																																																														Let Td1046
																																																																																																																															Let Ti1045
																																																																																																																																Int:0
																																																																																																																																Get p Ti1045
																																																																																																																															Let Td1047
																																																																																																																																App o_param_xm 
																																																																																																																																FSub Td1046 Td1047
																																																																																																																														Let w3
																																																																																																																															Let Td1049
																																																																																																																																Let Ti1048
																																																																																																																																	Int:2
																																																																																																																																	Get p Ti1048
																																																																																																																																Let Td1050
																																																																																																																																	App o_param_zm 
																																																																																																																																	FSub Td1049 Td1050
																																																																																																																															Let w2
																																																																																																																																Let Td1054
																																																																																																																																	Let Td1053
																																																																																																																																		Let Td1051
																																																																																																																																			App fsqrw1 
																																																																																																																																			Let Td1052
																																																																																																																																				App fsqrw3 
																																																																																																																																				FAdd Td1051 Td1052
																																																																																																																																		ExtFunApp sqrt Td1053,
																																																																																																																																	Let Td1055
																																																																																																																																		Float:10.000000
																																																																																																																																		Let Td1056
																																																																																																																																			FReciprocal Td1055
																																																																																																																																			FMul Td1054 Td1056
																																																																																																																																Let w4
																																																																																																																																	Let Td1058
																																																																																																																																		Let Td1057
																																																																																																																																			ExtFunApp floor w2,
																																																																																																																																			FSub w2 Td1057
																																																																																																																																		Let Td1059
																																																																																																																																			Float:3.141593
																																																																																																																																			FMul Td1058 Td1059
																																																																																																																																	Let cws
																																																																																																																																		Let Td1060
																																																																																																																																			ExtFunApp cos w4,
																																																																																																																																			App fsqrTd1060 
																																																																																																																																		Let Tu131
																																																																																																																																			Let Ta1061
																																																																																																																																				ExtArray 580
																																																																																																																																				Let Ti1062
																																																																																																																																					Int:1
																																																																																																																																					Let Td1064
																																																																																																																																						Let Td1063
																																																																																																																																							Float:255.000000
																																																																																																																																							FMul cws Td1063
																																																																																																																																						Put Ta1061 Ti1062 Td1064
																																																																																																																																			Let Ta1065
																																																																																																																																				ExtArray 580
																																																																																																																																				Let Ti1066
																																																																																																																																					Int:2
																																																																																																																																					Let Td1070
																																																																																																																																						Let Td1068
																																																																																																																																							Let Td1067
																																																																																																																																								Float:1.000000
																																																																																																																																								FSub Td1067 cws
																																																																																																																																							Let Td1069
																																																																																																																																								Float:255.000000
																																																																																																																																								FMul Td1068 Td1069
																																																																																																																																						Put Ta1065 Ti1066 Td1070
																																																																																																																													Let Ti1071
																																																																																																																														Int:4
																																																																																																																														IfEq m_tex Ti1071
																																																																																																																															Let w1
																																																																																																																																Let Td1075
																																																																																																																																	Let Td1073
																																																																																																																																		Let Ti1072
																																																																																																																																			Int:0
																																																																																																																																			Get p Ti1072
																																																																																																																																		Let Td1074
																																																																																																																																			App o_param_xm 
																																																																																																																																			FSub Td1073 Td1074
																																																																																																																																	Let Td1077
																																																																																																																																		Let Td1076
																																																																																																																																			App o_param_am 
																																																																																																																																			ExtFunApp sqrt Td1076,
																																																																																																																																		FMul Td1075 Td1077
																																																																																																																																Let w3
																																																																																																																																	Let Td1081
																																																																																																																																		Let Td1079
																																																																																																																																			Let Ti1078
																																																																																																																																				Int:2
																																																																																																																																				Get p Ti1078
																																																																																																																																			Let Td1080
																																																																																																																																				App o_param_zm 
																																																																																																																																				FSub Td1079 Td1080
																																																																																																																																		Let Td1083
																																																																																																																																			Let Td1082
																																																																																																																																				App o_param_cm 
																																																																																																																																				ExtFunApp sqrt Td1082,
																																																																																																																																			FMul Td1081 Td1083
																																																																																																																																	Let w4
																																																																																																																																		Let Td1084
																																																																																																																																			App fsqrw1 
																																																																																																																																			Let Td1085
																																																																																																																																				App fsqrw3 
																																																																																																																																				FAdd Td1084 Td1085
																																																																																																																																		Let w7
																																																																																																																																			Let Tb1088
																																																																																																																																				Let Td1086
																																																																																																																																					App fabsw1 
																																																																																																																																					Let Td1087
																																																																																																																																						Float:0.000100
																																																																																																																																						App flessTd1086 Td1087 
																																																																																																																																				Let Ti1089
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb1088 Ti1089
																																																																																																																																						Let w5
																																																																																																																																							Let Td1091
																																																																																																																																								Let Td1090
																																																																																																																																									FReciprocal w1
																																																																																																																																									FMul w3 Td1090
																																																																																																																																								App fabsTd1091 
																																																																																																																																							Let Td1094
																																																																																																																																								Let Td1092
																																																																																																																																									ExtFunApp atan w5,
																																																																																																																																									Let Td1093
																																																																																																																																										Float:30.000000
																																																																																																																																										FMul Td1092 Td1093
																																																																																																																																								Let Td1095
																																																																																																																																									Float:3.141593
																																																																																																																																									Let Td1096
																																																																																																																																										FReciprocal Td1095
																																																																																																																																										FMul Td1094 Td1096
																																																																																																																																						Float:15.000000
																																																																																																																																			Let w9
																																																																																																																																				Let Td1097
																																																																																																																																					ExtFunApp floor w7,
																																																																																																																																					FSub w7 Td1097
																																																																																																																																				Let w2
																																																																																																																																					Let Td1101
																																																																																																																																						Let Td1099
																																																																																																																																							Let Ti1098
																																																																																																																																								Int:1
																																																																																																																																								Get p Ti1098
																																																																																																																																							Let Td1100
																																																																																																																																								App o_param_ym 
																																																																																																																																								FSub Td1099 Td1100
																																																																																																																																						Let Td1103
																																																																																																																																							Let Td1102
																																																																																																																																								App o_param_bm 
																																																																																																																																								ExtFunApp sqrt Td1102,
																																																																																																																																							FMul Td1101 Td1103
																																																																																																																																					Let w8
																																																																																																																																						Let Tb1106
																																																																																																																																							Let Td1104
																																																																																																																																								App fabsw4 
																																																																																																																																								Let Td1105
																																																																																																																																									Float:0.000100
																																																																																																																																									App flessTd1104 Td1105 
																																																																																																																																							Let Ti1107
																																																																																																																																								Int:0
																																																																																																																																								IfEq Tb1106 Ti1107
																																																																																																																																									Let w6
																																																																																																																																										Let Td1109
																																																																																																																																											Let Td1108
																																																																																																																																												FReciprocal w4
																																																																																																																																												FMul w2 Td1108
																																																																																																																																											App fabsTd1109 
																																																																																																																																										Let Td1112
																																																																																																																																											Let Td1110
																																																																																																																																												ExtFunApp atan w6,
																																																																																																																																												Let Td1111
																																																																																																																																													Float:30.000000
																																																																																																																																													FMul Td1110 Td1111
																																																																																																																																											Let Td1113
																																																																																																																																												Float:3.141593
																																																																																																																																												Let Td1114
																																																																																																																																													FReciprocal Td1113
																																																																																																																																													FMul Td1112 Td1114
																																																																																																																																									Float:15.000000
																																																																																																																																						Let w10
																																																																																																																																							Let Td1115
																																																																																																																																								ExtFunApp floor w8,
																																																																																																																																								FSub w8 Td1115
																																																																																																																																							Let w11
																																																																																																																																								Let Td1120
																																																																																																																																									Let Td1116
																																																																																																																																										Float:0.150000
																																																																																																																																										Let Td1119
																																																																																																																																											Let Td1118
																																																																																																																																												Let Td1117
																																																																																																																																													Float:0.500000
																																																																																																																																													FSub Td1117 w9
																																																																																																																																												App fsqrTd1118 
																																																																																																																																											FSub Td1116 Td1119
																																																																																																																																									Let Td1123
																																																																																																																																										Let Td1122
																																																																																																																																											Let Td1121
																																																																																																																																												Float:0.500000
																																																																																																																																												FSub Td1121 w10
																																																																																																																																											App fsqrTd1122 
																																																																																																																																										FSub Td1120 Td1123
																																																																																																																																								Let w12
																																																																																																																																									Let Tb1124
																																																																																																																																										App fisnegw11 
																																																																																																																																										Let Ti1125
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb1124 Ti1125
																																																																																																																																												Var w11
																																																																																																																																												Float:0.000000
																																																																																																																																									Let Ta1126
																																																																																																																																										ExtArray 580
																																																																																																																																										Let Ti1127
																																																																																																																																											Int:2
																																																																																																																																											Let Td1132
																																																																																																																																												Let Td1129
																																																																																																																																													Let Td1128
																																																																																																																																														Float:255.000000
																																																																																																																																														FMul Td1128 w12
																																																																																																																																													Let Td1130
																																																																																																																																														Float:0.300000
																																																																																																																																														Let Td1131
																																																																																																																																															FReciprocal Td1130
																																																																																																																																															FMul Td1129 Td1131
																																																																																																																																												Put Ta1126 Ti1127 Td1132
																																																																																																																															Unit
																																																																																																																			LetRec add_light bright hilight hilight_scale 
																																																																																																																				Let Tu137
																																																																																																																					Let Tb968
																																																																																																																						App fisposbright 
																																																																																																																						Let Ti969
																																																																																																																							Int:0
																																																																																																																							IfEq Tb968 Ti969
																																																																																																																								Unit
																																																																																																																								Let Ta970
																																																																																																																									ExtArray 604
																																																																																																																									Let Ta971
																																																																																																																										ExtArray 580
																																																																																																																										App vecaccumTa970 bright Ta971 
																																																																																																																					Let Tb972
																																																																																																																						App fisposhilight 
																																																																																																																						Let Ti973
																																																																																																																							Int:0
																																																																																																																							IfEq Tb972 Ti973
																																																																																																																								Unit
																																																																																																																								Let ihl
																																																																																																																									Let Td975
																																																																																																																										Let Td974
																																																																																																																											App fsqrhilight 
																																																																																																																											App fsqrTd974 
																																																																																																																										FMul Td975 hilight_scale
																																																																																																																									Let Tu136
																																																																																																																										Let Ta976
																																																																																																																											ExtArray 604
																																																																																																																											Let Ti977
																																																																																																																												Int:0
																																																																																																																												Let Td981
																																																																																																																													Let Td980
																																																																																																																														Let Ta978
																																																																																																																															ExtArray 604
																																																																																																																															Let Ti979
																																																																																																																																Int:0
																																																																																																																																Get Ta978 Ti979
																																																																																																																														FAdd Td980 ihl
																																																																																																																													Put Ta976 Ti977 Td981
																																																																																																																										Let Tu135
																																																																																																																											Let Ta982
																																																																																																																												ExtArray 604
																																																																																																																												Let Ti983
																																																																																																																													Int:1
																																																																																																																													Let Td987
																																																																																																																														Let Td986
																																																																																																																															Let Ta984
																																																																																																																																ExtArray 604
																																																																																																																																Let Ti985
																																																																																																																																	Int:1
																																																																																																																																	Get Ta984 Ti985
																																																																																																																															FAdd Td986 ihl
																																																																																																																														Put Ta982 Ti983 Td987
																																																																																																																											Let Ta988
																																																																																																																												ExtArray 604
																																																																																																																												Let Ti989
																																																																																																																													Int:2
																																																																																																																													Let Td993
																																																																																																																														Let Td992
																																																																																																																															Let Ta990
																																																																																																																																ExtArray 604
																																																																																																																																Let Ti991
																																																																																																																																	Int:2
																																																																																																																																	Get Ta990 Ti991
																																																																																																																															FAdd Td992 ihl
																																																																																																																														Put Ta988 Ti989 Td993
																																																																																																																				LetRec trace_reflections index diffuse hilight_scale dirvec 
																																																																																																																					Let Ti943
																																																																																																																						Int:0
																																																																																																																						IfLE Ti943 index
																																																																																																																							Let rinfo
																																																																																																																								Let Ta944
																																																																																																																									ExtArray 1016
																																																																																																																									Get Ta944 index
																																																																																																																								Let dvec
																																																																																																																									App r_dvecrinfo 
																																																																																																																									Let Tu138
																																																																																																																										Let Tb945
																																																																																																																											App judge_intersection_fastdvec 
																																																																																																																											Let Ti946
																																																																																																																												Int:0
																																																																																																																												IfEq Tb945 Ti946
																																																																																																																													Unit
																																																																																																																													Let surface_id
																																																																																																																														Let Ti950
																																																																																																																															Let Ti949
																																																																																																																																Let Ta947
																																																																																																																																	ExtArray 564
																																																																																																																																	Let Ti948
																																																																																																																																		Int:0
																																																																																																																																		Get Ta947 Ti948
																																																																																																																																ShiftL2 Ti949
																																																																																																																															Let Ti953
																																																																																																																																Let Ta951
																																																																																																																																	ExtArray 544
																																																																																																																																	Let Ti952
																																																																																																																																		Int:0
																																																																																																																																		Get Ta951 Ti952
																																																																																																																																Add Ti950 Ti953
																																																																																																																														Let Ti954
																																																																																																																															App r_surface_idrinfo 
																																																																																																																															IfEq surface_id Ti954
																																																																																																																																Let Tb959
																																																																																																																																	Let Ti955
																																																																																																																																		Int:0
																																																																																																																																		Let Ta958
																																																																																																																																			Let Ta956
																																																																																																																																				ExtArray 536
																																																																																																																																				Let Ti957
																																																																																																																																					Int:0
																																																																																																																																					Get Ta956 Ti957
																																																																																																																																			App shadow_check_one_or_matrixTi955 Ta958 
																																																																																																																																	Let Ti960
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb959 Ti960
																																																																																																																																			Let p
																																																																																																																																				Let Ta961
																																																																																																																																					ExtArray 568
																																																																																																																																					Let Ta962
																																																																																																																																						App d_vecdvec 
																																																																																																																																						App veciprodTa961 Ta962 
																																																																																																																																				Let scale
																																																																																																																																					App r_brightrinfo 
																																																																																																																																					Let bright
																																																																																																																																						Let Td963
																																																																																																																																							FMul scale diffuse
																																																																																																																																							FMul Td963 p
																																																																																																																																						Let hilight
																																																																																																																																							Let Td965
																																																																																																																																								Let Ta964
																																																																																																																																									App d_vecdvec 
																																																																																																																																									App veciproddirvec Ta964 
																																																																																																																																								FMul scale Td965
																																																																																																																																							App add_lightbright hilight hilight_scale 
																																																																																																																																			Unit
																																																																																																																																Unit
																																																																																																																										Let Ti967
																																																																																																																											Let Ti966
																																																																																																																												Int:1
																																																																																																																												Sub index Ti966
																																																																																																																											App trace_reflectionsTi967 diffuse hilight_scale dirvec 
																																																																																																																							Unit
																																																																																																																					LetRec trace_ray nref energy dirvec pixel dist 
																																																																																																																						Let Ti838
																																																																																																																							Int:4
																																																																																																																							IfLE nref Ti838
																																																																																																																								Let surface_ids
																																																																																																																									App p_surface_idspixel 
																																																																																																																									Let Tb839
																																																																																																																										App judge_intersectiondirvec 
																																																																																																																										Let Ti840
																																																																																																																											Int:0
																																																																																																																											IfEq Tb839 Ti840
																																																																																																																												Let Tu155
																																																																																																																													Let Ti842
																																																																																																																														Let Ti841
																																																																																																																															Int:1
																																																																																																																															Neg Ti841
																																																																																																																														Put surface_ids nref Ti842
																																																																																																																													Let Ti843
																																																																																																																														Int:0
																																																																																																																														IfEq nref Ti843
																																																																																																																															Unit
																																																																																																																															Let hl
																																																																																																																																Let Td845
																																																																																																																																	Let Ta844
																																																																																																																																		ExtArray 312
																																																																																																																																		App veciproddirvec Ta844 
																																																																																																																																	App fnegTd845 
																																																																																																																																Let Tb846
																																																																																																																																	App fisposhl 
																																																																																																																																	Let Ti847
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb846 Ti847
																																																																																																																																			Unit
																																																																																																																																			Let ihl
																																																																																																																																				Let Td850
																																																																																																																																					Let Td849
																																																																																																																																						Let Td848
																																																																																																																																							App fsqrhl 
																																																																																																																																							FMul Td848 hl
																																																																																																																																						FMul Td849 energy
																																																																																																																																					Let Td853
																																																																																																																																						Let Ta851
																																																																																																																																							ExtArray 324
																																																																																																																																							Let Ti852
																																																																																																																																								Int:0
																																																																																																																																								Get Ta851 Ti852
																																																																																																																																						FMul Td850 Td853
																																																																																																																																				Let Tu154
																																																																																																																																					Let Ta854
																																																																																																																																						ExtArray 604
																																																																																																																																						Let Ti855
																																																																																																																																							Int:0
																																																																																																																																							Let Td859
																																																																																																																																								Let Td858
																																																																																																																																									Let Ta856
																																																																																																																																										ExtArray 604
																																																																																																																																										Let Ti857
																																																																																																																																											Int:0
																																																																																																																																											Get Ta856 Ti857
																																																																																																																																									FAdd Td858 ihl
																																																																																																																																								Put Ta854 Ti855 Td859
																																																																																																																																					Let Tu153
																																																																																																																																						Let Ta860
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti861
																																																																																																																																								Int:1
																																																																																																																																								Let Td865
																																																																																																																																									Let Td864
																																																																																																																																										Let Ta862
																																																																																																																																											ExtArray 604
																																																																																																																																											Let Ti863
																																																																																																																																												Int:1
																																																																																																																																												Get Ta862 Ti863
																																																																																																																																										FAdd Td864 ihl
																																																																																																																																									Put Ta860 Ti861 Td865
																																																																																																																																						Let Ta866
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti867
																																																																																																																																								Int:2
																																																																																																																																								Let Td871
																																																																																																																																									Let Td870
																																																																																																																																										Let Ta868
																																																																																																																																											ExtArray 604
																																																																																																																																											Let Ti869
																																																																																																																																												Int:2
																																																																																																																																												Get Ta868 Ti869
																																																																																																																																										FAdd Td870 ihl
																																																																																																																																									Put Ta866 Ti867 Td871
																																																																																																																												Let obj_id
																																																																																																																													Let Ta872
																																																																																																																														ExtArray 564
																																																																																																																														Let Ti873
																																																																																																																															Int:0
																																																																																																																															Get Ta872 Ti873
																																																																																																																													Let obj
																																																																																																																														Let Ta874
																																																																																																																															ExtArray 48
																																																																																																																															Get Ta874 obj_id
																																																																																																																														Let m_surface
																																																																																																																															App o_reflectiontypeobj 
																																																																																																																															Let diffuse
																																																																																																																																Let Td875
																																																																																																																																	App o_diffuseobj 
																																																																																																																																	FMul Td875 energy
																																																																																																																																Let Tu152
																																																																																																																																	App get_nvectorobj dirvec 
																																																																																																																																	Let Tu151
																																																																																																																																		Let Ta876
																																																																																																																																			ExtArray 636
																																																																																																																																			Let Ta877
																																																																																																																																				ExtArray 552
																																																																																																																																				App veccpyTa876 Ta877 
																																																																																																																																		Let Tu150
																																																																																																																																			Let Ta878
																																																																																																																																				ExtArray 552
																																																																																																																																				App utextureobj Ta878 
																																																																																																																																			Let Tu149
																																																																																																																																				Let Ti883
																																																																																																																																					Let Ti879
																																																																																																																																						ShiftL2 obj_id
																																																																																																																																						Let Ti882
																																																																																																																																							Let Ta880
																																																																																																																																								ExtArray 544
																																																																																																																																								Let Ti881
																																																																																																																																									Int:0
																																																																																																																																									Get Ta880 Ti881
																																																																																																																																							Add Ti879 Ti882
																																																																																																																																					Put surface_ids nref Ti883
																																																																																																																																				Let intersection_points
																																																																																																																																					App p_intersection_pointspixel 
																																																																																																																																					Let Tu148
																																																																																																																																						Let Ta884
																																																																																																																																							Get intersection_points nref
																																																																																																																																							Let Ta885
																																																																																																																																								ExtArray 552
																																																																																																																																								App veccpyTa884 Ta885 
																																																																																																																																						Let calc_diffuse
																																																																																																																																							App p_calc_diffusepixel 
																																																																																																																																							Let Tu147
																																																																																																																																								Let Tb888
																																																																																																																																									Let Td886
																																																																																																																																										App o_diffuseobj 
																																																																																																																																										Let Td887
																																																																																																																																											Float:0.500000
																																																																																																																																											App flessTd886 Td887 
																																																																																																																																									Let Ti889
																																																																																																																																										Int:0
																																																																																																																																										IfEq Tb888 Ti889
																																																																																																																																											Let Tu141
																																																																																																																																												Let Ti890
																																																																																																																																													Int:1
																																																																																																																																													Put calc_diffuse nref Ti890
																																																																																																																																												Let energya
																																																																																																																																													App p_energypixel 
																																																																																																																																													Let Tu140
																																																																																																																																														Let Ta891
																																																																																																																																															Get energya nref
																																																																																																																																															Let Ta892
																																																																																																																																																ExtArray 580
																																																																																																																																																App veccpyTa891 Ta892 
																																																																																																																																														Let Tu139
																																																																																																																																															Let Ta893
																																																																																																																																																Get energya nref
																																																																																																																																																Let Td898
																																																																																																																																																	Let Td897
																																																																																																																																																		Let Td894
																																																																																																																																																			Float:1.000000
																																																																																																																																																			Let Td895
																																																																																																																																																				Float:256.000000
																																																																																																																																																				Let Td896
																																																																																																																																																					FReciprocal Td895
																																																																																																																																																					FMul Td894 Td896
																																																																																																																																																		FMul Td897 diffuse
																																																																																																																																																	App vecscaleTa893 Td898 
																																																																																																																																															Let nvectors
																																																																																																																																																App p_nvectorspixel 
																																																																																																																																																Let Ta899
																																																																																																																																																	Get nvectors nref
																																																																																																																																																	Let Ta900
																																																																																																																																																		ExtArray 568
																																																																																																																																																		App veccpyTa899 Ta900 
																																																																																																																																											Let Ti901
																																																																																																																																												Int:0
																																																																																																																																												Put calc_diffuse nref Ti901
																																																																																																																																								Let w
																																																																																																																																									Let Td902
																																																																																																																																										Float:-2.000000
																																																																																																																																										Let Td904
																																																																																																																																											Let Ta903
																																																																																																																																												ExtArray 568
																																																																																																																																												App veciproddirvec Ta903 
																																																																																																																																											FMul Td902 Td904
																																																																																																																																									Let Tu146
																																																																																																																																										Let Ta905
																																																																																																																																											ExtArray 568
																																																																																																																																											App vecaccumdirvec w Ta905 
																																																																																																																																										Let hilight_scale
																																																																																																																																											Let Td906
																																																																																																																																												App o_hilightobj 
																																																																																																																																												FMul energy Td906
																																																																																																																																											Let Tu145
																																																																																																																																												Let Tb911
																																																																																																																																													Let Ti907
																																																																																																																																														Int:0
																																																																																																																																														Let Ta910
																																																																																																																																															Let Ta908
																																																																																																																																																ExtArray 536
																																																																																																																																																Let Ti909
																																																																																																																																																	Int:0
																																																																																																																																																	Get Ta908 Ti909
																																																																																																																																															App shadow_check_one_or_matrixTi907 Ta910 
																																																																																																																																													Let Ti912
																																																																																																																																														Int:0
																																																																																																																																														IfEq Tb911 Ti912
																																																																																																																																															Let bright
																																																																																																																																																Let Td916
																																																																																																																																																	Let Td915
																																																																																																																																																		Let Ta913
																																																																																																																																																			ExtArray 568
																																																																																																																																																			Let Ta914
																																																																																																																																																				ExtArray 312
																																																																																																																																																				App veciprodTa913 Ta914 
																																																																																																																																																		App fnegTd915 
																																																																																																																																																	FMul Td916 diffuse
																																																																																																																																																Let hilight
																																																																																																																																																	Let Td918
																																																																																																																																																		Let Ta917
																																																																																																																																																			ExtArray 312
																																																																																																																																																			App veciproddirvec Ta917 
																																																																																																																																																		App fnegTd918 
																																																																																																																																																	App add_lightbright hilight hilight_scale 
																																																																																																																																															Unit
																																																																																																																																												Let Tu144
																																																																																																																																													Let Ta919
																																																																																																																																														ExtArray 552
																																																																																																																																														App setup_startpTa919 
																																																																																																																																													Let Tu143
																																																																																																																																														Let Ti924
																																																																																																																																															Let Ti922
																																																																																																																																																Let Ta920
																																																																																																																																																	ExtArray 1736
																																																																																																																																																	Let Ti921
																																																																																																																																																		Int:0
																																																																																																																																																		Get Ta920 Ti921
																																																																																																																																																Let Ti923
																																																																																																																																																	Int:1
																																																																																																																																																	Sub Ti922 Ti923
																																																																																																																																															App trace_reflectionsTi924 diffuse hilight_scale dirvec 
																																																																																																																																														Let Tb926
																																																																																																																																															Let Td925
																																																																																																																																																Float:0.100000
																																																																																																																																																App flessTd925 energy 
																																																																																																																																															Let Ti927
																																																																																																																																																Int:0
																																																																																																																																																IfEq Tb926 Ti927
																																																																																																																																																	Unit
																																																																																																																																																	Let Tu142
																																																																																																																																																		Let Ti928
																																																																																																																																																			Int:4
																																																																																																																																																			IfLE Ti928 nref
																																																																																																																																																				Unit
																																																																																																																																																				Let Ti930
																																																																																																																																																					Let Ti929
																																																																																																																																																						Int:1
																																																																																																																																																						Add nref Ti929
																																																																																																																																																					Let Ti932
																																																																																																																																																						Let Ti931
																																																																																																																																																							Int:1
																																																																																																																																																							Neg Ti931
																																																																																																																																																						Put surface_ids Ti930 Ti932
																																																																																																																																																		Let Ti933
																																																																																																																																																			Int:2
																																																																																																																																																			IfEq m_surface Ti933
																																																																																																																																																				Let energy2
																																																																																																																																																					Let Td936
																																																																																																																																																						Let Td934
																																																																																																																																																							Float:1.000000
																																																																																																																																																							Let Td935
																																																																																																																																																								App o_diffuseobj 
																																																																																																																																																								FSub Td934 Td935
																																																																																																																																																						FMul energy Td936
																																																																																																																																																					Let Ti938
																																																																																																																																																						Let Ti937
																																																																																																																																																							Int:1
																																																																																																																																																							Add nref Ti937
																																																																																																																																																						Let Td942
																																																																																																																																																							Let Td941
																																																																																																																																																								Let Ta939
																																																																																																																																																									ExtArray 548
																																																																																																																																																									Let Ti940
																																																																																																																																																										Int:0
																																																																																																																																																										Get Ta939 Ti940
																																																																																																																																																								FAdd dist Td941
																																																																																																																																																							App trace_rayTi938 energy2 dirvec pixel Td942 
																																																																																																																																																				Unit
																																																																																																																								Unit
																																																																																																																						LetRec trace_diffuse_ray dirvec energy 
																																																																																																																							Let Tb814
																																																																																																																								App judge_intersection_fastdirvec 
																																																																																																																								Let Ti815
																																																																																																																									Int:0
																																																																																																																									IfEq Tb814 Ti815
																																																																																																																										Unit
																																																																																																																										Let obj
																																																																																																																											Let Ta816
																																																																																																																												ExtArray 48
																																																																																																																												Let Ti819
																																																																																																																													Let Ta817
																																																																																																																														ExtArray 564
																																																																																																																														Let Ti818
																																																																																																																															Int:0
																																																																																																																															Get Ta817 Ti818
																																																																																																																													Get Ta816 Ti819
																																																																																																																											Let Tu157
																																																																																																																												Let Ta820
																																																																																																																													App d_vecdirvec 
																																																																																																																													App get_nvectorobj Ta820 
																																																																																																																												Let Tu156
																																																																																																																													Let Ta821
																																																																																																																														ExtArray 552
																																																																																																																														App utextureobj Ta821 
																																																																																																																													Let Tb826
																																																																																																																														Let Ti822
																																																																																																																															Int:0
																																																																																																																															Let Ta825
																																																																																																																																Let Ta823
																																																																																																																																	ExtArray 536
																																																																																																																																	Let Ti824
																																																																																																																																		Int:0
																																																																																																																																		Get Ta823 Ti824
																																																																																																																																App shadow_check_one_or_matrixTi822 Ta825 
																																																																																																																														Let Ti827
																																																																																																																															Int:0
																																																																																																																															IfEq Tb826 Ti827
																																																																																																																																Let br
																																																																																																																																	Let Td830
																																																																																																																																		Let Ta828
																																																																																																																																			ExtArray 568
																																																																																																																																			Let Ta829
																																																																																																																																				ExtArray 312
																																																																																																																																				App veciprodTa828 Ta829 
																																																																																																																																		App fnegTd830 
																																																																																																																																	Let bright
																																																																																																																																		Let Tb831
																																																																																																																																			App fisposbr 
																																																																																																																																			Let Ti832
																																																																																																																																				Int:0
																																																																																																																																				IfEq Tb831 Ti832
																																																																																																																																					Float:0.000000
																																																																																																																																					Var br
																																																																																																																																		Let Ta833
																																																																																																																																			ExtArray 592
																																																																																																																																			Let Td836
																																																																																																																																				Let Td834
																																																																																																																																					FMul energy bright
																																																																																																																																					Let Td835
																																																																																																																																						App o_diffuseobj 
																																																																																																																																						FMul Td834 Td835
																																																																																																																																				Let Ta837
																																																																																																																																					ExtArray 580
																																																																																																																																					App vecaccumTa833 Td836 Ta837 
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
																																																																																																																											Let Tu158
																																																																																																																												Let Tb800
																																																																																																																													App fisnegp 
																																																																																																																													Let Ti801
																																																																																																																														Int:0
																																																																																																																														IfEq Tb800 Ti801
																																																																																																																															Let Tt802
																																																																																																																																Get dirvec_group index
																																																																																																																																Let Td805
																																																																																																																																	Let Td803
																																																																																																																																		Float:150.000000
																																																																																																																																		Let Td804
																																																																																																																																			FReciprocal Td803
																																																																																																																																			FMul p Td804
																																																																																																																																	App trace_diffuse_rayTt802 Td805 
																																																																																																																															Let Tt808
																																																																																																																																Let Ti807
																																																																																																																																	Let Ti806
																																																																																																																																		Int:1
																																																																																																																																		Add index Ti806
																																																																																																																																	Get dirvec_group Ti807
																																																																																																																																Let Td811
																																																																																																																																	Let Td809
																																																																																																																																		Float:-150.000000
																																																																																																																																		Let Td810
																																																																																																																																			FReciprocal Td809
																																																																																																																																			FMul p Td810
																																																																																																																																	App trace_diffuse_rayTt808 Td811 
																																																																																																																												Let Ti813
																																																																																																																													Let Ti812
																																																																																																																														Int:2
																																																																																																																														Sub index Ti812
																																																																																																																													App iter_trace_diffuse_raysdirvec_group nvector org Ti813 
																																																																																																																										Unit
																																																																																																																								LetRec trace_diffuse_rays dirvec_group nvector org 
																																																																																																																									Let Tu159
																																																																																																																										App setup_startporg 
																																																																																																																										Let Ti796
																																																																																																																											Int:118
																																																																																																																											App iter_trace_diffuse_raysdirvec_group nvector org Ti796 
																																																																																																																									LetRec trace_diffuse_ray_80percent group_id nvector org 
																																																																																																																										Let Tu163
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
																																																																																																																											Let Tu162
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
																																																																																																																												Let Tu161
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
																																																																																																																													Let Tu160
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
																																																																																																																															Let Tu165
																																																																																																																																Let Ta768
																																																																																																																																	ExtArray 592
																																																																																																																																	Let Ta769
																																																																																																																																		Get ray20p nref
																																																																																																																																		App veccpyTa768 Ta769 
																																																																																																																																Let Tu164
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
																																																																																																																																	Let Tu170
																																																																																																																																		Let Ta754
																																																																																																																																			ExtArray 592
																																																																																																																																			Let Ta755
																																																																																																																																				Get r_up nref
																																																																																																																																				App veccpyTa754 Ta755 
																																																																																																																																		Let Tu169
																																																																																																																																			Let Ta756
																																																																																																																																				ExtArray 592
																																																																																																																																				Let Ta757
																																																																																																																																					Get r_left nref
																																																																																																																																					App vecaddTa756 Ta757 
																																																																																																																																			Let Tu168
																																																																																																																																				Let Ta758
																																																																																																																																					ExtArray 592
																																																																																																																																					Let Ta759
																																																																																																																																						Get r_center nref
																																																																																																																																						App vecaddTa758 Ta759 
																																																																																																																																				Let Tu167
																																																																																																																																					Let Ta760
																																																																																																																																						ExtArray 592
																																																																																																																																						Let Ta761
																																																																																																																																							Get r_right nref
																																																																																																																																							App vecaddTa760 Ta761 
																																																																																																																																					Let Tu166
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
																																																																																																																																				Let Tu171
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
																																																																																																																																											Let Tu172
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
																																																																																																																																	LetRec write_ppm_header Tu173 
																																																																																																																																		Let Tu181
																																																																																																																																			Let Ti688
																																																																																																																																				Int:80
																																																																																																																																				ExtFunApp print_byte Ti688,
																																																																																																																																			Let Tu180
																																																																																																																																				Let Ti691
																																																																																																																																					Let Ti689
																																																																																																																																						Int:48
																																																																																																																																						Let Ti690
																																																																																																																																							Int:3
																																																																																																																																							Add Ti689 Ti690
																																																																																																																																					ExtFunApp print_byte Ti691,
																																																																																																																																				Let Tu179
																																																																																																																																					Let Ti692
																																																																																																																																						Int:10
																																																																																																																																						ExtFunApp print_byte Ti692,
																																																																																																																																					Let Tu178
																																																																																																																																						Let Ti695
																																																																																																																																							Let Ta693
																																																																																																																																								ExtArray 616
																																																																																																																																								Let Ti694
																																																																																																																																									Int:0
																																																																																																																																									Get Ta693 Ti694
																																																																																																																																							ExtFunApp print_int Ti695,
																																																																																																																																						Let Tu177
																																																																																																																																							Let Ti696
																																																																																																																																								Int:32
																																																																																																																																								ExtFunApp print_byte Ti696,
																																																																																																																																							Let Tu176
																																																																																																																																								Let Ti699
																																																																																																																																									Let Ta697
																																																																																																																																										ExtArray 616
																																																																																																																																										Let Ti698
																																																																																																																																											Int:1
																																																																																																																																											Get Ta697 Ti698
																																																																																																																																									ExtFunApp print_int Ti699,
																																																																																																																																								Let Tu175
																																																																																																																																									Let Ti700
																																																																																																																																										Int:32
																																																																																																																																										ExtFunApp print_byte Ti700,
																																																																																																																																									Let Tu174
																																																																																																																																										Let Ti701
																																																																																																																																											Int:255
																																																																																																																																											ExtFunApp print_int Ti701,
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
																																																																																																																																					ExtFunApp print_int elem,
																																																																																																																																			LetRec write_rgb Tu182 
																																																																																																																																				Let Tu187
																																																																																																																																					Let Td676
																																																																																																																																						Let Ta674
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti675
																																																																																																																																								Int:0
																																																																																																																																								Get Ta674 Ti675
																																																																																																																																						App write_rgb_elementTd676 
																																																																																																																																					Let Tu186
																																																																																																																																						Let Ti677
																																																																																																																																							Int:32
																																																																																																																																							ExtFunApp print_byte Ti677,
																																																																																																																																						Let Tu185
																																																																																																																																							Let Td680
																																																																																																																																								Let Ta678
																																																																																																																																									ExtArray 604
																																																																																																																																									Let Ti679
																																																																																																																																										Int:1
																																																																																																																																										Get Ta678 Ti679
																																																																																																																																								App write_rgb_elementTd680 
																																																																																																																																							Let Tu184
																																																																																																																																								Let Ti681
																																																																																																																																									Int:32
																																																																																																																																									ExtFunApp print_byte Ti681,
																																																																																																																																								Let Tu183
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
																																																																																																																																											Let Tu190
																																																																																																																																												Let Tb663
																																																																																																																																													Get calc_diffuse nref
																																																																																																																																													Let Ti664
																																																																																																																																														Int:0
																																																																																																																																														IfEq Tb663 Ti664
																																																																																																																																															Unit
																																																																																																																																															Let group_id
																																																																																																																																																App p_group_idpixel 
																																																																																																																																																Let Tu189
																																																																																																																																																	Let Ta665
																																																																																																																																																		ExtArray 592
																																																																																																																																																		App vecbzeroTa665 
																																																																																																																																																	Let nvectors
																																																																																																																																																		App p_nvectorspixel 
																																																																																																																																																		Let intersection_points
																																																																																																																																																			App p_intersection_pointspixel 
																																																																																																																																																			Let Tu188
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
																																																																																																																																									Let Tu200
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
																																																																																																																																										Let Tu199
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
																																																																																																																																											Let Tu198
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
																																																																																																																																												Let Tu197
																																																																																																																																													Let Ta641
																																																																																																																																														ExtArray 696
																																																																																																																																														Let Ti642
																																																																																																																																															Int:0
																																																																																																																																															App vecunit_sgnTa641 Ti642 
																																																																																																																																													Let Tu196
																																																																																																																																														Let Ta643
																																																																																																																																															ExtArray 604
																																																																																																																																															App vecbzeroTa643 
																																																																																																																																														Let Tu195
																																																																																																																																															Let Ta644
																																																																																																																																																ExtArray 636
																																																																																																																																																Let Ta645
																																																																																																																																																	ExtArray 300
																																																																																																																																																	App veccpyTa644 Ta645 
																																																																																																																																															Let Tu194
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
																																																																																																																																																Let Tu193
																																																																																																																																																	Let Ta652
																																																																																																																																																		Let Tt651
																																																																																																																																																			Get line x
																																																																																																																																																			App p_rgbTt651 
																																																																																																																																																		Let Ta653
																																																																																																																																																			ExtArray 604
																																																																																																																																																			App veccpyTa652 Ta653 
																																																																																																																																																	Let Tu192
																																																																																																																																																		Let Tt654
																																																																																																																																																			Get line x
																																																																																																																																																			App p_set_group_idTt654 group_id 
																																																																																																																																																		Let Tu191
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
																																																																																																																																										Let Tu203
																																																																																																																																											Let Ta566
																																																																																																																																												ExtArray 604
																																																																																																																																												Let Ta568
																																																																																																																																													Let Tt567
																																																																																																																																														Get cur x
																																																																																																																																														App p_rgbTt567 
																																																																																																																																													App veccpyTa566 Ta568 
																																																																																																																																											Let Tu202
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
																																																																																																																																												Let Tu201
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
																																																																																																																																											Let Tu205
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
																																																																																																																																												Let Tu204
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
																																																																																																																																									LetRec create_float5x3array Tu206 
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
																																																																																																																																												Let Tu210
																																																																																																																																													Let Ti532
																																																																																																																																														Int:1
																																																																																																																																														Let Ta535
																																																																																																																																															Let Ti533
																																																																																																																																																Int:3
																																																																																																																																																Let Td534
																																																																																																																																																	Float:0.000000
																																																																																																																																																	ExtFunApp create_float_array Ti533,Td534,
																																																																																																																																															Put array Ti532 Ta535
																																																																																																																																													Let Tu209
																																																																																																																																														Let Ti536
																																																																																																																																															Int:2
																																																																																																																																															Let Ta539
																																																																																																																																																Let Ti537
																																																																																																																																																	Int:3
																																																																																																																																																	Let Td538
																																																																																																																																																		Float:0.000000
																																																																																																																																																		ExtFunApp create_float_array Ti537,Td538,
																																																																																																																																																Put array Ti536 Ta539
																																																																																																																																														Let Tu208
																																																																																																																																															Let Ti540
																																																																																																																																																Int:3
																																																																																																																																																Let Ta543
																																																																																																																																																	Let Ti541
																																																																																																																																																		Int:3
																																																																																																																																																		Let Td542
																																																																																																																																																			Float:0.000000
																																																																																																																																																			ExtFunApp create_float_array Ti541,Td542,
																																																																																																																																																	Put array Ti540 Ta543
																																																																																																																																															Let Tu207
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
																																																																																																																																										LetRec create_pixel Tu211 
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
																																																																																																																																														Let Tu212
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
																																																																																																																																												LetRec create_pixelline Tu213 
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
																																																																																																																																																	ExtFunApp sqrt Td495,
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
																																																																																																																																																				ExtFunApp sqrt Td453,
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
																																																																																																																																																							Let Tu218
																																																																																																																																																								Let Ta460
																																																																																																																																																									Let Tt459
																																																																																																																																																										Get dgroup index
																																																																																																																																																										App d_vecTt459 
																																																																																																																																																									App vecsetTa460 vx vy vz 
																																																																																																																																																								Let Tu217
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
																																																																																																																																																									Let Tu216
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
																																																																																																																																																										Let Tu215
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
																																																																																																																																																											Let Tu214
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
																																																																																																																																																				Let Tu220
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
																																																																																																																																																						Let Tu219
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
																																																																																																																																																					Let Tu221
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
																																																																																																																																																		LetRec create_dirvec Tu222 
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
																																																																																																																																																						Let Tu223
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
																																																																																																																																																							Let Tu225
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
																																																																																																																																																								Let Tu224
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
																																																																																																																																																								Let Tu226
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
																																																																																																																																																									Let Tu227
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
																																																																																																																																																							LetRec init_dirvecs Tu228 
																																																																																																																																																								Let Tu230
																																																																																																																																																									Let Ti379
																																																																																																																																																										Int:4
																																																																																																																																																										App create_dirvecsTi379 
																																																																																																																																																									Let Tu229
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
																																																																																																																																																										Let Tu232
																																																																																																																																																											Let Ta376
																																																																																																																																																												App d_vecdvec 
																																																																																																																																																												App vecsetTa376 v0 v1 v2 
																																																																																																																																																											Let Tu231
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
																																																																																																																																																																Let Tu235
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
																																																																																																																																																																	Let Tu234
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
																																																																																																																																																																		Let Tu233
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
																																																																																																																																																															Let Tu236
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
																																																																																																																																																												Let Ti293
																																																																																																																																																													Int:0
																																																																																																																																																													IfLE Ti293 obj_id
																																																																																																																																																														Let obj
																																																																																																																																																															Let Ta294
																																																																																																																																																																ExtArray 48
																																																																																																																																																																Get Ta294 obj_id
																																																																																																																																																															Let Ti295
																																																																																																																																																																App o_reflectiontypeobj 
																																																																																																																																																																Let Ti296
																																																																																																																																																																	Int:2
																																																																																																																																																																	IfEq Ti295 Ti296
																																																																																																																																																																		Let Tb299
																																																																																																																																																																			Let Td297
																																																																																																																																																																				App o_diffuseobj 
																																																																																																																																																																				Let Td298
																																																																																																																																																																					Float:1.000000
																																																																																																																																																																					App flessTd297 Td298 
																																																																																																																																																																			Let Ti300
																																																																																																																																																																				Int:0
																																																																																																																																																																				IfEq Tb299 Ti300
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
																																																																																																																																																													Let Tu248
																																																																																																																																																														Let Ta258
																																																																																																																																																															ExtArray 616
																																																																																																																																																															Let Ti259
																																																																																																																																																																Int:0
																																																																																																																																																																Put Ta258 Ti259 size_x
																																																																																																																																																														Let Tu247
																																																																																																																																																															Let Ta260
																																																																																																																																																																ExtArray 616
																																																																																																																																																																Let Ti261
																																																																																																																																																																	Int:1
																																																																																																																																																																	Put Ta260 Ti261 size_y
																																																																																																																																																															Let Tu246
																																																																																																																																																																Let Ta262
																																																																																																																																																																	ExtArray 624
																																																																																																																																																																	Let Ti263
																																																																																																																																																																		Int:0
																																																																																																																																																																		Let Ti264
																																																																																																																																																																			ShiftR1 size_x
																																																																																																																																																																			Put Ta262 Ti263 Ti264
																																																																																																																																																																Let Tu245
																																																																																																																																																																	Let Ta265
																																																																																																																																																																		ExtArray 624
																																																																																																																																																																		Let Ti266
																																																																																																																																																																			Int:1
																																																																																																																																																																			Let Ti267
																																																																																																																																																																				ShiftR1 size_y
																																																																																																																																																																				Put Ta265 Ti266 Ti267
																																																																																																																																																																	Let Tu244
																																																																																																																																																																		Let Ta268
																																																																																																																																																																			ExtArray 632
																																																																																																																																																																			Let Ti269
																																																																																																																																																																				Int:0
																																																																																																																																																																				Let Td273
																																																																																																																																																																					Let Td270
																																																																																																																																																																						Float:128.000000
																																																																																																																																																																						Let Td271
																																																																																																																																																																							ExtFunApp float_of_int size_x,
																																																																																																																																																																							Let Td272
																																																																																																																																																																								FReciprocal Td271
																																																																																																																																																																								FMul Td270 Td272
																																																																																																																																																																					Put Ta268 Ti269 Td273
																																																																																																																																																																		Let prev
																																																																																																																																																																			Let Tu274
																																																																																																																																																																				Unit
																																																																																																																																																																				App create_pixellineTu274 
																																																																																																																																																																			Let cur
																																																																																																																																																																				Let Tu275
																																																																																																																																																																					Unit
																																																																																																																																																																					App create_pixellineTu275 
																																																																																																																																																																				Let next
																																																																																																																																																																					Let Tu276
																																																																																																																																																																						Unit
																																																																																																																																																																						App create_pixellineTu276 
																																																																																																																																																																					Let Tu243
																																																																																																																																																																						Let Tu277
																																																																																																																																																																							Unit
																																																																																																																																																																							App read_parameterTu277 
																																																																																																																																																																						Let Tu242
																																																																																																																																																																							Let Tu278
																																																																																																																																																																								Unit
																																																																																																																																																																								App write_ppm_headerTu278 
																																																																																																																																																																							Let Tu241
																																																																																																																																																																								Let Tu279
																																																																																																																																																																									Unit
																																																																																																																																																																									App init_dirvecsTu279 
																																																																																																																																																																								Let Tu240
																																																																																																																																																																									Let Ta281
																																																																																																																																																																										Let Tt280
																																																																																																																																																																											ExtTuple 988
																																																																																																																																																																											App d_vecTt280 
																																																																																																																																																																										Let Ta282
																																																																																																																																																																											ExtArray 312
																																																																																																																																																																											App veccpyTa281 Ta282 
																																																																																																																																																																									Let Tu239
																																																																																																																																																																										Let Tt283
																																																																																																																																																																											ExtTuple 988
																																																																																																																																																																											App setup_dirvec_constantsTt283 
																																																																																																																																																																										Let Tu238
																																																																																																																																																																											Let Ti288
																																																																																																																																																																												Let Ti286
																																																																																																																																																																													Let Ta284
																																																																																																																																																																														ExtArray 0
																																																																																																																																																																														Let Ti285
																																																																																																																																																																															Int:0
																																																																																																																																																																															Get Ta284 Ti285
																																																																																																																																																																													Let Ti287
																																																																																																																																																																														Int:1
																																																																																																																																																																														Sub Ti286 Ti287
																																																																																																																																																																												App setup_reflectionsTi288 
																																																																																																																																																																											Let Tu237
																																																																																																																																																																												Let Ti289
																																																																																																																																																																													Int:0
																																																																																																																																																																													Let Ti290
																																																																																																																																																																														Int:0
																																																																																																																																																																														App pretrace_linecur Ti289 Ti290 
																																																																																																																																																																												Let Ti291
																																																																																																																																																																													Int:0
																																																																																																																																																																													Let Ti292
																																																																																																																																																																														Int:2
																																																																																																																																																																														App scan_lineTi291 prev cur next Ti292 
																																																																																																																																																													Let Tu249
																																																																																																																																																														Let Ti255
																																																																																																																																																															Int:128
																																																																																																																																																															Let Ti256
																																																																																																																																																																Int:128
																																																																																																																																																																App rtTi255 Ti256 
																																																																																																																																																														Let Ti257
																																																																																																																																																															Int:0
																																																																																																																																																															ExtFunApp print_float Ti257,
