data
l.6626 : 128.000000
l.6593 : 0.900000
l.6592 : 0.200000
l.6498 : 150.000000
l.6496 : -150.000000
l.6480 : 0.100000
l.6477 : -2.000000
l.6475 : 256.000000
l.6453 : 20.000000
l.6452 : 0.050000
l.6448 : 0.250000
l.6444 : 10.000000
l.6440 : 0.300000
l.6439 : 255.000000
l.6438 : 0.150000
l.6436 : 3.141593
l.6435 : 30.000000
l.6434 : 15.000000
l.6433 : 0.000100
l.6390 : 100000000.000000
l.6386 : 1000000000.000000
l.6366 : -0.100000
l.6353 : 0.010000
l.6352 : -0.200000
l.6161 : 2.000000
l.6127 : -200.000000
l.6125 : 200.000000
l.6121 : 0.017453
l.6038 : -1.000000
l.6037 : 1.000000
l.6036 : 0.500000
l.6035 : 0.000000

fundefs
fneg.2473 (args) : (fargs) : x.2474 
	Ans
		FNeg x.2474
fispos.2475 (args) : (fargs) : x.2476 
	Let Td2442.5939
		FLi l.6035
		Ans
			IfFLE x.2476 Td2442.5939
				Ans
					Li 0
				Ans
					Li 1
fisneg.2477 (args) : (fargs) : x.2478 
	Let Td2441.5938
		FLi l.6035
		Ans
			IfFLE Td2441.5938 x.2478
				Ans
					Li 0
				Ans
					Li 1
fiszero.2479 (args) : (fargs) : x.2480 
	Let Td2440.5937
		FLi l.6035
		Ans
			IfFEq x.2480 Td2440.5937
				Ans
					Li 1
				Ans
					Li 0
fhalf.2481 (args) : (fargs) : x.2482 
	Let Td2439.5936
		FLi l.6036
		Ans
			FMul x.2482 Td2439.5936
fsqr.2483 (args) : (fargs) : x.2484 
	Ans
		FMul x.2484 x.2484
fabs.2485 (args) : (fargs) : x.2486 
	Let Td2438.5935
		FLi l.6035
		Ans
			IfFLE x.2486 Td2438.5935
				Ans
					CallCls fneg.2473 d:f:x.2486 
				Ans
					FMr x.2486
fless.2487 (args) : (fargs) : x.2488 y.2489 
	Let z.5934
		FSub x.2488 y.2489
		Ans
			CallCls fisneg.2477 d:f:z.5934 
xor.2490 (args) : x.2491 y.2492 (fargs) : 
	Let Ti2436.5932
		Li 0
		Ans
			IfEq x.2491 Ti2436.5932
				Ans
					Mr y.2492
				Let Ti2437.5933
					Li 0
					Ans
						IfEq y.2492 Ti2437.5933
							Ans
								Li 1
							Ans
								Li 0
sgn.2493 (args) : (fargs) : x.2494 
	Let Tb2432.5928
		CallCls fiszero.2479 d:f:x.2494 
		Let Ti2433.5929
			Li 0
			Ans
				IfEq Tb2432.5928 Ti2433.5929
					Let Tb2434.5930
						CallCls fispos.2475 d:f:x.2494 
						Let Ti2435.5931
							Li 0
							Ans
								IfEq Tb2434.5930 Ti2435.5931
									Ans
										FLi l.6038
									Ans
										FLi l.6037
					Ans
						FLi l.6035
fneg_cond.2495 (args) : cond.2496 (fargs) : x.2497 
	Let Ti2431.5927
		Li 0
		Ans
			IfEq cond.2496 Ti2431.5927
				Ans
					CallCls fneg.2473 d:f:x.2497 
				Ans
					FMr x.2497
add_mod5.2498 (args) : x.2499 y.2500 (fargs) : 
	Let sum.5924
		Add x.2499 y.2500
		Let Ti2429.5925
			Li 5
			Ans
				IfLE Ti2429.5925 sum.5924
					Ans
						Sub sum.5924 5
					Ans
						Mr sum.5924
vecset.2501 (args) : v.2502 (fargs) : x.2503 y.2504 z.2505 
	Let Tu2.5919
		Stfd x.2503 v.2502 0
		Let Tu1.5920
			Stfd y.2504 v.2502 4
			Ans
				Stfd z.2505 v.2502 8
vecfill.2506 (args) : v.2507 (fargs) : elem.2508 
	Let Tu4.5914
		Stfd elem.2508 v.2507 0
		Let Tu3.5915
			Stfd elem.2508 v.2507 4
			Ans
				Stfd elem.2508 v.2507 8
vecbzero.2509 (args) : v.2510 (fargs) : 
	Let Td2422.5913
		FLi l.6035
		Ans
			CallCls vecfill.2506 d:v.2510 f:Td2422.5913 
veccpy.2511 (args) : dest.2512 src.2513 (fargs) : 
	Let Td2415.5911
		Lfd src.2513 0
		Let Tu6.5902
			Stfd Td2415.5911 dest.2512 0
			Let Td2418.5908
				Lfd src.2513 4
				Let Tu5.5903
					Stfd Td2418.5908 dest.2512 4
					Let Td2421.5905
						Lfd src.2513 8
						Ans
							Stfd Td2421.5905 dest.2512 8
vecunit_sgn.2519 (args) : v.2520 inv.2521 (fargs) : 
	Let Td2339.5852
		Lfd v.2520 0
		Let Td2340.5848
			CallCls fsqr.2483 d:f:Td2339.5852 
			Let Td2342.5850
				Lfd v.2520 4
				Let Td2343.5849
					CallCls fsqr.2483 d:f:Td2342.5850 
					Let Td2344.5844
						FAdd Td2340.5848 Td2343.5849
						Let Td2346.5846
							Lfd v.2520 8
							Let Td2347.5845
								CallCls fsqr.2483 d:f:Td2346.5846 
								Let Td2348.5843
									FAdd Td2344.5844 Td2347.5845
									Let l.5820
										CallCls min_caml_sqrt d:f:Td2348.5843 
										Let Tb2349.5836
											CallCls fiszero.2479 d:f:l.5820 
											Let Ti2350.5837
												Li 0
												Let il.5821
													IfEq Tb2349.5836 Ti2350.5837
														Let Ti2351.5838
															Li 0
															Ans
																IfEq inv.2521 Ti2351.5838
																	Let Td2352.5841
																		FLi l.6037
																		Let Td2353.5842
																			FReciprocal l.5820
																			Ans
																				FMul Td2352.5841 Td2353.5842
																	Let Td2354.5839
																		FLi l.6038
																		Let Td2355.5840
																			FReciprocal l.5820
																			Ans
																				FMul Td2354.5839 Td2355.5840
														Ans
															FLi l.6037
													Let Td2358.5834
														Lfd v.2520 0
														Let Td2359.5833
															FMul Td2358.5834 il.5821
															Let Tu10.5822
																Stfd Td2359.5833 v.2520 0
																Let Td2362.5830
																	Lfd v.2520 4
																	Let Td2363.5829
																		FMul Td2362.5830 il.5821
																		Let Tu9.5823
																			Stfd Td2363.5829 v.2520 4
																			Let Td2366.5826
																				Lfd v.2520 8
																				Let Td2367.5825
																					FMul Td2366.5826 il.5821
																					Ans
																						Stfd Td2367.5825 v.2520 8
veciprod.2522 (args) : v.2523 w.2524 (fargs) : 
	Let Td2323.5816
		Lfd v.2523 0
		Let Td2325.5817
			Lfd w.2524 0
			Let Td2326.5810
				FMul Td2323.5816 Td2325.5817
				Let Td2328.5812
					Lfd v.2523 4
					Let Td2330.5813
						Lfd w.2524 4
						Let Td2331.5811
							FMul Td2328.5812 Td2330.5813
							Let Td2332.5804
								FAdd Td2326.5810 Td2331.5811
								Let Td2334.5806
									Lfd v.2523 8
									Let Td2336.5807
										Lfd w.2524 8
										Let Td2337.5805
											FMul Td2334.5806 Td2336.5807
											Ans
												FAdd Td2332.5804 Td2337.5805
veciprod2.2525 (args) : v.2526 (fargs) : w0.2527 w1.2528 w2.2529 
	Let Td2313.5802
		Lfd v.2526 0
		Let Td2314.5798
			FMul Td2313.5802 w0.2527
			Let Td2316.5800
				Lfd v.2526 4
				Let Td2317.5799
					FMul Td2316.5800 w1.2528
					Let Td2318.5794
						FAdd Td2314.5798 Td2317.5799
						Let Td2320.5796
							Lfd v.2526 8
							Let Td2321.5795
								FMul Td2320.5796 w2.2529
								Ans
									FAdd Td2318.5794 Td2321.5795
vecaccum.2530 (args) : dest.2531 v.2533 (fargs) : scale.2532 
	Let Td2293.5789
		Lfd dest.2531 0
		Let Td2295.5791
			Lfd v.2533 0
			Let Td2296.5790
				FMul scale.2532 Td2295.5791
				Let Td2297.5788
					FAdd Td2293.5789 Td2296.5790
					Let Tu12.5771
						Stfd Td2297.5788 dest.2531 0
						Let Td2300.5782
							Lfd dest.2531 4
							Let Td2302.5784
								Lfd v.2533 4
								Let Td2303.5783
									FMul scale.2532 Td2302.5784
									Let Td2304.5781
										FAdd Td2300.5782 Td2303.5783
										Let Tu11.5772
											Stfd Td2304.5781 dest.2531 4
											Let Td2307.5775
												Lfd dest.2531 8
												Let Td2309.5777
													Lfd v.2533 8
													Let Td2310.5776
														FMul scale.2532 Td2309.5777
														Let Td2311.5774
															FAdd Td2307.5775 Td2310.5776
															Ans
																Stfd Td2311.5774 dest.2531 8
vecadd.2534 (args) : dest.2535 v.2536 (fargs) : 
	Let Td2275.5767
		Lfd dest.2535 0
		Let Td2277.5768
			Lfd v.2536 0
			Let Td2278.5766
				FAdd Td2275.5767 Td2277.5768
				Let Tu14.5751
					Stfd Td2278.5766 dest.2535 0
					Let Td2281.5761
						Lfd dest.2535 4
						Let Td2283.5762
							Lfd v.2536 4
							Let Td2284.5760
								FAdd Td2281.5761 Td2283.5762
								Let Tu13.5752
									Stfd Td2284.5760 dest.2535 4
									Let Td2287.5755
										Lfd dest.2535 8
										Let Td2289.5756
											Lfd v.2536 8
											Let Td2290.5754
												FAdd Td2287.5755 Td2289.5756
												Ans
													Stfd Td2290.5754 dest.2535 8
vecscale.2540 (args) : dest.2541 (fargs) : scale.2542 
	Let Td2245.5729
		Lfd dest.2541 0
		Let Td2246.5728
			FMul Td2245.5729 scale.2542
			Let Tu18.5717
				Stfd Td2246.5728 dest.2541 0
				Let Td2249.5725
					Lfd dest.2541 4
					Let Td2250.5724
						FMul Td2249.5725 scale.2542
						Let Tu17.5718
							Stfd Td2250.5724 dest.2541 4
							Let Td2253.5721
								Lfd dest.2541 8
								Let Td2254.5720
									FMul Td2253.5721 scale.2542
									Ans
										Stfd Td2254.5720 dest.2541 8
vecaccumv.2543 (args) : dest.2544 v.2545 w.2546 (fargs) : 
	Let Td2218.5710
		Lfd dest.2544 0
		Let Td2220.5712
			Lfd v.2545 0
			Let Td2222.5713
				Lfd w.2546 0
				Let Td2223.5711
					FMul Td2220.5712 Td2222.5713
					Let Td2224.5709
						FAdd Td2218.5710 Td2223.5711
						Let Tu20.5688
							Stfd Td2224.5709 dest.2544 0
							Let Td2227.5701
								Lfd dest.2544 4
								Let Td2229.5703
									Lfd v.2545 4
									Let Td2231.5704
										Lfd w.2546 4
										Let Td2232.5702
											FMul Td2229.5703 Td2231.5704
											Let Td2233.5700
												FAdd Td2227.5701 Td2232.5702
												Let Tu19.5689
													Stfd Td2233.5700 dest.2544 4
													Let Td2236.5692
														Lfd dest.2544 8
														Let Td2238.5694
															Lfd v.2545 8
															Let Td2240.5695
																Lfd w.2546 8
																Let Td2241.5693
																	FMul Td2238.5694 Td2240.5695
																	Let Td2242.5691
																		FAdd Td2236.5692 Td2241.5693
																		Ans
																			Stfd Td2242.5691 dest.2544 8
o_texturetype.2547 (args) : m.2548 (fargs) : 
	Let m_tex.5677
		Lwz m.2548 0
		Ans
			Mr m_tex.5677
o_form.2549 (args) : m.2550 (fargs) : 
	Let m_shape.5667
		Lwz m.2550 4
		Ans
			Mr m_shape.5667
o_reflectiontype.2551 (args) : m.2552 (fargs) : 
	Let m_surface.5657
		Lwz m.2552 8
		Ans
			Mr m_surface.5657
o_isinvert.2553 (args) : m.2554 (fargs) : 
	Let m_invert.5650
		Lwz m.2554 24
		Ans
			Mr m_invert.5650
o_isrot.2555 (args) : m.2556 (fargs) : 
	Let m_isrot.5636
		Lwz m.2556 12
		Ans
			Mr m_isrot.5636
o_param_a.2557 (args) : m.2558 (fargs) : 
	Let m_abc.5625
		Lwz m.2558 16
		Ans
			Lfd m_abc.5625 0
o_param_b.2559 (args) : m.2560 (fargs) : 
	Let m_abc.5613
		Lwz m.2560 16
		Ans
			Lfd m_abc.5613 4
o_param_c.2561 (args) : m.2562 (fargs) : 
	Let m_abc.5601
		Lwz m.2562 16
		Ans
			Lfd m_abc.5601 8
o_param_abc.2563 (args) : m.2564 (fargs) : 
	Let m_abc.5590
		Lwz m.2564 16
		Ans
			Mr m_abc.5590
o_param_x.2565 (args) : m.2566 (fargs) : 
	Let m_xyz.5579
		Lwz m.2566 20
		Ans
			Lfd m_xyz.5579 0
o_param_y.2567 (args) : m.2568 (fargs) : 
	Let m_xyz.5567
		Lwz m.2568 20
		Ans
			Lfd m_xyz.5567 4
o_param_z.2569 (args) : m.2570 (fargs) : 
	Let m_xyz.5555
		Lwz m.2570 20
		Ans
			Lfd m_xyz.5555 8
o_diffuse.2571 (args) : m.2572 (fargs) : 
	Let m_surfparams.5545
		Lwz m.2572 28
		Ans
			Lfd m_surfparams.5545 0
o_hilight.2573 (args) : m.2574 (fargs) : 
	Let m_surfparams.5533
		Lwz m.2574 28
		Ans
			Lfd m_surfparams.5533 4
o_color_red.2575 (args) : m.2576 (fargs) : 
	Let m_color.5522
		Lwz m.2576 32
		Ans
			Lfd m_color.5522 0
o_color_green.2577 (args) : m.2578 (fargs) : 
	Let m_color.5510
		Lwz m.2578 32
		Ans
			Lfd m_color.5510 4
o_color_blue.2579 (args) : m.2580 (fargs) : 
	Let m_color.5498
		Lwz m.2580 32
		Ans
			Lfd m_color.5498 8
o_param_r1.2581 (args) : m.2582 (fargs) : 
	Let m_rot123.5487
		Lwz m.2582 36
		Ans
			Lfd m_rot123.5487 0
o_param_r2.2583 (args) : m.2584 (fargs) : 
	Let m_rot123.5475
		Lwz m.2584 36
		Ans
			Lfd m_rot123.5475 4
o_param_r3.2585 (args) : m.2586 (fargs) : 
	Let m_rot123.5463
		Lwz m.2586 36
		Ans
			Lfd m_rot123.5463 8
o_param_ctbl.2587 (args) : m.2588 (fargs) : 
	Let m_ctbl.5453
		Lwz m.2588 40
		Ans
			Mr m_ctbl.5453
p_rgb.2589 (args) : pixel.2590 (fargs) : 
	Let m_rgb.5435
		Lwz pixel.2590 0
		Ans
			Mr m_rgb.5435
p_intersection_points.2591 (args) : pixel.2592 (fargs) : 
	Let m_isect_ps.5428
		Lwz pixel.2592 4
		Ans
			Mr m_isect_ps.5428
p_surface_ids.2593 (args) : pixel.2594 (fargs) : 
	Let m_sids.5421
		Lwz pixel.2594 8
		Ans
			Mr m_sids.5421
p_calc_diffuse.2595 (args) : pixel.2596 (fargs) : 
	Let m_cdif.5414
		Lwz pixel.2596 12
		Ans
			Mr m_cdif.5414
p_energy.2597 (args) : pixel.2598 (fargs) : 
	Let m_engy.5407
		Lwz pixel.2598 16
		Ans
			Mr m_engy.5407
p_received_ray_20percent.2599 (args) : pixel.2600 (fargs) : 
	Let m_r20p.5400
		Lwz pixel.2600 20
		Ans
			Mr m_r20p.5400
p_group_id.2601 (args) : pixel.2602 (fargs) : 
	Let m_gid.5392
		Lwz pixel.2602 24
		Ans
			Lwz m_gid.5392 0
p_set_group_id.2603 (args) : pixel.2604 id.2605 (fargs) : 
	Let m_gid.5383
		Lwz pixel.2604 24
		Ans
			Stw id.2605 m_gid.5383 0
p_nvectors.2606 (args) : pixel.2607 (fargs) : 
	Let m_nvectors.5376
		Lwz pixel.2607 28
		Ans
			Mr m_nvectors.5376
d_vec.2608 (args) : d.2609 (fargs) : 
	Let m_vec.5367
		Lwz d.2609 0
		Ans
			Mr m_vec.5367
d_const.2610 (args) : d.2611 (fargs) : 
	Let m_const.5366
		Lwz d.2611 4
		Ans
			Mr m_const.5366
r_surface_id.2612 (args) : r.2613 (fargs) : 
	Let m_sid.5362
		Lwz r.2613 0
		Ans
			Mr m_sid.5362
r_dvec.2614 (args) : r.2615 (fargs) : 
	Let m_dvec.5360
		Lwz r.2615 4
		Ans
			Mr m_dvec.5360
r_bright.2616 (args) : r.2617 (fargs) : 
	Let m_br.5358
		Lfd r.2617 8
		Ans
			FMr m_br.5358
rad.2618 (args) : (fargs) : x.2619 
	Let Td2199.5355
		FLi l.6121
		Ans
			FMul x.2619 Td2199.5355
read_screen_settings.2620 (args) : (fargs) : 
	Let viewpoint.2446
		Lwz $a26 20
		Let screenz_dir.2467
			Lwz $a26 16
			Let screeny_dir.2466
				Lwz $a26 12
				Let screenx_dir.2465
					Lwz $a26 8
					Let screen.2445
						Lwz $a26 4
						Let Tu2145.5354
							Nop
							Let Td2146.5353
								CallCls min_caml_read_float d:f:
								Let Tu35.5280
									Stfd Td2146.5353 screen.2445 0
									Let Tu2148.5351
										Nop
										Let Td2149.5350
											CallCls min_caml_read_float d:f:
											Let Tu34.5281
												Stfd Td2149.5350 screen.2445 4
												Let Tu2151.5348
													Nop
													Let Td2152.5347
														CallCls min_caml_read_float d:f:
														Let Tu33.5282
															Stfd Td2152.5347 screen.2445 8
															Let Tu2153.5345
																Nop
																Let Td2154.5344
																	CallCls min_caml_read_float d:f:
																	Let v1.5283
																		CallCls rad.2618 d:f:Td2154.5344 
																		Let cos_v1.5284
																			CallCls min_caml_cos d:f:v1.5283 
																			Let sin_v1.5285
																				CallCls min_caml_sin d:f:v1.5283 
																				Let Tu2155.5343
																					Nop
																					Let Td2156.5342
																						CallCls min_caml_read_float d:f:
																						Let v2.5286
																							CallCls rad.2618 d:f:Td2156.5342 
																							Let cos_v2.5287
																								CallCls min_caml_cos d:f:v2.5286 
																								Let sin_v2.5288
																									CallCls min_caml_sin d:f:v2.5286 
																									Let Td2158.5340
																										FMul cos_v1.5284 sin_v2.5288
																										Let Td2159.5341
																											FLi l.6125
																											Let Td2160.5339
																												FMul Td2158.5340 Td2159.5341
																												Let Tu32.5289
																													Stfd Td2160.5339 screenz_dir.2467 0
																													Let Td2162.5337
																														FLi l.6127
																														Let Td2163.5336
																															FMul sin_v1.5285 Td2162.5337
																															Let Tu31.5290
																																Stfd Td2163.5336 screenz_dir.2467 4
																																Let Td2165.5333
																																	FMul cos_v1.5284 cos_v2.5287
																																	Let Td2166.5334
																																		FLi l.6125
																																		Let Td2167.5332
																																			FMul Td2165.5333 Td2166.5334
																																			Let Tu30.5291
																																				Stfd Td2167.5332 screenz_dir.2467 8
																																				Let Tu29.5292
																																					Stfd cos_v2.5287 screenx_dir.2465 0
																																					Let Td2170.5329
																																						FLi l.6035
																																						Let Tu28.5293
																																							Stfd Td2170.5329 screenx_dir.2465 4
																																							Let Td2172.5327
																																								CallCls fneg.2473 d:f:sin_v2.5288 
																																								Let Tu27.5294
																																									Stfd Td2172.5327 screenx_dir.2465 8
																																									Let Td2174.5325
																																										CallCls fneg.2473 d:f:sin_v1.5285 
																																										Let Td2175.5324
																																											FMul Td2174.5325 sin_v2.5288
																																											Let Tu26.5295
																																												Stfd Td2175.5324 screeny_dir.2466 0
																																												Let Td2177.5322
																																													CallCls fneg.2473 d:f:cos_v1.5284 
																																													Let Tu25.5296
																																														Stfd Td2177.5322 screeny_dir.2466 4
																																														Let Td2179.5320
																																															CallCls fneg.2473 d:f:sin_v1.5285 
																																															Let Td2180.5319
																																																FMul Td2179.5320 cos_v2.5287
																																																Let Tu24.5297
																																																	Stfd Td2180.5319 screeny_dir.2466 8
																																																	Let Td2183.5314
																																																		Lfd screen.2445 0
																																																		Let Td2185.5315
																																																			Lfd screenz_dir.2467 0
																																																			Let Td2186.5313
																																																				FSub Td2183.5314 Td2185.5315
																																																				Let Tu23.5298
																																																					Stfd Td2186.5313 viewpoint.2446 0
																																																					Let Td2189.5308
																																																						Lfd screen.2445 4
																																																						Let Td2191.5309
																																																							Lfd screenz_dir.2467 4
																																																							Let Td2192.5307
																																																								FSub Td2189.5308 Td2191.5309
																																																								Let Tu22.5299
																																																									Stfd Td2192.5307 viewpoint.2446 4
																																																									Let Td2195.5302
																																																										Lfd screen.2445 8
																																																										Let Td2197.5303
																																																											Lfd screenz_dir.2467 8
																																																											Let Td2198.5301
																																																												FSub Td2195.5302 Td2197.5303
																																																												Ans
																																																													Stfd Td2198.5301 viewpoint.2446 8
read_light.2622 (args) : (fargs) : 
	Let light.2447
		Lwz $a26 8
		Let beam.2448
			Lwz $a26 4
			Let Tu2130.5279
				Nop
				Let nl.5256
					CallCls min_caml_read_int d:f:
					Let Tu2131.5278
						Nop
						Let Td2132.5277
							CallCls min_caml_read_float d:f:
							Let l1.5257
								CallCls rad.2618 d:f:Td2132.5277 
								Let sl1.5258
									CallCls min_caml_sin d:f:l1.5257 
									Let Td2134.5276
										CallCls fneg.2473 d:f:sl1.5258 
										Let Tu39.5259
											Stfd Td2134.5276 light.2447 4
											Let Tu2135.5274
												Nop
												Let Td2136.5273
													CallCls min_caml_read_float d:f:
													Let l2.5260
														CallCls rad.2618 d:f:Td2136.5273 
														Let cl1.5261
															CallCls min_caml_cos d:f:l1.5257 
															Let sl2.5262
																CallCls min_caml_sin d:f:l2.5260 
																Let Td2138.5272
																	FMul cl1.5261 sl2.5262
																	Let Tu38.5263
																		Stfd Td2138.5272 light.2447 0
																		Let cl2.5264
																			CallCls min_caml_cos d:f:l2.5260 
																			Let Td2140.5270
																				FMul cl1.5261 cl2.5264
																				Let Tu37.5265
																					Stfd Td2140.5270 light.2447 8
																					Let Tu2142.5268
																						Nop
																						Let Td2143.5267
																							CallCls min_caml_read_float d:f:
																							Ans
																								Stfd Td2143.5267 beam.2448 0
rotate_quadratic_matrix.2624 (args) : abc.2625 rot.2626 (fargs) : 
	Let Td2044.5254
		Lfd rot.2626 0
		Let cos_x.5146
			CallCls min_caml_cos d:f:Td2044.5254 
			Let Td2046.5252
				Lfd rot.2626 0
				Let sin_x.5147
					CallCls min_caml_sin d:f:Td2046.5252 
					Let Td2048.5250
						Lfd rot.2626 4
						Let cos_y.5148
							CallCls min_caml_cos d:f:Td2048.5250 
							Let Td2050.5248
								Lfd rot.2626 4
								Let sin_y.5149
									CallCls min_caml_sin d:f:Td2050.5248 
									Let Td2052.5246
										Lfd rot.2626 8
										Let cos_z.5150
											CallCls min_caml_cos d:f:Td2052.5246 
											Let Td2054.5244
												Lfd rot.2626 8
												Let sin_z.5151
													CallCls min_caml_sin d:f:Td2054.5244 
													Let m00.5152
														FMul cos_y.5148 cos_z.5150
														Let Td2055.5243
															FMul sin_x.5147 sin_y.5149
															Let Td2056.5241
																FMul Td2055.5243 cos_z.5150
																Let Td2057.5242
																	FMul cos_x.5146 sin_z.5151
																	Let m01.5153
																		FSub Td2056.5241 Td2057.5242
																		Let Td2058.5240
																			FMul cos_x.5146 sin_y.5149
																			Let Td2059.5238
																				FMul Td2058.5240 cos_z.5150
																				Let Td2060.5239
																					FMul sin_x.5147 sin_z.5151
																					Let m02.5154
																						FAdd Td2059.5238 Td2060.5239
																						Let m10.5155
																							FMul cos_y.5148 sin_z.5151
																							Let Td2061.5237
																								FMul sin_x.5147 sin_y.5149
																								Let Td2062.5235
																									FMul Td2061.5237 sin_z.5151
																									Let Td2063.5236
																										FMul cos_x.5146 cos_z.5150
																										Let m11.5156
																											FAdd Td2062.5235 Td2063.5236
																											Let Td2064.5234
																												FMul cos_x.5146 sin_y.5149
																												Let Td2065.5232
																													FMul Td2064.5234 sin_z.5151
																													Let Td2066.5233
																														FMul sin_x.5147 cos_z.5150
																														Let m12.5157
																															FSub Td2065.5232 Td2066.5233
																															Let m20.5158
																																CallCls fneg.2473 d:f:sin_y.5149 
																																Let m21.5159
																																	FMul sin_x.5147 cos_y.5148
																																	Let m22.5160
																																		FMul cos_x.5146 cos_y.5148
																																		Let ao.5161
																																			Lfd abc.2625 0
																																			Let bo.5162
																																				Lfd abc.2625 4
																																				Let co.5163
																																					Lfd abc.2625 8
																																					Let Td2071.5228
																																						CallCls fsqr.2483 d:f:m00.5152 
																																						Let Td2072.5225
																																							FMul ao.5161 Td2071.5228
																																							Let Td2073.5227
																																								CallCls fsqr.2483 d:f:m10.5155 
																																								Let Td2074.5226
																																									FMul bo.5162 Td2073.5227
																																									Let Td2075.5222
																																										FAdd Td2072.5225 Td2074.5226
																																										Let Td2076.5224
																																											CallCls fsqr.2483 d:f:m20.5158 
																																											Let Td2077.5223
																																												FMul co.5163 Td2076.5224
																																												Let Td2078.5221
																																													FAdd Td2075.5222 Td2077.5223
																																													Let Tu44.5164
																																														Stfd Td2078.5221 abc.2625 0
																																														Let Td2080.5219
																																															CallCls fsqr.2483 d:f:m01.5153 
																																															Let Td2081.5216
																																																FMul ao.5161 Td2080.5219
																																																Let Td2082.5218
																																																	CallCls fsqr.2483 d:f:m11.5156 
																																																	Let Td2083.5217
																																																		FMul bo.5162 Td2082.5218
																																																		Let Td2084.5213
																																																			FAdd Td2081.5216 Td2083.5217
																																																			Let Td2085.5215
																																																				CallCls fsqr.2483 d:f:m21.5159 
																																																				Let Td2086.5214
																																																					FMul co.5163 Td2085.5215
																																																					Let Td2087.5212
																																																						FAdd Td2084.5213 Td2086.5214
																																																						Let Tu43.5165
																																																							Stfd Td2087.5212 abc.2625 4
																																																							Let Td2089.5210
																																																								CallCls fsqr.2483 d:f:m02.5154 
																																																								Let Td2090.5207
																																																									FMul ao.5161 Td2089.5210
																																																									Let Td2091.5209
																																																										CallCls fsqr.2483 d:f:m12.5157 
																																																										Let Td2092.5208
																																																											FMul bo.5162 Td2091.5209
																																																											Let Td2093.5204
																																																												FAdd Td2090.5207 Td2092.5208
																																																												Let Td2094.5206
																																																													CallCls fsqr.2483 d:f:m22.5160 
																																																													Let Td2095.5205
																																																														FMul co.5163 Td2094.5206
																																																														Let Td2096.5203
																																																															FAdd Td2093.5204 Td2095.5205
																																																															Let Tu42.5166
																																																																Stfd Td2096.5203 abc.2625 8
																																																																Let Td2098.5193
																																																																	FLi l.6161
																																																																	Let Td2099.5201
																																																																		FMul ao.5161 m01.5153
																																																																		Let Td2100.5198
																																																																			FMul Td2099.5201 m02.5154
																																																																			Let Td2101.5200
																																																																				FMul bo.5162 m11.5156
																																																																				Let Td2102.5199
																																																																					FMul Td2101.5200 m12.5157
																																																																					Let Td2103.5195
																																																																						FAdd Td2100.5198 Td2102.5199
																																																																						Let Td2104.5197
																																																																							FMul co.5163 m21.5159
																																																																							Let Td2105.5196
																																																																								FMul Td2104.5197 m22.5160
																																																																								Let Td2106.5194
																																																																									FAdd Td2103.5195 Td2105.5196
																																																																									Let Td2107.5192
																																																																										FMul Td2098.5193 Td2106.5194
																																																																										Let Tu41.5167
																																																																											Stfd Td2107.5192 rot.2626 0
																																																																											Let Td2109.5182
																																																																												FLi l.6161
																																																																												Let Td2110.5190
																																																																													FMul ao.5161 m00.5152
																																																																													Let Td2111.5187
																																																																														FMul Td2110.5190 m02.5154
																																																																														Let Td2112.5189
																																																																															FMul bo.5162 m10.5155
																																																																															Let Td2113.5188
																																																																																FMul Td2112.5189 m12.5157
																																																																																Let Td2114.5184
																																																																																	FAdd Td2111.5187 Td2113.5188
																																																																																	Let Td2115.5186
																																																																																		FMul co.5163 m20.5158
																																																																																		Let Td2116.5185
																																																																																			FMul Td2115.5186 m22.5160
																																																																																			Let Td2117.5183
																																																																																				FAdd Td2114.5184 Td2116.5185
																																																																																				Let Td2118.5181
																																																																																					FMul Td2109.5182 Td2117.5183
																																																																																					Let Tu40.5168
																																																																																						Stfd Td2118.5181 rot.2626 4
																																																																																						Let Td2120.5171
																																																																																							FLi l.6161
																																																																																							Let Td2121.5179
																																																																																								FMul ao.5161 m00.5152
																																																																																								Let Td2122.5176
																																																																																									FMul Td2121.5179 m01.5153
																																																																																									Let Td2123.5178
																																																																																										FMul bo.5162 m10.5155
																																																																																										Let Td2124.5177
																																																																																											FMul Td2123.5178 m11.5156
																																																																																											Let Td2125.5173
																																																																																												FAdd Td2122.5176 Td2124.5177
																																																																																												Let Td2126.5175
																																																																																													FMul co.5163 m20.5158
																																																																																													Let Td2127.5174
																																																																																														FMul Td2126.5175 m21.5159
																																																																																														Let Td2128.5172
																																																																																															FAdd Td2125.5173 Td2127.5174
																																																																																															Let Td2129.5170
																																																																																																FMul Td2120.5171 Td2128.5172
																																																																																																Ans
																																																																																																	Stfd Td2129.5170 rot.2626 8
read_nth_object.2627 (args) : n.2628 (fargs) : 
	Let objects.2444
		Lwz $a26 4
		Let Tu1947.5145
			Nop
			Let texture.5015
				CallCls min_caml_read_int d:f:
				Let Ti1949.5016
					Li -1
					Ans
						IfEq texture.5015 Ti1949.5016
							Ans
								Li 0
							Let Tu1950.5143
								Nop
								Let form.5017
									CallCls min_caml_read_int d:f:
									Let Tu1951.5142
										Nop
										Let refltype.5018
											CallCls min_caml_read_int d:f:
											Let Tu1952.5141
												Nop
												Let isrot_p.5019
													CallCls min_caml_read_int d:f:
													Let Ti1953.5139
														Li 3
														Let Td1954.5140
															FLi l.6035
															Let abc.5020
																CallCls min_caml_create_float_array d:Ti1953.5139 f:Td1954.5140 
																Let Tu1956.5138
																	Nop
																	Let Td1957.5137
																		CallCls min_caml_read_float d:f:
																		Let Tu63.5021
																			Stfd Td1957.5137 abc.5020 0
																			Let Tu1959.5135
																				Nop
																				Let Td1960.5134
																					CallCls min_caml_read_float d:f:
																					Let Tu62.5022
																						Stfd Td1960.5134 abc.5020 4
																						Let Tu1962.5132
																							Nop
																							Let Td1963.5131
																								CallCls min_caml_read_float d:f:
																								Let Tu61.5023
																									Stfd Td1963.5131 abc.5020 8
																									Let Ti1964.5128
																										Li 3
																										Let Td1965.5129
																											FLi l.6035
																											Let xyz.5024
																												CallCls min_caml_create_float_array d:Ti1964.5128 f:Td1965.5129 
																												Let Tu1967.5127
																													Nop
																													Let Td1968.5126
																														CallCls min_caml_read_float d:f:
																														Let Tu60.5025
																															Stfd Td1968.5126 xyz.5024 0
																															Let Tu1970.5124
																																Nop
																																Let Td1971.5123
																																	CallCls min_caml_read_float d:f:
																																	Let Tu59.5026
																																		Stfd Td1971.5123 xyz.5024 4
																																		Let Tu1973.5121
																																			Nop
																																			Let Td1974.5120
																																				CallCls min_caml_read_float d:f:
																																				Let Tu58.5027
																																					Stfd Td1974.5120 xyz.5024 8
																																					Let Tu1975.5118
																																						Nop
																																						Let Td1976.5117
																																							CallCls min_caml_read_float d:f:
																																							Let m_invert.5028
																																								CallCls fisneg.2477 d:f:Td1976.5117 
																																								Let Ti1977.5115
																																									Li 2
																																									Let Td1978.5116
																																										FLi l.6035
																																										Let reflparam.5029
																																											CallCls min_caml_create_float_array d:Ti1977.5115 f:Td1978.5116 
																																											Let Tu1980.5114
																																												Nop
																																												Let Td1981.5113
																																													CallCls min_caml_read_float d:f:
																																													Let Tu57.5030
																																														Stfd Td1981.5113 reflparam.5029 0
																																														Let Tu1983.5111
																																															Nop
																																															Let Td1984.5110
																																																CallCls min_caml_read_float d:f:
																																																Let Tu56.5031
																																																	Stfd Td1984.5110 reflparam.5029 4
																																																	Let Ti1985.5107
																																																		Li 3
																																																		Let Td1986.5108
																																																			FLi l.6035
																																																			Let color.5032
																																																				CallCls min_caml_create_float_array d:Ti1985.5107 f:Td1986.5108 
																																																				Let Tu1988.5106
																																																					Nop
																																																					Let Td1989.5105
																																																						CallCls min_caml_read_float d:f:
																																																						Let Tu55.5033
																																																							Stfd Td1989.5105 color.5032 0
																																																							Let Tu1991.5103
																																																								Nop
																																																								Let Td1992.5102
																																																									CallCls min_caml_read_float d:f:
																																																									Let Tu54.5034
																																																										Stfd Td1992.5102 color.5032 4
																																																										Let Tu1994.5100
																																																											Nop
																																																											Let Td1995.5099
																																																												CallCls min_caml_read_float d:f:
																																																												Let Tu53.5035
																																																													Stfd Td1995.5099 color.5032 8
																																																													Let Ti1996.5096
																																																														Li 3
																																																														Let Td1997.5097
																																																															FLi l.6035
																																																															Let rotation.5036
																																																																CallCls min_caml_create_float_array d:Ti1996.5096 f:Td1997.5097 
																																																																Let Ti1998.5081
																																																																	Li 0
																																																																	Let Tu52.5037
																																																																		IfEq isrot_p.5019 Ti1998.5081
																																																																			Ans
																																																																				Nop
																																																																			Let Tu2000.5095
																																																																				Nop
																																																																				Let Td2001.5094
																																																																					CallCls min_caml_read_float d:f:
																																																																					Let Td2002.5093
																																																																						CallCls rad.2618 d:f:Td2001.5094 
																																																																						Let Tu46.5082
																																																																							Stfd Td2002.5093 rotation.5036 0
																																																																							Let Tu2004.5091
																																																																								Nop
																																																																								Let Td2005.5090
																																																																									CallCls min_caml_read_float d:f:
																																																																									Let Td2006.5089
																																																																										CallCls rad.2618 d:f:Td2005.5090 
																																																																										Let Tu45.5083
																																																																											Stfd Td2006.5089 rotation.5036 4
																																																																											Let Tu2008.5087
																																																																												Nop
																																																																												Let Td2009.5086
																																																																													CallCls min_caml_read_float d:f:
																																																																													Let Td2010.5085
																																																																														CallCls rad.2618 d:f:Td2009.5086 
																																																																														Ans
																																																																															Stfd Td2010.5085 rotation.5036 8
																																																																		Let Ti2011.5080
																																																																			Li 2
																																																																			Let m_invert2.5038
																																																																				IfEq form.5017 Ti2011.5080
																																																																					Ans
																																																																						Li 1
																																																																					Ans
																																																																						Mr m_invert.5028
																																																																				Let Ti2012.5078
																																																																					Li 4
																																																																					Let Td2013.5079
																																																																						FLi l.6035
																																																																						Let ctbl.5039
																																																																							CallCls min_caml_create_float_array d:Ti2012.5078 f:Td2013.5079 
																																																																							Let t.6179
																																																																								Mr $fp
																																																																								Let $fp
																																																																									Add $fp 48
																																																																									Let Tu6190
																																																																										Stw ctbl.5039 t.6179 40
																																																																										Let Tu6189
																																																																											Stw rotation.5036 t.6179 36
																																																																											Let Tu6188
																																																																												Stw color.5032 t.6179 32
																																																																												Let Tu6187
																																																																													Stw reflparam.5029 t.6179 28
																																																																													Let Tu6186
																																																																														Stw m_invert2.5038 t.6179 24
																																																																														Let Tu6185
																																																																															Stw xyz.5024 t.6179 20
																																																																															Let Tu6184
																																																																																Stw abc.5020 t.6179 16
																																																																																Let Tu6183
																																																																																	Stw isrot_p.5019 t.6179 12
																																																																																	Let Tu6182
																																																																																		Stw refltype.5018 t.6179 8
																																																																																		Let Tu6181
																																																																																			Stw form.5017 t.6179 4
																																																																																			Let Tu6180
																																																																																				Stw texture.5015 t.6179 0
																																																																																				Let obj.5040
																																																																																					Mr t.6179
																																																																																					Let o.6191
																																																																																						Slw n.2628 2
																																																																																						Let Tu51.5041
																																																																																							Stw obj.5040 objects.2444 o.6191
																																																																																							Let Ti2014.5045
																																																																																								Li 3
																																																																																								Let Tu50.5042
																																																																																									IfEq form.5017 Ti2014.5045
																																																																																										Let a.5049
																																																																																											Lfd abc.5020 0
																																																																																											Let Tb2017.5072
																																																																																												CallCls fiszero.2479 d:f:a.5049 
																																																																																												Let Ti2018.5073
																																																																																													Li 0
																																																																																													Let Td2022.5071
																																																																																														IfEq Tb2017.5072 Ti2018.5073
																																																																																															Let Td2019.5074
																																																																																																CallCls sgn.2493 d:f:a.5049 
																																																																																																Let Td2020.5075
																																																																																																	CallCls fsqr.2483 d:f:a.5049 
																																																																																																	Let Td2021.5076
																																																																																																		FReciprocal Td2020.5075
																																																																																																		Ans
																																																																																																			FMul Td2019.5074 Td2021.5076
																																																																																															Ans
																																																																																																FLi l.6035
																																																																																														Let Tu48.5050
																																																																																															Stfd Td2022.5071 abc.5020 0
																																																																																															Let b.5051
																																																																																																Lfd abc.5020 4
																																																																																																Let Tb2025.5064
																																																																																																	CallCls fiszero.2479 d:f:b.5051 
																																																																																																	Let Ti2026.5065
																																																																																																		Li 0
																																																																																																		Let Td2030.5063
																																																																																																			IfEq Tb2025.5064 Ti2026.5065
																																																																																																				Let Td2027.5066
																																																																																																					CallCls sgn.2493 d:f:b.5051 
																																																																																																					Let Td2028.5067
																																																																																																						CallCls fsqr.2483 d:f:b.5051 
																																																																																																						Let Td2029.5068
																																																																																																							FReciprocal Td2028.5067
																																																																																																							Ans
																																																																																																								FMul Td2027.5066 Td2029.5068
																																																																																																				Ans
																																																																																																					FLi l.6035
																																																																																																			Let Tu47.5052
																																																																																																				Stfd Td2030.5063 abc.5020 4
																																																																																																				Let c.5053
																																																																																																					Lfd abc.5020 8
																																																																																																					Let Tb2033.5056
																																																																																																						CallCls fiszero.2479 d:f:c.5053 
																																																																																																						Let Ti2034.5057
																																																																																																							Li 0
																																																																																																							Let Td2038.5055
																																																																																																								IfEq Tb2033.5056 Ti2034.5057
																																																																																																									Let Td2035.5058
																																																																																																										CallCls sgn.2493 d:f:c.5053 
																																																																																																										Let Td2036.5059
																																																																																																											CallCls fsqr.2483 d:f:c.5053 
																																																																																																											Let Td2037.5060
																																																																																																												FReciprocal Td2036.5059
																																																																																																												Ans
																																																																																																													FMul Td2035.5058 Td2037.5060
																																																																																																									Ans
																																																																																																										FLi l.6035
																																																																																																								Ans
																																																																																																									Stfd Td2038.5055 abc.5020 8
																																																																																										Let Ti2039.5046
																																																																																											Li 2
																																																																																											Ans
																																																																																												IfEq form.5017 Ti2039.5046
																																																																																													Let Ti2040.5048
																																																																																														Li 0
																																																																																														Let Ti2041.5047
																																																																																															IfEq m_invert.5028 Ti2040.5048
																																																																																																Ans
																																																																																																	Li 1
																																																																																																Ans
																																																																																																	Li 0
																																																																																															Ans
																																																																																																CallCls vecunit_sgn.2519 d:abc.5020 Ti2041.5047 f:
																																																																																													Ans
																																																																																														Nop
																																																																																									Let Ti2042.5044
																																																																																										Li 0
																																																																																										Let Tu49.5043
																																																																																											IfEq isrot_p.5019 Ti2042.5044
																																																																																												Ans
																																																																																													Nop
																																																																																												Ans
																																																																																													CallCls rotate_quadratic_matrix.2624 d:abc.5020 rotation.5036 f:
																																																																																											Ans
																																																																																												Li 1
read_object.2629 (args) : n.2630 (fargs) : 
	Let read_nth_object.2627
		Lwz $a26 8
		Let n_objects.2443
			Lwz $a26 4
			Let Ti1941.5009
				Li 60
				Ans
					IfLE Ti1941.5009 n.2630
						Ans
							Nop
						Let Tb1942.5010
							CallCls read_nth_object.2627 (read_nth_object.2627) d:n.2630 f:
							Let Ti1943.5011
								Li 0
								Ans
									IfEq Tb1942.5010 Ti1943.5011
										Ans
											Stw n.2630 n_objects.2443 0
										Let Ti1946.5012
											Add n.2630 1
											Ans
												CallCls read_object.2629 (read_object.2629) d:Ti1946.5012 f:
read_all_object.2631 (args) : (fargs) : 
	Let read_object.2629
		Lwz $a26 4
		Let Ti1940.5008
			Li 0
			Ans
				CallCls read_object.2629 (read_object.2629) d:Ti1940.5008 f:
read_net_item.2633 (args) : length.2634 (fargs) : 
	Let Tu1931.5007
		Nop
		Let item.4996
			CallCls min_caml_read_int d:f:
			Let Ti1933.4997
				Li -1
				Ans
					IfEq item.4996 Ti1933.4997
						Let Ti1935.5002
							Add length.2634 1
							Let Ti1937.5003
								Li -1
								Ans
									CallCls min_caml_create_array d:Ti1935.5002 Ti1937.5003 f:
						Let Ti1939.5000
							Add length.2634 1
							Let v.4998
								CallCls read_net_item.2633 d:Ti1939.5000 f:
								Let o.6199
									Slw length.2634 2
									Let Tu65.4999
										Stw item.4996 v.4998 o.6199
										Ans
											Mr v.4998
read_or_network.2635 (args) : length.2636 (fargs) : 
	Let Ti1922.4995
		Li 0
		Let net.4984
			CallCls read_net_item.2633 d:Ti1922.4995 f:
			Let Ti1924.4985
				Lwz net.4984 0
				Let Ti1926.4986
					Li -1
					Ans
						IfEq Ti1924.4985 Ti1926.4986
							Let Ti1928.4991
								Add length.2636 1
								Ans
									CallCls min_caml_create_array d:Ti1928.4991 net.4984 f:
							Let Ti1930.4989
								Add length.2636 1
								Let v.4987
									CallCls read_or_network.2635 d:Ti1930.4989 f:
									Let o.6201
										Slw length.2636 2
										Let Tu66.4988
											Stw net.4984 v.4987 o.6201
											Ans
												Mr v.4987
read_and_network.2637 (args) : n.2638 (fargs) : 
	Let and_net.2449
		Lwz $a26 4
		Let Ti1915.4983
			Li 0
			Let net.4975
				CallCls read_net_item.2633 d:Ti1915.4983 f:
				Let Ti1917.4976
					Lwz net.4975 0
					Let Ti1919.4977
						Li -1
						Ans
							IfEq Ti1917.4976 Ti1919.4977
								Ans
									Nop
								Let o.6203
									Slw n.2638 2
									Let Tu67.4978
										Stw net.4975 and_net.2449 o.6203
										Let Ti1921.4979
											Add n.2638 1
											Ans
												CallCls read_and_network.2637 (read_and_network.2637) d:Ti1921.4979 f:
read_parameter.2639 (args) : (fargs) : 
	Let read_screen_settings.2620
		Lwz $a26 20
		Let read_light.2622
			Lwz $a26 16
			Let read_and_network.2637
				Lwz $a26 12
				Let read_all_object.2631
					Lwz $a26 8
					Let or_net.2450
						Lwz $a26 4
						Let Tu1908.4974
							Nop
							Let Tu72.4964
								CallCls read_screen_settings.2620 (read_screen_settings.2620) d:f:
								Let Tu1909.4973
									Nop
									Let Tu71.4965
										CallCls read_light.2622 (read_light.2622) d:f:
										Let Tu1910.4972
											Nop
											Let Tu70.4966
												CallCls read_all_object.2631 (read_all_object.2631) d:f:
												Let Ti1911.4971
													Li 0
													Let Tu69.4967
														CallCls read_and_network.2637 (read_and_network.2637) d:Ti1911.4971 f:
														Let Ti1913.4970
															Li 0
															Let Ta1914.4969
																CallCls read_or_network.2635 d:Ti1913.4970 f:
																Ans
																	Stw Ta1914.4969 or_net.2450 0
solver_rect_surface.2641 (args) : m.2642 dirvec.2643 i0.2647 i1.2648 i2.2649 (fargs) : b0.2644 b1.2645 b2.2646 
	Let solver_dist.2451
		Lwz $a26 4
		Let o.6205
			Slw i0.2647 2
			Let Td1882.4963
				Lfd dirvec.2643 o.6205
				Let Tb1883.4934
					CallCls fiszero.2479 d:f:Td1882.4963 
					Let Ti1884.4935
						Li 0
						Ans
							IfEq Tb1883.4934 Ti1884.4935
								Let abc.4936
									CallCls o_param_abc.2563 d:m.2642 f:
									Let Tb1885.4960
										CallCls o_isinvert.2553 d:m.2642 f:
										Let o.6206
											Slw i0.2647 2
											Let Td1886.4962
												Lfd dirvec.2643 o.6206
												Let Tb1887.4961
													CallCls fisneg.2477 d:f:Td1886.4962 
													Let Tb1888.4958
														CallCls xor.2490 d:Tb1885.4960 Tb1887.4961 f:
														Let o.6207
															Slw i0.2647 2
															Let Td1889.4959
																Lfd abc.4936 o.6207
																Let d.4937
																	CallCls fneg_cond.2495 d:Tb1888.4958 f:Td1889.4959 
																	Let Td1890.4955
																		FSub d.4937 b0.2644
																		Let o.6208
																			Slw i0.2647 2
																			Let Td1891.4956
																				Lfd dirvec.2643 o.6208
																				Let Td1892.4957
																					FReciprocal Td1891.4956
																					Let d2.4938
																						FMul Td1890.4955 Td1892.4957
																						Let o.6209
																							Slw i1.2648 2
																							Let Td1893.4954
																								Lfd dirvec.2643 o.6209
																								Let Td1894.4953
																									FMul d2.4938 Td1893.4954
																									Let Td1895.4952
																										FAdd Td1894.4953 b1.2645
																										Let Td1896.4950
																											CallCls fabs.2485 d:f:Td1895.4952 
																											Let o.6210
																												Slw i1.2648 2
																												Let Td1897.4951
																													Lfd abc.4936 o.6210
																													Let Tb1898.4939
																														CallCls fless.2487 d:f:Td1896.4950 Td1897.4951 
																														Let Ti1899.4940
																															Li 0
																															Ans
																																IfEq Tb1898.4939 Ti1899.4940
																																	Ans
																																		Li 0
																																	Let o.6211
																																		Slw i2.2649 2
																																		Let Td1900.4949
																																			Lfd dirvec.2643 o.6211
																																			Let Td1901.4948
																																				FMul d2.4938 Td1900.4949
																																				Let Td1902.4947
																																					FAdd Td1901.4948 b2.2646
																																					Let Td1903.4945
																																						CallCls fabs.2485 d:f:Td1902.4947 
																																						Let o.6212
																																							Slw i2.2649 2
																																							Let Td1904.4946
																																								Lfd abc.4936 o.6212
																																								Let Tb1905.4941
																																									CallCls fless.2487 d:f:Td1903.4945 Td1904.4946 
																																									Let Ti1906.4942
																																										Li 0
																																										Ans
																																											IfEq Tb1905.4941 Ti1906.4942
																																												Ans
																																													Li 0
																																												Let Tu73.4943
																																													Stfd d2.4938 solver_dist.2451 0
																																													Ans
																																														Li 1
								Ans
									Li 0
solver_rect.2650 (args) : m.2651 dirvec.2652 (fargs) : b0.2653 b1.2654 b2.2655 
	Let solver_rect_surface.2641
		Lwz $a26 4
		Let Ti1867.4931
			Li 0
			Let Ti1868.4932
				Li 1
				Let Ti1869.4933
					Li 2
					Let Tb1870.4919
						CallCls solver_rect_surface.2641 (solver_rect_surface.2641) d:m.2651 dirvec.2652 Ti1867.4931 Ti1868.4932 Ti1869.4933 f:b0.2653 b1.2654 b2.2655 
						Let Ti1871.4920
							Li 0
							Ans
								IfEq Tb1870.4919 Ti1871.4920
									Let Ti1872.4928
										Li 1
										Let Ti1873.4929
											Li 2
											Let Ti1874.4930
												Li 0
												Let Tb1875.4921
													CallCls solver_rect_surface.2641 (solver_rect_surface.2641) d:m.2651 dirvec.2652 Ti1872.4928 Ti1873.4929 Ti1874.4930 f:b1.2654 b2.2655 b0.2653 
													Let Ti1876.4922
														Li 0
														Ans
															IfEq Tb1875.4921 Ti1876.4922
																Let Ti1877.4925
																	Li 2
																	Let Ti1878.4926
																		Li 0
																		Let Ti1879.4927
																			Li 1
																			Let Tb1880.4923
																				CallCls solver_rect_surface.2641 (solver_rect_surface.2641) d:m.2651 dirvec.2652 Ti1877.4925 Ti1878.4926 Ti1879.4927 f:b2.2655 b0.2653 b1.2654 
																				Let Ti1881.4924
																					Li 0
																					Ans
																						IfEq Tb1880.4923 Ti1881.4924
																							Ans
																								Li 0
																							Ans
																								Li 3
																Ans
																	Li 2
									Ans
										Li 1
solver_surface.2656 (args) : m.2657 dirvec.2658 (fargs) : b0.2659 b1.2660 b2.2661 
	Let solver_dist.2451
		Lwz $a26 4
		Let abc.4909
			CallCls o_param_abc.2563 d:m.2657 f:
			Let d.4910
				CallCls veciprod.2522 d:dirvec.2658 abc.4909 f:
				Let Tb1860.4911
					CallCls fispos.2475 d:f:d.4910 
					Let Ti1861.4912
						Li 0
						Ans
							IfEq Tb1860.4911 Ti1861.4912
								Ans
									Li 0
								Let Td1863.4918
									CallCls veciprod2.2525 d:abc.4909 f:b0.2659 b1.2660 b2.2661 
									Let Td1864.4916
										CallCls fneg.2473 d:f:Td1863.4918 
										Let Td1865.4917
											FReciprocal d.4910
											Let Td1866.4915
												FMul Td1864.4916 Td1865.4917
												Let Tu74.4913
													Stfd Td1866.4915 solver_dist.2451 0
													Ans
														Li 1
quadratic.2662 (args) : m.2663 (fargs) : v0.2664 v1.2665 v2.2666 
	Let Td1837.4907
		CallCls fsqr.2483 d:f:v0.2664 
		Let Td1838.4908
			CallCls o_param_a.2557 d:m.2663 f:
			Let Td1839.4903
				FMul Td1837.4907 Td1838.4908
				Let Td1840.4905
					CallCls fsqr.2483 d:f:v1.2665 
					Let Td1841.4906
						CallCls o_param_b.2559 d:m.2663 f:
						Let Td1842.4904
							FMul Td1840.4905 Td1841.4906
							Let Td1843.4899
								FAdd Td1839.4903 Td1842.4904
								Let Td1844.4901
									CallCls fsqr.2483 d:f:v2.2666 
									Let Td1845.4902
										CallCls o_param_c.2561 d:m.2663 f:
										Let Td1846.4900
											FMul Td1844.4901 Td1845.4902
											Let diag_part.4885
												FAdd Td1843.4899 Td1846.4900
												Let Ti1847.4886
													CallCls o_isrot.2555 d:m.2663 f:
													Let Ti1848.4887
														Li 0
														Ans
															IfEq Ti1847.4886 Ti1848.4887
																Ans
																	FMr diag_part.4885
																Let Td1849.4897
																	FMul v1.2665 v2.2666
																	Let Td1850.4898
																		CallCls o_param_r1.2581 d:m.2663 f:
																		Let Td1851.4896
																			FMul Td1849.4897 Td1850.4898
																			Let Td1852.4892
																				FAdd diag_part.4885 Td1851.4896
																				Let Td1853.4894
																					FMul v2.2666 v0.2664
																					Let Td1854.4895
																						CallCls o_param_r2.2583 d:m.2663 f:
																						Let Td1855.4893
																							FMul Td1853.4894 Td1854.4895
																							Let Td1856.4888
																								FAdd Td1852.4892 Td1855.4893
																								Let Td1857.4890
																									FMul v0.2664 v1.2665
																									Let Td1858.4891
																										CallCls o_param_r3.2585 d:m.2663 f:
																										Let Td1859.4889
																											FMul Td1857.4890 Td1858.4891
																											Ans
																												FAdd Td1856.4888 Td1859.4889
bilinear.2667 (args) : m.2668 (fargs) : v0.2669 v1.2670 v2.2671 w0.2672 w1.2673 w2.2674 
	Let Td1807.4883
		FMul v0.2669 w0.2672
		Let Td1808.4884
			CallCls o_param_a.2557 d:m.2668 f:
			Let Td1809.4879
				FMul Td1807.4883 Td1808.4884
				Let Td1810.4881
					FMul v1.2670 w1.2673
					Let Td1811.4882
						CallCls o_param_b.2559 d:m.2668 f:
						Let Td1812.4880
							FMul Td1810.4881 Td1811.4882
							Let Td1813.4875
								FAdd Td1809.4879 Td1812.4880
								Let Td1814.4877
									FMul v2.2671 w2.2674
									Let Td1815.4878
										CallCls o_param_c.2561 d:m.2668 f:
										Let Td1816.4876
											FMul Td1814.4877 Td1815.4878
											Let diag_part.4854
												FAdd Td1813.4875 Td1816.4876
												Let Ti1817.4855
													CallCls o_isrot.2555 d:m.2668 f:
													Let Ti1818.4856
														Li 0
														Ans
															IfEq Ti1817.4855 Ti1818.4856
																Ans
																	FMr diag_part.4854
																Let Td1819.4873
																	FMul v2.2671 w1.2673
																	Let Td1820.4874
																		FMul v1.2670 w2.2674
																		Let Td1821.4871
																			FAdd Td1819.4873 Td1820.4874
																			Let Td1822.4872
																				CallCls o_param_r1.2581 d:m.2668 f:
																				Let Td1823.4865
																					FMul Td1821.4871 Td1822.4872
																					Let Td1824.4869
																						FMul v0.2669 w2.2674
																						Let Td1825.4870
																							FMul v2.2671 w0.2672
																							Let Td1826.4867
																								FAdd Td1824.4869 Td1825.4870
																								Let Td1827.4868
																									CallCls o_param_r2.2583 d:m.2668 f:
																									Let Td1828.4866
																										FMul Td1826.4867 Td1827.4868
																										Let Td1829.4859
																											FAdd Td1823.4865 Td1828.4866
																											Let Td1830.4863
																												FMul v0.2669 w1.2673
																												Let Td1831.4864
																													FMul v1.2670 w0.2672
																													Let Td1832.4861
																														FAdd Td1830.4863 Td1831.4864
																														Let Td1833.4862
																															CallCls o_param_r3.2585 d:m.2668 f:
																															Let Td1834.4860
																																FMul Td1832.4861 Td1833.4862
																																Let Td1835.4858
																																	FAdd Td1829.4859 Td1834.4860
																																	Let Td1836.4857
																																		CallCls fhalf.2481 d:f:Td1835.4858 
																																		Ans
																																			FAdd diag_part.4854 Td1836.4857
solver_second.2675 (args) : m.2676 dirvec.2677 (fargs) : b0.2678 b1.2679 b2.2680 
	Let solver_dist.2451
		Lwz $a26 4
		Let Td1781.4848
			Lfd dirvec.2677 0
			Let Td1783.4849
				Lfd dirvec.2677 4
				Let Td1785.4850
					Lfd dirvec.2677 8
					Let aa.4819
						CallCls quadratic.2662 d:m.2676 f:Td1781.4848 Td1783.4849 Td1785.4850 
						Let Tb1786.4820
							CallCls fiszero.2479 d:f:aa.4819 
							Let Ti1787.4821
								Li 0
								Ans
									IfEq Tb1786.4820 Ti1787.4821
										Let Td1789.4842
											Lfd dirvec.2677 0
											Let Td1791.4843
												Lfd dirvec.2677 4
												Let Td1793.4844
													Lfd dirvec.2677 8
													Let bb.4822
														CallCls bilinear.2667 d:m.2676 f:Td1789.4842 Td1791.4843 Td1793.4844 b0.2678 b1.2679 b2.2680 
														Let cc0.4823
															CallCls quadratic.2662 d:m.2676 f:b0.2678 b1.2679 b2.2680 
															Let Ti1794.4839
																CallCls o_form.2549 d:m.2676 f:
																Let Ti1795.4840
																	Li 3
																	Let cc.4824
																		IfEq Ti1794.4839 Ti1795.4840
																			Let Td1796.4841
																				FLi l.6037
																				Ans
																					FSub cc0.4823 Td1796.4841
																			Ans
																				FMr cc0.4823
																		Let Td1797.4837
																			CallCls fsqr.2483 d:f:bb.4822 
																			Let Td1798.4838
																				FMul aa.4819 cc.4824
																				Let d.4825
																					FSub Td1797.4837 Td1798.4838
																					Let Tb1799.4826
																						CallCls fispos.2475 d:f:d.4825 
																						Let Ti1800.4827
																							Li 0
																							Ans
																								IfEq Tb1799.4826 Ti1800.4827
																									Ans
																										Li 0
																									Let sd.4828
																										CallCls min_caml_sqrt d:f:d.4825 
																										Let Tb1801.4835
																											CallCls o_isinvert.2553 d:m.2676 f:
																											Let Ti1802.4836
																												Li 0
																												Let t1.4829
																													IfEq Tb1801.4835 Ti1802.4836
																														Ans
																															CallCls fneg.2473 d:f:sd.4828 
																														Ans
																															FMr sd.4828
																													Let Td1804.4833
																														FSub t1.4829 bb.4822
																														Let Td1805.4834
																															FReciprocal aa.4819
																															Let Td1806.4832
																																FMul Td1804.4833 Td1805.4834
																																Let Tu75.4830
																																	Stfd Td1806.4832 solver_dist.2451 0
																																	Ans
																																		Li 1
										Ans
											Li 0
solver.2681 (args) : index.2682 dirvec.2683 org.2684 (fargs) : 
	Let solver_surface.2656
		Lwz $a26 16
		Let solver_second.2675
			Lwz $a26 12
			Let solver_rect.2650
				Lwz $a26 8
				Let objects.2444
					Lwz $a26 4
					Let o.6222
						Slw index.2682 2
						Let m.4803
							Lwz objects.2444 o.6222
							Let Td1770.4816
								Lfd org.2684 0
								Let Td1771.4817
									CallCls o_param_x.2565 d:m.4803 f:
									Let b0.4804
										FSub Td1770.4816 Td1771.4817
										Let Td1773.4813
											Lfd org.2684 4
											Let Td1774.4814
												CallCls o_param_y.2567 d:m.4803 f:
												Let b1.4805
													FSub Td1773.4813 Td1774.4814
													Let Td1776.4810
														Lfd org.2684 8
														Let Td1777.4811
															CallCls o_param_z.2569 d:m.4803 f:
															Let b2.4806
																FSub Td1776.4810 Td1777.4811
																Let m_shape.4807
																	CallCls o_form.2549 d:m.4803 f:
																	Let Ti1778.4808
																		Li 1
																		Ans
																			IfEq m_shape.4807 Ti1778.4808
																				Ans
																					CallCls solver_rect.2650 (solver_rect.2650) d:m.4803 dirvec.2683 f:b0.4804 b1.4805 b2.4806 
																				Let Ti1779.4809
																					Li 2
																					Ans
																						IfEq m_shape.4807 Ti1779.4809
																							Ans
																								CallCls solver_surface.2656 (solver_surface.2656) d:m.4803 dirvec.2683 f:b0.4804 b1.4805 b2.4806 
																							Ans
																								CallCls solver_second.2675 (solver_second.2675) d:m.4803 dirvec.2683 f:b0.4804 b1.4805 b2.4806 
solver_rect_fast.2685 (args) : m.2686 v.2687 dconst.2688 (fargs) : b0.2689 b1.2690 b2.2691 
	Let solver_dist.2451
		Lwz $a26 4
		Let Td1686.4801
			Lfd dconst.2688 0
			Let Td1687.4798
				FSub Td1686.4801 b0.2689
				Let Td1689.4799
					Lfd dconst.2688 4
					Let d0.4713
						FMul Td1687.4798 Td1689.4799
						Let Td1691.4796
							Lfd v.2687 4
							Let Td1692.4795
								FMul d0.4713 Td1691.4796
								Let Td1693.4794
									FAdd Td1692.4795 b1.2690
									Let Td1694.4792
										CallCls fabs.2485 d:f:Td1693.4794 
										Let Td1695.4793
											CallCls o_param_b.2559 d:m.2686 f:
											Let Tb1696.4778
												CallCls fless.2487 d:f:Td1694.4792 Td1695.4793 
												Let Ti1697.4779
													Li 0
													Let Ti1710.4714
														IfEq Tb1696.4778 Ti1697.4779
															Ans
																Li 0
															Let Td1699.4790
																Lfd v.2687 8
																Let Td1700.4789
																	FMul d0.4713 Td1699.4790
																	Let Td1701.4788
																		FAdd Td1700.4789 b2.2691
																		Let Td1702.4786
																			CallCls fabs.2485 d:f:Td1701.4788 
																			Let Td1703.4787
																				CallCls o_param_c.2561 d:m.2686 f:
																				Let Tb1704.4780
																					CallCls fless.2487 d:f:Td1702.4786 Td1703.4787 
																					Let Ti1705.4781
																						Li 0
																						Ans
																							IfEq Tb1704.4780 Ti1705.4781
																								Ans
																									Li 0
																								Let Td1707.4784
																									Lfd dconst.2688 4
																									Let Tb1708.4782
																										CallCls fiszero.2479 d:f:Td1707.4784 
																										Let Ti1709.4783
																											Li 0
																											Ans
																												IfEq Tb1708.4782 Ti1709.4783
																													Ans
																														Li 1
																													Ans
																														Li 0
														Let Ti1711.4715
															Li 0
															Ans
																IfEq Ti1710.4714 Ti1711.4715
																	Let Td1713.4776
																		Lfd dconst.2688 8
																		Let Td1714.4773
																			FSub Td1713.4776 b1.2690
																			Let Td1716.4774
																				Lfd dconst.2688 12
																				Let d1.4718
																					FMul Td1714.4773 Td1716.4774
																					Let Td1718.4771
																						Lfd v.2687 0
																						Let Td1719.4770
																							FMul d1.4718 Td1718.4771
																							Let Td1720.4769
																								FAdd Td1719.4770 b0.2689
																								Let Td1721.4767
																									CallCls fabs.2485 d:f:Td1720.4769 
																									Let Td1722.4768
																										CallCls o_param_a.2557 d:m.2686 f:
																										Let Tb1723.4753
																											CallCls fless.2487 d:f:Td1721.4767 Td1722.4768 
																											Let Ti1724.4754
																												Li 0
																												Let Ti1737.4719
																													IfEq Tb1723.4753 Ti1724.4754
																														Ans
																															Li 0
																														Let Td1726.4765
																															Lfd v.2687 8
																															Let Td1727.4764
																																FMul d1.4718 Td1726.4765
																																Let Td1728.4763
																																	FAdd Td1727.4764 b2.2691
																																	Let Td1729.4761
																																		CallCls fabs.2485 d:f:Td1728.4763 
																																		Let Td1730.4762
																																			CallCls o_param_c.2561 d:m.2686 f:
																																			Let Tb1731.4755
																																				CallCls fless.2487 d:f:Td1729.4761 Td1730.4762 
																																				Let Ti1732.4756
																																					Li 0
																																					Ans
																																						IfEq Tb1731.4755 Ti1732.4756
																																							Ans
																																								Li 0
																																							Let Td1734.4759
																																								Lfd dconst.2688 12
																																								Let Tb1735.4757
																																									CallCls fiszero.2479 d:f:Td1734.4759 
																																									Let Ti1736.4758
																																										Li 0
																																										Ans
																																											IfEq Tb1735.4757 Ti1736.4758
																																												Ans
																																													Li 1
																																												Ans
																																													Li 0
																													Let Ti1738.4720
																														Li 0
																														Ans
																															IfEq Ti1737.4719 Ti1738.4720
																																Let Td1740.4751
																																	Lfd dconst.2688 16
																																	Let Td1741.4748
																																		FSub Td1740.4751 b2.2691
																																		Let Td1743.4749
																																			Lfd dconst.2688 20
																																			Let d2.4723
																																				FMul Td1741.4748 Td1743.4749
																																				Let Td1745.4746
																																					Lfd v.2687 0
																																					Let Td1746.4745
																																						FMul d2.4723 Td1745.4746
																																						Let Td1747.4744
																																							FAdd Td1746.4745 b0.2689
																																							Let Td1748.4742
																																								CallCls fabs.2485 d:f:Td1747.4744 
																																								Let Td1749.4743
																																									CallCls o_param_a.2557 d:m.2686 f:
																																									Let Tb1750.4728
																																										CallCls fless.2487 d:f:Td1748.4742 Td1749.4743 
																																										Let Ti1751.4729
																																											Li 0
																																											Let Ti1764.4724
																																												IfEq Tb1750.4728 Ti1751.4729
																																													Ans
																																														Li 0
																																													Let Td1753.4740
																																														Lfd v.2687 4
																																														Let Td1754.4739
																																															FMul d2.4723 Td1753.4740
																																															Let Td1755.4738
																																																FAdd Td1754.4739 b1.2690
																																																Let Td1756.4736
																																																	CallCls fabs.2485 d:f:Td1755.4738 
																																																	Let Td1757.4737
																																																		CallCls o_param_b.2559 d:m.2686 f:
																																																		Let Tb1758.4730
																																																			CallCls fless.2487 d:f:Td1756.4736 Td1757.4737 
																																																			Let Ti1759.4731
																																																				Li 0
																																																				Ans
																																																					IfEq Tb1758.4730 Ti1759.4731
																																																						Ans
																																																							Li 0
																																																						Let Td1761.4734
																																																							Lfd dconst.2688 20
																																																							Let Tb1762.4732
																																																								CallCls fiszero.2479 d:f:Td1761.4734 
																																																								Let Ti1763.4733
																																																									Li 0
																																																									Ans
																																																										IfEq Tb1762.4732 Ti1763.4733
																																																											Ans
																																																												Li 1
																																																											Ans
																																																												Li 0
																																												Let Ti1765.4725
																																													Li 0
																																													Ans
																																														IfEq Ti1764.4724 Ti1765.4725
																																															Ans
																																																Li 0
																																															Let Tu78.4726
																																																Stfd d2.4723 solver_dist.2451 0
																																																Ans
																																																	Li 3
																																Let Tu77.4721
																																	Stfd d1.4718 solver_dist.2451 0
																																	Ans
																																		Li 2
																	Let Tu76.4716
																		Stfd d0.4713 solver_dist.2451 0
																		Ans
																			Li 1
solver_surface_fast.2692 (args) : m.2693 dconst.2694 (fargs) : b0.2695 b1.2696 b2.2697 
	Let solver_dist.2451
		Lwz $a26 4
		Let Td1670.4711
			Lfd dconst.2694 0
			Let Tb1671.4696
				CallCls fisneg.2477 d:f:Td1670.4711 
				Let Ti1672.4697
					Li 0
					Ans
						IfEq Tb1671.4696 Ti1672.4697
							Ans
								Li 0
							Let Td1675.4709
								Lfd dconst.2694 4
								Let Td1676.4705
									FMul Td1675.4709 b0.2695
									Let Td1678.4707
										Lfd dconst.2694 8
										Let Td1679.4706
											FMul Td1678.4707 b1.2696
											Let Td1680.4701
												FAdd Td1676.4705 Td1679.4706
												Let Td1682.4703
													Lfd dconst.2694 12
													Let Td1683.4702
														FMul Td1682.4703 b2.2697
														Let Td1684.4700
															FAdd Td1680.4701 Td1683.4702
															Let Tu79.4698
																Stfd Td1684.4700 solver_dist.2451 0
																Ans
																	Li 1
solver_second_fast.2698 (args) : m.2699 dconst.2700 (fargs) : b0.2701 b1.2702 b2.2703 
	Let solver_dist.2451
		Lwz $a26 4
		Let aa.4656
			Lfd dconst.2700 0
			Let Tb1636.4657
				CallCls fiszero.2479 d:f:aa.4656 
				Let Ti1637.4658
					Li 0
					Ans
						IfEq Tb1636.4657 Ti1637.4658
							Let Td1639.4693
								Lfd dconst.2700 4
								Let Td1640.4689
									FMul Td1639.4693 b0.2701
									Let Td1642.4691
										Lfd dconst.2700 8
										Let Td1643.4690
											FMul Td1642.4691 b1.2702
											Let Td1644.4685
												FAdd Td1640.4689 Td1643.4690
												Let Td1646.4687
													Lfd dconst.2700 12
													Let Td1647.4686
														FMul Td1646.4687 b2.2703
														Let neg_bb.4659
															FAdd Td1644.4685 Td1647.4686
															Let cc0.4660
																CallCls quadratic.2662 d:m.2699 f:b0.2701 b1.2702 b2.2703 
																Let Ti1648.4682
																	CallCls o_form.2549 d:m.2699 f:
																	Let Ti1649.4683
																		Li 3
																		Let cc.4661
																			IfEq Ti1648.4682 Ti1649.4683
																				Let Td1650.4684
																					FLi l.6037
																					Ans
																						FSub cc0.4660 Td1650.4684
																				Ans
																					FMr cc0.4660
																			Let Td1651.4680
																				CallCls fsqr.2483 d:f:neg_bb.4659 
																				Let Td1652.4681
																					FMul aa.4656 cc.4661
																					Let d.4662
																						FSub Td1651.4680 Td1652.4681
																						Let Tb1653.4663
																							CallCls fispos.2475 d:f:d.4662 
																							Let Ti1654.4664
																								Li 0
																								Ans
																									IfEq Tb1653.4663 Ti1654.4664
																										Ans
																											Li 0
																										Let Tb1655.4666
																											CallCls o_isinvert.2553 d:m.2699 f:
																											Let Ti1656.4667
																												Li 0
																												Let Tu80.4665
																													IfEq Tb1655.4666 Ti1656.4667
																														Let Td1658.4679
																															CallCls min_caml_sqrt d:f:d.4662 
																															Let Td1659.4676
																																FSub neg_bb.4659 Td1658.4679
																																Let Td1661.4677
																																	Lfd dconst.2700 16
																																	Let Td1662.4675
																																		FMul Td1659.4676 Td1661.4677
																																		Ans
																																			Stfd Td1662.4675 solver_dist.2451 0
																														Let Td1664.4673
																															CallCls min_caml_sqrt d:f:d.4662 
																															Let Td1665.4670
																																FAdd neg_bb.4659 Td1664.4673
																																Let Td1667.4671
																																	Lfd dconst.2700 16
																																	Let Td1668.4669
																																		FMul Td1665.4670 Td1667.4671
																																		Ans
																																			Stfd Td1668.4669 solver_dist.2451 0
																													Ans
																														Li 1
							Ans
								Li 0
solver_fast.2704 (args) : index.2705 dirvec.2706 org.2707 (fargs) : 
	Let solver_surface_fast.2692
		Lwz $a26 16
		Let solver_second_fast.2698
			Lwz $a26 12
			Let solver_rect_fast.2685
				Lwz $a26 8
				Let objects.2444
					Lwz $a26 4
					Let o.6257
						Slw index.2705 2
						Let m.4637
							Lwz objects.2444 o.6257
							Let Td1624.4653
								Lfd org.2707 0
								Let Td1625.4654
									CallCls o_param_x.2565 d:m.4637 f:
									Let b0.4638
										FSub Td1624.4653 Td1625.4654
										Let Td1627.4650
											Lfd org.2707 4
											Let Td1628.4651
												CallCls o_param_y.2567 d:m.4637 f:
												Let b1.4639
													FSub Td1627.4650 Td1628.4651
													Let Td1630.4647
														Lfd org.2707 8
														Let Td1631.4648
															CallCls o_param_z.2569 d:m.4637 f:
															Let b2.4640
																FSub Td1630.4647 Td1631.4648
																Let dconsts.4641
																	CallCls d_const.2610 d:dirvec.2706 f:
																	Let o.6261
																		Slw index.2705 2
																		Let dconst.4642
																			Lwz dconsts.4641 o.6261
																			Let m_shape.4643
																				CallCls o_form.2549 d:m.4637 f:
																				Let Ti1632.4644
																					Li 1
																					Ans
																						IfEq m_shape.4643 Ti1632.4644
																							Let Ta1633.4646
																								CallCls d_vec.2608 d:dirvec.2706 f:
																								Ans
																									CallCls solver_rect_fast.2685 (solver_rect_fast.2685) d:m.4637 Ta1633.4646 dconst.4642 f:b0.4638 b1.4639 b2.4640 
																							Let Ti1634.4645
																								Li 2
																								Ans
																									IfEq m_shape.4643 Ti1634.4645
																										Ans
																											CallCls solver_surface_fast.2692 (solver_surface_fast.2692) d:m.4637 dconst.4642 f:b0.4638 b1.4639 b2.4640 
																										Ans
																											CallCls solver_second_fast.2698 (solver_second_fast.2698) d:m.4637 dconst.4642 f:b0.4638 b1.4639 b2.4640 
solver_surface_fast2.2708 (args) : m.2709 dconst.2710 sconst.2711 (fargs) : b0.2712 b1.2713 b2.2714 
	Let solver_dist.2451
		Lwz $a26 4
		Let Td1614.4635
			Lfd dconst.2710 0
			Let Tb1615.4626
				CallCls fisneg.2477 d:f:Td1614.4635 
				Let Ti1616.4627
					Li 0
					Ans
						IfEq Tb1615.4626 Ti1616.4627
							Ans
								Li 0
							Let Td1619.4631
								Lfd dconst.2710 0
								Let Td1621.4632
									Lfd sconst.2711 12
									Let Td1622.4630
										FMul Td1619.4631 Td1621.4632
										Let Tu81.4628
											Stfd Td1622.4630 solver_dist.2451 0
											Ans
												Li 1
solver_second_fast2.2715 (args) : m.2716 dconst.2717 sconst.2718 (fargs) : b0.2719 b1.2720 b2.2721 
	Let solver_dist.2451
		Lwz $a26 4
		Let aa.4589
			Lfd dconst.2717 0
			Let Tb1582.4590
				CallCls fiszero.2479 d:f:aa.4589 
				Let Ti1583.4591
					Li 0
					Ans
						IfEq Tb1582.4590 Ti1583.4591
							Let Td1585.4623
								Lfd dconst.2717 4
								Let Td1586.4619
									FMul Td1585.4623 b0.2719
									Let Td1588.4621
										Lfd dconst.2717 8
										Let Td1589.4620
											FMul Td1588.4621 b1.2720
											Let Td1590.4615
												FAdd Td1586.4619 Td1589.4620
												Let Td1592.4617
													Lfd dconst.2717 12
													Let Td1593.4616
														FMul Td1592.4617 b2.2721
														Let neg_bb.4592
															FAdd Td1590.4615 Td1593.4616
															Let cc.4593
																Lfd sconst.2718 12
																Let Td1595.4612
																	CallCls fsqr.2483 d:f:neg_bb.4592 
																	Let Td1596.4613
																		FMul aa.4589 cc.4593
																		Let d.4594
																			FSub Td1595.4612 Td1596.4613
																			Let Tb1597.4595
																				CallCls fispos.2475 d:f:d.4594 
																				Let Ti1598.4596
																					Li 0
																					Ans
																						IfEq Tb1597.4595 Ti1598.4596
																							Ans
																								Li 0
																							Let Tb1599.4598
																								CallCls o_isinvert.2553 d:m.2716 f:
																								Let Ti1600.4599
																									Li 0
																									Let Tu82.4597
																										IfEq Tb1599.4598 Ti1600.4599
																											Let Td1602.4611
																												CallCls min_caml_sqrt d:f:d.4594 
																												Let Td1603.4608
																													FSub neg_bb.4592 Td1602.4611
																													Let Td1605.4609
																														Lfd dconst.2717 16
																														Let Td1606.4607
																															FMul Td1603.4608 Td1605.4609
																															Ans
																																Stfd Td1606.4607 solver_dist.2451 0
																											Let Td1608.4605
																												CallCls min_caml_sqrt d:f:d.4594 
																												Let Td1609.4602
																													FAdd neg_bb.4592 Td1608.4605
																													Let Td1611.4603
																														Lfd dconst.2717 16
																														Let Td1612.4601
																															FMul Td1609.4602 Td1611.4603
																															Ans
																																Stfd Td1612.4601 solver_dist.2451 0
																										Ans
																											Li 1
							Ans
								Li 0
solver_fast2.2722 (args) : index.2723 dirvec.2724 (fargs) : 
	Let solver_surface_fast2.2708
		Lwz $a26 16
		Let solver_second_fast2.2715
			Lwz $a26 12
			Let solver_rect_fast.2685
				Lwz $a26 8
				Let objects.2444
					Lwz $a26 4
					Let o.6275
						Slw index.2723 2
						Let m.4575
							Lwz objects.2444 o.6275
							Let sconst.4576
								CallCls o_param_ctbl.2587 d:m.4575 f:
								Let b0.4577
									Lfd sconst.4576 0
									Let b1.4578
										Lfd sconst.4576 4
										Let b2.4579
											Lfd sconst.4576 8
											Let dconsts.4580
												CallCls d_const.2610 d:dirvec.2724 f:
												Let o.6279
													Slw index.2723 2
													Let dconst.4581
														Lwz dconsts.4580 o.6279
														Let m_shape.4582
															CallCls o_form.2549 d:m.4575 f:
															Let Ti1578.4583
																Li 1
																Ans
																	IfEq m_shape.4582 Ti1578.4583
																		Let Ta1579.4585
																			CallCls d_vec.2608 d:dirvec.2724 f:
																			Ans
																				CallCls solver_rect_fast.2685 (solver_rect_fast.2685) d:m.4575 Ta1579.4585 dconst.4581 f:b0.4577 b1.4578 b2.4579 
																		Let Ti1580.4584
																			Li 2
																			Ans
																				IfEq m_shape.4582 Ti1580.4584
																					Ans
																						CallCls solver_surface_fast2.2708 (solver_surface_fast2.2708) d:m.4575 dconst.4581 sconst.4576 f:b0.4577 b1.4578 b2.4579 
																					Ans
																						CallCls solver_second_fast2.2715 (solver_second_fast2.2715) d:m.4575 dconst.4581 sconst.4576 f:b0.4577 b1.4578 b2.4579 
setup_rect_table.2725 (args) : vec.2726 m.2727 (fargs) : 
	Let Ti1513.4573
		Li 6
		Let Td1514.4574
			FLi l.6035
			Let const.4506
				CallCls min_caml_create_float_array d:Ti1513.4573 f:Td1514.4574 
				Let Td1516.4571
					Lfd vec.2726 0
					Let Tb1517.4552
						CallCls fiszero.2479 d:f:Td1516.4571 
						Let Ti1518.4553
							Li 0
							Let Tu88.4507
								IfEq Tb1517.4552 Ti1518.4553
									Let Tb1520.4567
										CallCls o_isinvert.2553 d:m.2727 f:
										Let Td1522.4569
											Lfd vec.2726 0
											Let Tb1523.4568
												CallCls fisneg.2477 d:f:Td1522.4569 
												Let Tb1524.4565
													CallCls xor.2490 d:Tb1520.4567 Tb1523.4568 f:
													Let Td1525.4566
														CallCls o_param_a.2557 d:m.2727 f:
														Let Td1526.4564
															CallCls fneg_cond.2495 d:Tb1524.4565 f:Td1525.4566 
															Let Tu83.4556
																Stfd Td1526.4564 const.4506 0
																Let Td1528.4559
																	FLi l.6037
																	Let Td1530.4560
																		Lfd vec.2726 0
																		Let Td1531.4561
																			FReciprocal Td1530.4560
																			Let Td1532.4558
																				FMul Td1528.4559 Td1531.4561
																				Ans
																					Stfd Td1532.4558 const.4506 4
									Let Td1534.4555
										FLi l.6035
										Ans
											Stfd Td1534.4555 const.4506 4
								Let Td1536.4550
									Lfd vec.2726 4
									Let Tb1537.4531
										CallCls fiszero.2479 d:f:Td1536.4550 
										Let Ti1538.4532
											Li 0
											Let Tu87.4508
												IfEq Tb1537.4531 Ti1538.4532
													Let Tb1540.4546
														CallCls o_isinvert.2553 d:m.2727 f:
														Let Td1542.4548
															Lfd vec.2726 4
															Let Tb1543.4547
																CallCls fisneg.2477 d:f:Td1542.4548 
																Let Tb1544.4544
																	CallCls xor.2490 d:Tb1540.4546 Tb1543.4547 f:
																	Let Td1545.4545
																		CallCls o_param_b.2559 d:m.2727 f:
																		Let Td1546.4543
																			CallCls fneg_cond.2495 d:Tb1544.4544 f:Td1545.4545 
																			Let Tu84.4535
																				Stfd Td1546.4543 const.4506 8
																				Let Td1548.4538
																					FLi l.6037
																					Let Td1550.4539
																						Lfd vec.2726 4
																						Let Td1551.4540
																							FReciprocal Td1550.4539
																							Let Td1552.4537
																								FMul Td1548.4538 Td1551.4540
																								Ans
																									Stfd Td1552.4537 const.4506 12
													Let Td1554.4534
														FLi l.6035
														Ans
															Stfd Td1554.4534 const.4506 12
												Let Td1556.4529
													Lfd vec.2726 8
													Let Tb1557.4510
														CallCls fiszero.2479 d:f:Td1556.4529 
														Let Ti1558.4511
															Li 0
															Let Tu86.4509
																IfEq Tb1557.4510 Ti1558.4511
																	Let Tb1560.4525
																		CallCls o_isinvert.2553 d:m.2727 f:
																		Let Td1562.4527
																			Lfd vec.2726 8
																			Let Tb1563.4526
																				CallCls fisneg.2477 d:f:Td1562.4527 
																				Let Tb1564.4523
																					CallCls xor.2490 d:Tb1560.4525 Tb1563.4526 f:
																					Let Td1565.4524
																						CallCls o_param_c.2561 d:m.2727 f:
																						Let Td1566.4522
																							CallCls fneg_cond.2495 d:Tb1564.4523 f:Td1565.4524 
																							Let Tu85.4514
																								Stfd Td1566.4522 const.4506 16
																								Let Td1568.4517
																									FLi l.6037
																									Let Td1570.4518
																										Lfd vec.2726 8
																										Let Td1571.4519
																											FReciprocal Td1570.4518
																											Let Td1572.4516
																												FMul Td1568.4517 Td1571.4519
																												Ans
																													Stfd Td1572.4516 const.4506 20
																	Let Td1574.4513
																		FLi l.6035
																		Ans
																			Stfd Td1574.4513 const.4506 20
																Ans
																	Mr const.4506
setup_surface_table.2728 (args) : vec.2729 m.2730 (fargs) : 
	Let Ti1475.4504
		Li 4
		Let Td1476.4505
			FLi l.6035
			Let const.4462
				CallCls min_caml_create_float_array d:Ti1475.4504 f:Td1476.4505 
				Let Td1478.4501
					Lfd vec.2729 0
					Let Td1479.4502
						CallCls o_param_a.2557 d:m.2730 f:
						Let Td1480.4496
							FMul Td1478.4501 Td1479.4502
							Let Td1482.4498
								Lfd vec.2729 4
								Let Td1483.4499
									CallCls o_param_b.2559 d:m.2730 f:
									Let Td1484.4497
										FMul Td1482.4498 Td1483.4499
										Let Td1485.4491
											FAdd Td1480.4496 Td1484.4497
											Let Td1487.4493
												Lfd vec.2729 8
												Let Td1488.4494
													CallCls o_param_c.2561 d:m.2730 f:
													Let Td1489.4492
														FMul Td1487.4493 Td1488.4494
														Let d.4463
															FAdd Td1485.4491 Td1489.4492
															Let Tb1490.4465
																CallCls fispos.2475 d:f:d.4463 
																Let Ti1491.4466
																	Li 0
																	Let Tu92.4464
																		IfEq Tb1490.4465 Ti1491.4466
																			Let Td1493.4490
																				FLi l.6035
																				Ans
																					Stfd Td1493.4490 const.4462 0
																			Let Td1495.4487
																				FLi l.6038
																				Let Td1496.4488
																					FReciprocal d.4463
																					Let Td1497.4486
																						FMul Td1495.4487 Td1496.4488
																						Let Tu91.4467
																							Stfd Td1497.4486 const.4462 0
																							Let Td1499.4483
																								CallCls o_param_a.2557 d:m.2730 f:
																								Let Td1500.4484
																									FReciprocal d.4463
																									Let Td1501.4482
																										FMul Td1499.4483 Td1500.4484
																										Let Td1502.4481
																											CallCls fneg.2473 d:f:Td1501.4482 
																											Let Tu90.4468
																												Stfd Td1502.4481 const.4462 4
																												Let Td1504.4478
																													CallCls o_param_b.2559 d:m.2730 f:
																													Let Td1505.4479
																														FReciprocal d.4463
																														Let Td1506.4477
																															FMul Td1504.4478 Td1505.4479
																															Let Td1507.4476
																																CallCls fneg.2473 d:f:Td1506.4477 
																																Let Tu89.4469
																																	Stfd Td1507.4476 const.4462 8
																																	Let Td1509.4473
																																		CallCls o_param_c.2561 d:m.2730 f:
																																		Let Td1510.4474
																																			FReciprocal d.4463
																																			Let Td1511.4472
																																				FMul Td1509.4473 Td1510.4474
																																				Let Td1512.4471
																																					CallCls fneg.2473 d:f:Td1511.4472 
																																					Ans
																																						Stfd Td1512.4471 const.4462 12
																		Ans
																			Mr const.4462
setup_second_table.2731 (args) : v.2732 m.2733 (fargs) : 
	Let Ti1407.4460
		Li 5
		Let Td1408.4461
			FLi l.6035
			Let const.4382
				CallCls min_caml_create_float_array d:Ti1407.4460 f:Td1408.4461 
				Let Td1410.4454
					Lfd v.2732 0
					Let Td1412.4455
						Lfd v.2732 4
						Let Td1414.4456
							Lfd v.2732 8
							Let aa.4383
								CallCls quadratic.2662 d:m.2733 f:Td1410.4454 Td1412.4455 Td1414.4456 
								Let Td1416.4451
									Lfd v.2732 0
									Let Td1417.4452
										CallCls o_param_a.2557 d:m.2733 f:
										Let Td1418.4450
											FMul Td1416.4451 Td1417.4452
											Let c1.4384
												CallCls fneg.2473 d:f:Td1418.4450 
												Let Td1420.4447
													Lfd v.2732 4
													Let Td1421.4448
														CallCls o_param_b.2559 d:m.2733 f:
														Let Td1422.4446
															FMul Td1420.4447 Td1421.4448
															Let c2.4385
																CallCls fneg.2473 d:f:Td1422.4446 
																Let Td1424.4443
																	Lfd v.2732 8
																	Let Td1425.4444
																		CallCls o_param_c.2561 d:m.2733 f:
																		Let Td1426.4442
																			FMul Td1424.4443 Td1425.4444
																			Let c3.4386
																				CallCls fneg.2473 d:f:Td1426.4442 
																				Let Tu99.4387
																					Stfd aa.4383 const.4382 0
																					Let Ti1428.4396
																						CallCls o_isrot.2555 d:m.2733 f:
																						Let Ti1429.4397
																							Li 0
																							Let Tu98.4388
																								IfEq Ti1428.4396 Ti1429.4397
																									Let Tu96.4436
																										Stfd c1.4384 const.4382 4
																										Let Tu95.4437
																											Stfd c2.4385 const.4382 8
																											Ans
																												Stfd c3.4386 const.4382 12
																									Let Td1435.4433
																										Lfd v.2732 8
																										Let Td1436.4434
																											CallCls o_param_r2.2583 d:m.2733 f:
																											Let Td1437.4428
																												FMul Td1435.4433 Td1436.4434
																												Let Td1439.4430
																													Lfd v.2732 4
																													Let Td1440.4431
																														CallCls o_param_r3.2585 d:m.2733 f:
																														Let Td1441.4429
																															FMul Td1439.4430 Td1440.4431
																															Let Td1442.4427
																																FAdd Td1437.4428 Td1441.4429
																																Let Td1443.4426
																																	CallCls fhalf.2481 d:f:Td1442.4427 
																																	Let Td1444.4425
																																		FSub c1.4384 Td1443.4426
																																		Let Tu94.4398
																																			Stfd Td1444.4425 const.4382 4
																																			Let Td1447.4421
																																				Lfd v.2732 8
																																				Let Td1448.4422
																																					CallCls o_param_r1.2581 d:m.2733 f:
																																					Let Td1449.4416
																																						FMul Td1447.4421 Td1448.4422
																																						Let Td1451.4418
																																							Lfd v.2732 0
																																							Let Td1452.4419
																																								CallCls o_param_r3.2585 d:m.2733 f:
																																								Let Td1453.4417
																																									FMul Td1451.4418 Td1452.4419
																																									Let Td1454.4415
																																										FAdd Td1449.4416 Td1453.4417
																																										Let Td1455.4414
																																											CallCls fhalf.2481 d:f:Td1454.4415 
																																											Let Td1456.4413
																																												FSub c2.4385 Td1455.4414
																																												Let Tu93.4399
																																													Stfd Td1456.4413 const.4382 8
																																													Let Td1459.4409
																																														Lfd v.2732 4
																																														Let Td1460.4410
																																															CallCls o_param_r1.2581 d:m.2733 f:
																																															Let Td1461.4404
																																																FMul Td1459.4409 Td1460.4410
																																																Let Td1463.4406
																																																	Lfd v.2732 0
																																																	Let Td1464.4407
																																																		CallCls o_param_r2.2583 d:m.2733 f:
																																																		Let Td1465.4405
																																																			FMul Td1463.4406 Td1464.4407
																																																			Let Td1466.4403
																																																				FAdd Td1461.4404 Td1465.4405
																																																				Let Td1467.4402
																																																					CallCls fhalf.2481 d:f:Td1466.4403 
																																																					Let Td1468.4401
																																																						FSub c3.4386 Td1467.4402
																																																						Ans
																																																							Stfd Td1468.4401 const.4382 12
																								Let Tb1469.4390
																									CallCls fiszero.2479 d:f:aa.4383 
																									Let Ti1470.4391
																										Li 0
																										Let Tu97.4389
																											IfEq Tb1469.4390 Ti1470.4391
																												Let Td1472.4394
																													FLi l.6037
																													Let Td1473.4395
																														FReciprocal aa.4383
																														Let Td1474.4393
																															FMul Td1472.4394 Td1473.4395
																															Ans
																																Stfd Td1474.4393 const.4382 16
																												Ans
																													Nop
																											Ans
																												Mr const.4382
iter_setup_dirvec_constants.2734 (args) : dirvec.2735 index.2736 (fargs) : 
	Let objects.2444
		Lwz $a26 4
		Let Ti1399.4369
			Li 0
			Ans
				IfLE Ti1399.4369 index.2736
					Let o.6326
						Slw index.2736 2
						Let m.4370
							Lwz objects.2444 o.6326
							Let dconst.4371
								CallCls d_const.2610 d:dirvec.2735 f:
								Let v.4372
									CallCls d_vec.2608 d:dirvec.2735 f:
									Let m_shape.4373
										CallCls o_form.2549 d:m.4370 f:
										Let Ti1400.4377
											Li 1
											Let Tu100.4374
												IfEq m_shape.4373 Ti1400.4377
													Let Ta1401.4381
														CallCls setup_rect_table.2725 d:v.4372 m.4370 f:
														Let o.6329
															Slw index.2736 2
															Ans
																Stw Ta1401.4381 dconst.4371 o.6329
													Let Ti1402.4378
														Li 2
														Ans
															IfEq m_shape.4373 Ti1402.4378
																Let Ta1403.4380
																	CallCls setup_surface_table.2728 d:v.4372 m.4370 f:
																	Let o.6328
																		Slw index.2736 2
																		Ans
																			Stw Ta1403.4380 dconst.4371 o.6328
																Let Ta1404.4379
																	CallCls setup_second_table.2731 d:v.4372 m.4370 f:
																	Let o.6327
																		Slw index.2736 2
																		Ans
																			Stw Ta1404.4379 dconst.4371 o.6327
												Let Ti1406.4375
													Sub index.2736 1
													Ans
														CallCls iter_setup_dirvec_constants.2734 (iter_setup_dirvec_constants.2734) d:dirvec.2735 Ti1406.4375 f:
					Ans
						Nop
setup_dirvec_constants.2737 (args) : dirvec.2738 (fargs) : 
	Let n_objects.2443
		Lwz $a26 8
		Let iter_setup_dirvec_constants.2734
			Lwz $a26 4
			Let Ti1396.4366
				Lwz n_objects.2443 0
				Let Ti1398.4365
					Sub Ti1396.4366 1
					Ans
						CallCls iter_setup_dirvec_constants.2734 (iter_setup_dirvec_constants.2734) d:dirvec.2738 Ti1398.4365 f:
setup_startp_constants.2739 (args) : p.2740 index.2741 (fargs) : 
	Let objects.2444
		Lwz $a26 4
		Let Ti1356.4318
			Li 0
			Ans
				IfLE Ti1356.4318 index.2741
					Let o.6331
						Slw index.2741 2
						Let obj.4319
							Lwz objects.2444 o.6331
							Let sconst.4320
								CallCls o_param_ctbl.2587 d:obj.4319 f:
								Let m_shape.4321
									CallCls o_form.2549 d:obj.4319 f:
									Let Td1359.4362
										Lfd p.2740 0
										Let Td1360.4363
											CallCls o_param_x.2565 d:obj.4319 f:
											Let Td1361.4361
												FSub Td1359.4362 Td1360.4363
												Let Tu104.4322
													Stfd Td1361.4361 sconst.4320 0
													Let Td1364.4357
														Lfd p.2740 4
														Let Td1365.4358
															CallCls o_param_y.2567 d:obj.4319 f:
															Let Td1366.4356
																FSub Td1364.4357 Td1365.4358
																Let Tu103.4323
																	Stfd Td1366.4356 sconst.4320 4
																	Let Td1369.4352
																		Lfd p.2740 8
																		Let Td1370.4353
																			CallCls o_param_z.2569 d:obj.4319 f:
																			Let Td1371.4351
																				FSub Td1369.4352 Td1370.4353
																				Let Tu102.4324
																					Stfd Td1371.4351 sconst.4320 8
																					Let Ti1372.4328
																						Li 2
																						Let Tu101.4325
																							IfEq m_shape.4321 Ti1372.4328
																								Let Ta1374.4343
																									CallCls o_param_abc.2563 d:obj.4319 f:
																									Let Td1376.4344
																										Lfd sconst.4320 0
																										Let Td1378.4345
																											Lfd sconst.4320 4
																											Let Td1380.4346
																												Lfd sconst.4320 8
																												Let Td1381.4342
																													CallCls veciprod2.2525 d:Ta1374.4343 f:Td1376.4344 Td1378.4345 Td1380.4346 
																													Ans
																														Stfd Td1381.4342 sconst.4320 12
																								Let Ti1382.4329
																									Li 2
																									Ans
																										IfLE m_shape.4321 Ti1382.4329
																											Ans
																												Nop
																											Let Td1384.4335
																												Lfd sconst.4320 0
																												Let Td1386.4336
																													Lfd sconst.4320 4
																													Let Td1388.4337
																														Lfd sconst.4320 8
																														Let cc0.4330
																															CallCls quadratic.2662 d:obj.4319 f:Td1384.4335 Td1386.4336 Td1388.4337 
																															Let Ti1390.4333
																																Li 3
																																Let Td1392.4332
																																	IfEq m_shape.4321 Ti1390.4333
																																		Let Td1391.4334
																																			FLi l.6037
																																			Ans
																																				FSub cc0.4330 Td1391.4334
																																		Ans
																																			FMr cc0.4330
																																	Ans
																																		Stfd Td1392.4332 sconst.4320 12
																							Let Ti1394.4326
																								Sub index.2741 1
																								Ans
																									CallCls setup_startp_constants.2739 (setup_startp_constants.2739) d:p.2740 Ti1394.4326 f:
					Ans
						Nop
setup_startp.2742 (args) : p.2743 (fargs) : 
	Let startp_fast.2464
		Lwz $a26 12
		Let setup_startp_constants.2739
			Lwz $a26 8
			Let n_objects.2443
				Lwz $a26 4
				Let Tu105.4313
					CallCls veccpy.2511 d:startp_fast.2464 p.2743 f:
					Let Ti1353.4315
						Lwz n_objects.2443 0
						Let Ti1355.4314
							Sub Ti1353.4315 1
							Ans
								CallCls setup_startp_constants.2739 (setup_startp_constants.2739) d:p.2743 Ti1355.4314 f:
is_rect_outside.2744 (args) : m.2745 (fargs) : p0.2746 p1.2747 p2.2748 
	Let Td1338.4311
		CallCls fabs.2485 d:f:p0.2746 
		Let Td1339.4312
			CallCls o_param_a.2557 d:m.2745 f:
			Let Tb1340.4303
				CallCls fless.2487 d:f:Td1338.4311 Td1339.4312 
				Let Ti1341.4304
					Li 0
					Let Ti1348.4299
						IfEq Tb1340.4303 Ti1341.4304
							Ans
								Li 0
							Let Td1342.4309
								CallCls fabs.2485 d:f:p1.2747 
								Let Td1343.4310
									CallCls o_param_b.2559 d:m.2745 f:
									Let Tb1344.4305
										CallCls fless.2487 d:f:Td1342.4309 Td1343.4310 
										Let Ti1345.4306
											Li 0
											Ans
												IfEq Tb1344.4305 Ti1345.4306
													Ans
														Li 0
													Let Td1346.4307
														CallCls fabs.2485 d:f:p2.2748 
														Let Td1347.4308
															CallCls o_param_c.2561 d:m.2745 f:
															Ans
																CallCls fless.2487 d:f:Td1346.4307 Td1347.4308 
						Let Ti1349.4300
							Li 0
							Ans
								IfEq Ti1348.4299 Ti1349.4300
									Let Tb1350.4301
										CallCls o_isinvert.2553 d:m.2745 f:
										Let Ti1351.4302
											Li 0
											Ans
												IfEq Tb1350.4301 Ti1351.4302
													Ans
														Li 1
													Ans
														Li 0
									Ans
										CallCls o_isinvert.2553 d:m.2745 f:
is_plane_outside.2749 (args) : m.2750 (fargs) : p0.2751 p1.2752 p2.2753 
	Let Ta1333.4298
		CallCls o_param_abc.2563 d:m.2750 f:
		Let w.4293
			CallCls veciprod2.2525 d:Ta1333.4298 f:p0.2751 p1.2752 p2.2753 
			Let Tb1334.4296
				CallCls o_isinvert.2553 d:m.2750 f:
				Let Tb1335.4297
					CallCls fisneg.2477 d:f:w.4293 
					Let Tb1336.4294
						CallCls xor.2490 d:Tb1334.4296 Tb1335.4297 f:
						Let Ti1337.4295
							Li 0
							Ans
								IfEq Tb1336.4294 Ti1337.4295
									Ans
										Li 1
									Ans
										Li 0
is_second_outside.2754 (args) : m.2755 (fargs) : p0.2756 p1.2757 p2.2758 
	Let w.4284
		CallCls quadratic.2662 d:m.2755 f:p0.2756 p1.2757 p2.2758 
		Let Ti1326.4290
			CallCls o_form.2549 d:m.2755 f:
			Let Ti1327.4291
				Li 3
				Let w2.4285
					IfEq Ti1326.4290 Ti1327.4291
						Let Td1328.4292
							FLi l.6037
							Ans
								FSub w.4284 Td1328.4292
						Ans
							FMr w.4284
					Let Tb1329.4288
						CallCls o_isinvert.2553 d:m.2755 f:
						Let Tb1330.4289
							CallCls fisneg.2477 d:f:w2.4285 
							Let Tb1331.4286
								CallCls xor.2490 d:Tb1329.4288 Tb1330.4289 f:
								Let Ti1332.4287
									Li 0
									Ans
										IfEq Tb1331.4286 Ti1332.4287
											Ans
												Li 1
											Ans
												Li 0
is_outside.2759 (args) : m.2760 (fargs) : q0.2761 q1.2762 q2.2763 
	Let Td1321.4283
		CallCls o_param_x.2565 d:m.2760 f:
		Let p0.4275
			FSub q0.2761 Td1321.4283
			Let Td1322.4282
				CallCls o_param_y.2567 d:m.2760 f:
				Let p1.4276
					FSub q1.2762 Td1322.4282
					Let Td1323.4281
						CallCls o_param_z.2569 d:m.2760 f:
						Let p2.4277
							FSub q2.2763 Td1323.4281
							Let m_shape.4278
								CallCls o_form.2549 d:m.2760 f:
								Let Ti1324.4279
									Li 1
									Ans
										IfEq m_shape.4278 Ti1324.4279
											Ans
												CallCls is_rect_outside.2744 d:m.2760 f:p0.4275 p1.4276 p2.4277 
											Let Ti1325.4280
												Li 2
												Ans
													IfEq m_shape.4278 Ti1325.4280
														Ans
															CallCls is_plane_outside.2749 d:m.2760 f:p0.4275 p1.4276 p2.4277 
														Ans
															CallCls is_second_outside.2754 d:m.2760 f:p0.4275 p1.4276 p2.4277 
check_all_inside.2764 (args) : ofs.2765 iand.2766 (fargs) : q0.2767 q1.2768 q2.2769 
	Let objects.2444
		Lwz $a26 4
		Let o.6347
			Slw ofs.2765 2
			Let head.4267
				Lwz iand.2766 o.6347
				Let Ti1315.4268
					Li -1
					Ans
						IfEq head.4267 Ti1315.4268
							Ans
								Li 1
							Let o.6348
								Slw head.4267 2
								Let Tt1316.4273
									Lwz objects.2444 o.6348
									Let Tb1317.4269
										CallCls is_outside.2759 d:Tt1316.4273 f:q0.2767 q1.2768 q2.2769 
										Let Ti1318.4270
											Li 0
											Ans
												IfEq Tb1317.4269 Ti1318.4270
													Let Ti1320.4271
														Add ofs.2765 1
														Ans
															CallCls check_all_inside.2764 (check_all_inside.2764) d:Ti1320.4271 iand.2766 f:q0.2767 q1.2768 q2.2769 
													Ans
														Li 0
shadow_check_and_group.2770 (args) : iand_ofs.2771 and_group.2772 (fargs) : 
	Let solver_fast.2704
		Lwz $a26 28
		Let solver_dist.2451
			Lwz $a26 24
			Let objects.2444
				Lwz $a26 20
				Let light_dirvec.2470
					Lwz $a26 16
					Let light.2447
						Lwz $a26 12
						Let intersection_point.2454
							Lwz $a26 8
							Let check_all_inside.2764
								Lwz $a26 4
								Let o.6349
									Slw iand_ofs.2771 2
									Let Ti1280.4226
										Lwz and_group.2772 o.6349
										Let Ti1282.4227
											Li -1
											Ans
												IfEq Ti1280.4226 Ti1282.4227
													Ans
														Li 0
													Let o.6350
														Slw iand_ofs.2771 2
														Let obj.4228
															Lwz and_group.2772 o.6350
															Let t0.4229
																CallCls solver_fast.2704 (solver_fast.2704) d:obj.4228 light_dirvec.2470 intersection_point.2454 f:
																Let t0p.4230
																	Lfd solver_dist.2451 0
																	Let Ti1284.4263
																		Li 0
																		Let Ti1286.4231
																			IfEq t0.4229 Ti1284.4263
																				Ans
																					Li 0
																				Let Td1285.4264
																					FLi l.6352
																					Ans
																						CallCls fless.2487 d:f:t0p.4230 Td1285.4264 
																			Let Ti1287.4232
																				Li 0
																				Ans
																					IfEq Ti1286.4231 Ti1287.4232
																						Let o.6360
																							Slw obj.4228 2
																							Let Tt1288.4262
																								Lwz objects.2444 o.6360
																								Let Tb1289.4258
																									CallCls o_isinvert.2553 d:Tt1288.4262 f:
																									Let Ti1290.4259
																										Li 0
																										Ans
																											IfEq Tb1289.4258 Ti1290.4259
																												Ans
																													Li 0
																												Let Ti1292.4260
																													Add iand_ofs.2771 1
																													Ans
																														CallCls shadow_check_and_group.2770 (shadow_check_and_group.2770) d:Ti1292.4260 and_group.2772 f:
																						Let Td1293.4257
																							FLi l.6353
																							Let t.4233
																								FAdd t0p.4230 Td1293.4257
																								Let Td1295.4255
																									Lfd light.2447 0
																									Let Td1296.4252
																										FMul Td1295.4255 t.4233
																										Let Td1298.4253
																											Lfd intersection_point.2454 0
																											Let q0.4234
																												FAdd Td1296.4252 Td1298.4253
																												Let Td1300.4250
																													Lfd light.2447 4
																													Let Td1301.4247
																														FMul Td1300.4250 t.4233
																														Let Td1303.4248
																															Lfd intersection_point.2454 4
																															Let q1.4235
																																FAdd Td1301.4247 Td1303.4248
																																Let Td1305.4245
																																	Lfd light.2447 8
																																	Let Td1306.4242
																																		FMul Td1305.4245 t.4233
																																		Let Td1308.4243
																																			Lfd intersection_point.2454 8
																																			Let q2.4236
																																				FAdd Td1306.4242 Td1308.4243
																																				Let Ti1309.4241
																																					Li 0
																																					Let Tb1310.4237
																																						CallCls check_all_inside.2764 (check_all_inside.2764) d:Ti1309.4241 and_group.2772 f:q0.4234 q1.4235 q2.4236 
																																						Let Ti1311.4238
																																							Li 0
																																							Ans
																																								IfEq Tb1310.4237 Ti1311.4238
																																									Let Ti1313.4239
																																										Add iand_ofs.2771 1
																																										Ans
																																											CallCls shadow_check_and_group.2770 (shadow_check_and_group.2770) d:Ti1313.4239 and_group.2772 f:
																																									Ans
																																										Li 1
shadow_check_one_or_group.2773 (args) : ofs.2774 or_group.2775 (fargs) : 
	Let shadow_check_and_group.2770
		Lwz $a26 8
		Let and_net.2449
			Lwz $a26 4
			Let o.6361
				Slw ofs.2774 2
				Let head.4217
					Lwz or_group.2775 o.6361
					Let Ti1275.4218
						Li -1
						Ans
							IfEq head.4217 Ti1275.4218
								Ans
									Li 0
								Let o.6362
									Slw head.4217 2
									Let and_group.4219
										Lwz and_net.2449 o.6362
										Let Ti1276.4224
											Li 0
											Let shadow_p.4220
												CallCls shadow_check_and_group.2770 (shadow_check_and_group.2770) d:Ti1276.4224 and_group.4219 f:
												Let Ti1277.4221
													Li 0
													Ans
														IfEq shadow_p.4220 Ti1277.4221
															Let Ti1279.4222
																Add ofs.2774 1
																Ans
																	CallCls shadow_check_one_or_group.2773 (shadow_check_one_or_group.2773) d:Ti1279.4222 or_group.2775 f:
															Ans
																Li 1
shadow_check_one_or_matrix.2776 (args) : ofs.2777 or_matrix.2778 (fargs) : 
	Let solver_fast.2704
		Lwz $a26 20
		Let solver_dist.2451
			Lwz $a26 16
			Let shadow_check_one_or_group.2773
				Lwz $a26 12
				Let light_dirvec.2470
					Lwz $a26 8
					Let intersection_point.2454
						Lwz $a26 4
						Let o.6363
							Slw ofs.2777 2
							Let head.4192
								Lwz or_matrix.2778 o.6363
								Let range_primitive.4193
									Lwz head.4192 0
									Let Ti1254.4194
										Li -1
										Ans
											IfEq range_primitive.4193 Ti1254.4194
												Ans
													Li 0
												Let Ti1255.4204
													Li 99
													Let Ti1265.4195
														IfEq range_primitive.4193 Ti1255.4204
															Ans
																Li 1
															Let t.4205
																CallCls solver_fast.2704 (solver_fast.2704) d:range_primitive.4193 light_dirvec.2470 intersection_point.2454 f:
																Let Ti1256.4206
																	Li 0
																	Ans
																		IfEq t.4205 Ti1256.4206
																			Ans
																				Li 0
																			Let Td1258.4212
																				Lfd solver_dist.2451 0
																				Let Td1259.4213
																					FLi l.6366
																					Let Tb1260.4207
																						CallCls fless.2487 d:f:Td1258.4212 Td1259.4213 
																						Let Ti1261.4208
																							Li 0
																							Ans
																								IfEq Tb1260.4207 Ti1261.4208
																									Ans
																										Li 0
																									Let Ti1262.4211
																										Li 1
																										Let Tb1263.4209
																											CallCls shadow_check_one_or_group.2773 (shadow_check_one_or_group.2773) d:Ti1262.4211 head.4192 f:
																											Let Ti1264.4210
																												Li 0
																												Ans
																													IfEq Tb1263.4209 Ti1264.4210
																														Ans
																															Li 0
																														Ans
																															Li 1
														Let Ti1266.4196
															Li 0
															Ans
																IfEq Ti1265.4195 Ti1266.4196
																	Let Ti1268.4202
																		Add ofs.2777 1
																		Ans
																			CallCls shadow_check_one_or_matrix.2776 (shadow_check_one_or_matrix.2776) d:Ti1268.4202 or_matrix.2778 f:
																	Let Ti1269.4201
																		Li 1
																		Let Tb1270.4197
																			CallCls shadow_check_one_or_group.2773 (shadow_check_one_or_group.2773) d:Ti1269.4201 head.4192 f:
																			Let Ti1271.4198
																				Li 0
																				Ans
																					IfEq Tb1270.4197 Ti1271.4198
																						Let Ti1273.4199
																							Add ofs.2777 1
																							Ans
																								CallCls shadow_check_one_or_matrix.2776 (shadow_check_one_or_matrix.2776) d:Ti1273.4199 or_matrix.2778 f:
																						Ans
																							Li 1
solve_each_element.2779 (args) : iand_ofs.2780 and_group.2781 dirvec.2782 (fargs) : 
	Let tmin.2453
		Lwz $a26 36
		Let startp.2463
			Lwz $a26 32
			Let solver_dist.2451
				Lwz $a26 28
				Let solver.2681
					Lwz $a26 24
					Let objects.2444
						Lwz $a26 20
						Let intsec_rectside.2452
							Lwz $a26 16
							Let intersection_point.2454
								Lwz $a26 12
								Let intersected_object_id.2455
									Lwz $a26 8
									Let check_all_inside.2764
										Lwz $a26 4
										Let o.6367
											Slw iand_ofs.2780 2
											Let iobj.4141
												Lwz and_group.2781 o.6367
												Let Ti1213.4142
													Li -1
													Ans
														IfEq iobj.4141 Ti1213.4142
															Ans
																Nop
															Let t0.4143
																CallCls solver.2681 (solver.2681) d:iobj.4141 dirvec.2782 startp.2463 f:
																Let Ti1214.4144
																	Li 0
																	Ans
																		IfEq t0.4143 Ti1214.4144
																			Let o.6379
																				Slw iobj.4141 2
																				Let Tt1215.4190
																					Lwz objects.2444 o.6379
																					Let Tb1216.4186
																						CallCls o_isinvert.2553 d:Tt1215.4190 f:
																						Let Ti1217.4187
																							Li 0
																							Ans
																								IfEq Tb1216.4186 Ti1217.4187
																									Ans
																										Nop
																									Let Ti1219.4188
																										Add iand_ofs.2780 1
																										Ans
																											CallCls solve_each_element.2779 (solve_each_element.2779) d:Ti1219.4188 and_group.2781 dirvec.2782 f:
																			Let t0p.4145
																				Lfd solver_dist.2451 0
																				Let Td1221.4184
																					FLi l.6035
																					Let Tb1222.4149
																						CallCls fless.2487 d:f:Td1221.4184 t0p.4145 
																						Let Ti1223.4150
																							Li 0
																							Let Tu109.4146
																								IfEq Tb1222.4149 Ti1223.4150
																									Ans
																										Nop
																									Let Td1225.4182
																										Lfd tmin.2453 0
																										Let Tb1226.4151
																											CallCls fless.2487 d:f:t0p.4145 Td1225.4182 
																											Let Ti1227.4152
																												Li 0
																												Ans
																													IfEq Tb1226.4151 Ti1227.4152
																														Ans
																															Nop
																														Let Td1228.4181
																															FLi l.6353
																															Let t.4153
																																FAdd t0p.4145 Td1228.4181
																																Let Td1230.4179
																																	Lfd dirvec.2782 0
																																	Let Td1231.4176
																																		FMul Td1230.4179 t.4153
																																		Let Td1233.4177
																																			Lfd startp.2463 0
																																			Let q0.4154
																																				FAdd Td1231.4176 Td1233.4177
																																				Let Td1235.4174
																																					Lfd dirvec.2782 4
																																					Let Td1236.4171
																																						FMul Td1235.4174 t.4153
																																						Let Td1238.4172
																																							Lfd startp.2463 4
																																							Let q1.4155
																																								FAdd Td1236.4171 Td1238.4172
																																								Let Td1240.4169
																																									Lfd dirvec.2782 8
																																									Let Td1241.4166
																																										FMul Td1240.4169 t.4153
																																										Let Td1243.4167
																																											Lfd startp.2463 8
																																											Let q2.4156
																																												FAdd Td1241.4166 Td1243.4167
																																												Let Ti1244.4165
																																													Li 0
																																													Let Tb1245.4157
																																														CallCls check_all_inside.2764 (check_all_inside.2764) d:Ti1244.4165 and_group.2781 f:q0.4154 q1.4155 q2.4156 
																																														Let Ti1246.4158
																																															Li 0
																																															Ans
																																																IfEq Tb1245.4157 Ti1246.4158
																																																	Ans
																																																		Nop
																																																	Let Tu108.4159
																																																		Stfd t.4153 tmin.2453 0
																																																		Let Tu107.4160
																																																			CallCls vecset.2501 d:intersection_point.2454 f:q0.4154 q1.4155 q2.4156 
																																																			Let Tu106.4161
																																																				Stw iobj.4141 intersected_object_id.2455 0
																																																				Ans
																																																					Stw t0.4143 intsec_rectside.2452 0
																								Let Ti1251.4147
																									Add iand_ofs.2780 1
																									Ans
																										CallCls solve_each_element.2779 (solve_each_element.2779) d:Ti1251.4147 and_group.2781 dirvec.2782 f:
solve_one_or_network.2783 (args) : ofs.2784 or_group.2785 dirvec.2786 (fargs) : 
	Let solve_each_element.2779
		Lwz $a26 8
		Let and_net.2449
			Lwz $a26 4
			Let o.6380
				Slw ofs.2784 2
				Let head.4133
					Lwz or_group.2785 o.6380
					Let Ti1208.4134
						Li -1
						Ans
							IfEq head.4133 Ti1208.4134
								Ans
									Nop
								Let o.6381
									Slw head.4133 2
									Let and_group.4135
										Lwz and_net.2449 o.6381
										Let Ti1209.4139
											Li 0
											Let Tu110.4136
												CallCls solve_each_element.2779 (solve_each_element.2779) d:Ti1209.4139 and_group.4135 dirvec.2786 f:
												Let Ti1211.4137
													Add ofs.2784 1
													Ans
														CallCls solve_one_or_network.2783 (solve_one_or_network.2783) d:Ti1211.4137 or_group.2785 dirvec.2786 f:
trace_or_matrix.2787 (args) : ofs.2788 or_network.2789 dirvec.2790 (fargs) : 
	Let tmin.2453
		Lwz $a26 20
		Let startp.2463
			Lwz $a26 16
			Let solver_dist.2451
				Lwz $a26 12
				Let solver.2681
					Lwz $a26 8
					Let solve_one_or_network.2783
						Lwz $a26 4
						Let o.6382
							Slw ofs.2788 2
							Let head.4114
								Lwz or_network.2789 o.6382
								Let range_primitive.4115
									Lwz head.4114 0
									Let Ti1195.4116
										Li -1
										Ans
											IfEq range_primitive.4115 Ti1195.4116
												Ans
													Nop
												Let Ti1196.4120
													Li 99
													Let Tu111.4117
														IfEq range_primitive.4115 Ti1196.4120
															Let Ti1197.4130
																Li 1
																Ans
																	CallCls solve_one_or_network.2783 (solve_one_or_network.2783) d:Ti1197.4130 head.4114 dirvec.2790 f:
															Let t.4121
																CallCls solver.2681 (solver.2681) d:range_primitive.4115 dirvec.2790 startp.2463 f:
																Let Ti1198.4122
																	Li 0
																	Ans
																		IfEq t.4121 Ti1198.4122
																			Ans
																				Nop
																			Let tp.4123
																				Lfd solver_dist.2451 0
																				Let Td1201.4127
																					Lfd tmin.2453 0
																					Let Tb1202.4124
																						CallCls fless.2487 d:f:tp.4123 Td1201.4127 
																						Let Ti1203.4125
																							Li 0
																							Ans
																								IfEq Tb1202.4124 Ti1203.4125
																									Ans
																										Nop
																									Let Ti1204.4126
																										Li 1
																										Ans
																											CallCls solve_one_or_network.2783 (solve_one_or_network.2783) d:Ti1204.4126 head.4114 dirvec.2790 f:
														Let Ti1206.4118
															Add ofs.2788 1
															Ans
																CallCls trace_or_matrix.2787 (trace_or_matrix.2787) d:Ti1206.4118 or_network.2789 dirvec.2790 f:
judge_intersection.2791 (args) : dirvec.2792 (fargs) : 
	Let trace_or_matrix.2787
		Lwz $a26 12
		Let tmin.2453
			Lwz $a26 8
			Let or_net.2450
				Lwz $a26 4
				Let Td1184.4113
					FLi l.6386
					Let Tu113.4101
						Stfd Td1184.4113 tmin.2453 0
						Let Ti1185.4109
							Li 0
							Let Ta1187.4110
								Lwz or_net.2450 0
								Let Tu112.4102
									CallCls trace_or_matrix.2787 (trace_or_matrix.2787) d:Ti1185.4109 Ta1187.4110 dirvec.2792 f:
									Let t.4103
										Lfd tmin.2453 0
										Let Td1189.4107
											FLi l.6366
											Let Tb1190.4104
												CallCls fless.2487 d:f:Td1189.4107 t.4103 
												Let Ti1191.4105
													Li 0
													Ans
														IfEq Tb1190.4104 Ti1191.4105
															Ans
																Li 0
															Let Td1192.4106
																FLi l.6390
																Ans
																	CallCls fless.2487 d:f:t.4103 Td1192.4106 
solve_each_element_fast.2793 (args) : iand_ofs.2794 and_group.2795 dirvec.2796 (fargs) : 
	Let tmin.2453
		Lwz $a26 36
		Let startp_fast.2464
			Lwz $a26 32
			Let solver_fast2.2722
				Lwz $a26 28
				Let solver_dist.2451
					Lwz $a26 24
					Let objects.2444
						Lwz $a26 20
						Let intsec_rectside.2452
							Lwz $a26 16
							Let intersection_point.2454
								Lwz $a26 12
								Let intersected_object_id.2455
									Lwz $a26 8
									Let check_all_inside.2764
										Lwz $a26 4
										Let vec.4049
											CallCls d_vec.2608 d:dirvec.2796 f:
											Let o.6391
												Slw iand_ofs.2794 2
												Let iobj.4050
													Lwz and_group.2795 o.6391
													Let Ti1144.4051
														Li -1
														Ans
															IfEq iobj.4050 Ti1144.4051
																Ans
																	Nop
																Let t0.4052
																	CallCls solver_fast2.2722 (solver_fast2.2722) d:iobj.4050 dirvec.2796 f:
																	Let Ti1145.4053
																		Li 0
																		Ans
																			IfEq t0.4052 Ti1145.4053
																				Let o.6403
																					Slw iobj.4050 2
																					Let Tt1146.4099
																						Lwz objects.2444 o.6403
																						Let Tb1147.4095
																							CallCls o_isinvert.2553 d:Tt1146.4099 f:
																							Let Ti1148.4096
																								Li 0
																								Ans
																									IfEq Tb1147.4095 Ti1148.4096
																										Ans
																											Nop
																										Let Ti1150.4097
																											Add iand_ofs.2794 1
																											Ans
																												CallCls solve_each_element_fast.2793 (solve_each_element_fast.2793) d:Ti1150.4097 and_group.2795 dirvec.2796 f:
																				Let t0p.4054
																					Lfd solver_dist.2451 0
																					Let Td1152.4093
																						FLi l.6035
																						Let Tb1153.4058
																							CallCls fless.2487 d:f:Td1152.4093 t0p.4054 
																							Let Ti1154.4059
																								Li 0
																								Let Tu117.4055
																									IfEq Tb1153.4058 Ti1154.4059
																										Ans
																											Nop
																										Let Td1156.4091
																											Lfd tmin.2453 0
																											Let Tb1157.4060
																												CallCls fless.2487 d:f:t0p.4054 Td1156.4091 
																												Let Ti1158.4061
																													Li 0
																													Ans
																														IfEq Tb1157.4060 Ti1158.4061
																															Ans
																																Nop
																															Let Td1159.4090
																																FLi l.6353
																																Let t.4062
																																	FAdd t0p.4054 Td1159.4090
																																	Let Td1161.4088
																																		Lfd vec.4049 0
																																		Let Td1162.4085
																																			FMul Td1161.4088 t.4062
																																			Let Td1164.4086
																																				Lfd startp_fast.2464 0
																																				Let q0.4063
																																					FAdd Td1162.4085 Td1164.4086
																																					Let Td1166.4083
																																						Lfd vec.4049 4
																																						Let Td1167.4080
																																							FMul Td1166.4083 t.4062
																																							Let Td1169.4081
																																								Lfd startp_fast.2464 4
																																								Let q1.4064
																																									FAdd Td1167.4080 Td1169.4081
																																									Let Td1171.4078
																																										Lfd vec.4049 8
																																										Let Td1172.4075
																																											FMul Td1171.4078 t.4062
																																											Let Td1174.4076
																																												Lfd startp_fast.2464 8
																																												Let q2.4065
																																													FAdd Td1172.4075 Td1174.4076
																																													Let Ti1175.4074
																																														Li 0
																																														Let Tb1176.4066
																																															CallCls check_all_inside.2764 (check_all_inside.2764) d:Ti1175.4074 and_group.2795 f:q0.4063 q1.4064 q2.4065 
																																															Let Ti1177.4067
																																																Li 0
																																																Ans
																																																	IfEq Tb1176.4066 Ti1177.4067
																																																		Ans
																																																			Nop
																																																		Let Tu116.4068
																																																			Stfd t.4062 tmin.2453 0
																																																			Let Tu115.4069
																																																				CallCls vecset.2501 d:intersection_point.2454 f:q0.4063 q1.4064 q2.4065 
																																																				Let Tu114.4070
																																																					Stw iobj.4050 intersected_object_id.2455 0
																																																					Ans
																																																						Stw t0.4052 intsec_rectside.2452 0
																									Let Ti1182.4056
																										Add iand_ofs.2794 1
																										Ans
																											CallCls solve_each_element_fast.2793 (solve_each_element_fast.2793) d:Ti1182.4056 and_group.2795 dirvec.2796 f:
solve_one_or_network_fast.2797 (args) : ofs.2798 or_group.2799 dirvec.2800 (fargs) : 
	Let solve_each_element_fast.2793
		Lwz $a26 8
		Let and_net.2449
			Lwz $a26 4
			Let o.6404
				Slw ofs.2798 2
				Let head.4041
					Lwz or_group.2799 o.6404
					Let Ti1139.4042
						Li -1
						Ans
							IfEq head.4041 Ti1139.4042
								Ans
									Nop
								Let o.6405
									Slw head.4041 2
									Let and_group.4043
										Lwz and_net.2449 o.6405
										Let Ti1140.4047
											Li 0
											Let Tu118.4044
												CallCls solve_each_element_fast.2793 (solve_each_element_fast.2793) d:Ti1140.4047 and_group.4043 dirvec.2800 f:
												Let Ti1142.4045
													Add ofs.2798 1
													Ans
														CallCls solve_one_or_network_fast.2797 (solve_one_or_network_fast.2797) d:Ti1142.4045 or_group.2799 dirvec.2800 f:
trace_or_matrix_fast.2801 (args) : ofs.2802 or_network.2803 dirvec.2804 (fargs) : 
	Let tmin.2453
		Lwz $a26 16
		Let solver_fast2.2722
			Lwz $a26 12
			Let solver_dist.2451
				Lwz $a26 8
				Let solve_one_or_network_fast.2797
					Lwz $a26 4
					Let o.6406
						Slw ofs.2802 2
						Let head.4022
							Lwz or_network.2803 o.6406
							Let range_primitive.4023
								Lwz head.4022 0
								Let Ti1126.4024
									Li -1
									Ans
										IfEq range_primitive.4023 Ti1126.4024
											Ans
												Nop
											Let Ti1127.4028
												Li 99
												Let Tu119.4025
													IfEq range_primitive.4023 Ti1127.4028
														Let Ti1128.4038
															Li 1
															Ans
																CallCls solve_one_or_network_fast.2797 (solve_one_or_network_fast.2797) d:Ti1128.4038 head.4022 dirvec.2804 f:
														Let t.4029
															CallCls solver_fast2.2722 (solver_fast2.2722) d:range_primitive.4023 dirvec.2804 f:
															Let Ti1129.4030
																Li 0
																Ans
																	IfEq t.4029 Ti1129.4030
																		Ans
																			Nop
																		Let tp.4031
																			Lfd solver_dist.2451 0
																			Let Td1132.4035
																				Lfd tmin.2453 0
																				Let Tb1133.4032
																					CallCls fless.2487 d:f:tp.4031 Td1132.4035 
																					Let Ti1134.4033
																						Li 0
																						Ans
																							IfEq Tb1133.4032 Ti1134.4033
																								Ans
																									Nop
																								Let Ti1135.4034
																									Li 1
																									Ans
																										CallCls solve_one_or_network_fast.2797 (solve_one_or_network_fast.2797) d:Ti1135.4034 head.4022 dirvec.2804 f:
													Let Ti1137.4026
														Add ofs.2802 1
														Ans
															CallCls trace_or_matrix_fast.2801 (trace_or_matrix_fast.2801) d:Ti1137.4026 or_network.2803 dirvec.2804 f:
judge_intersection_fast.2805 (args) : dirvec.2806 (fargs) : 
	Let trace_or_matrix_fast.2801
		Lwz $a26 12
		Let tmin.2453
			Lwz $a26 8
			Let or_net.2450
				Lwz $a26 4
				Let Td1115.4021
					FLi l.6386
					Let Tu121.4009
						Stfd Td1115.4021 tmin.2453 0
						Let Ti1116.4017
							Li 0
							Let Ta1118.4018
								Lwz or_net.2450 0
								Let Tu120.4010
									CallCls trace_or_matrix_fast.2801 (trace_or_matrix_fast.2801) d:Ti1116.4017 Ta1118.4018 dirvec.2806 f:
									Let t.4011
										Lfd tmin.2453 0
										Let Td1120.4015
											FLi l.6366
											Let Tb1121.4012
												CallCls fless.2487 d:f:Td1120.4015 t.4011 
												Let Ti1122.4013
													Li 0
													Ans
														IfEq Tb1121.4012 Ti1122.4013
															Ans
																Li 0
															Let Td1123.4014
																FLi l.6390
																Ans
																	CallCls fless.2487 d:f:t.4011 Td1123.4014 
get_nvector_rect.2807 (args) : dirvec.2808 (fargs) : 
	Let nvector.2456
		Lwz $a26 8
		Let intsec_rectside.2452
			Lwz $a26 4
			Let rectside.3999
				Lwz intsec_rectside.2452 0
				Let Tu122.4000
					CallCls vecbzero.2509 d:nvector.2456 f:
					Let Ti1108.4001
						Sub rectside.3999 1
						Let Ti1110.4005
							Sub rectside.3999 1
							Let o.6414
								Slw Ti1110.4005 2
								Let Td1111.4004
									Lfd dirvec.2808 o.6414
									Let Td1112.4003
										CallCls sgn.2493 d:f:Td1111.4004 
										Let Td1113.4002
											CallCls fneg.2473 d:f:Td1112.4003 
											Let o.6415
												Slw Ti1108.4001 2
												Ans
													Stfd Td1113.4002 nvector.2456 o.6415
get_nvector_plane.2809 (args) : m.2810 (fargs) : 
	Let nvector.2456
		Lwz $a26 4
		Let Td1098.3998
			CallCls o_param_a.2557 d:m.2810 f:
			Let Td1099.3997
				CallCls fneg.2473 d:f:Td1098.3998 
				Let Tu124.3988
					Stfd Td1099.3997 nvector.2456 0
					Let Td1101.3995
						CallCls o_param_b.2559 d:m.2810 f:
						Let Td1102.3994
							CallCls fneg.2473 d:f:Td1101.3995 
							Let Tu123.3989
								Stfd Td1102.3994 nvector.2456 4
								Let Td1104.3992
									CallCls o_param_c.2561 d:m.2810 f:
									Let Td1105.3991
										CallCls fneg.2473 d:f:Td1104.3992 
										Ans
											Stfd Td1105.3991 nvector.2456 8
get_nvector_second.2811 (args) : m.2812 (fargs) : 
	Let nvector.2456
		Lwz $a26 8
		Let intersection_point.2454
			Lwz $a26 4
			Let Td1056.3985
				Lfd intersection_point.2454 0
				Let Td1057.3986
					CallCls o_param_x.2565 d:m.2812 f:
					Let p0.3935
						FSub Td1056.3985 Td1057.3986
						Let Td1059.3982
							Lfd intersection_point.2454 4
							Let Td1060.3983
								CallCls o_param_y.2567 d:m.2812 f:
								Let p1.3936
									FSub Td1059.3982 Td1060.3983
									Let Td1062.3979
										Lfd intersection_point.2454 8
										Let Td1063.3980
											CallCls o_param_z.2569 d:m.2812 f:
											Let p2.3937
												FSub Td1062.3979 Td1063.3980
												Let Td1064.3978
													CallCls o_param_a.2557 d:m.2812 f:
													Let d0.3938
														FMul p0.3935 Td1064.3978
														Let Td1065.3977
															CallCls o_param_b.2559 d:m.2812 f:
															Let d1.3939
																FMul p1.3936 Td1065.3977
																Let Td1066.3976
																	CallCls o_param_c.2561 d:m.2812 f:
																	Let d2.3940
																		FMul p2.3937 Td1066.3976
																		Let Ti1067.3943
																			CallCls o_isrot.2555 d:m.2812 f:
																			Let Ti1068.3944
																				Li 0
																				Let Tu129.3941
																					IfEq Ti1067.3943 Ti1068.3944
																						Let Tu126.3971
																							Stfd d0.3938 nvector.2456 0
																							Let Tu125.3972
																								Stfd d1.3939 nvector.2456 4
																								Ans
																									Stfd d2.3940 nvector.2456 8
																						Let Td1073.3970
																							CallCls o_param_r3.2585 d:m.2812 f:
																							Let Td1074.3967
																								FMul p1.3936 Td1073.3970
																								Let Td1075.3969
																									CallCls o_param_r2.2583 d:m.2812 f:
																									Let Td1076.3968
																										FMul p2.3937 Td1075.3969
																										Let Td1077.3966
																											FAdd Td1074.3967 Td1076.3968
																											Let Td1078.3965
																												CallCls fhalf.2481 d:f:Td1077.3966 
																												Let Td1079.3964
																													FAdd d0.3938 Td1078.3965
																													Let Tu128.3945
																														Stfd Td1079.3964 nvector.2456 0
																														Let Td1081.3962
																															CallCls o_param_r3.2585 d:m.2812 f:
																															Let Td1082.3959
																																FMul p0.3935 Td1081.3962
																																Let Td1083.3961
																																	CallCls o_param_r1.2581 d:m.2812 f:
																																	Let Td1084.3960
																																		FMul p2.3937 Td1083.3961
																																		Let Td1085.3958
																																			FAdd Td1082.3959 Td1084.3960
																																			Let Td1086.3957
																																				CallCls fhalf.2481 d:f:Td1085.3958 
																																				Let Td1087.3956
																																					FAdd d1.3939 Td1086.3957
																																					Let Tu127.3946
																																						Stfd Td1087.3956 nvector.2456 4
																																						Let Td1089.3954
																																							CallCls o_param_r2.2583 d:m.2812 f:
																																							Let Td1090.3951
																																								FMul p0.3935 Td1089.3954
																																								Let Td1091.3953
																																									CallCls o_param_r1.2581 d:m.2812 f:
																																									Let Td1092.3952
																																										FMul p1.3936 Td1091.3953
																																										Let Td1093.3950
																																											FAdd Td1090.3951 Td1092.3952
																																											Let Td1094.3949
																																												CallCls fhalf.2481 d:f:Td1093.3950 
																																												Let Td1095.3948
																																													FAdd d2.3940 Td1094.3949
																																													Ans
																																														Stfd Td1095.3948 nvector.2456 8
																					Let Tb1096.3942
																						CallCls o_isinvert.2553 d:m.2812 f:
																						Ans
																							CallCls vecunit_sgn.2519 d:nvector.2456 Tb1096.3942 f:
get_nvector.2813 (args) : m.2814 dirvec.2815 (fargs) : 
	Let get_nvector_second.2811
		Lwz $a26 12
		Let get_nvector_rect.2807
			Lwz $a26 8
			Let get_nvector_plane.2809
				Lwz $a26 4
				Let m_shape.3932
					CallCls o_form.2549 d:m.2814 f:
					Let Ti1053.3933
						Li 1
						Ans
							IfEq m_shape.3932 Ti1053.3933
								Ans
									CallCls get_nvector_rect.2807 (get_nvector_rect.2807) d:dirvec.2815 f:
								Let Ti1054.3934
									Li 2
									Ans
										IfEq m_shape.3932 Ti1054.3934
											Ans
												CallCls get_nvector_plane.2809 (get_nvector_plane.2809) d:m.2814 f:
											Ans
												CallCls get_nvector_second.2811 (get_nvector_second.2811) d:m.2814 f:
utexture.2816 (args) : m.2817 p.2818 (fargs) : 
	Let texture_color.2457
		Lwz $a26 4
		Let m_tex.3772
			CallCls o_texturetype.2547 d:m.2817 f:
			Let Td924.3931
				CallCls o_color_red.2575 d:m.2817 f:
				Let Tu134.3773
					Stfd Td924.3931 texture_color.2457 0
					Let Td926.3929
						CallCls o_color_green.2577 d:m.2817 f:
						Let Tu133.3774
							Stfd Td926.3929 texture_color.2457 4
							Let Td928.3927
								CallCls o_color_blue.2579 d:m.2817 f:
								Let Tu132.3775
									Stfd Td928.3927 texture_color.2457 8
									Let Ti929.3776
										Li 1
										Ans
											IfEq m_tex.3772 Ti929.3776
												Let Td931.3923
													Lfd p.2818 0
													Let Td932.3924
														CallCls o_param_x.2565 d:m.2817 f:
														Let w1.3897
															FSub Td931.3923 Td932.3924
															Let Td933.3922
																FLi l.6452
																Let Td934.3921
																	FMul w1.3897 Td933.3922
																	Let Td935.3919
																		CallCls min_caml_floor d:f:Td934.3921 
																		Let Td936.3920
																			FLi l.6453
																			Let d1.3916
																				FMul Td935.3919 Td936.3920
																				Let Td937.3917
																					FSub w1.3897 d1.3916
																					Let Td938.3918
																						FLi l.6444
																						Let flag1.3898
																							CallCls fless.2487 d:f:Td937.3917 Td938.3918 
																							Let Td940.3913
																								Lfd p.2818 8
																								Let Td941.3914
																									CallCls o_param_z.2569 d:m.2817 f:
																									Let w3.3899
																										FSub Td940.3913 Td941.3914
																										Let Td942.3912
																											FLi l.6452
																											Let Td943.3911
																												FMul w3.3899 Td942.3912
																												Let Td944.3909
																													CallCls min_caml_floor d:f:Td943.3911 
																													Let Td945.3910
																														FLi l.6453
																														Let d2.3906
																															FMul Td944.3909 Td945.3910
																															Let Td946.3907
																																FSub w3.3899 d2.3906
																																Let Td947.3908
																																	FLi l.6444
																																	Let flag2.3900
																																		CallCls fless.2487 d:f:Td946.3907 Td947.3908 
																																		Let Ti949.3903
																																			Li 0
																																			Let Td952.3902
																																				IfEq flag1.3898 Ti949.3903
																																					Let Ti950.3905
																																						Li 0
																																						Ans
																																							IfEq flag2.3900 Ti950.3905
																																								Ans
																																									FLi l.6439
																																								Ans
																																									FLi l.6035
																																					Let Ti951.3904
																																						Li 0
																																						Ans
																																							IfEq flag2.3900 Ti951.3904
																																								Ans
																																									FLi l.6035
																																								Ans
																																									FLi l.6439
																																				Ans
																																					Stfd Td952.3902 texture_color.2457 4
												Let Ti953.3777
													Li 2
													Ans
														IfEq m_tex.3772 Ti953.3777
															Let Td955.3894
																Lfd p.2818 4
																Let Td956.3895
																	FLi l.6448
																	Let Td957.3893
																		FMul Td955.3894 Td956.3895
																		Let Td958.3892
																			CallCls min_caml_sin d:f:Td957.3893 
																			Let w2.3882
																				CallCls fsqr.2483 d:f:Td958.3892 
																				Let Td960.3891
																					FLi l.6439
																					Let Td961.3890
																						FMul Td960.3891 w2.3882
																						Let Tu130.3883
																							Stfd Td961.3890 texture_color.2457 0
																							Let Td963.3886
																								FLi l.6439
																								Let Td964.3888
																									FLi l.6037
																									Let Td965.3887
																										FSub Td964.3888 w2.3882
																										Let Td966.3885
																											FMul Td963.3886 Td965.3887
																											Ans
																												Stfd Td966.3885 texture_color.2457 4
															Let Ti967.3778
																Li 3
																Ans
																	IfEq m_tex.3772 Ti967.3778
																		Let Td969.3879
																			Lfd p.2818 0
																			Let Td970.3880
																				CallCls o_param_x.2565 d:m.2817 f:
																				Let w1.3852
																					FSub Td969.3879 Td970.3880
																					Let Td972.3876
																						Lfd p.2818 8
																						Let Td973.3877
																							CallCls o_param_z.2569 d:m.2817 f:
																							Let w3.3853
																								FSub Td972.3876 Td973.3877
																								Let Td974.3874
																									CallCls fsqr.2483 d:f:w1.3852 
																									Let Td975.3875
																										CallCls fsqr.2483 d:f:w3.3853 
																										Let Td976.3873
																											FAdd Td974.3874 Td975.3875
																											Let Td977.3870
																												CallCls min_caml_sqrt d:f:Td976.3873 
																												Let Td978.3871
																													FLi l.6444
																													Let Td979.3872
																														FReciprocal Td978.3871
																														Let w2.3854
																															FMul Td977.3870 Td979.3872
																															Let Td980.3869
																																CallCls min_caml_floor d:f:w2.3854 
																																Let Td981.3867
																																	FSub w2.3854 Td980.3869
																																	Let Td982.3868
																																		FLi l.6436
																																		Let w4.3855
																																			FMul Td981.3867 Td982.3868
																																			Let Td983.3866
																																				CallCls min_caml_cos d:f:w4.3855 
																																				Let cws.3856
																																					CallCls fsqr.2483 d:f:Td983.3866 
																																					Let Td985.3865
																																						FLi l.6439
																																						Let Td986.3864
																																							FMul cws.3856 Td985.3865
																																							Let Tu131.3857
																																								Stfd Td986.3864 texture_color.2457 4
																																								Let Td988.3862
																																									FLi l.6037
																																									Let Td989.3860
																																										FSub Td988.3862 cws.3856
																																										Let Td990.3861
																																											FLi l.6439
																																											Let Td991.3859
																																												FMul Td989.3860 Td990.3861
																																												Ans
																																													Stfd Td991.3859 texture_color.2457 8
																		Let Ti992.3779
																			Li 4
																			Ans
																				IfEq m_tex.3772 Ti992.3779
																					Let Td994.3849
																						Lfd p.2818 0
																						Let Td995.3850
																							CallCls o_param_x.2565 d:m.2817 f:
																							Let Td996.3846
																								FSub Td994.3849 Td995.3850
																								Let Td997.3848
																									CallCls o_param_a.2557 d:m.2817 f:
																									Let Td998.3847
																										CallCls min_caml_sqrt d:f:Td997.3848 
																										Let w1.3780
																											FMul Td996.3846 Td998.3847
																											Let Td1000.3843
																												Lfd p.2818 8
																												Let Td1001.3844
																													CallCls o_param_z.2569 d:m.2817 f:
																													Let Td1002.3840
																														FSub Td1000.3843 Td1001.3844
																														Let Td1003.3842
																															CallCls o_param_c.2561 d:m.2817 f:
																															Let Td1004.3841
																																CallCls min_caml_sqrt d:f:Td1003.3842 
																																Let w3.3781
																																	FMul Td1002.3840 Td1004.3841
																																	Let Td1005.3838
																																		CallCls fsqr.2483 d:f:w1.3780 
																																		Let Td1006.3839
																																			CallCls fsqr.2483 d:f:w3.3781 
																																			Let w4.3782
																																				FAdd Td1005.3838 Td1006.3839
																																				Let Td1007.3836
																																					CallCls fabs.2485 d:f:w1.3780 
																																					Let Td1008.3837
																																						FLi l.6433
																																						Let Tb1009.3826
																																							CallCls fless.2487 d:f:Td1007.3836 Td1008.3837 
																																							Let Ti1010.3827
																																								Li 0
																																								Let w7.3783
																																									IfEq Tb1009.3826 Ti1010.3827
																																										Let Td1011.3835
																																											FReciprocal w1.3780
																																											Let Td1012.3834
																																												FMul w3.3781 Td1011.3835
																																												Let w5.3828
																																													CallCls fabs.2485 d:f:Td1012.3834 
																																													Let Td1013.3832
																																														CallCls min_caml_atan d:f:w5.3828 
																																														Let Td1014.3833
																																															FLi l.6435
																																															Let Td1015.3829
																																																FMul Td1013.3832 Td1014.3833
																																																Let Td1016.3830
																																																	FLi l.6436
																																																	Let Td1017.3831
																																																		FReciprocal Td1016.3830
																																																		Ans
																																																			FMul Td1015.3829 Td1017.3831
																																										Ans
																																											FLi l.6434
																																									Let Td1018.3825
																																										CallCls min_caml_floor d:f:w7.3783 
																																										Let w9.3784
																																											FSub w7.3783 Td1018.3825
																																											Let Td1020.3822
																																												Lfd p.2818 4
																																												Let Td1021.3823
																																													CallCls o_param_y.2567 d:m.2817 f:
																																													Let Td1022.3819
																																														FSub Td1020.3822 Td1021.3823
																																														Let Td1023.3821
																																															CallCls o_param_b.2559 d:m.2817 f:
																																															Let Td1024.3820
																																																CallCls min_caml_sqrt d:f:Td1023.3821 
																																																Let w2.3785
																																																	FMul Td1022.3819 Td1024.3820
																																																	Let Td1025.3817
																																																		CallCls fabs.2485 d:f:w4.3782 
																																																		Let Td1026.3818
																																																			FLi l.6433
																																																			Let Tb1027.3807
																																																				CallCls fless.2487 d:f:Td1025.3817 Td1026.3818 
																																																				Let Ti1028.3808
																																																					Li 0
																																																					Let w8.3786
																																																						IfEq Tb1027.3807 Ti1028.3808
																																																							Let Td1029.3816
																																																								FReciprocal w4.3782
																																																								Let Td1030.3815
																																																									FMul w2.3785 Td1029.3816
																																																									Let w6.3809
																																																										CallCls fabs.2485 d:f:Td1030.3815 
																																																										Let Td1031.3813
																																																											CallCls min_caml_atan d:f:w6.3809 
																																																											Let Td1032.3814
																																																												FLi l.6435
																																																												Let Td1033.3810
																																																													FMul Td1031.3813 Td1032.3814
																																																													Let Td1034.3811
																																																														FLi l.6436
																																																														Let Td1035.3812
																																																															FReciprocal Td1034.3811
																																																															Ans
																																																																FMul Td1033.3810 Td1035.3812
																																																							Ans
																																																								FLi l.6434
																																																						Let Td1036.3806
																																																							CallCls min_caml_floor d:f:w8.3786 
																																																							Let w10.3787
																																																								FSub w8.3786 Td1036.3806
																																																								Let Td1037.3802
																																																									FLi l.6438
																																																									Let Td1038.3805
																																																										FLi l.6036
																																																										Let Td1039.3804
																																																											FSub Td1038.3805 w9.3784
																																																											Let Td1040.3803
																																																												CallCls fsqr.2483 d:f:Td1039.3804 
																																																												Let Td1041.3798
																																																													FSub Td1037.3802 Td1040.3803
																																																													Let Td1042.3801
																																																														FLi l.6036
																																																														Let Td1043.3800
																																																															FSub Td1042.3801 w10.3787
																																																															Let Td1044.3799
																																																																CallCls fsqr.2483 d:f:Td1043.3800 
																																																																Let w11.3788
																																																																	FSub Td1041.3798 Td1044.3799
																																																																	Let Tb1045.3796
																																																																		CallCls fisneg.2477 d:f:w11.3788 
																																																																		Let Ti1046.3797
																																																																			Li 0
																																																																			Let w12.3789
																																																																				IfEq Tb1045.3796 Ti1046.3797
																																																																					Ans
																																																																						FMr w11.3788
																																																																					Ans
																																																																						FLi l.6035
																																																																				Let Td1048.3795
																																																																					FLi l.6439
																																																																					Let Td1049.3792
																																																																						FMul Td1048.3795 w12.3789
																																																																						Let Td1050.3793
																																																																							FLi l.6440
																																																																							Let Td1051.3794
																																																																								FReciprocal Td1050.3793
																																																																								Let Td1052.3791
																																																																									FMul Td1049.3792 Td1051.3794
																																																																									Ans
																																																																										Stfd Td1052.3791 texture_color.2457 8
																					Ans
																						Nop
add_light.2819 (args) : (fargs) : bright.2820 hilight.2821 hilight_scale.2822 
	Let texture_color.2457
		Lwz $a26 8
		Let rgb.2459
			Lwz $a26 4
			Let Tb905.3770
				CallCls fispos.2475 d:f:bright.2820 
				Let Ti906.3771
					Li 0
					Let Tu137.3750
						IfEq Tb905.3770 Ti906.3771
							Ans
								Nop
							Ans
								CallCls vecaccum.2530 d:rgb.2459 texture_color.2457 f:bright.2820 
						Let Tb907.3751
							CallCls fispos.2475 d:f:hilight.2821 
							Let Ti908.3752
								Li 0
								Ans
									IfEq Tb907.3751 Ti908.3752
										Ans
											Nop
										Let Td909.3769
											CallCls fsqr.2483 d:f:hilight.2821 
											Let Td910.3768
												CallCls fsqr.2483 d:f:Td909.3769 
												Let ihl.3753
													FMul Td910.3768 hilight_scale.2822
													Let Td913.3766
														Lfd rgb.2459 0
														Let Td914.3765
															FAdd Td913.3766 ihl.3753
															Let Tu136.3754
																Stfd Td914.3765 rgb.2459 0
																Let Td917.3762
																	Lfd rgb.2459 4
																	Let Td918.3761
																		FAdd Td917.3762 ihl.3753
																		Let Tu135.3755
																			Stfd Td918.3761 rgb.2459 4
																			Let Td921.3758
																				Lfd rgb.2459 8
																				Let Td922.3757
																					FAdd Td921.3758 ihl.3753
																					Ans
																						Stfd Td922.3757 rgb.2459 8
trace_reflections.2823 (args) : index.2824 dirvec.2827 (fargs) : diffuse.2825 hilight_scale.2826 
	Let shadow_check_one_or_matrix.2776
		Lwz $a26 32
		Let reflections.2471
			Lwz $a26 28
			Let or_net.2450
				Lwz $a26 24
				Let nvector.2456
					Lwz $a26 20
					Let judge_intersection_fast.2805
						Lwz $a26 16
						Let intsec_rectside.2452
							Lwz $a26 12
							Let intersected_object_id.2455
								Lwz $a26 8
								Let add_light.2819
									Lwz $a26 4
									Let Ti885.3722
										Li 0
										Ans
											IfLE Ti885.3722 index.2824
												Let o.6462
													Slw index.2824 2
													Let rinfo.3723
														Lwz reflections.2471 o.6462
														Let dvec.3724
															CallCls r_dvec.2614 d:rinfo.3723 f:
															Let Tb886.3728
																CallCls judge_intersection_fast.2805 (judge_intersection_fast.2805) d:dvec.3724 f:
																Let Ti887.3729
																	Li 0
																	Let Tu138.3725
																		IfEq Tb886.3728 Ti887.3729
																			Ans
																				Nop
																			Let Ti889.3748
																				Lwz intersected_object_id.2455 0
																				Let Ti890.3745
																					ShiftL2 Ti889.3748
																					Let Ti892.3746
																						Lwz intsec_rectside.2452 0
																						Let surface_id.3730
																							Add Ti890.3745 Ti892.3746
																							Let Ti893.3731
																								CallCls r_surface_id.2612 d:rinfo.3723 f:
																								Ans
																									IfEq surface_id.3730 Ti893.3731
																										Let Ti894.3742
																											Li 0
																											Let Ta896.3743
																												Lwz or_net.2450 0
																												Let Tb897.3732
																													CallCls shadow_check_one_or_matrix.2776 (shadow_check_one_or_matrix.2776) d:Ti894.3742 Ta896.3743 f:
																													Let Ti898.3733
																														Li 0
																														Ans
																															IfEq Tb897.3732 Ti898.3733
																																Let Ta899.3741
																																	CallCls d_vec.2608 d:dvec.3724 f:
																																	Let p.3734
																																		CallCls veciprod.2522 d:nvector.2456 Ta899.3741 f:
																																		Let scale.3735
																																			CallCls r_bright.2616 d:rinfo.3723 f:
																																			Let Td900.3740
																																				FMul scale.3735 diffuse.2825
																																				Let bright.3736
																																					FMul Td900.3740 p.3734
																																					Let Ta901.3739
																																						CallCls d_vec.2608 d:dvec.3724 f:
																																						Let Td902.3738
																																							CallCls veciprod.2522 d:dirvec.2827 Ta901.3739 f:
																																							Let hilight.3737
																																								FMul scale.3735 Td902.3738
																																								Ans
																																									CallCls add_light.2819 (add_light.2819) d:f:bright.3736 hilight.3737 hilight_scale.2826 
																																Ans
																																	Nop
																										Ans
																											Nop
																		Let Ti904.3726
																			Sub index.2824 1
																			Ans
																				CallCls trace_reflections.2823 (trace_reflections.2823) d:Ti904.3726 dirvec.2827 f:diffuse.2825 hilight_scale.2826 
												Ans
													Nop
trace_ray.2828 (args) : nref.2829 dirvec.2831 pixel.2832 (fargs) : energy.2830 dist.2833 
	Let utexture.2816
		Lwz $a26 80
		Let trace_reflections.2823
			Lwz $a26 76
			Let tmin.2453
				Lwz $a26 72
				Let texture_color.2457
					Lwz $a26 68
					Let startp.2463
						Lwz $a26 64
						Let shadow_check_one_or_matrix.2776
							Lwz $a26 60
							Let setup_startp.2742
								Lwz $a26 56
								Let rgb.2459
									Lwz $a26 52
									Let or_net.2450
										Lwz $a26 48
										Let objects.2444
											Lwz $a26 44
											Let nvector.2456
												Lwz $a26 40
												Let n_reflections.2472
													Lwz $a26 36
													Let light.2447
														Lwz $a26 32
														Let judge_intersection.2791
															Lwz $a26 28
															Let intsec_rectside.2452
																Lwz $a26 24
																Let intersection_point.2454
																	Lwz $a26 20
																	Let intersected_object_id.2455
																		Lwz $a26 16
																		Let get_nvector.2813
																			Lwz $a26 12
																			Let beam.2448
																				Lwz $a26 8
																				Let add_light.2819
																					Lwz $a26 4
																					Let Ti806.3610
																						Li 4
																						Ans
																							IfLE nref.2829 Ti806.3610
																								Let surface_ids.3611
																									CallCls p_surface_ids.2593 d:pixel.2832 f:
																									Let Tb807.3612
																										CallCls judge_intersection.2791 (judge_intersection.2791) d:dirvec.2831 f:
																										Let Ti808.3613
																											Li 0
																											Ans
																												IfEq Tb807.3612 Ti808.3613
																													Let Ti810.3720
																														Li -1
																														Let o.6483
																															Slw nref.2829 2
																															Let Tu155.3694
																																Stw Ti810.3720 surface_ids.3611 o.6483
																																Let Ti811.3695
																																	Li 0
																																	Ans
																																		IfEq nref.2829 Ti811.3695
																																			Ans
																																				Nop
																																			Let Td812.3719
																																				CallCls veciprod.2522 d:dirvec.2831 light.2447 f:
																																				Let hl.3696
																																					CallCls fneg.2473 d:f:Td812.3719 
																																					Let Tb813.3697
																																						CallCls fispos.2475 d:f:hl.3696 
																																						Let Ti814.3698
																																							Li 0
																																							Ans
																																								IfEq Tb813.3697 Ti814.3698
																																									Ans
																																										Nop
																																									Let Td815.3718
																																										CallCls fsqr.2483 d:f:hl.3696 
																																										Let Td816.3717
																																											FMul Td815.3718 hl.3696
																																											Let Td817.3714
																																												FMul Td816.3717 energy.2830
																																												Let Td819.3715
																																													Lfd beam.2448 0
																																													Let ihl.3699
																																														FMul Td817.3714 Td819.3715
																																														Let Td822.3712
																																															Lfd rgb.2459 0
																																															Let Td823.3711
																																																FAdd Td822.3712 ihl.3699
																																																Let Tu154.3700
																																																	Stfd Td823.3711 rgb.2459 0
																																																	Let Td826.3708
																																																		Lfd rgb.2459 4
																																																		Let Td827.3707
																																																			FAdd Td826.3708 ihl.3699
																																																			Let Tu153.3701
																																																				Stfd Td827.3707 rgb.2459 4
																																																				Let Td830.3704
																																																					Lfd rgb.2459 8
																																																					Let Td831.3703
																																																						FAdd Td830.3704 ihl.3699
																																																						Ans
																																																							Stfd Td831.3703 rgb.2459 8
																													Let obj_id.3614
																														Lwz intersected_object_id.2455 0
																														Let o.6467
																															Slw obj_id.3614 2
																															Let obj.3615
																																Lwz objects.2444 o.6467
																																Let m_surface.3616
																																	CallCls o_reflectiontype.2551 d:obj.3615 f:
																																	Let Td833.3692
																																		CallCls o_diffuse.2571 d:obj.3615 f:
																																		Let diffuse.3617
																																			FMul Td833.3692 energy.2830
																																			Let Tu152.3618
																																				CallCls get_nvector.2813 (get_nvector.2813) d:obj.3615 dirvec.2831 f:
																																				Let Tu151.3619
																																					CallCls veccpy.2511 d:startp.2463 intersection_point.2454 f:
																																					Let Tu150.3620
																																						CallCls utexture.2816 (utexture.2816) d:obj.3615 intersection_point.2454 f:
																																						Let Ti834.3689
																																							ShiftL2 obj_id.3614
																																							Let Ti836.3690
																																								Lwz intsec_rectside.2452 0
																																								Let Ti837.3688
																																									Add Ti834.3689 Ti836.3690
																																									Let o.6469
																																										Slw nref.2829 2
																																										Let Tu149.3621
																																											Stw Ti837.3688 surface_ids.3611 o.6469
																																											Let intersection_points.3622
																																												CallCls p_intersection_points.2591 d:pixel.2832 f:
																																												Let o.6470
																																													Slw nref.2829 2
																																													Let Ta838.3687
																																														Lwz intersection_points.3622 o.6470
																																														Let Tu148.3623
																																															CallCls veccpy.2511 d:Ta838.3687 intersection_point.2454 f:
																																															Let calc_diffuse.3624
																																																CallCls p_calc_diffuse.2595 d:pixel.2832 f:
																																																Let Td839.3685
																																																	CallCls o_diffuse.2571 d:obj.3615 f:
																																																	Let Td840.3686
																																																		FLi l.6036
																																																		Let Tb841.3668
																																																			CallCls fless.2487 d:f:Td839.3685 Td840.3686 
																																																			Let Ti842.3669
																																																				Li 0
																																																				Let Tu147.3625
																																																					IfEq Tb841.3668 Ti842.3669
																																																						Let Ti843.3684
																																																							Li 1
																																																							Let o.6472
																																																								Slw nref.2829 2
																																																								Let Tu141.3671
																																																									Stw Ti843.3684 calc_diffuse.3624 o.6472
																																																									Let energya.3672
																																																										CallCls p_energy.2597 d:pixel.2832 f:
																																																										Let o.6473
																																																											Slw nref.2829 2
																																																											Let Ta844.3683
																																																												Lwz energya.3672 o.6473
																																																												Let Tu140.3673
																																																													CallCls veccpy.2511 d:Ta844.3683 texture_color.2457 f:
																																																													Let o.6474
																																																														Slw nref.2829 2
																																																														Let Ta845.3677
																																																															Lwz energya.3672 o.6474
																																																															Let Td846.3680
																																																																FLi l.6037
																																																																Let Td847.3681
																																																																	FLi l.6475
																																																																	Let Td848.3682
																																																																		FReciprocal Td847.3681
																																																																		Let Td849.3679
																																																																			FMul Td846.3680 Td848.3682
																																																																			Let Td850.3678
																																																																				FMul Td849.3679 diffuse.3617
																																																																				Let Tu139.3674
																																																																					CallCls vecscale.2540 d:Ta845.3677 f:Td850.3678 
																																																																					Let nvectors.3675
																																																																						CallCls p_nvectors.2606 d:pixel.2832 f:
																																																																						Let o.6476
																																																																							Slw nref.2829 2
																																																																							Let Ta851.3676
																																																																								Lwz nvectors.3675 o.6476
																																																																								Ans
																																																																									CallCls veccpy.2511 d:Ta851.3676 nvector.2456 f:
																																																						Let Ti852.3670
																																																							Li 0
																																																							Let o.6471
																																																								Slw nref.2829 2
																																																								Ans
																																																									Stw Ti852.3670 calc_diffuse.3624 o.6471
																																																					Let Td853.3666
																																																						FLi l.6477
																																																						Let Td854.3667
																																																							CallCls veciprod.2522 d:dirvec.2831 nvector.2456 f:
																																																							Let w.3626
																																																								FMul Td853.3666 Td854.3667
																																																								Let Tu146.3627
																																																									CallCls vecaccum.2530 d:dirvec.2831 nvector.2456 f:w.3626 
																																																									Let Td855.3665
																																																										CallCls o_hilight.2573 d:obj.3615 f:
																																																										Let hilight_scale.3628
																																																											FMul energy.2830 Td855.3665
																																																											Let Ti856.3662
																																																												Li 0
																																																												Let Ta858.3663
																																																													Lwz or_net.2450 0
																																																													Let Tb859.3655
																																																														CallCls shadow_check_one_or_matrix.2776 (shadow_check_one_or_matrix.2776) d:Ti856.3662 Ta858.3663 f:
																																																														Let Ti860.3656
																																																															Li 0
																																																															Let Tu145.3629
																																																																IfEq Tb859.3655 Ti860.3656
																																																																	Let Td861.3661
																																																																		CallCls veciprod.2522 d:nvector.2456 light.2447 f:
																																																																		Let Td862.3660
																																																																			CallCls fneg.2473 d:f:Td861.3661 
																																																																			Let bright.3657
																																																																				FMul Td862.3660 diffuse.3617
																																																																				Let Td863.3659
																																																																					CallCls veciprod.2522 d:dirvec.2831 light.2447 f:
																																																																					Let hilight.3658
																																																																						CallCls fneg.2473 d:f:Td863.3659 
																																																																						Ans
																																																																							CallCls add_light.2819 (add_light.2819) d:f:bright.3657 hilight.3658 hilight_scale.3628 
																																																																	Ans
																																																																		Nop
																																																																Let Tu144.3630
																																																																	CallCls setup_startp.2742 (setup_startp.2742) d:intersection_point.2454 f:
																																																																	Let Ti865.3652
																																																																		Lwz n_reflections.2472 0
																																																																		Let Ti867.3651
																																																																			Sub Ti865.3652 1
																																																																			Let Tu143.3631
																																																																				CallCls trace_reflections.2823 (trace_reflections.2823) d:Ti867.3651 dirvec.2831 f:diffuse.3617 hilight_scale.3628 
																																																																				Let Td868.3650
																																																																					FLi l.6480
																																																																					Let Tb869.3632
																																																																						CallCls fless.2487 d:f:Td868.3650 energy.2830 
																																																																						Let Ti870.3633
																																																																							Li 0
																																																																							Ans
																																																																								IfEq Tb869.3632 Ti870.3633
																																																																									Ans
																																																																										Nop
																																																																									Let Ti871.3645
																																																																										Li 4
																																																																										Let Tu142.3634
																																																																											IfLE Ti871.3645 nref.2829
																																																																												Ans
																																																																													Nop
																																																																												Let Ti873.3646
																																																																													Add nref.2829 1
																																																																													Let Ti875.3647
																																																																														Li -1
																																																																														Let o.6481
																																																																															Slw Ti873.3646 2
																																																																															Ans
																																																																																Stw Ti875.3647 surface_ids.3611 o.6481
																																																																											Let Ti876.3635
																																																																												Li 2
																																																																												Ans
																																																																													IfEq m_surface.3616 Ti876.3635
																																																																														Let Td877.3643
																																																																															FLi l.6037
																																																																															Let Td878.3644
																																																																																CallCls o_diffuse.2571 d:obj.3615 f:
																																																																																Let Td879.3642
																																																																																	FSub Td877.3643 Td878.3644
																																																																																	Let energy2.3636
																																																																																		FMul energy.2830 Td879.3642
																																																																																		Let Ti881.3637
																																																																																			Add nref.2829 1
																																																																																			Let Td883.3639
																																																																																				Lfd tmin.2453 0
																																																																																				Let Td884.3638
																																																																																					FAdd dist.2833 Td883.3639
																																																																																					Ans
																																																																																						CallCls trace_ray.2828 (trace_ray.2828) d:Ti881.3637 dirvec.2831 pixel.2832 f:energy2.3636 Td884.3638 
																																																																														Ans
																																																																															Nop
																								Ans
																									Nop
trace_diffuse_ray.2834 (args) : dirvec.2835 (fargs) : energy.2836 
	Let utexture.2816
		Lwz $a26 48
		Let texture_color.2457
			Lwz $a26 44
			Let shadow_check_one_or_matrix.2776
				Lwz $a26 40
				Let or_net.2450
					Lwz $a26 36
					Let objects.2444
						Lwz $a26 32
						Let nvector.2456
							Lwz $a26 28
							Let light.2447
								Lwz $a26 24
								Let judge_intersection_fast.2805
									Lwz $a26 20
									Let intersection_point.2454
										Lwz $a26 16
										Let intersected_object_id.2455
											Lwz $a26 12
											Let get_nvector.2813
												Lwz $a26 8
												Let diffuse_ray.2458
													Lwz $a26 4
													Let Tb790.3589
														CallCls judge_intersection_fast.2805 (judge_intersection_fast.2805) d:dirvec.2835 f:
														Let Ti791.3590
															Li 0
															Ans
																IfEq Tb790.3589 Ti791.3590
																	Ans
																		Nop
																	Let Ti793.3608
																		Lwz intersected_object_id.2455 0
																		Let o.6492
																			Slw Ti793.3608 2
																			Let obj.3591
																				Lwz objects.2444 o.6492
																				Let Ta794.3607
																					CallCls d_vec.2608 d:dirvec.2835 f:
																					Let Tu157.3592
																						CallCls get_nvector.2813 (get_nvector.2813) d:obj.3591 Ta794.3607 f:
																						Let Tu156.3593
																							CallCls utexture.2816 (utexture.2816) d:obj.3591 intersection_point.2454 f:
																							Let Ti795.3604
																								Li 0
																								Let Ta797.3605
																									Lwz or_net.2450 0
																									Let Tb798.3594
																										CallCls shadow_check_one_or_matrix.2776 (shadow_check_one_or_matrix.2776) d:Ti795.3604 Ta797.3605 f:
																										Let Ti799.3595
																											Li 0
																											Ans
																												IfEq Tb798.3594 Ti799.3595
																													Let Td800.3603
																														CallCls veciprod.2522 d:nvector.2456 light.2447 f:
																														Let br.3596
																															CallCls fneg.2473 d:f:Td800.3603 
																															Let Tb801.3601
																																CallCls fispos.2475 d:f:br.3596 
																																Let Ti802.3602
																																	Li 0
																																	Let bright.3597
																																		IfEq Tb801.3601 Ti802.3602
																																			Ans
																																				FLi l.6035
																																			Ans
																																				FMr br.3596
																																		Let Td803.3599
																																			FMul energy.2836 bright.3597
																																			Let Td804.3600
																																				CallCls o_diffuse.2571 d:obj.3591 f:
																																				Let Td805.3598
																																					FMul Td803.3599 Td804.3600
																																					Ans
																																						CallCls vecaccum.2530 d:diffuse_ray.2458 texture_color.2457 f:Td805.3598 
																													Ans
																														Nop
iter_trace_diffuse_rays.2837 (args) : dirvec_group.2838 nvector.2839 org.2840 index.2841 (fargs) : 
	Let trace_diffuse_ray.2834
		Lwz $a26 4
		Let Ti773.3570
			Li 0
			Ans
				IfLE Ti773.3570 index.2841
					Let o.6494
						Slw index.2841 2
						Let Tt774.3588
							Lwz dirvec_group.2838 o.6494
							Let Ta775.3587
								CallCls d_vec.2608 d:Tt774.3588 f:
								Let p.3571
									CallCls veciprod.2522 d:Ta775.3587 nvector.2839 f:
									Let Tb776.3575
										CallCls fisneg.2477 d:f:p.3571 
										Let Ti777.3576
											Li 0
											Let Tu158.3572
												IfEq Tb776.3575 Ti777.3576
													Let o.6497
														Slw index.2841 2
														Let Tt778.3583
															Lwz dirvec_group.2838 o.6497
															Let Td779.3585
																FLi l.6498
																Let Td780.3586
																	FReciprocal Td779.3585
																	Let Td781.3584
																		FMul p.3571 Td780.3586
																		Ans
																			CallCls trace_diffuse_ray.2834 (trace_diffuse_ray.2834) d:Tt778.3583 f:Td781.3584 
													Let Ti783.3581
														Add index.2841 1
														Let o.6495
															Slw Ti783.3581 2
															Let Tt784.3577
																Lwz dirvec_group.2838 o.6495
																Let Td785.3579
																	FLi l.6496
																	Let Td786.3580
																		FReciprocal Td785.3579
																		Let Td787.3578
																			FMul p.3571 Td786.3580
																			Ans
																				CallCls trace_diffuse_ray.2834 (trace_diffuse_ray.2834) d:Tt784.3577 f:Td787.3578 
												Let Ti789.3573
													Sub index.2841 2
													Ans
														CallCls iter_trace_diffuse_rays.2837 (iter_trace_diffuse_rays.2837) d:dirvec_group.2838 nvector.2839 org.2840 Ti789.3573 f:
					Ans
						Nop
trace_diffuse_rays.2842 (args) : dirvec_group.2843 nvector.2844 org.2845 (fargs) : 
	Let setup_startp.2742
		Lwz $a26 8
		Let iter_trace_diffuse_rays.2837
			Lwz $a26 4
			Let Tu159.3568
				CallCls setup_startp.2742 (setup_startp.2742) d:org.2845 f:
				Let Ti772.3569
					Li 118
					Ans
						CallCls iter_trace_diffuse_rays.2837 (iter_trace_diffuse_rays.2837) d:dirvec_group.2843 nvector.2844 org.2845 Ti772.3569 f:
trace_diffuse_ray_80percent.2846 (args) : group_id.2847 nvector.2848 org.2849 (fargs) : 
	Let trace_diffuse_rays.2842
		Lwz $a26 8
		Let dirvecs.2469
			Lwz $a26 4
			Let Ti757.3565
				Li 0
				Let Tu163.3549
					IfEq group_id.2847 Ti757.3565
						Ans
							Nop
						Let Ta759.3566
							Lwz dirvecs.2469 0
							Ans
								CallCls trace_diffuse_rays.2842 (trace_diffuse_rays.2842) d:Ta759.3566 nvector.2848 org.2849 f:
					Let Ti760.3562
						Li 1
						Let Tu162.3550
							IfEq group_id.2847 Ti760.3562
								Ans
									Nop
								Let Ta762.3563
									Lwz dirvecs.2469 4
									Ans
										CallCls trace_diffuse_rays.2842 (trace_diffuse_rays.2842) d:Ta762.3563 nvector.2848 org.2849 f:
							Let Ti763.3559
								Li 2
								Let Tu161.3551
									IfEq group_id.2847 Ti763.3559
										Ans
											Nop
										Let Ta765.3560
											Lwz dirvecs.2469 8
											Ans
												CallCls trace_diffuse_rays.2842 (trace_diffuse_rays.2842) d:Ta765.3560 nvector.2848 org.2849 f:
									Let Ti766.3556
										Li 3
										Let Tu160.3552
											IfEq group_id.2847 Ti766.3556
												Ans
													Nop
												Let Ta768.3557
													Lwz dirvecs.2469 12
													Ans
														CallCls trace_diffuse_rays.2842 (trace_diffuse_rays.2842) d:Ta768.3557 nvector.2848 org.2849 f:
											Let Ti769.3553
												Li 4
												Ans
													IfEq group_id.2847 Ti769.3553
														Ans
															Nop
														Let Ta771.3554
															Lwz dirvecs.2469 16
															Ans
																CallCls trace_diffuse_rays.2842 (trace_diffuse_rays.2842) d:Ta771.3554 nvector.2848 org.2849 f:
calc_diffuse_using_1point.2850 (args) : pixel.2851 nref.2852 (fargs) : 
	Let trace_diffuse_ray_80percent.2846
		Lwz $a26 12
		Let rgb.2459
			Lwz $a26 8
			Let diffuse_ray.2458
				Lwz $a26 4
				Let ray20p.3538
					CallCls p_received_ray_20percent.2599 d:pixel.2851 f:
					Let nvectors.3539
						CallCls p_nvectors.2606 d:pixel.2851 f:
						Let intersection_points.3540
							CallCls p_intersection_points.2591 d:pixel.2851 f:
							Let energya.3541
								CallCls p_energy.2597 d:pixel.2851 f:
								Let o.6504
									Slw nref.2852 2
									Let Ta752.3548
										Lwz ray20p.3538 o.6504
										Let Tu165.3542
											CallCls veccpy.2511 d:diffuse_ray.2458 Ta752.3548 f:
											Let Ti753.3545
												CallCls p_group_id.2601 d:pixel.2851 f:
												Let o.6505
													Slw nref.2852 2
													Let Ta754.3546
														Lwz nvectors.3539 o.6505
														Let o.6506
															Slw nref.2852 2
															Let Ta755.3547
																Lwz intersection_points.3540 o.6506
																Let Tu164.3543
																	CallCls trace_diffuse_ray_80percent.2846 (trace_diffuse_ray_80percent.2846) d:Ti753.3545 Ta754.3546 Ta755.3547 f:
																	Let o.6507
																		Slw nref.2852 2
																		Let Ta756.3544
																			Lwz energya.3541 o.6507
																			Ans
																				CallCls vecaccumv.2543 d:rgb.2459 Ta756.3544 diffuse_ray.2458 f:
calc_diffuse_using_5points.2853 (args) : x.2854 prev.2855 cur.2856 next.2857 nref.2858 (fargs) : 
	Let rgb.2459
		Lwz $a26 8
		Let diffuse_ray.2458
			Lwz $a26 4
			Let o.6508
				Slw x.2854 2
				Let Tt736.3537
					Lwz prev.2855 o.6508
					Let r_up.3511
						CallCls p_received_ray_20percent.2599 d:Tt736.3537 f:
						Let Ti738.3535
							Sub x.2854 1
							Let o.6509
								Slw Ti738.3535 2
								Let Tt739.3534
									Lwz cur.2856 o.6509
									Let r_left.3512
										CallCls p_received_ray_20percent.2599 d:Tt739.3534 f:
										Let o.6510
											Slw x.2854 2
											Let Tt740.3533
												Lwz cur.2856 o.6510
												Let r_center.3513
													CallCls p_received_ray_20percent.2599 d:Tt740.3533 f:
													Let Ti742.3531
														Add x.2854 1
														Let o.6511
															Slw Ti742.3531 2
															Let Tt743.3530
																Lwz cur.2856 o.6511
																Let r_right.3514
																	CallCls p_received_ray_20percent.2599 d:Tt743.3530 f:
																	Let o.6512
																		Slw x.2854 2
																		Let Tt744.3529
																			Lwz next.2857 o.6512
																			Let r_down.3515
																				CallCls p_received_ray_20percent.2599 d:Tt744.3529 f:
																				Let o.6513
																					Slw nref.2858 2
																					Let Ta745.3528
																						Lwz r_up.3511 o.6513
																						Let Tu170.3516
																							CallCls veccpy.2511 d:diffuse_ray.2458 Ta745.3528 f:
																							Let o.6514
																								Slw nref.2858 2
																								Let Ta746.3527
																									Lwz r_left.3512 o.6514
																									Let Tu169.3517
																										CallCls vecadd.2534 d:diffuse_ray.2458 Ta746.3527 f:
																										Let o.6515
																											Slw nref.2858 2
																											Let Ta747.3526
																												Lwz r_center.3513 o.6515
																												Let Tu168.3518
																													CallCls vecadd.2534 d:diffuse_ray.2458 Ta747.3526 f:
																													Let o.6516
																														Slw nref.2858 2
																														Let Ta748.3525
																															Lwz r_right.3514 o.6516
																															Let Tu167.3519
																																CallCls vecadd.2534 d:diffuse_ray.2458 Ta748.3525 f:
																																Let o.6517
																																	Slw nref.2858 2
																																	Let Ta749.3524
																																		Lwz r_down.3515 o.6517
																																		Let Tu166.3520
																																			CallCls vecadd.2534 d:diffuse_ray.2458 Ta749.3524 f:
																																			Let o.6518
																																				Slw x.2854 2
																																				Let Tt750.3523
																																					Lwz cur.2856 o.6518
																																					Let energya.3521
																																						CallCls p_energy.2597 d:Tt750.3523 f:
																																						Let o.6519
																																							Slw nref.2858 2
																																							Let Ta751.3522
																																								Lwz energya.3521 o.6519
																																								Ans
																																									CallCls vecaccumv.2543 d:rgb.2459 Ta751.3522 diffuse_ray.2458 f:
do_without_neighbors.2859 (args) : pixel.2860 nref.2861 (fargs) : 
	Let calc_diffuse_using_1point.2850
		Lwz $a26 4
		Let Ti729.3501
			Li 4
			Ans
				IfLE nref.2861 Ti729.3501
					Let surface_ids.3502
						CallCls p_surface_ids.2593 d:pixel.2860 f:
						Let Ti730.3503
							Li 0
							Let o.6520
								Slw nref.2861 2
								Let Ti731.3504
									Lwz surface_ids.3502 o.6520
									Ans
										IfLE Ti730.3503 Ti731.3504
											Let calc_diffuse.3505
												CallCls p_calc_diffuse.2595 d:pixel.2860 f:
												Let o.6521
													Slw nref.2861 2
													Let Tb732.3509
														Lwz calc_diffuse.3505 o.6521
														Let Ti733.3510
															Li 0
															Let Tu171.3506
																IfEq Tb732.3509 Ti733.3510
																	Ans
																		Nop
																	Ans
																		CallCls calc_diffuse_using_1point.2850 (calc_diffuse_using_1point.2850) d:pixel.2860 nref.2861 f:
																Let Ti735.3507
																	Add nref.2861 1
																	Ans
																		CallCls do_without_neighbors.2859 (do_without_neighbors.2859) d:pixel.2860 Ti735.3507 f:
											Ans
												Nop
					Ans
						Nop
neighbors_exist.2862 (args) : x.2863 y.2864 next.2865 (fargs) : 
	Let image_size.2460
		Lwz $a26 4
		Let Ti720.3491
			Lwz image_size.2460 4
			Let Ti722.3492
				Add y.2864 1
				Ans
					IfLE Ti720.3491 Ti722.3492
						Ans
							Li 0
						Let Ti723.3493
							Li 0
							Ans
								IfLE y.2864 Ti723.3493
									Ans
										Li 0
									Let Ti725.3494
										Lwz image_size.2460 0
										Let Ti727.3495
											Add x.2863 1
											Ans
												IfLE Ti725.3494 Ti727.3495
													Ans
														Li 0
													Let Ti728.3496
														Li 0
														Ans
															IfLE x.2863 Ti728.3496
																Ans
																	Li 0
																Ans
																	Li 1
get_surface_id.2866 (args) : pixel.2867 index.2868 (fargs) : 
	Let surface_ids.3490
		CallCls p_surface_ids.2593 d:pixel.2867 f:
		Let o.6524
			Slw index.2868 2
			Ans
				Lwz surface_ids.3490 o.6524
neighbors_are_available.2869 (args) : x.2870 prev.2871 cur.2872 next.2873 nref.2874 (fargs) : 
	Let o.6525
		Slw x.2870 2
		Let Tt706.3489
			Lwz cur.2872 o.6525
			Let sid_center.3476
				CallCls get_surface_id.2866 d:Tt706.3489 nref.2874 f:
				Let o.6526
					Slw x.2870 2
					Let Tt707.3488
						Lwz prev.2871 o.6526
						Let Ti708.3477
							CallCls get_surface_id.2866 d:Tt707.3488 nref.2874 f:
							Ans
								IfEq Ti708.3477 sid_center.3476
									Let o.6527
										Slw x.2870 2
										Let Tt709.3487
											Lwz next.2873 o.6527
											Let Ti710.3478
												CallCls get_surface_id.2866 d:Tt709.3487 nref.2874 f:
												Ans
													IfEq Ti710.3478 sid_center.3476
														Let Ti712.3485
															Sub x.2870 1
															Let o.6528
																Slw Ti712.3485 2
																Let Tt713.3484
																	Lwz cur.2872 o.6528
																	Let Ti714.3479
																		CallCls get_surface_id.2866 d:Tt713.3484 nref.2874 f:
																		Ans
																			IfEq Ti714.3479 sid_center.3476
																				Let Ti716.3482
																					Add x.2870 1
																					Let o.6529
																						Slw Ti716.3482 2
																						Let Tt717.3481
																							Lwz cur.2872 o.6529
																							Let Ti718.3480
																								CallCls get_surface_id.2866 d:Tt717.3481 nref.2874 f:
																								Ans
																									IfEq Ti718.3480 sid_center.3476
																										Ans
																											Li 1
																										Ans
																											Li 0
																				Ans
																					Li 0
														Ans
															Li 0
									Ans
										Li 0
try_exploit_neighbors.2875 (args) : x.2876 y.2877 prev.2878 cur.2879 next.2880 nref.2881 (fargs) : 
	Let do_without_neighbors.2859
		Lwz $a26 8
		Let calc_diffuse_using_5points.2853
			Lwz $a26 4
			Let o.6530
				Slw x.2876 2
				Let pixel.3463
					Lwz cur.2879 o.6530
					Let Ti696.3464
						Li 4
						Ans
							IfLE nref.2881 Ti696.3464
								Let Ti697.3465
									Li 0
									Let Ti698.3466
										CallCls get_surface_id.2866 d:pixel.3463 nref.2881 f:
										Ans
											IfLE Ti697.3465 Ti698.3466
												Let Tb699.3467
													CallCls neighbors_are_available.2869 d:x.2876 prev.2878 cur.2879 next.2880 nref.2881 f:
													Let Ti700.3468
														Li 0
														Ans
															IfEq Tb699.3467 Ti700.3468
																Let o.6532
																	Slw x.2876 2
																	Let Tt701.3475
																		Lwz cur.2879 o.6532
																		Ans
																			CallCls do_without_neighbors.2859 (do_without_neighbors.2859) d:Tt701.3475 nref.2881 f:
																Let calc_diffuse.3469
																	CallCls p_calc_diffuse.2595 d:pixel.3463 f:
																	Let o.6531
																		Slw nref.2881 2
																		Let Tb702.3473
																			Lwz calc_diffuse.3469 o.6531
																			Let Ti703.3474
																				Li 0
																				Let Tu172.3470
																					IfEq Tb702.3473 Ti703.3474
																						Ans
																							Nop
																						Ans
																							CallCls calc_diffuse_using_5points.2853 (calc_diffuse_using_5points.2853) d:x.2876 prev.2878 cur.2879 next.2880 nref.2881 f:
																					Let Ti705.3471
																						Add nref.2881 1
																						Ans
																							CallCls try_exploit_neighbors.2875 (try_exploit_neighbors.2875) d:x.2876 y.2877 prev.2878 cur.2879 next.2880 Ti705.3471 f:
												Ans
													Nop
								Ans
									Nop
write_ppm_header.2882 (args) : (fargs) : 
	Let image_size.2460
		Lwz $a26 4
		Let Ti692.3461
			Lwz image_size.2460 0
			Let Tu175.3456
				CallCls min_caml_print_int d:Ti692.3461 f:
				Let Ti694.3459
					Lwz image_size.2460 4
					Let Tu174.3457
						CallCls min_caml_print_int d:Ti694.3459 f:
						Let Ti695.3458
							Li 255
							Ans
								CallCls min_caml_print_int d:Ti695.3458 f:
write_rgb_element.2884 (args) : (fargs) : x.2885 
	Let ix.3452
		CallCls min_caml_int_of_float d:f:x.2885 
		Let Ti689.3454
			Li 255
			Let elem.3453
				IfLE ix.3452 Ti689.3454
					Let Ti690.3455
						Li 0
						Ans
							IfLE Ti690.3455 ix.3452
								Ans
									Mr ix.3452
								Ans
									Li 0
					Ans
						Li 255
				Ans
					CallCls min_caml_print_int d:elem.3453 f:
write_rgb.2886 (args) : (fargs) : 
	Let rgb.2459
		Lwz $a26 4
		Let Td684.3450
			Lfd rgb.2459 0
			Let Tu178.3444
				CallCls write_rgb_element.2884 d:f:Td684.3450 
				Let Td686.3448
					Lfd rgb.2459 4
					Let Tu177.3445
						CallCls write_rgb_element.2884 d:f:Td686.3448 
						Let Td688.3446
							Lfd rgb.2459 8
							Ans
								CallCls write_rgb_element.2884 d:f:Td688.3446 
pretrace_diffuse_rays.2888 (args) : pixel.2889 nref.2890 (fargs) : 
	Let trace_diffuse_rays.2842
		Lwz $a26 12
		Let dirvecs.2469
			Lwz $a26 8
			Let diffuse_ray.2458
				Lwz $a26 4
				Let Ti673.3425
					Li 4
					Ans
						IfLE nref.2890 Ti673.3425
							Let sid.3426
								CallCls get_surface_id.2866 d:pixel.2889 nref.2890 f:
								Let Ti674.3427
									Li 0
									Ans
										IfLE Ti674.3427 sid.3426
											Let calc_diffuse.3428
												CallCls p_calc_diffuse.2595 d:pixel.2889 f:
												Let o.6538
													Slw nref.2890 2
													Let Tb675.3432
														Lwz calc_diffuse.3428 o.6538
														Let Ti676.3433
															Li 0
															Let Tu181.3429
																IfEq Tb675.3432 Ti676.3433
																	Ans
																		Nop
																	Let group_id.3434
																		CallCls p_group_id.2601 d:pixel.2889 f:
																		Let Tu180.3435
																			CallCls vecbzero.2509 d:diffuse_ray.2458 f:
																			Let nvectors.3436
																				CallCls p_nvectors.2606 d:pixel.2889 f:
																				Let intersection_points.3437
																					CallCls p_intersection_points.2591 d:pixel.2889 f:
																					Let o.6539
																						Slw group_id.3434 2
																						Let Ta677.3441
																							Lwz dirvecs.2469 o.6539
																							Let o.6540
																								Slw nref.2890 2
																								Let Ta678.3442
																									Lwz nvectors.3436 o.6540
																									Let o.6541
																										Slw nref.2890 2
																										Let Ta679.3443
																											Lwz intersection_points.3437 o.6541
																											Let Tu179.3438
																												CallCls trace_diffuse_rays.2842 (trace_diffuse_rays.2842) d:Ta677.3441 Ta678.3442 Ta679.3443 f:
																												Let ray20p.3439
																													CallCls p_received_ray_20percent.2599 d:pixel.2889 f:
																													Let o.6542
																														Slw nref.2890 2
																														Let Ta680.3440
																															Lwz ray20p.3439 o.6542
																															Ans
																																CallCls veccpy.2511 d:Ta680.3440 diffuse_ray.2458 f:
																Let Ti682.3430
																	Add nref.2890 1
																	Ans
																		CallCls pretrace_diffuse_rays.2888 (pretrace_diffuse_rays.2888) d:pixel.2889 Ti682.3430 f:
											Ans
												Nop
							Ans
								Nop
pretrace_pixels.2891 (args) : line.2892 x.2893 group_id.2894 (fargs) : lc0.2895 lc1.2896 lc2.2897 
	Let viewpoint.2446
		Lwz $a26 36
		Let trace_ray.2828
			Lwz $a26 32
			Let startp.2463
				Lwz $a26 28
				Let screenx_dir.2465
					Lwz $a26 24
					Let scan_pitch.2462
						Lwz $a26 20
						Let rgb.2459
							Lwz $a26 16
							Let ptrace_dirvec.2468
								Lwz $a26 12
								Let pretrace_diffuse_rays.2888
									Lwz $a26 8
									Let image_center.2461
										Lwz $a26 4
										Let Ti637.3378
											Li 0
											Ans
												IfLE Ti637.3378 x.2893
													Let Td639.3419
														Lfd scan_pitch.2462 0
														Let Ti641.3422
															Lwz image_center.2461 0
															Let Ti642.3421
																Sub x.2893 Ti641.3422
																Let Td643.3420
																	CallCls min_caml_float_of_int d:Ti642.3421 f:
																	Let xdisp.3379
																		FMul Td639.3419 Td643.3420
																		Let Td646.3417
																			Lfd screenx_dir.2465 0
																			Let Td647.3416
																				FMul xdisp.3379 Td646.3417
																				Let Td648.3415
																					FAdd Td647.3416 lc0.2895
																					Let Tu191.3380
																						Stfd Td648.3415 ptrace_dirvec.2468 0
																						Let Td651.3412
																							Lfd screenx_dir.2465 4
																							Let Td652.3411
																								FMul xdisp.3379 Td651.3412
																								Let Td653.3410
																									FAdd Td652.3411 lc1.2896
																									Let Tu190.3381
																										Stfd Td653.3410 ptrace_dirvec.2468 4
																										Let Td656.3407
																											Lfd screenx_dir.2465 8
																											Let Td657.3406
																												FMul xdisp.3379 Td656.3407
																												Let Td658.3405
																													FAdd Td657.3406 lc2.2897
																													Let Tu189.3382
																														Stfd Td658.3405 ptrace_dirvec.2468 8
																														Let Ti659.3403
																															Li 0
																															Let Tu188.3383
																																CallCls vecunit_sgn.2519 d:ptrace_dirvec.2468 Ti659.3403 f:
																																Let Tu187.3384
																																	CallCls vecbzero.2509 d:rgb.2459 f:
																																	Let Tu186.3385
																																		CallCls veccpy.2511 d:startp.2463 viewpoint.2446 f:
																																		Let Ti660.3399
																																			Li 0
																																			Let Td661.3400
																																				FLi l.6037
																																				Let o.6551
																																					Slw x.2893 2
																																					Let Tt662.3401
																																						Lwz line.2892 o.6551
																																						Let Td663.3402
																																							FLi l.6035
																																							Let Tu185.3386
																																								CallCls trace_ray.2828 (trace_ray.2828) d:Ti660.3399 ptrace_dirvec.2468 Tt662.3401 f:Td661.3400 Td663.3402 
																																								Let o.6552
																																									Slw x.2893 2
																																									Let Tt664.3398
																																										Lwz line.2892 o.6552
																																										Let Ta665.3397
																																											CallCls p_rgb.2589 d:Tt664.3398 f:
																																											Let Tu184.3387
																																												CallCls veccpy.2511 d:Ta665.3397 rgb.2459 f:
																																												Let o.6553
																																													Slw x.2893 2
																																													Let Tt666.3396
																																														Lwz line.2892 o.6553
																																														Let Tu183.3388
																																															CallCls p_set_group_id.2603 d:Tt666.3396 group_id.2894 f:
																																															Let o.6554
																																																Slw x.2893 2
																																																Let Tt667.3394
																																																	Lwz line.2892 o.6554
																																																	Let Ti668.3395
																																																		Li 0
																																																		Let Tu182.3389
																																																			CallCls pretrace_diffuse_rays.2888 (pretrace_diffuse_rays.2888) d:Tt667.3394 Ti668.3395 f:
																																																			Let Ti670.3390
																																																				Sub x.2893 1
																																																				Let Ti671.3392
																																																					Li 1
																																																					Let Ti672.3391
																																																						CallCls add_mod5.2498 d:group_id.2894 Ti671.3392 f:
																																																						Ans
																																																							CallCls pretrace_pixels.2891 (pretrace_pixels.2891) d:line.2892 Ti670.3390 Ti672.3391 f:lc0.2895 lc1.2896 lc2.2897 
													Ans
														Nop
pretrace_line.2898 (args) : line.2899 y.2900 group_id.2901 (fargs) : 
	Let screenz_dir.2467
		Lwz $a26 24
		Let screeny_dir.2466
			Lwz $a26 20
			Let scan_pitch.2462
				Lwz $a26 16
				Let pretrace_pixels.2891
					Lwz $a26 12
					Let image_size.2460
						Lwz $a26 8
						Let image_center.2461
							Lwz $a26 4
							Let Td613.3372
								Lfd scan_pitch.2462 0
								Let Ti615.3375
									Lwz image_center.2461 4
									Let Ti616.3374
										Sub y.2900 Ti615.3375
										Let Td617.3373
											CallCls min_caml_float_of_int d:Ti616.3374 f:
											Let ydisp.3349
												FMul Td613.3372 Td617.3373
												Let Td619.3370
													Lfd screeny_dir.2466 0
													Let Td620.3367
														FMul ydisp.3349 Td619.3370
														Let Td622.3368
															Lfd screenz_dir.2467 0
															Let lc0.3350
																FAdd Td620.3367 Td622.3368
																Let Td624.3365
																	Lfd screeny_dir.2466 4
																	Let Td625.3362
																		FMul ydisp.3349 Td624.3365
																		Let Td627.3363
																			Lfd screenz_dir.2467 4
																			Let lc1.3351
																				FAdd Td625.3362 Td627.3363
																				Let Td629.3360
																					Lfd screeny_dir.2466 8
																					Let Td630.3357
																						FMul ydisp.3349 Td629.3360
																						Let Td632.3358
																							Lfd screenz_dir.2467 8
																							Let lc2.3352
																								FAdd Td630.3357 Td632.3358
																								Let Ti634.3354
																									Lwz image_size.2460 0
																									Let Ti636.3353
																										Sub Ti634.3354 1
																										Ans
																											CallCls pretrace_pixels.2891 (pretrace_pixels.2891) d:line.2899 Ti636.3353 group_id.2901 f:lc0.3350 lc1.3351 lc2.3352 
scan_pixel.2902 (args) : x.2903 y.2904 prev.2905 cur.2906 next.2907 (fargs) : 
	Let write_rgb.2886
		Lwz $a26 24
		Let try_exploit_neighbors.2875
			Lwz $a26 20
			Let rgb.2459
				Lwz $a26 16
				Let neighbors_exist.2862
					Lwz $a26 12
					Let image_size.2460
						Lwz $a26 8
						Let do_without_neighbors.2859
							Lwz $a26 4
							Let Ti601.3334
								Lwz image_size.2460 0
								Ans
									IfLE Ti601.3334 x.2903
										Ans
											Nop
										Let o.6565
											Slw x.2903 2
											Let Tt602.3347
												Lwz cur.2906 o.6565
												Let Ta603.3346
													CallCls p_rgb.2589 d:Tt602.3347 f:
													Let Tu194.3335
														CallCls veccpy.2511 d:rgb.2459 Ta603.3346 f:
														Let Tb604.3341
															CallCls neighbors_exist.2862 (neighbors_exist.2862) d:x.2903 y.2904 next.2907 f:
															Let Ti605.3342
																Li 0
																Let Tu193.3336
																	IfEq Tb604.3341 Ti605.3342
																		Let o.6566
																			Slw x.2903 2
																			Let Tt606.3344
																				Lwz cur.2906 o.6566
																				Let Ti607.3345
																					Li 0
																					Ans
																						CallCls do_without_neighbors.2859 (do_without_neighbors.2859) d:Tt606.3344 Ti607.3345 f:
																		Let Ti608.3343
																			Li 0
																			Ans
																				CallCls try_exploit_neighbors.2875 (try_exploit_neighbors.2875) d:x.2903 y.2904 prev.2905 cur.2906 next.2907 Ti608.3343 f:
																	Let Tu609.3340
																		Nop
																		Let Tu192.3337
																			CallCls write_rgb.2886 (write_rgb.2886) d:f:
																			Let Ti611.3338
																				Add x.2903 1
																				Ans
																					CallCls scan_pixel.2902 (scan_pixel.2902) d:Ti611.3338 y.2904 prev.2905 cur.2906 next.2907 f:
scan_line.2908 (args) : y.2909 prev.2910 cur.2911 next.2912 group_id.2913 (fargs) : 
	Let scan_pixel.2902
		Lwz $a26 12
		Let pretrace_line.2898
			Lwz $a26 8
			Let image_size.2460
				Lwz $a26 4
				Let Ti588.3319
					Lwz image_size.2460 4
					Ans
						IfLE Ti588.3319 y.2909
							Ans
								Nop
							Let Ti590.3330
								Lwz image_size.2460 4
								Let Ti592.3327
									Sub Ti590.3330 1
									Let Tu196.3320
										IfLE Ti592.3327 y.2909
											Ans
												Nop
											Let Ti594.3328
												Add y.2909 1
												Ans
													CallCls pretrace_line.2898 (pretrace_line.2898) d:next.2912 Ti594.3328 group_id.2913 f:
										Let Ti595.3326
											Li 0
											Let Tu195.3321
												CallCls scan_pixel.2902 (scan_pixel.2902) d:Ti595.3326 y.2909 prev.2910 cur.2911 next.2912 f:
												Let Ti597.3322
													Add y.2909 1
													Let Ti598.3324
														Li 2
														Let Ti599.3323
															CallCls add_mod5.2498 d:group_id.2913 Ti598.3324 f:
															Ans
																CallCls scan_line.2908 (scan_line.2908) d:Ti597.3322 cur.2911 next.2912 prev.2910 Ti599.3323 f:
create_float5x3array.2914 (args) : (fargs) : 
	Let Ti568.3317
		Li 3
		Let Td569.3318
			FLi l.6035
			Let vec.3294
				CallCls min_caml_create_float_array d:Ti568.3317 f:Td569.3318 
				Let Ti570.3316
					Li 5
					Let array.3295
						CallCls min_caml_create_array d:Ti570.3316 vec.3294 f:
						Let Ti572.3314
							Li 3
							Let Td573.3315
								FLi l.6035
								Let Ta574.3313
									CallCls min_caml_create_float_array d:Ti572.3314 f:Td573.3315 
									Let Tu201.3296
										Stw Ta574.3313 array.3295 4
										Let Ti576.3310
											Li 3
											Let Td577.3311
												FLi l.6035
												Let Ta578.3309
													CallCls min_caml_create_float_array d:Ti576.3310 f:Td577.3311 
													Let Tu200.3297
														Stw Ta578.3309 array.3295 8
														Let Ti580.3306
															Li 3
															Let Td581.3307
																FLi l.6035
																Let Ta582.3305
																	CallCls min_caml_create_float_array d:Ti580.3306 f:Td581.3307 
																	Let Tu199.3298
																		Stw Ta582.3305 array.3295 12
																		Let Ti584.3302
																			Li 3
																			Let Td585.3303
																				FLi l.6035
																				Let Ta586.3301
																					CallCls min_caml_create_float_array d:Ti584.3302 f:Td585.3303 
																					Let Tu198.3299
																						Stw Ta586.3301 array.3295 16
																						Ans
																							Mr array.3295
create_pixel.2916 (args) : (fargs) : 
	Let Ti556.3292
		Li 3
		Let Td557.3293
			FLi l.6035
			Let m_rgb.3274
				CallCls min_caml_create_float_array d:Ti556.3292 f:Td557.3293 
				Let Tu558.3291
					Nop
					Let m_isect_ps.3275
						CallCls create_float5x3array.2914 d:f:
						Let Ti559.3289
							Li 5
							Let Ti560.3290
								Li 0
								Let m_sids.3276
									CallCls min_caml_create_array d:Ti559.3289 Ti560.3290 f:
									Let Ti561.3287
										Li 5
										Let Ti562.3288
											Li 0
											Let m_cdif.3277
												CallCls min_caml_create_array d:Ti561.3287 Ti562.3288 f:
												Let Tu563.3286
													Nop
													Let m_engy.3278
														CallCls create_float5x3array.2914 d:f:
														Let Tu564.3285
															Nop
															Let m_r20p.3279
																CallCls create_float5x3array.2914 d:f:
																Let Ti565.3283
																	Li 1
																	Let Ti566.3284
																		Li 0
																		Let m_gid.3280
																			CallCls min_caml_create_array d:Ti565.3283 Ti566.3284 f:
																			Let Tu567.3282
																				Nop
																				Let m_nvectors.3281
																					CallCls create_float5x3array.2914 d:f:
																					Let t.6573
																						Mr $fp
																						Let $fp
																							Add $fp 32
																							Let Tu6581
																								Stw m_nvectors.3281 t.6573 28
																								Let Tu6580
																									Stw m_gid.3280 t.6573 24
																									Let Tu6579
																										Stw m_r20p.3279 t.6573 20
																										Let Tu6578
																											Stw m_engy.3278 t.6573 16
																											Let Tu6577
																												Stw m_cdif.3277 t.6573 12
																												Let Tu6576
																													Stw m_sids.3276 t.6573 8
																													Let Tu6575
																														Stw m_isect_ps.3275 t.6573 4
																														Let Tu6574
																															Stw m_rgb.3274 t.6573 0
																															Ans
																																Mr t.6573
init_line_elements.2918 (args) : line.2919 n.2920 (fargs) : 
	Let Ti551.3268
		Li 0
		Ans
			IfLE Ti551.3268 n.2920
				Let Tu552.3273
					Nop
					Let Tt553.3272
						CallCls create_pixel.2916 d:f:
						Let o.6582
							Slw n.2920 2
							Let Tu203.3269
								Stw Tt553.3272 line.2919 o.6582
								Let Ti555.3270
									Sub n.2920 1
									Ans
										CallCls init_line_elements.2918 d:line.2919 Ti555.3270 f:
				Ans
					Mr line.2919
create_pixelline.2921 (args) : (fargs) : 
	Let image_size.2460
		Lwz $a26 4
		Let Ti544.3264
			Lwz image_size.2460 0
			Let Tu545.3266
				Nop
				Let Tt546.3265
					CallCls create_pixel.2916 d:f:
					Let line.3259
						CallCls min_caml_create_array d:Ti544.3264 Tt546.3265 f:
						Let Ti548.3261
							Lwz image_size.2460 0
							Let Ti550.3260
								Sub Ti548.3261 2
								Ans
									CallCls init_line_elements.2918 d:line.3259 Ti550.3260 f:
tan.2923 (args) : (fargs) : x.2924 
	Let Td540.3256
		CallCls min_caml_sin d:f:x.2924 
		Let Td541.3257
			CallCls min_caml_cos d:f:x.2924 
			Let Td542.3258
				FReciprocal Td541.3257
				Ans
					FMul Td540.3256 Td542.3258
adjust_position.2925 (args) : (fargs) : h.2926 ratio.2927 
	Let Td534.3254
		FMul h.2926 h.2926
		Let Td535.3255
			FLi l.6480
			Let Td536.3253
				FAdd Td534.3254 Td535.3255
				Let l.3246
					CallCls min_caml_sqrt d:f:Td536.3253 
					Let Td537.3251
						FLi l.6037
						Let Td538.3252
							FReciprocal l.3246
							Let tan_h.3247
								FMul Td537.3251 Td538.3252
								Let theta_h.3248
									CallCls min_caml_atan d:f:tan_h.3247 
									Let Td539.3250
										FMul theta_h.3248 ratio.2927
										Let tan_m.3249
											CallCls tan.2923 d:f:Td539.3250 
											Ans
												FMul tan_m.3249 l.3246
calc_dirvec.2928 (args) : icount.2929 group_id.2934 index.2935 (fargs) : x.2930 y.2931 rx.2932 ry.2933 
	Let dirvecs.2469
		Lwz $a26 4
		Let Ti490.3191
			Li 5
			Ans
				IfLE Ti490.3191 icount.2929
					Let Td491.3244
						CallCls fsqr.2483 d:f:x.2930 
						Let Td492.3245
							CallCls fsqr.2483 d:f:y.2931 
							Let Td493.3242
								FAdd Td491.3244 Td492.3245
								Let Td494.3243
									FLi l.6037
									Let Td495.3241
										FAdd Td493.3242 Td494.3243
										Let l.3196
											CallCls min_caml_sqrt d:f:Td495.3241 
											Let Td496.3240
												FReciprocal l.3196
												Let vx.3197
													FMul x.2930 Td496.3240
													Let Td497.3239
														FReciprocal l.3196
														Let vy.3198
															FMul y.2931 Td497.3239
															Let Td498.3237
																FLi l.6037
																Let Td499.3238
																	FReciprocal l.3196
																	Let vz.3199
																		FMul Td498.3237 Td499.3238
																		Let o.6585
																			Slw group_id.2934 2
																			Let dgroup.3200
																				Lwz dirvecs.2469 o.6585
																				Let o.6586
																					Slw index.2935 2
																					Let Tt500.3236
																						Lwz dgroup.3200 o.6586
																						Let Ta501.3235
																							CallCls d_vec.2608 d:Tt500.3236 f:
																							Let Tu209.3201
																								CallCls vecset.2501 d:Ta501.3235 f:vx.3197 vy.3198 vz.3199 
																								Let Ti503.3233
																									Add index.2935 40
																									Let o.6587
																										Slw Ti503.3233 2
																										Let Tt504.3232
																											Lwz dgroup.3200 o.6587
																											Let Ta505.3230
																												CallCls d_vec.2608 d:Tt504.3232 f:
																												Let Td506.3231
																													CallCls fneg.2473 d:f:vy.3198 
																													Let Tu208.3202
																														CallCls vecset.2501 d:Ta505.3230 f:vx.3197 vz.3199 Td506.3231 
																														Let Ti508.3228
																															Add index.2935 80
																															Let o.6588
																																Slw Ti508.3228 2
																																Let Tt509.3227
																																	Lwz dgroup.3200 o.6588
																																	Let Ta510.3224
																																		CallCls d_vec.2608 d:Tt509.3227 f:
																																		Let Td511.3225
																																			CallCls fneg.2473 d:f:vx.3197 
																																			Let Td512.3226
																																				CallCls fneg.2473 d:f:vy.3198 
																																				Let Tu207.3203
																																					CallCls vecset.2501 d:Ta510.3224 f:vz.3199 Td511.3225 Td512.3226 
																																					Let Ti514.3222
																																						Add index.2935 1
																																						Let o.6589
																																							Slw Ti514.3222 2
																																							Let Tt515.3221
																																								Lwz dgroup.3200 o.6589
																																								Let Ta516.3217
																																									CallCls d_vec.2608 d:Tt515.3221 f:
																																									Let Td517.3218
																																										CallCls fneg.2473 d:f:vx.3197 
																																										Let Td518.3219
																																											CallCls fneg.2473 d:f:vy.3198 
																																											Let Td519.3220
																																												CallCls fneg.2473 d:f:vz.3199 
																																												Let Tu206.3204
																																													CallCls vecset.2501 d:Ta516.3217 f:Td517.3218 Td518.3219 Td519.3220 
																																													Let Ti521.3215
																																														Add index.2935 41
																																														Let o.6590
																																															Slw Ti521.3215 2
																																															Let Tt522.3214
																																																Lwz dgroup.3200 o.6590
																																																Let Ta523.3211
																																																	CallCls d_vec.2608 d:Tt522.3214 f:
																																																	Let Td524.3212
																																																		CallCls fneg.2473 d:f:vx.3197 
																																																		Let Td525.3213
																																																			CallCls fneg.2473 d:f:vz.3199 
																																																			Let Tu205.3205
																																																				CallCls vecset.2501 d:Ta523.3211 f:Td524.3212 Td525.3213 vy.3198 
																																																				Let Ti527.3209
																																																					Add index.2935 81
																																																					Let o.6591
																																																						Slw Ti527.3209 2
																																																						Let Tt528.3208
																																																							Lwz dgroup.3200 o.6591
																																																							Let Ta529.3206
																																																								CallCls d_vec.2608 d:Tt528.3208 f:
																																																								Let Td530.3207
																																																									CallCls fneg.2473 d:f:vz.3199 
																																																									Ans
																																																										CallCls vecset.2501 d:Ta529.3206 f:Td530.3207 vx.3197 vy.3198 
					Let x2.3192
						CallCls adjust_position.2925 d:f:y.2931 rx.2932 
						Let Ti532.3193
							Add icount.2929 1
							Let Td533.3194
								CallCls adjust_position.2925 d:f:x2.3192 ry.2933 
								Ans
									CallCls calc_dirvec.2928 (calc_dirvec.2928) d:Ti532.3193 group_id.2934 index.2935 f:x2.3192 Td533.3194 rx.2932 ry.2933 
calc_dirvecs.2936 (args) : col.2937 group_id.2939 index.2940 (fargs) : ry.2938 
	Let calc_dirvec.2928
		Lwz $a26 4
		Let Ti469.3166
			Li 0
			Ans
				IfLE Ti469.3166 col.2937
					Let Td470.3189
						CallCls min_caml_float_of_int d:col.2937 f:
						Let Td471.3190
							FLi l.6592
							Let Td472.3187
								FMul Td470.3189 Td471.3190
								Let Td473.3188
									FLi l.6593
									Let rx.3167
										FSub Td472.3187 Td473.3188
										Let Ti474.3184
											Li 0
											Let Td475.3185
												FLi l.6035
												Let Td476.3186
													FLi l.6035
													Let Tu211.3168
														CallCls calc_dirvec.2928 (calc_dirvec.2928) d:Ti474.3184 group_id.2939 index.2940 f:Td475.3185 Td476.3186 rx.3167 ry.2938 
														Let Td477.3182
															CallCls min_caml_float_of_int d:col.2937 f:
															Let Td478.3183
																FLi l.6592
																Let Td479.3180
																	FMul Td477.3182 Td478.3183
																	Let Td480.3181
																		FLi l.6480
																		Let rx2.3169
																			FAdd Td479.3180 Td480.3181
																			Let Ti481.3175
																				Li 0
																				Let Td482.3176
																					FLi l.6035
																					Let Td483.3177
																						FLi l.6035
																						Let Ti485.3178
																							Add index.2940 2
																							Let Tu210.3170
																								CallCls calc_dirvec.2928 (calc_dirvec.2928) d:Ti481.3175 group_id.2939 Ti485.3178 f:Td482.3176 Td483.3177 rx2.3169 ry.2938 
																								Let Ti487.3171
																									Sub col.2937 1
																									Let Ti488.3173
																										Li 1
																										Let Ti489.3172
																											CallCls add_mod5.2498 d:group_id.2939 Ti488.3173 f:
																											Ans
																												CallCls calc_dirvecs.2936 (calc_dirvecs.2936) d:Ti487.3171 Ti489.3172 index.2940 f:ry.2938 
					Ans
						Nop
calc_dirvec_rows.2941 (args) : row.2942 group_id.2943 index.2944 (fargs) : 
	Let calc_dirvecs.2936
		Lwz $a26 4
		Let Ti457.3152
			Li 0
			Ans
				IfLE Ti457.3152 row.2942
					Let Td458.3164
						CallCls min_caml_float_of_int d:row.2942 f:
						Let Td459.3165
							FLi l.6592
							Let Td460.3162
								FMul Td458.3164 Td459.3165
								Let Td461.3163
									FLi l.6593
									Let ry.3153
										FSub Td460.3162 Td461.3163
										Let Ti462.3161
											Li 4
											Let Tu212.3154
												CallCls calc_dirvecs.2936 (calc_dirvecs.2936) d:Ti462.3161 group_id.2943 index.2944 f:ry.3153 
												Let Ti464.3155
													Sub row.2942 1
													Let Ti465.3159
														Li 2
														Let Ti466.3156
															CallCls add_mod5.2498 d:group_id.2943 Ti465.3159 f:
															Let Ti468.3157
																Add index.2944 4
																Ans
																	CallCls calc_dirvec_rows.2941 (calc_dirvec_rows.2941) d:Ti464.3155 Ti466.3156 Ti468.3157 f:
					Ans
						Nop
create_dirvec.2945 (args) : (fargs) : 
	Let n_objects.2443
		Lwz $a26 4
		Let Ti453.3150
			Li 3
			Let Td454.3151
				FLi l.6035
				Let v3.3146
					CallCls min_caml_create_float_array d:Ti453.3150 f:Td454.3151 
					Let Ti456.3148
						Lwz n_objects.2443 0
						Let consts.3147
							CallCls min_caml_create_array d:Ti456.3148 v3.3146 f:
							Let t.6595
								Mr $fp
								Let $fp
									Add $fp 8
									Let Tu6597
										Stw consts.3147 t.6595 4
										Let Tu6596
											Stw v3.3146 t.6595 0
											Ans
												Mr t.6595
create_dirvec_elements.2947 (args) : d.2948 index.2949 (fargs) : 
	Let create_dirvec.2945
		Lwz $a26 4
		Let Ti448.3140
			Li 0
			Ans
				IfLE Ti448.3140 index.2949
					Let Tu449.3145
						Nop
						Let Tt450.3144
							CallCls create_dirvec.2945 (create_dirvec.2945) d:f:
							Let o.6598
								Slw index.2949 2
								Let Tu214.3141
									Stw Tt450.3144 d.2948 o.6598
									Let Ti452.3142
										Sub index.2949 1
										Ans
											CallCls create_dirvec_elements.2947 (create_dirvec_elements.2947) d:d.2948 Ti452.3142 f:
					Ans
						Nop
create_dirvecs.2950 (args) : index.2951 (fargs) : 
	Let dirvecs.2469
		Lwz $a26 12
		Let create_dirvec_elements.2947
			Lwz $a26 8
			Let create_dirvec.2945
				Lwz $a26 4
				Let Ti439.3129
					Li 0
					Ans
						IfLE Ti439.3129 index.2951
							Let Ti440.3137
								Li 120
								Let Tu441.3139
									Nop
									Let Tt442.3138
										CallCls create_dirvec.2945 (create_dirvec.2945) d:f:
										Let Ta443.3136
											CallCls min_caml_create_array d:Ti440.3137 Tt442.3138 f:
											Let o.6599
												Slw index.2951 2
												Let Tu216.3130
													Stw Ta443.3136 dirvecs.2469 o.6599
													Let o.6600
														Slw index.2951 2
														Let Ta444.3134
															Lwz dirvecs.2469 o.6600
															Let Ti445.3135
																Li 118
																Let Tu215.3131
																	CallCls create_dirvec_elements.2947 (create_dirvec_elements.2947) d:Ta444.3134 Ti445.3135 f:
																	Let Ti447.3132
																		Sub index.2951 1
																		Ans
																			CallCls create_dirvecs.2950 (create_dirvecs.2950) d:Ti447.3132 f:
							Ans
								Nop
init_dirvec_constants.2952 (args) : vecset.2953 index.2954 (fargs) : 
	Let setup_dirvec_constants.2737
		Lwz $a26 4
		Let Ti435.3124
			Li 0
			Ans
				IfLE Ti435.3124 index.2954
					Let o.6601
						Slw index.2954 2
						Let Tt436.3128
							Lwz vecset.2953 o.6601
							Let Tu217.3125
								CallCls setup_dirvec_constants.2737 (setup_dirvec_constants.2737) d:Tt436.3128 f:
								Let Ti438.3126
									Sub index.2954 1
									Ans
										CallCls init_dirvec_constants.2952 (init_dirvec_constants.2952) d:vecset.2953 Ti438.3126 f:
					Ans
						Nop
init_vecset_constants.2955 (args) : index.2956 (fargs) : 
	Let init_dirvec_constants.2952
		Lwz $a26 8
		Let dirvecs.2469
			Lwz $a26 4
			Let Ti430.3118
				Li 0
				Ans
					IfLE Ti430.3118 index.2956
						Let o.6602
							Slw index.2956 2
							Let Ta431.3122
								Lwz dirvecs.2469 o.6602
								Let Ti432.3123
									Li 119
									Let Tu218.3119
										CallCls init_dirvec_constants.2952 (init_dirvec_constants.2952) d:Ta431.3122 Ti432.3123 f:
										Let Ti434.3120
											Sub index.2956 1
											Ans
												CallCls init_vecset_constants.2955 (init_vecset_constants.2955) d:Ti434.3120 f:
						Ans
							Nop
init_dirvecs.2957 (args) : (fargs) : 
	Let init_vecset_constants.2955
		Lwz $a26 12
		Let create_dirvecs.2950
			Lwz $a26 8
			Let calc_dirvec_rows.2941
				Lwz $a26 4
				Let Ti425.3117
					Li 4
					Let Tu221.3111
						CallCls create_dirvecs.2950 (create_dirvecs.2950) d:Ti425.3117 f:
						Let Ti426.3114
							Li 9
							Let Ti427.3115
								Li 0
								Let Ti428.3116
									Li 0
									Let Tu220.3112
										CallCls calc_dirvec_rows.2941 (calc_dirvec_rows.2941) d:Ti426.3114 Ti427.3115 Ti428.3116 f:
										Let Ti429.3113
											Li 4
											Ans
												CallCls init_vecset_constants.2955 (init_vecset_constants.2955) d:Ti429.3113 f:
add_reflection.2959 (args) : index.2960 surface_id.2961 (fargs) : bright.2962 v0.2963 v1.2964 v2.2965 
	Let setup_dirvec_constants.2737
		Lwz $a26 12
		Let reflections.2471
			Lwz $a26 8
			Let create_dirvec.2945
				Lwz $a26 4
				Let Tu422.3110
					Nop
					Let dvec.3105
						CallCls create_dirvec.2945 (create_dirvec.2945) d:f:
						Let Ta423.3109
							CallCls d_vec.2608 d:dvec.3105 f:
							Let Tu223.3106
								CallCls vecset.2501 d:Ta423.3109 f:v0.2963 v1.2964 v2.2965 
								Let Tu222.3107
									CallCls setup_dirvec_constants.2737 (setup_dirvec_constants.2737) d:dvec.3105 f:
									Let t.6603
										Mr $fp
										Let $fp
											Add $fp 16
											Let Tu6606
												Stfd bright.2962 t.6603 8
												Let Tu6605
													Stw dvec.3105 t.6603 4
													Let Tu6604
														Stw surface_id.2961 t.6603 0
														Let Tt424.3108
															Mr t.6603
															Let o.6607
																Slw index.2960 2
																Ans
																	Stw Tt424.3108 reflections.2471 o.6607
setup_rect_reflection.2966 (args) : obj_id.2967 obj.2968 (fargs) : 
	Let n_reflections.2472
		Lwz $a26 12
		Let light.2447
			Lwz $a26 8
			Let add_reflection.2959
				Lwz $a26 4
				Let sid.3068
					ShiftL2 obj_id.2967
					Let nr.3069
						Lwz n_reflections.2472 0
						Let Td395.3102
							FLi l.6037
							Let Td396.3103
								CallCls o_diffuse.2571 d:obj.2968 f:
								Let br.3070
									FSub Td395.3102 Td396.3103
									Let Td398.3100
										Lfd light.2447 0
										Let n0.3071
											CallCls fneg.2473 d:f:Td398.3100 
											Let Td400.3098
												Lfd light.2447 4
												Let n1.3072
													CallCls fneg.2473 d:f:Td400.3098 
													Let Td402.3096
														Lfd light.2447 8
														Let n2.3073
															CallCls fneg.2473 d:f:Td402.3096 
															Let Ti404.3092
																Add sid.3068 1
																Let Td406.3093
																	Lfd light.2447 0
																	Let Tu226.3074
																		CallCls add_reflection.2959 (add_reflection.2959) d:nr.3069 Ti404.3092 f:br.3070 Td406.3093 n1.3072 n2.3073 
																		Let Ti408.3086
																			Add nr.3069 1
																			Let Ti410.3087
																				Add sid.3068 2
																				Let Td412.3088
																					Lfd light.2447 4
																					Let Tu225.3075
																						CallCls add_reflection.2959 (add_reflection.2959) d:Ti408.3086 Ti410.3087 f:br.3070 n0.3071 Td412.3088 n2.3073 
																						Let Ti414.3080
																							Add nr.3069 2
																							Let Ti416.3081
																								Add sid.3068 3
																								Let Td418.3082
																									Lfd light.2447 8
																									Let Tu224.3076
																										CallCls add_reflection.2959 (add_reflection.2959) d:Ti414.3080 Ti416.3081 f:br.3070 n0.3071 n1.3072 Td418.3082 
																										Let Ti421.3078
																											Add nr.3069 3
																											Ans
																												Stw Ti421.3078 n_reflections.2472 0
setup_surface_reflection.2969 (args) : obj_id.2970 obj.2971 (fargs) : 
	Let n_reflections.2472
		Lwz $a26 12
		Let light.2447
			Lwz $a26 8
			Let add_reflection.2959
				Lwz $a26 4
				Let Ti364.3066
					ShiftL2 obj_id.2970
					Let sid.3033
						Add Ti364.3066 1
						Let nr.3034
							Lwz n_reflections.2472 0
							Let Td367.3063
								FLi l.6037
								Let Td368.3064
									CallCls o_diffuse.2571 d:obj.2971 f:
									Let br.3035
										FSub Td367.3063 Td368.3064
										Let Ta369.3062
											CallCls o_param_abc.2563 d:obj.2971 f:
											Let p.3036
												CallCls veciprod.2522 d:light.2447 Ta369.3062 f:
												Let Td370.3060
													FLi l.6161
													Let Td371.3061
														CallCls o_param_a.2557 d:obj.2971 f:
														Let Td372.3059
															FMul Td370.3060 Td371.3061
															Let Td373.3056
																FMul Td372.3059 p.3036
																Let Td375.3057
																	Lfd light.2447 0
																	Let Td376.3041
																		FSub Td373.3056 Td375.3057
																		Let Td377.3054
																			FLi l.6161
																			Let Td378.3055
																				CallCls o_param_b.2559 d:obj.2971 f:
																				Let Td379.3053
																					FMul Td377.3054 Td378.3055
																					Let Td380.3050
																						FMul Td379.3053 p.3036
																						Let Td382.3051
																							Lfd light.2447 4
																							Let Td383.3042
																								FSub Td380.3050 Td382.3051
																								Let Td384.3048
																									FLi l.6161
																									Let Td385.3049
																										CallCls o_param_c.2561 d:obj.2971 f:
																										Let Td386.3047
																											FMul Td384.3048 Td385.3049
																											Let Td387.3044
																												FMul Td386.3047 p.3036
																												Let Td389.3045
																													Lfd light.2447 8
																													Let Td390.3043
																														FSub Td387.3044 Td389.3045
																														Let Tu227.3037
																															CallCls add_reflection.2959 (add_reflection.2959) d:nr.3034 sid.3033 f:br.3035 Td376.3041 Td383.3042 Td390.3043 
																															Let Ti393.3039
																																Add nr.3034 1
																																Ans
																																	Stw Ti393.3039 n_reflections.2472 0
setup_reflections.2972 (args) : obj_id.2973 (fargs) : 
	Let setup_surface_reflection.2969
		Lwz $a26 12
		Let setup_rect_reflection.2966
			Lwz $a26 8
			Let objects.2444
				Lwz $a26 4
				Let Ti355.3022
					Li 0
					Ans
						IfLE Ti355.3022 obj_id.2973
							Let o.6621
								Slw obj_id.2973 2
								Let obj.3023
									Lwz objects.2444 o.6621
									Let Ti356.3024
										CallCls o_reflectiontype.2551 d:obj.3023 f:
										Let Ti357.3025
											Li 2
											Ans
												IfEq Ti356.3024 Ti357.3025
													Let Td358.3031
														CallCls o_diffuse.2571 d:obj.3023 f:
														Let Td359.3032
															FLi l.6037
															Let Tb360.3026
																CallCls fless.2487 d:f:Td358.3031 Td359.3032 
																Let Ti361.3027
																	Li 0
																	Ans
																		IfEq Tb360.3026 Ti361.3027
																			Ans
																				Nop
																			Let m_shape.3028
																				CallCls o_form.2549 d:obj.3023 f:
																				Let Ti362.3029
																					Li 1
																					Ans
																						IfEq m_shape.3028 Ti362.3029
																							Ans
																								CallCls setup_rect_reflection.2966 (setup_rect_reflection.2966) d:obj_id.2973 obj.3023 f:
																							Let Ti363.3030
																								Li 2
																								Ans
																									IfEq m_shape.3028 Ti363.3030
																										Ans
																											CallCls setup_surface_reflection.2969 (setup_surface_reflection.2969) d:obj_id.2973 obj.3023 f:
																										Ans
																											Nop
													Ans
														Nop
							Ans
								Nop
rt.2974 (args) : size_x.2975 size_y.2976 (fargs) : 
	Let write_ppm_header.2882
		Lwz $a26 56
		Let setup_reflections.2972
			Lwz $a26 52
			Let setup_dirvec_constants.2737
				Lwz $a26 48
				Let scan_pitch.2462
					Lwz $a26 44
					Let scan_line.2908
						Lwz $a26 40
						Let read_parameter.2639
							Lwz $a26 36
							Let pretrace_line.2898
								Lwz $a26 32
								Let n_objects.2443
									Lwz $a26 28
									Let light_dirvec.2470
										Lwz $a26 24
										Let light.2447
											Lwz $a26 20
											Let init_dirvecs.2957
												Lwz $a26 16
												Let image_size.2460
													Lwz $a26 12
													Let image_center.2461
														Lwz $a26 8
														Let create_pixelline.2921
															Lwz $a26 4
															Let Tu239.2981
																Stw size_x.2975 image_size.2460 0
																Let Tu238.2982
																	Stw size_y.2976 image_size.2460 4
																	Let Ti332.3019
																		ShiftR1 size_x.2975
																		Let Tu237.2983
																			Stw Ti332.3019 image_center.2461 0
																			Let Ti334.3017
																				ShiftR1 size_y.2976
																				Let Tu236.2984
																					Stw Ti334.3017 image_center.2461 4
																					Let Td336.3013
																						FLi l.6626
																						Let Td337.3014
																							CallCls min_caml_float_of_int d:size_x.2975 f:
																							Let Td338.3015
																								FReciprocal Td337.3014
																								Let Td339.3012
																									FMul Td336.3013 Td338.3015
																									Let Tu235.2985
																										Stfd Td339.3012 scan_pitch.2462 0
																										Let Tu340.3010
																											Nop
																											Let prev.2986
																												CallCls create_pixelline.2921 (create_pixelline.2921) d:f:
																												Let Tu341.3009
																													Nop
																													Let cur.2987
																														CallCls create_pixelline.2921 (create_pixelline.2921) d:f:
																														Let Tu342.3008
																															Nop
																															Let next.2988
																																CallCls create_pixelline.2921 (create_pixelline.2921) d:f:
																																Let Tu343.3007
																																	Nop
																																	Let Tu234.2989
																																		CallCls read_parameter.2639 (read_parameter.2639) d:f:
																																		Let Tu344.3006
																																			Nop
																																			Let Tu233.2990
																																				CallCls write_ppm_header.2882 (write_ppm_header.2882) d:f:
																																				Let Tu345.3005
																																					Nop
																																					Let Tu232.2991
																																						CallCls init_dirvecs.2957 (init_dirvecs.2957) d:f:
																																						Let Ta346.3004
																																							CallCls d_vec.2608 d:light_dirvec.2470 f:
																																							Let Tu231.2992
																																								CallCls veccpy.2511 d:Ta346.3004 light.2447 f:
																																								Let Tu230.2993
																																									CallCls setup_dirvec_constants.2737 (setup_dirvec_constants.2737) d:light_dirvec.2470 f:
																																									Let Ti348.3001
																																										Lwz n_objects.2443 0
																																										Let Ti350.3000
																																											Sub Ti348.3001 1
																																											Let Tu229.2994
																																												CallCls setup_reflections.2972 (setup_reflections.2972) d:Ti350.3000 f:
																																												Let Ti351.2998
																																													Li 0
																																													Let Ti352.2999
																																														Li 0
																																														Let Tu228.2995
																																															CallCls pretrace_line.2898 (pretrace_line.2898) d:cur.2987 Ti351.2998 Ti352.2999 f:
																																															Let Ti353.2996
																																																Li 0
																																																Let Ti354.2997
																																																	Li 2
																																																	Ans
																																																		CallCls scan_line.2908 (scan_line.2908) d:Ti353.2996 prev.2986 cur.2987 next.2988 Ti354.2997 f:

main
Let Ti241.6033
	Li 1
	Let Ti242.6034
		Li 0
		Let n_objects.2443
			CallCls min_caml_create_array d:Ti241.6033 Ti242.6034 f:
			Let Ti243.6031
				Li 0
				Let Td244.6032
					FLi l.6035
					Let dummy.6023
						CallCls min_caml_create_float_array d:Ti243.6031 f:Td244.6032 
						Let Ti245.6024
							Li 60
							Let Ti246.6026
								Li 0
								Let Ti247.6027
									Li 0
									Let Ti248.6028
										Li 0
										Let Ti249.6029
											Li 0
											Let Ti250.6030
												Li 0
												Let t.6629
													Mr $fp
													Let $fp
														Add $fp 48
														Let Tu6640
															Stw dummy.6023 t.6629 40
															Let Tu6639
																Stw dummy.6023 t.6629 36
																Let Tu6638
																	Stw dummy.6023 t.6629 32
																	Let Tu6637
																		Stw dummy.6023 t.6629 28
																		Let Tu6636
																			Stw Ti250.6030 t.6629 24
																			Let Tu6635
																				Stw dummy.6023 t.6629 20
																				Let Tu6634
																					Stw dummy.6023 t.6629 16
																					Let Tu6633
																						Stw Ti249.6029 t.6629 12
																						Let Tu6632
																							Stw Ti248.6028 t.6629 8
																							Let Tu6631
																								Stw Ti247.6027 t.6629 4
																								Let Tu6630
																									Stw Ti246.6026 t.6629 0
																									Let Tt251.6025
																										Mr t.6629
																										Let objects.2444
																											CallCls min_caml_create_array d:Ti245.6024 Tt251.6025 f:
																											Let Ti252.6021
																												Li 3
																												Let Td253.6022
																													FLi l.6035
																													Let screen.2445
																														CallCls min_caml_create_float_array d:Ti252.6021 f:Td253.6022 
																														Let Ti254.6019
																															Li 3
																															Let Td255.6020
																																FLi l.6035
																																Let viewpoint.2446
																																	CallCls min_caml_create_float_array d:Ti254.6019 f:Td255.6020 
																																	Let Ti256.6017
																																		Li 3
																																		Let Td257.6018
																																			FLi l.6035
																																			Let light.2447
																																				CallCls min_caml_create_float_array d:Ti256.6017 f:Td257.6018 
																																				Let Ti258.6015
																																					Li 1
																																					Let Td259.6016
																																						FLi l.6439
																																						Let beam.2448
																																							CallCls min_caml_create_float_array d:Ti258.6015 f:Td259.6016 
																																							Let Ti260.6010
																																								Li 50
																																								Let Ti261.6012
																																									Li 1
																																									Let Ti263.6013
																																										Li -1
																																										Let Ta264.6011
																																											CallCls min_caml_create_array d:Ti261.6012 Ti263.6013 f:
																																											Let and_net.2449
																																												CallCls min_caml_create_array d:Ti260.6010 Ta264.6011 f:
																																												Let Ti265.6005
																																													Li 1
																																													Let Ti266.6007
																																														Li 1
																																														Let Ta268.6008
																																															Lwz and_net.2449 0
																																															Let Ta269.6006
																																																CallCls min_caml_create_array d:Ti266.6007 Ta268.6008 f:
																																																Let or_net.2450
																																																	CallCls min_caml_create_array d:Ti265.6005 Ta269.6006 f:
																																																	Let Ti270.6003
																																																		Li 1
																																																		Let Td271.6004
																																																			FLi l.6035
																																																			Let solver_dist.2451
																																																				CallCls min_caml_create_float_array d:Ti270.6003 f:Td271.6004 
																																																				Let Ti272.6001
																																																					Li 1
																																																					Let Ti273.6002
																																																						Li 0
																																																						Let intsec_rectside.2452
																																																							CallCls min_caml_create_array d:Ti272.6001 Ti273.6002 f:
																																																							Let Ti274.5999
																																																								Li 1
																																																								Let Td275.6000
																																																									FLi l.6386
																																																									Let tmin.2453
																																																										CallCls min_caml_create_float_array d:Ti274.5999 f:Td275.6000 
																																																										Let Ti276.5997
																																																											Li 3
																																																											Let Td277.5998
																																																												FLi l.6035
																																																												Let intersection_point.2454
																																																													CallCls min_caml_create_float_array d:Ti276.5997 f:Td277.5998 
																																																													Let Ti278.5995
																																																														Li 1
																																																														Let Ti279.5996
																																																															Li 0
																																																															Let intersected_object_id.2455
																																																																CallCls min_caml_create_array d:Ti278.5995 Ti279.5996 f:
																																																																Let Ti280.5993
																																																																	Li 3
																																																																	Let Td281.5994
																																																																		FLi l.6035
																																																																		Let nvector.2456
																																																																			CallCls min_caml_create_float_array d:Ti280.5993 f:Td281.5994 
																																																																			Let Ti282.5991
																																																																				Li 3
																																																																				Let Td283.5992
																																																																					FLi l.6035
																																																																					Let texture_color.2457
																																																																						CallCls min_caml_create_float_array d:Ti282.5991 f:Td283.5992 
																																																																						Let Ti284.5989
																																																																							Li 3
																																																																							Let Td285.5990
																																																																								FLi l.6035
																																																																								Let diffuse_ray.2458
																																																																									CallCls min_caml_create_float_array d:Ti284.5989 f:Td285.5990 
																																																																									Let Ti286.5987
																																																																										Li 3
																																																																										Let Td287.5988
																																																																											FLi l.6035
																																																																											Let rgb.2459
																																																																												CallCls min_caml_create_float_array d:Ti286.5987 f:Td287.5988 
																																																																												Let Ti288.5985
																																																																													Li 2
																																																																													Let Ti289.5986
																																																																														Li 0
																																																																														Let image_size.2460
																																																																															CallCls min_caml_create_array d:Ti288.5985 Ti289.5986 f:
																																																																															Let Ti290.5983
																																																																																Li 2
																																																																																Let Ti291.5984
																																																																																	Li 0
																																																																																	Let image_center.2461
																																																																																		CallCls min_caml_create_array d:Ti290.5983 Ti291.5984 f:
																																																																																		Let Ti292.5981
																																																																																			Li 1
																																																																																			Let Td293.5982
																																																																																				FLi l.6035
																																																																																				Let scan_pitch.2462
																																																																																					CallCls min_caml_create_float_array d:Ti292.5981 f:Td293.5982 
																																																																																					Let Ti294.5979
																																																																																						Li 3
																																																																																						Let Td295.5980
																																																																																							FLi l.6035
																																																																																							Let startp.2463
																																																																																								CallCls min_caml_create_float_array d:Ti294.5979 f:Td295.5980 
																																																																																								Let Ti296.5977
																																																																																									Li 3
																																																																																									Let Td297.5978
																																																																																										FLi l.6035
																																																																																										Let startp_fast.2464
																																																																																											CallCls min_caml_create_float_array d:Ti296.5977 f:Td297.5978 
																																																																																											Let Ti298.5975
																																																																																												Li 3
																																																																																												Let Td299.5976
																																																																																													FLi l.6035
																																																																																													Let screenx_dir.2465
																																																																																														CallCls min_caml_create_float_array d:Ti298.5975 f:Td299.5976 
																																																																																														Let Ti300.5973
																																																																																															Li 3
																																																																																															Let Td301.5974
																																																																																																FLi l.6035
																																																																																																Let screeny_dir.2466
																																																																																																	CallCls min_caml_create_float_array d:Ti300.5973 f:Td301.5974 
																																																																																																	Let Ti302.5971
																																																																																																		Li 3
																																																																																																		Let Td303.5972
																																																																																																			FLi l.6035
																																																																																																			Let screenz_dir.2467
																																																																																																				CallCls min_caml_create_float_array d:Ti302.5971 f:Td303.5972 
																																																																																																				Let Ti304.5969
																																																																																																					Li 3
																																																																																																					Let Td305.5970
																																																																																																						FLi l.6035
																																																																																																						Let ptrace_dirvec.2468
																																																																																																							CallCls min_caml_create_float_array d:Ti304.5969 f:Td305.5970 
																																																																																																							Let Ti306.5967
																																																																																																								Li 0
																																																																																																								Let Td307.5968
																																																																																																									FLi l.6035
																																																																																																									Let dummyf.5960
																																																																																																										CallCls min_caml_create_float_array d:Ti306.5967 f:Td307.5968 
																																																																																																										Let Ti308.5966
																																																																																																											Li 0
																																																																																																											Let dummyff.5961
																																																																																																												CallCls min_caml_create_array d:Ti308.5966 dummyf.5960 f:
																																																																																																												Let Ti309.5964
																																																																																																													Li 0
																																																																																																													Let t.6642
																																																																																																														Mr $fp
																																																																																																														Let $fp
																																																																																																															Add $fp 8
																																																																																																															Let Tu6644
																																																																																																																Stw dummyff.5961 t.6642 4
																																																																																																																Let Tu6643
																																																																																																																	Stw dummyf.5960 t.6642 0
																																																																																																																	Let Tt310.5965
																																																																																																																		Mr t.6642
																																																																																																																		Let dummy_vs.5962
																																																																																																																			CallCls min_caml_create_array d:Ti309.5964 Tt310.5965 f:
																																																																																																																			Let Ti311.5963
																																																																																																																				Li 5
																																																																																																																				Let dirvecs.2469
																																																																																																																					CallCls min_caml_create_array d:Ti311.5963 dummy_vs.5962 f:
																																																																																																																					Let Ti312.5958
																																																																																																																						Li 0
																																																																																																																						Let Td313.5959
																																																																																																																							FLi l.6035
																																																																																																																							Let dummyf2.5952
																																																																																																																								CallCls min_caml_create_float_array d:Ti312.5958 f:Td313.5959 
																																																																																																																								Let Ti314.5956
																																																																																																																									Li 3
																																																																																																																									Let Td315.5957
																																																																																																																										FLi l.6035
																																																																																																																										Let v3.5953
																																																																																																																											CallCls min_caml_create_float_array d:Ti314.5956 f:Td315.5957 
																																																																																																																											Let Ti316.5955
																																																																																																																												Li 60
																																																																																																																												Let consts.5954
																																																																																																																													CallCls min_caml_create_array d:Ti316.5955 dummyf2.5952 f:
																																																																																																																													Let t.6645
																																																																																																																														Mr $fp
																																																																																																																														Let $fp
																																																																																																																															Add $fp 8
																																																																																																																															Let Tu6647
																																																																																																																																Stw consts.5954 t.6645 4
																																																																																																																																Let Tu6646
																																																																																																																																	Stw v3.5953 t.6645 0
																																																																																																																																	Let light_dirvec.2470
																																																																																																																																		Mr t.6645
																																																																																																																																		Let Ti317.5950
																																																																																																																																			Li 0
																																																																																																																																			Let Td318.5951
																																																																																																																																				FLi l.6035
																																																																																																																																				Let dummyf3.5942
																																																																																																																																					CallCls min_caml_create_float_array d:Ti317.5950 f:Td318.5951 
																																																																																																																																					Let Ti319.5949
																																																																																																																																						Li 0
																																																																																																																																						Let dummyff3.5943
																																																																																																																																							CallCls min_caml_create_array d:Ti319.5949 dummyf3.5942 f:
																																																																																																																																							Let t.6648
																																																																																																																																								Mr $fp
																																																																																																																																								Let $fp
																																																																																																																																									Add $fp 8
																																																																																																																																									Let Tu6650
																																																																																																																																										Stw dummyff3.5943 t.6648 4
																																																																																																																																										Let Tu6649
																																																																																																																																											Stw dummyf3.5942 t.6648 0
																																																																																																																																											Let dummydv.5944
																																																																																																																																												Mr t.6648
																																																																																																																																												Let Ti320.5945
																																																																																																																																													Li 180
																																																																																																																																													Let Ti321.5947
																																																																																																																																														Li 0
																																																																																																																																														Let Td322.5948
																																																																																																																																															FLi l.6035
																																																																																																																																															Let t.6651
																																																																																																																																																Mr $fp
																																																																																																																																																Let $fp
																																																																																																																																																	Add $fp 16
																																																																																																																																																	Let Tu6654
																																																																																																																																																		Stfd Td322.5948 t.6651 8
																																																																																																																																																		Let Tu6653
																																																																																																																																																			Stw dummydv.5944 t.6651 4
																																																																																																																																																			Let Tu6652
																																																																																																																																																				Stw Ti321.5947 t.6651 0
																																																																																																																																																				Let Tt323.5946
																																																																																																																																																					Mr t.6651
																																																																																																																																																					Let reflections.2471
																																																																																																																																																						CallCls min_caml_create_array d:Ti320.5945 Tt323.5946 f:
																																																																																																																																																						Let Ti324.5940
																																																																																																																																																							Li 1
																																																																																																																																																							Let Ti325.5941
																																																																																																																																																								Li 0
																																																																																																																																																								Let n_reflections.2472
																																																																																																																																																									CallCls min_caml_create_array d:Ti324.5940 Ti325.5941 f:
																																																																																																																																																									Let read_screen_settings.2620
																																																																																																																																																										Mr $fp
																																																																																																																																																										Let $fp
																																																																																																																																																											Add $fp 24
																																																																																																																																																											Let l.7033
																																																																																																																																																												SetL read_screen_settings.2620
																																																																																																																																																												Let Tu7034
																																																																																																																																																													Stw l.7033 read_screen_settings.2620 0
																																																																																																																																																													Let Tu7032
																																																																																																																																																														Stw viewpoint.2446 read_screen_settings.2620 20
																																																																																																																																																														Let Tu7031
																																																																																																																																																															Stw screenz_dir.2467 read_screen_settings.2620 16
																																																																																																																																																															Let Tu7030
																																																																																																																																																																Stw screeny_dir.2466 read_screen_settings.2620 12
																																																																																																																																																																Let Tu7029
																																																																																																																																																																	Stw screenx_dir.2465 read_screen_settings.2620 8
																																																																																																																																																																	Let Tu7028
																																																																																																																																																																		Stw screen.2445 read_screen_settings.2620 4
																																																																																																																																																																		Let read_light.2622
																																																																																																																																																																			Mr $fp
																																																																																																																																																																			Let $fp
																																																																																																																																																																				Add $fp 16
																																																																																																																																																																				Let l.7026
																																																																																																																																																																					SetL read_light.2622
																																																																																																																																																																					Let Tu7027
																																																																																																																																																																						Stw l.7026 read_light.2622 0
																																																																																																																																																																						Let Tu7025
																																																																																																																																																																							Stw light.2447 read_light.2622 8
																																																																																																																																																																							Let Tu7024
																																																																																																																																																																								Stw beam.2448 read_light.2622 4
																																																																																																																																																																								Let read_nth_object.2627
																																																																																																																																																																									Mr $fp
																																																																																																																																																																									Let $fp
																																																																																																																																																																										Add $fp 8
																																																																																																																																																																										Let l.7022
																																																																																																																																																																											SetL read_nth_object.2627
																																																																																																																																																																											Let Tu7023
																																																																																																																																																																												Stw l.7022 read_nth_object.2627 0
																																																																																																																																																																												Let Tu7021
																																																																																																																																																																													Stw objects.2444 read_nth_object.2627 4
																																																																																																																																																																													Let read_object.2629
																																																																																																																																																																														Mr $fp
																																																																																																																																																																														Let $fp
																																																																																																																																																																															Add $fp 16
																																																																																																																																																																															Let l.7019
																																																																																																																																																																																SetL read_object.2629
																																																																																																																																																																																Let Tu7020
																																																																																																																																																																																	Stw l.7019 read_object.2629 0
																																																																																																																																																																																	Let Tu7018
																																																																																																																																																																																		Stw read_nth_object.2627 read_object.2629 8
																																																																																																																																																																																		Let Tu7017
																																																																																																																																																																																			Stw n_objects.2443 read_object.2629 4
																																																																																																																																																																																			Let read_all_object.2631
																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																				Let $fp
																																																																																																																																																																																					Add $fp 8
																																																																																																																																																																																					Let l.7015
																																																																																																																																																																																						SetL read_all_object.2631
																																																																																																																																																																																						Let Tu7016
																																																																																																																																																																																							Stw l.7015 read_all_object.2631 0
																																																																																																																																																																																							Let Tu7014
																																																																																																																																																																																								Stw read_object.2629 read_all_object.2631 4
																																																																																																																																																																																								Let read_and_network.2637
																																																																																																																																																																																									Mr $fp
																																																																																																																																																																																									Let $fp
																																																																																																																																																																																										Add $fp 8
																																																																																																																																																																																										Let l.7012
																																																																																																																																																																																											SetL read_and_network.2637
																																																																																																																																																																																											Let Tu7013
																																																																																																																																																																																												Stw l.7012 read_and_network.2637 0
																																																																																																																																																																																												Let Tu7011
																																																																																																																																																																																													Stw and_net.2449 read_and_network.2637 4
																																																																																																																																																																																													Let read_parameter.2639
																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																														Let $fp
																																																																																																																																																																																															Add $fp 24
																																																																																																																																																																																															Let l.7009
																																																																																																																																																																																																SetL read_parameter.2639
																																																																																																																																																																																																Let Tu7010
																																																																																																																																																																																																	Stw l.7009 read_parameter.2639 0
																																																																																																																																																																																																	Let Tu7008
																																																																																																																																																																																																		Stw read_screen_settings.2620 read_parameter.2639 20
																																																																																																																																																																																																		Let Tu7007
																																																																																																																																																																																																			Stw read_light.2622 read_parameter.2639 16
																																																																																																																																																																																																			Let Tu7006
																																																																																																																																																																																																				Stw read_and_network.2637 read_parameter.2639 12
																																																																																																																																																																																																				Let Tu7005
																																																																																																																																																																																																					Stw read_all_object.2631 read_parameter.2639 8
																																																																																																																																																																																																					Let Tu7004
																																																																																																																																																																																																						Stw or_net.2450 read_parameter.2639 4
																																																																																																																																																																																																						Let solver_rect_surface.2641
																																																																																																																																																																																																							Mr $fp
																																																																																																																																																																																																							Let $fp
																																																																																																																																																																																																								Add $fp 8
																																																																																																																																																																																																								Let l.7002
																																																																																																																																																																																																									SetL solver_rect_surface.2641
																																																																																																																																																																																																									Let Tu7003
																																																																																																																																																																																																										Stw l.7002 solver_rect_surface.2641 0
																																																																																																																																																																																																										Let Tu7001
																																																																																																																																																																																																											Stw solver_dist.2451 solver_rect_surface.2641 4
																																																																																																																																																																																																											Let solver_rect.2650
																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																													Add $fp 8
																																																																																																																																																																																																													Let l.6999
																																																																																																																																																																																																														SetL solver_rect.2650
																																																																																																																																																																																																														Let Tu7000
																																																																																																																																																																																																															Stw l.6999 solver_rect.2650 0
																																																																																																																																																																																																															Let Tu6998
																																																																																																																																																																																																																Stw solver_rect_surface.2641 solver_rect.2650 4
																																																																																																																																																																																																																Let solver_surface.2656
																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																		Add $fp 8
																																																																																																																																																																																																																		Let l.6996
																																																																																																																																																																																																																			SetL solver_surface.2656
																																																																																																																																																																																																																			Let Tu6997
																																																																																																																																																																																																																				Stw l.6996 solver_surface.2656 0
																																																																																																																																																																																																																				Let Tu6995
																																																																																																																																																																																																																					Stw solver_dist.2451 solver_surface.2656 4
																																																																																																																																																																																																																					Let solver_second.2675
																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																							Add $fp 8
																																																																																																																																																																																																																							Let l.6993
																																																																																																																																																																																																																								SetL solver_second.2675
																																																																																																																																																																																																																								Let Tu6994
																																																																																																																																																																																																																									Stw l.6993 solver_second.2675 0
																																																																																																																																																																																																																									Let Tu6992
																																																																																																																																																																																																																										Stw solver_dist.2451 solver_second.2675 4
																																																																																																																																																																																																																										Let solver.2681
																																																																																																																																																																																																																											Mr $fp
																																																																																																																																																																																																																											Let $fp
																																																																																																																																																																																																																												Add $fp 24
																																																																																																																																																																																																																												Let l.6990
																																																																																																																																																																																																																													SetL solver.2681
																																																																																																																																																																																																																													Let Tu6991
																																																																																																																																																																																																																														Stw l.6990 solver.2681 0
																																																																																																																																																																																																																														Let Tu6989
																																																																																																																																																																																																																															Stw solver_surface.2656 solver.2681 16
																																																																																																																																																																																																																															Let Tu6988
																																																																																																																																																																																																																																Stw solver_second.2675 solver.2681 12
																																																																																																																																																																																																																																Let Tu6987
																																																																																																																																																																																																																																	Stw solver_rect.2650 solver.2681 8
																																																																																																																																																																																																																																	Let Tu6986
																																																																																																																																																																																																																																		Stw objects.2444 solver.2681 4
																																																																																																																																																																																																																																		Let solver_rect_fast.2685
																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																				Add $fp 8
																																																																																																																																																																																																																																				Let l.6984
																																																																																																																																																																																																																																					SetL solver_rect_fast.2685
																																																																																																																																																																																																																																					Let Tu6985
																																																																																																																																																																																																																																						Stw l.6984 solver_rect_fast.2685 0
																																																																																																																																																																																																																																						Let Tu6983
																																																																																																																																																																																																																																							Stw solver_dist.2451 solver_rect_fast.2685 4
																																																																																																																																																																																																																																							Let solver_surface_fast.2692
																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																									Add $fp 8
																																																																																																																																																																																																																																									Let l.6981
																																																																																																																																																																																																																																										SetL solver_surface_fast.2692
																																																																																																																																																																																																																																										Let Tu6982
																																																																																																																																																																																																																																											Stw l.6981 solver_surface_fast.2692 0
																																																																																																																																																																																																																																											Let Tu6980
																																																																																																																																																																																																																																												Stw solver_dist.2451 solver_surface_fast.2692 4
																																																																																																																																																																																																																																												Let solver_second_fast.2698
																																																																																																																																																																																																																																													Mr $fp
																																																																																																																																																																																																																																													Let $fp
																																																																																																																																																																																																																																														Add $fp 8
																																																																																																																																																																																																																																														Let l.6978
																																																																																																																																																																																																																																															SetL solver_second_fast.2698
																																																																																																																																																																																																																																															Let Tu6979
																																																																																																																																																																																																																																																Stw l.6978 solver_second_fast.2698 0
																																																																																																																																																																																																																																																Let Tu6977
																																																																																																																																																																																																																																																	Stw solver_dist.2451 solver_second_fast.2698 4
																																																																																																																																																																																																																																																	Let solver_fast.2704
																																																																																																																																																																																																																																																		Mr $fp
																																																																																																																																																																																																																																																		Let $fp
																																																																																																																																																																																																																																																			Add $fp 24
																																																																																																																																																																																																																																																			Let l.6975
																																																																																																																																																																																																																																																				SetL solver_fast.2704
																																																																																																																																																																																																																																																				Let Tu6976
																																																																																																																																																																																																																																																					Stw l.6975 solver_fast.2704 0
																																																																																																																																																																																																																																																					Let Tu6974
																																																																																																																																																																																																																																																						Stw solver_surface_fast.2692 solver_fast.2704 16
																																																																																																																																																																																																																																																						Let Tu6973
																																																																																																																																																																																																																																																							Stw solver_second_fast.2698 solver_fast.2704 12
																																																																																																																																																																																																																																																							Let Tu6972
																																																																																																																																																																																																																																																								Stw solver_rect_fast.2685 solver_fast.2704 8
																																																																																																																																																																																																																																																								Let Tu6971
																																																																																																																																																																																																																																																									Stw objects.2444 solver_fast.2704 4
																																																																																																																																																																																																																																																									Let solver_surface_fast2.2708
																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																											Add $fp 8
																																																																																																																																																																																																																																																											Let l.6969
																																																																																																																																																																																																																																																												SetL solver_surface_fast2.2708
																																																																																																																																																																																																																																																												Let Tu6970
																																																																																																																																																																																																																																																													Stw l.6969 solver_surface_fast2.2708 0
																																																																																																																																																																																																																																																													Let Tu6968
																																																																																																																																																																																																																																																														Stw solver_dist.2451 solver_surface_fast2.2708 4
																																																																																																																																																																																																																																																														Let solver_second_fast2.2715
																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																Add $fp 8
																																																																																																																																																																																																																																																																Let l.6966
																																																																																																																																																																																																																																																																	SetL solver_second_fast2.2715
																																																																																																																																																																																																																																																																	Let Tu6967
																																																																																																																																																																																																																																																																		Stw l.6966 solver_second_fast2.2715 0
																																																																																																																																																																																																																																																																		Let Tu6965
																																																																																																																																																																																																																																																																			Stw solver_dist.2451 solver_second_fast2.2715 4
																																																																																																																																																																																																																																																																			Let solver_fast2.2722
																																																																																																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																																																																																																				Let $fp
																																																																																																																																																																																																																																																																					Add $fp 24
																																																																																																																																																																																																																																																																					Let l.6963
																																																																																																																																																																																																																																																																						SetL solver_fast2.2722
																																																																																																																																																																																																																																																																						Let Tu6964
																																																																																																																																																																																																																																																																							Stw l.6963 solver_fast2.2722 0
																																																																																																																																																																																																																																																																							Let Tu6962
																																																																																																																																																																																																																																																																								Stw solver_surface_fast2.2708 solver_fast2.2722 16
																																																																																																																																																																																																																																																																								Let Tu6961
																																																																																																																																																																																																																																																																									Stw solver_second_fast2.2715 solver_fast2.2722 12
																																																																																																																																																																																																																																																																									Let Tu6960
																																																																																																																																																																																																																																																																										Stw solver_rect_fast.2685 solver_fast2.2722 8
																																																																																																																																																																																																																																																																										Let Tu6959
																																																																																																																																																																																																																																																																											Stw objects.2444 solver_fast2.2722 4
																																																																																																																																																																																																																																																																											Let iter_setup_dirvec_constants.2734
																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																													Add $fp 8
																																																																																																																																																																																																																																																																													Let l.6957
																																																																																																																																																																																																																																																																														SetL iter_setup_dirvec_constants.2734
																																																																																																																																																																																																																																																																														Let Tu6958
																																																																																																																																																																																																																																																																															Stw l.6957 iter_setup_dirvec_constants.2734 0
																																																																																																																																																																																																																																																																															Let Tu6956
																																																																																																																																																																																																																																																																																Stw objects.2444 iter_setup_dirvec_constants.2734 4
																																																																																																																																																																																																																																																																																Let setup_dirvec_constants.2737
																																																																																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																																																																																		Add $fp 16
																																																																																																																																																																																																																																																																																		Let l.6954
																																																																																																																																																																																																																																																																																			SetL setup_dirvec_constants.2737
																																																																																																																																																																																																																																																																																			Let Tu6955
																																																																																																																																																																																																																																																																																				Stw l.6954 setup_dirvec_constants.2737 0
																																																																																																																																																																																																																																																																																				Let Tu6953
																																																																																																																																																																																																																																																																																					Stw n_objects.2443 setup_dirvec_constants.2737 8
																																																																																																																																																																																																																																																																																					Let Tu6952
																																																																																																																																																																																																																																																																																						Stw iter_setup_dirvec_constants.2734 setup_dirvec_constants.2737 4
																																																																																																																																																																																																																																																																																						Let setup_startp_constants.2739
																																																																																																																																																																																																																																																																																							Mr $fp
																																																																																																																																																																																																																																																																																							Let $fp
																																																																																																																																																																																																																																																																																								Add $fp 8
																																																																																																																																																																																																																																																																																								Let l.6950
																																																																																																																																																																																																																																																																																									SetL setup_startp_constants.2739
																																																																																																																																																																																																																																																																																									Let Tu6951
																																																																																																																																																																																																																																																																																										Stw l.6950 setup_startp_constants.2739 0
																																																																																																																																																																																																																																																																																										Let Tu6949
																																																																																																																																																																																																																																																																																											Stw objects.2444 setup_startp_constants.2739 4
																																																																																																																																																																																																																																																																																											Let setup_startp.2742
																																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																																													Add $fp 16
																																																																																																																																																																																																																																																																																													Let l.6947
																																																																																																																																																																																																																																																																																														SetL setup_startp.2742
																																																																																																																																																																																																																																																																																														Let Tu6948
																																																																																																																																																																																																																																																																																															Stw l.6947 setup_startp.2742 0
																																																																																																																																																																																																																																																																																															Let Tu6946
																																																																																																																																																																																																																																																																																																Stw startp_fast.2464 setup_startp.2742 12
																																																																																																																																																																																																																																																																																																Let Tu6945
																																																																																																																																																																																																																																																																																																	Stw setup_startp_constants.2739 setup_startp.2742 8
																																																																																																																																																																																																																																																																																																	Let Tu6944
																																																																																																																																																																																																																																																																																																		Stw n_objects.2443 setup_startp.2742 4
																																																																																																																																																																																																																																																																																																		Let check_all_inside.2764
																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																				Add $fp 8
																																																																																																																																																																																																																																																																																																				Let l.6942
																																																																																																																																																																																																																																																																																																					SetL check_all_inside.2764
																																																																																																																																																																																																																																																																																																					Let Tu6943
																																																																																																																																																																																																																																																																																																						Stw l.6942 check_all_inside.2764 0
																																																																																																																																																																																																																																																																																																						Let Tu6941
																																																																																																																																																																																																																																																																																																							Stw objects.2444 check_all_inside.2764 4
																																																																																																																																																																																																																																																																																																							Let shadow_check_and_group.2770
																																																																																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																																																																																									Add $fp 32
																																																																																																																																																																																																																																																																																																									Let l.6939
																																																																																																																																																																																																																																																																																																										SetL shadow_check_and_group.2770
																																																																																																																																																																																																																																																																																																										Let Tu6940
																																																																																																																																																																																																																																																																																																											Stw l.6939 shadow_check_and_group.2770 0
																																																																																																																																																																																																																																																																																																											Let Tu6938
																																																																																																																																																																																																																																																																																																												Stw solver_fast.2704 shadow_check_and_group.2770 28
																																																																																																																																																																																																																																																																																																												Let Tu6937
																																																																																																																																																																																																																																																																																																													Stw solver_dist.2451 shadow_check_and_group.2770 24
																																																																																																																																																																																																																																																																																																													Let Tu6936
																																																																																																																																																																																																																																																																																																														Stw objects.2444 shadow_check_and_group.2770 20
																																																																																																																																																																																																																																																																																																														Let Tu6935
																																																																																																																																																																																																																																																																																																															Stw light_dirvec.2470 shadow_check_and_group.2770 16
																																																																																																																																																																																																																																																																																																															Let Tu6934
																																																																																																																																																																																																																																																																																																																Stw light.2447 shadow_check_and_group.2770 12
																																																																																																																																																																																																																																																																																																																Let Tu6933
																																																																																																																																																																																																																																																																																																																	Stw intersection_point.2454 shadow_check_and_group.2770 8
																																																																																																																																																																																																																																																																																																																	Let Tu6932
																																																																																																																																																																																																																																																																																																																		Stw check_all_inside.2764 shadow_check_and_group.2770 4
																																																																																																																																																																																																																																																																																																																		Let shadow_check_one_or_group.2773
																																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																																				Add $fp 16
																																																																																																																																																																																																																																																																																																																				Let l.6930
																																																																																																																																																																																																																																																																																																																					SetL shadow_check_one_or_group.2773
																																																																																																																																																																																																																																																																																																																					Let Tu6931
																																																																																																																																																																																																																																																																																																																						Stw l.6930 shadow_check_one_or_group.2773 0
																																																																																																																																																																																																																																																																																																																						Let Tu6929
																																																																																																																																																																																																																																																																																																																							Stw shadow_check_and_group.2770 shadow_check_one_or_group.2773 8
																																																																																																																																																																																																																																																																																																																							Let Tu6928
																																																																																																																																																																																																																																																																																																																								Stw and_net.2449 shadow_check_one_or_group.2773 4
																																																																																																																																																																																																																																																																																																																								Let shadow_check_one_or_matrix.2776
																																																																																																																																																																																																																																																																																																																									Mr $fp
																																																																																																																																																																																																																																																																																																																									Let $fp
																																																																																																																																																																																																																																																																																																																										Add $fp 24
																																																																																																																																																																																																																																																																																																																										Let l.6926
																																																																																																																																																																																																																																																																																																																											SetL shadow_check_one_or_matrix.2776
																																																																																																																																																																																																																																																																																																																											Let Tu6927
																																																																																																																																																																																																																																																																																																																												Stw l.6926 shadow_check_one_or_matrix.2776 0
																																																																																																																																																																																																																																																																																																																												Let Tu6925
																																																																																																																																																																																																																																																																																																																													Stw solver_fast.2704 shadow_check_one_or_matrix.2776 20
																																																																																																																																																																																																																																																																																																																													Let Tu6924
																																																																																																																																																																																																																																																																																																																														Stw solver_dist.2451 shadow_check_one_or_matrix.2776 16
																																																																																																																																																																																																																																																																																																																														Let Tu6923
																																																																																																																																																																																																																																																																																																																															Stw shadow_check_one_or_group.2773 shadow_check_one_or_matrix.2776 12
																																																																																																																																																																																																																																																																																																																															Let Tu6922
																																																																																																																																																																																																																																																																																																																																Stw light_dirvec.2470 shadow_check_one_or_matrix.2776 8
																																																																																																																																																																																																																																																																																																																																Let Tu6921
																																																																																																																																																																																																																																																																																																																																	Stw intersection_point.2454 shadow_check_one_or_matrix.2776 4
																																																																																																																																																																																																																																																																																																																																	Let solve_each_element.2779
																																																																																																																																																																																																																																																																																																																																		Mr $fp
																																																																																																																																																																																																																																																																																																																																		Let $fp
																																																																																																																																																																																																																																																																																																																																			Add $fp 40
																																																																																																																																																																																																																																																																																																																																			Let l.6919
																																																																																																																																																																																																																																																																																																																																				SetL solve_each_element.2779
																																																																																																																																																																																																																																																																																																																																				Let Tu6920
																																																																																																																																																																																																																																																																																																																																					Stw l.6919 solve_each_element.2779 0
																																																																																																																																																																																																																																																																																																																																					Let Tu6918
																																																																																																																																																																																																																																																																																																																																						Stw tmin.2453 solve_each_element.2779 36
																																																																																																																																																																																																																																																																																																																																						Let Tu6917
																																																																																																																																																																																																																																																																																																																																							Stw startp.2463 solve_each_element.2779 32
																																																																																																																																																																																																																																																																																																																																							Let Tu6916
																																																																																																																																																																																																																																																																																																																																								Stw solver_dist.2451 solve_each_element.2779 28
																																																																																																																																																																																																																																																																																																																																								Let Tu6915
																																																																																																																																																																																																																																																																																																																																									Stw solver.2681 solve_each_element.2779 24
																																																																																																																																																																																																																																																																																																																																									Let Tu6914
																																																																																																																																																																																																																																																																																																																																										Stw objects.2444 solve_each_element.2779 20
																																																																																																																																																																																																																																																																																																																																										Let Tu6913
																																																																																																																																																																																																																																																																																																																																											Stw intsec_rectside.2452 solve_each_element.2779 16
																																																																																																																																																																																																																																																																																																																																											Let Tu6912
																																																																																																																																																																																																																																																																																																																																												Stw intersection_point.2454 solve_each_element.2779 12
																																																																																																																																																																																																																																																																																																																																												Let Tu6911
																																																																																																																																																																																																																																																																																																																																													Stw intersected_object_id.2455 solve_each_element.2779 8
																																																																																																																																																																																																																																																																																																																																													Let Tu6910
																																																																																																																																																																																																																																																																																																																																														Stw check_all_inside.2764 solve_each_element.2779 4
																																																																																																																																																																																																																																																																																																																																														Let solve_one_or_network.2783
																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																Add $fp 16
																																																																																																																																																																																																																																																																																																																																																Let l.6908
																																																																																																																																																																																																																																																																																																																																																	SetL solve_one_or_network.2783
																																																																																																																																																																																																																																																																																																																																																	Let Tu6909
																																																																																																																																																																																																																																																																																																																																																		Stw l.6908 solve_one_or_network.2783 0
																																																																																																																																																																																																																																																																																																																																																		Let Tu6907
																																																																																																																																																																																																																																																																																																																																																			Stw solve_each_element.2779 solve_one_or_network.2783 8
																																																																																																																																																																																																																																																																																																																																																			Let Tu6906
																																																																																																																																																																																																																																																																																																																																																				Stw and_net.2449 solve_one_or_network.2783 4
																																																																																																																																																																																																																																																																																																																																																				Let trace_or_matrix.2787
																																																																																																																																																																																																																																																																																																																																																					Mr $fp
																																																																																																																																																																																																																																																																																																																																																					Let $fp
																																																																																																																																																																																																																																																																																																																																																						Add $fp 24
																																																																																																																																																																																																																																																																																																																																																						Let l.6904
																																																																																																																																																																																																																																																																																																																																																							SetL trace_or_matrix.2787
																																																																																																																																																																																																																																																																																																																																																							Let Tu6905
																																																																																																																																																																																																																																																																																																																																																								Stw l.6904 trace_or_matrix.2787 0
																																																																																																																																																																																																																																																																																																																																																								Let Tu6903
																																																																																																																																																																																																																																																																																																																																																									Stw tmin.2453 trace_or_matrix.2787 20
																																																																																																																																																																																																																																																																																																																																																									Let Tu6902
																																																																																																																																																																																																																																																																																																																																																										Stw startp.2463 trace_or_matrix.2787 16
																																																																																																																																																																																																																																																																																																																																																										Let Tu6901
																																																																																																																																																																																																																																																																																																																																																											Stw solver_dist.2451 trace_or_matrix.2787 12
																																																																																																																																																																																																																																																																																																																																																											Let Tu6900
																																																																																																																																																																																																																																																																																																																																																												Stw solver.2681 trace_or_matrix.2787 8
																																																																																																																																																																																																																																																																																																																																																												Let Tu6899
																																																																																																																																																																																																																																																																																																																																																													Stw solve_one_or_network.2783 trace_or_matrix.2787 4
																																																																																																																																																																																																																																																																																																																																																													Let judge_intersection.2791
																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																															Add $fp 16
																																																																																																																																																																																																																																																																																																																																																															Let l.6897
																																																																																																																																																																																																																																																																																																																																																																SetL judge_intersection.2791
																																																																																																																																																																																																																																																																																																																																																																Let Tu6898
																																																																																																																																																																																																																																																																																																																																																																	Stw l.6897 judge_intersection.2791 0
																																																																																																																																																																																																																																																																																																																																																																	Let Tu6896
																																																																																																																																																																																																																																																																																																																																																																		Stw trace_or_matrix.2787 judge_intersection.2791 12
																																																																																																																																																																																																																																																																																																																																																																		Let Tu6895
																																																																																																																																																																																																																																																																																																																																																																			Stw tmin.2453 judge_intersection.2791 8
																																																																																																																																																																																																																																																																																																																																																																			Let Tu6894
																																																																																																																																																																																																																																																																																																																																																																				Stw or_net.2450 judge_intersection.2791 4
																																																																																																																																																																																																																																																																																																																																																																				Let solve_each_element_fast.2793
																																																																																																																																																																																																																																																																																																																																																																					Mr $fp
																																																																																																																																																																																																																																																																																																																																																																					Let $fp
																																																																																																																																																																																																																																																																																																																																																																						Add $fp 40
																																																																																																																																																																																																																																																																																																																																																																						Let l.6892
																																																																																																																																																																																																																																																																																																																																																																							SetL solve_each_element_fast.2793
																																																																																																																																																																																																																																																																																																																																																																							Let Tu6893
																																																																																																																																																																																																																																																																																																																																																																								Stw l.6892 solve_each_element_fast.2793 0
																																																																																																																																																																																																																																																																																																																																																																								Let Tu6891
																																																																																																																																																																																																																																																																																																																																																																									Stw tmin.2453 solve_each_element_fast.2793 36
																																																																																																																																																																																																																																																																																																																																																																									Let Tu6890
																																																																																																																																																																																																																																																																																																																																																																										Stw startp_fast.2464 solve_each_element_fast.2793 32
																																																																																																																																																																																																																																																																																																																																																																										Let Tu6889
																																																																																																																																																																																																																																																																																																																																																																											Stw solver_fast2.2722 solve_each_element_fast.2793 28
																																																																																																																																																																																																																																																																																																																																																																											Let Tu6888
																																																																																																																																																																																																																																																																																																																																																																												Stw solver_dist.2451 solve_each_element_fast.2793 24
																																																																																																																																																																																																																																																																																																																																																																												Let Tu6887
																																																																																																																																																																																																																																																																																																																																																																													Stw objects.2444 solve_each_element_fast.2793 20
																																																																																																																																																																																																																																																																																																																																																																													Let Tu6886
																																																																																																																																																																																																																																																																																																																																																																														Stw intsec_rectside.2452 solve_each_element_fast.2793 16
																																																																																																																																																																																																																																																																																																																																																																														Let Tu6885
																																																																																																																																																																																																																																																																																																																																																																															Stw intersection_point.2454 solve_each_element_fast.2793 12
																																																																																																																																																																																																																																																																																																																																																																															Let Tu6884
																																																																																																																																																																																																																																																																																																																																																																																Stw intersected_object_id.2455 solve_each_element_fast.2793 8
																																																																																																																																																																																																																																																																																																																																																																																Let Tu6883
																																																																																																																																																																																																																																																																																																																																																																																	Stw check_all_inside.2764 solve_each_element_fast.2793 4
																																																																																																																																																																																																																																																																																																																																																																																	Let solve_one_or_network_fast.2797
																																																																																																																																																																																																																																																																																																																																																																																		Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																		Let $fp
																																																																																																																																																																																																																																																																																																																																																																																			Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																			Let l.6881
																																																																																																																																																																																																																																																																																																																																																																																				SetL solve_one_or_network_fast.2797
																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6882
																																																																																																																																																																																																																																																																																																																																																																																					Stw l.6881 solve_one_or_network_fast.2797 0
																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6880
																																																																																																																																																																																																																																																																																																																																																																																						Stw solve_each_element_fast.2793 solve_one_or_network_fast.2797 8
																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6879
																																																																																																																																																																																																																																																																																																																																																																																							Stw and_net.2449 solve_one_or_network_fast.2797 4
																																																																																																																																																																																																																																																																																																																																																																																							Let trace_or_matrix_fast.2801
																																																																																																																																																																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																																																																																																																																																																									Add $fp 24
																																																																																																																																																																																																																																																																																																																																																																																									Let l.6877
																																																																																																																																																																																																																																																																																																																																																																																										SetL trace_or_matrix_fast.2801
																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6878
																																																																																																																																																																																																																																																																																																																																																																																											Stw l.6877 trace_or_matrix_fast.2801 0
																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6876
																																																																																																																																																																																																																																																																																																																																																																																												Stw tmin.2453 trace_or_matrix_fast.2801 16
																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6875
																																																																																																																																																																																																																																																																																																																																																																																													Stw solver_fast2.2722 trace_or_matrix_fast.2801 12
																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6874
																																																																																																																																																																																																																																																																																																																																																																																														Stw solver_dist.2451 trace_or_matrix_fast.2801 8
																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6873
																																																																																																																																																																																																																																																																																																																																																																																															Stw solve_one_or_network_fast.2797 trace_or_matrix_fast.2801 4
																																																																																																																																																																																																																																																																																																																																																																																															Let judge_intersection_fast.2805
																																																																																																																																																																																																																																																																																																																																																																																																Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																	Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																	Let l.6871
																																																																																																																																																																																																																																																																																																																																																																																																		SetL judge_intersection_fast.2805
																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6872
																																																																																																																																																																																																																																																																																																																																																																																																			Stw l.6871 judge_intersection_fast.2805 0
																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6870
																																																																																																																																																																																																																																																																																																																																																																																																				Stw trace_or_matrix_fast.2801 judge_intersection_fast.2805 12
																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6869
																																																																																																																																																																																																																																																																																																																																																																																																					Stw tmin.2453 judge_intersection_fast.2805 8
																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6868
																																																																																																																																																																																																																																																																																																																																																																																																						Stw or_net.2450 judge_intersection_fast.2805 4
																																																																																																																																																																																																																																																																																																																																																																																																						Let get_nvector_rect.2807
																																																																																																																																																																																																																																																																																																																																																																																																							Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																							Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																								Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																								Let l.6866
																																																																																																																																																																																																																																																																																																																																																																																																									SetL get_nvector_rect.2807
																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6867
																																																																																																																																																																																																																																																																																																																																																																																																										Stw l.6866 get_nvector_rect.2807 0
																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6865
																																																																																																																																																																																																																																																																																																																																																																																																											Stw nvector.2456 get_nvector_rect.2807 8
																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6864
																																																																																																																																																																																																																																																																																																																																																																																																												Stw intsec_rectside.2452 get_nvector_rect.2807 4
																																																																																																																																																																																																																																																																																																																																																																																																												Let get_nvector_plane.2809
																																																																																																																																																																																																																																																																																																																																																																																																													Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																													Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																														Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																														Let l.6862
																																																																																																																																																																																																																																																																																																																																																																																																															SetL get_nvector_plane.2809
																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6863
																																																																																																																																																																																																																																																																																																																																																																																																																Stw l.6862 get_nvector_plane.2809 0
																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6861
																																																																																																																																																																																																																																																																																																																																																																																																																	Stw nvector.2456 get_nvector_plane.2809 4
																																																																																																																																																																																																																																																																																																																																																																																																																	Let get_nvector_second.2811
																																																																																																																																																																																																																																																																																																																																																																																																																		Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																		Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																			Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																			Let l.6859
																																																																																																																																																																																																																																																																																																																																																																																																																				SetL get_nvector_second.2811
																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6860
																																																																																																																																																																																																																																																																																																																																																																																																																					Stw l.6859 get_nvector_second.2811 0
																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6858
																																																																																																																																																																																																																																																																																																																																																																																																																						Stw nvector.2456 get_nvector_second.2811 8
																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6857
																																																																																																																																																																																																																																																																																																																																																																																																																							Stw intersection_point.2454 get_nvector_second.2811 4
																																																																																																																																																																																																																																																																																																																																																																																																																							Let get_nvector.2813
																																																																																																																																																																																																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																									Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																									Let l.6855
																																																																																																																																																																																																																																																																																																																																																																																																																										SetL get_nvector.2813
																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6856
																																																																																																																																																																																																																																																																																																																																																																																																																											Stw l.6855 get_nvector.2813 0
																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6854
																																																																																																																																																																																																																																																																																																																																																																																																																												Stw get_nvector_second.2811 get_nvector.2813 12
																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6853
																																																																																																																																																																																																																																																																																																																																																																																																																													Stw get_nvector_rect.2807 get_nvector.2813 8
																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6852
																																																																																																																																																																																																																																																																																																																																																																																																																														Stw get_nvector_plane.2809 get_nvector.2813 4
																																																																																																																																																																																																																																																																																																																																																																																																																														Let utexture.2816
																																																																																																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																Let l.6850
																																																																																																																																																																																																																																																																																																																																																																																																																																	SetL utexture.2816
																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6851
																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw l.6850 utexture.2816 0
																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6849
																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw texture_color.2457 utexture.2816 4
																																																																																																																																																																																																																																																																																																																																																																																																																																			Let add_light.2819
																																																																																																																																																																																																																																																																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																				Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																					Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																					Let l.6847
																																																																																																																																																																																																																																																																																																																																																																																																																																						SetL add_light.2819
																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6848
																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw l.6847 add_light.2819 0
																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6846
																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw texture_color.2457 add_light.2819 8
																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6845
																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw rgb.2459 add_light.2819 4
																																																																																																																																																																																																																																																																																																																																																																																																																																									Let trace_reflections.2823
																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 40
																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6843
																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL trace_reflections.2823
																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6844
																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6843 trace_reflections.2823 0
																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6842
																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw shadow_check_one_or_matrix.2776 trace_reflections.2823 32
																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6841
																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw reflections.2471 trace_reflections.2823 28
																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6840
																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw or_net.2450 trace_reflections.2823 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6839
																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw nvector.2456 trace_reflections.2823 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6838
																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw judge_intersection_fast.2805 trace_reflections.2823 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6837
																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw intsec_rectside.2452 trace_reflections.2823 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6836
																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw intersected_object_id.2455 trace_reflections.2823 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6835
																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw add_light.2819 trace_reflections.2823 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let trace_ray.2828
																																																																																																																																																																																																																																																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																							Add $fp 88
																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let l.6833
																																																																																																																																																																																																																																																																																																																																																																																																																																																								SetL trace_ray.2828
																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6834
																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw l.6833 trace_ray.2828 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6832
																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw utexture.2816 trace_ray.2828 80
																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6831
																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw trace_reflections.2823 trace_ray.2828 76
																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6830
																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw tmin.2453 trace_ray.2828 72
																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6829
																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw texture_color.2457 trace_ray.2828 68
																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6828
																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw startp.2463 trace_ray.2828 64
																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6827
																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw shadow_check_one_or_matrix.2776 trace_ray.2828 60
																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6826
																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw setup_startp.2742 trace_ray.2828 56
																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6825
																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw rgb.2459 trace_ray.2828 52
																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6824
																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw or_net.2450 trace_ray.2828 48
																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6823
																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw objects.2444 trace_ray.2828 44
																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6822
																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw nvector.2456 trace_ray.2828 40
																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6821
																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw n_reflections.2472 trace_ray.2828 36
																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6820
																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw light.2447 trace_ray.2828 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6819
																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw judge_intersection.2791 trace_ray.2828 28
																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6818
																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw intsec_rectside.2452 trace_ray.2828 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6817
																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw intersection_point.2454 trace_ray.2828 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6816
																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw intersected_object_id.2455 trace_ray.2828 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6815
																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw get_nvector.2813 trace_ray.2828 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6814
																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw beam.2448 trace_ray.2828 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6813
																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw add_light.2819 trace_ray.2828 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let trace_diffuse_ray.2834
																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Add $fp 56
																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let l.6811
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																SetL trace_diffuse_ray.2834
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6812
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw l.6811 trace_diffuse_ray.2834 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6810
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw utexture.2816 trace_diffuse_ray.2834 48
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6809
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw texture_color.2457 trace_diffuse_ray.2834 44
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6808
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw shadow_check_one_or_matrix.2776 trace_diffuse_ray.2834 40
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6807
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw or_net.2450 trace_diffuse_ray.2834 36
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6806
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw objects.2444 trace_diffuse_ray.2834 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6805
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw nvector.2456 trace_diffuse_ray.2834 28
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6804
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw light.2447 trace_diffuse_ray.2834 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6803
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw judge_intersection_fast.2805 trace_diffuse_ray.2834 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6802
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw intersection_point.2454 trace_diffuse_ray.2834 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6801
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw intersected_object_id.2455 trace_diffuse_ray.2834 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6800
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw get_nvector.2813 trace_diffuse_ray.2834 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6799
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw diffuse_ray.2458 trace_diffuse_ray.2834 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let iter_trace_diffuse_rays.2837
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let l.6797
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																SetL iter_trace_diffuse_rays.2837
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6798
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw l.6797 iter_trace_diffuse_rays.2837 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6796
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw trace_diffuse_ray.2834 iter_trace_diffuse_rays.2837 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let trace_diffuse_rays.2842
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let l.6794
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					SetL trace_diffuse_rays.2842
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6795
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw l.6794 trace_diffuse_rays.2842 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6793
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw setup_startp.2742 trace_diffuse_rays.2842 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6792
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw iter_trace_diffuse_rays.2837 trace_diffuse_rays.2842 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let trace_diffuse_ray_80percent.2846
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let l.6790
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											SetL trace_diffuse_ray_80percent.2846
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6791
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw l.6790 trace_diffuse_ray_80percent.2846 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6789
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw trace_diffuse_rays.2842 trace_diffuse_ray_80percent.2846 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6788
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw dirvecs.2469 trace_diffuse_ray_80percent.2846 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let calc_diffuse_using_1point.2850
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let l.6786
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	SetL calc_diffuse_using_1point.2850
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6787
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw l.6786 calc_diffuse_using_1point.2850 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6785
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw trace_diffuse_ray_80percent.2846 calc_diffuse_using_1point.2850 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6784
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw rgb.2459 calc_diffuse_using_1point.2850 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6783
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw diffuse_ray.2458 calc_diffuse_using_1point.2850 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let calc_diffuse_using_5points.2853
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let l.6781
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								SetL calc_diffuse_using_5points.2853
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6782
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw l.6781 calc_diffuse_using_5points.2853 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6780
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw rgb.2459 calc_diffuse_using_5points.2853 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6779
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw diffuse_ray.2458 calc_diffuse_using_5points.2853 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let do_without_neighbors.2859
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let l.6777
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														SetL do_without_neighbors.2859
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6778
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw l.6777 do_without_neighbors.2859 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6776
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw calc_diffuse_using_1point.2850 do_without_neighbors.2859 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let neighbors_exist.2862
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let l.6774
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			SetL neighbors_exist.2862
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6775
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw l.6774 neighbors_exist.2862 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6773
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw image_size.2460 neighbors_exist.2862 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let try_exploit_neighbors.2875
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let l.6771
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								SetL try_exploit_neighbors.2875
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6772
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw l.6771 try_exploit_neighbors.2875 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6770
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw do_without_neighbors.2859 try_exploit_neighbors.2875 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6769
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw calc_diffuse_using_5points.2853 try_exploit_neighbors.2875 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let write_ppm_header.2882
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let l.6767
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														SetL write_ppm_header.2882
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6768
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw l.6767 write_ppm_header.2882 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6766
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw image_size.2460 write_ppm_header.2882 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let write_rgb.2886
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let l.6764
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			SetL write_rgb.2886
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6765
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw l.6764 write_rgb.2886 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6763
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw rgb.2459 write_rgb.2886 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let pretrace_diffuse_rays.2888
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let l.6761
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								SetL pretrace_diffuse_rays.2888
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6762
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw l.6761 pretrace_diffuse_rays.2888 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6760
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw trace_diffuse_rays.2842 pretrace_diffuse_rays.2888 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6759
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw dirvecs.2469 pretrace_diffuse_rays.2888 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6758
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw diffuse_ray.2458 pretrace_diffuse_rays.2888 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let pretrace_pixels.2891
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Add $fp 40
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let l.6756
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															SetL pretrace_pixels.2891
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6757
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw l.6756 pretrace_pixels.2891 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6755
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw viewpoint.2446 pretrace_pixels.2891 36
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6754
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw trace_ray.2828 pretrace_pixels.2891 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6753
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw startp.2463 pretrace_pixels.2891 28
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6752
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw screenx_dir.2465 pretrace_pixels.2891 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6751
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw scan_pitch.2462 pretrace_pixels.2891 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6750
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw rgb.2459 pretrace_pixels.2891 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6749
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw ptrace_dirvec.2468 pretrace_pixels.2891 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6748
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw pretrace_diffuse_rays.2888 pretrace_pixels.2891 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6747
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw image_center.2461 pretrace_pixels.2891 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let pretrace_line.2898
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6745
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL pretrace_line.2898
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6746
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6745 pretrace_line.2898 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6744
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw screenz_dir.2467 pretrace_line.2898 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6743
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw screeny_dir.2466 pretrace_line.2898 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6742
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw scan_pitch.2462 pretrace_line.2898 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6741
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw pretrace_pixels.2891 pretrace_line.2898 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6740
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw image_size.2460 pretrace_line.2898 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6739
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw image_center.2461 pretrace_line.2898 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let scan_pixel.2902
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Add $fp 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let l.6737
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						SetL scan_pixel.2902
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6738
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw l.6737 scan_pixel.2902 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6736
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw write_rgb.2886 scan_pixel.2902 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6735
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw try_exploit_neighbors.2875 scan_pixel.2902 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6734
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw rgb.2459 scan_pixel.2902 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6733
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw neighbors_exist.2862 scan_pixel.2902 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6732
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw image_size.2460 scan_pixel.2902 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6731
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw do_without_neighbors.2859 scan_pixel.2902 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let scan_line.2908
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let l.6729
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																SetL scan_line.2908
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6730
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw l.6729 scan_line.2908 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6728
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw scan_pixel.2902 scan_line.2908 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6727
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw pretrace_line.2898 scan_line.2908 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6726
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw image_size.2460 scan_line.2908 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let create_pixelline.2921
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let l.6724
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							SetL create_pixelline.2921
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6725
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw l.6724 create_pixelline.2921 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6723
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw image_size.2460 create_pixelline.2921 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let calc_dirvec.2928
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6721
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL calc_dirvec.2928
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6722
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6721 calc_dirvec.2928 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6720
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw dirvecs.2469 calc_dirvec.2928 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let calc_dirvecs.2936
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let l.6718
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	SetL calc_dirvecs.2936
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6719
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw l.6718 calc_dirvecs.2936 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6717
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw calc_dirvec.2928 calc_dirvecs.2936 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let calc_dirvec_rows.2941
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let l.6715
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						SetL calc_dirvec_rows.2941
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6716
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw l.6715 calc_dirvec_rows.2941 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6714
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw calc_dirvecs.2936 calc_dirvec_rows.2941 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let create_dirvec.2945
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let l.6712
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											SetL create_dirvec.2945
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6713
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw l.6712 create_dirvec.2945 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6711
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw n_objects.2443 create_dirvec.2945 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let create_dirvec_elements.2947
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let l.6709
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																SetL create_dirvec_elements.2947
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6710
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw l.6709 create_dirvec_elements.2947 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6708
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw create_dirvec.2945 create_dirvec_elements.2947 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let create_dirvecs.2950
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let l.6706
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					SetL create_dirvecs.2950
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6707
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw l.6706 create_dirvecs.2950 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6705
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw dirvecs.2469 create_dirvecs.2950 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6704
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw create_dirvec_elements.2947 create_dirvecs.2950 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6703
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw create_dirvec.2945 create_dirvecs.2950 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let init_dirvec_constants.2952
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6701
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL init_dirvec_constants.2952
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6702
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6701 init_dirvec_constants.2952 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6700
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw setup_dirvec_constants.2737 init_dirvec_constants.2952 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let init_vecset_constants.2955
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let l.6698
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	SetL init_vecset_constants.2955
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6699
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw l.6698 init_vecset_constants.2955 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6697
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw init_dirvec_constants.2952 init_vecset_constants.2955 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6696
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw dirvecs.2469 init_vecset_constants.2955 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let init_dirvecs.2957
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let l.6694
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							SetL init_dirvecs.2957
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6695
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw l.6694 init_dirvecs.2957 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6693
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw init_vecset_constants.2955 init_dirvecs.2957 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6692
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw create_dirvecs.2950 init_dirvecs.2957 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6691
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw calc_dirvec_rows.2941 init_dirvecs.2957 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let add_reflection.2959
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let l.6689
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														SetL add_reflection.2959
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6690
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw l.6689 add_reflection.2959 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6688
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw setup_dirvec_constants.2737 add_reflection.2959 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6687
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw reflections.2471 add_reflection.2959 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6686
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw create_dirvec.2945 add_reflection.2959 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let setup_rect_reflection.2966
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let l.6684
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					SetL setup_rect_reflection.2966
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6685
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw l.6684 setup_rect_reflection.2966 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6683
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw n_reflections.2472 setup_rect_reflection.2966 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6682
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw light.2447 setup_rect_reflection.2966 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6681
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw add_reflection.2959 setup_rect_reflection.2966 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let setup_surface_reflection.2969
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6679
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL setup_surface_reflection.2969
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6680
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6679 setup_surface_reflection.2969 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6678
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw n_reflections.2472 setup_surface_reflection.2969 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6677
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw light.2447 setup_surface_reflection.2969 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6676
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw add_reflection.2959 setup_surface_reflection.2969 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let setup_reflections.2972
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let l.6674
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			SetL setup_reflections.2972
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6675
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw l.6674 setup_reflections.2972 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6673
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw setup_surface_reflection.2969 setup_reflections.2972 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6672
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw setup_rect_reflection.2966 setup_reflections.2972 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6671
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw objects.2444 setup_reflections.2972 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let rt.2974
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Add $fp 64
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let l.6669
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										SetL rt.2974
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6670
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw l.6669 rt.2974 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6668
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw write_ppm_header.2882 rt.2974 56
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6667
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw setup_reflections.2972 rt.2974 52
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6666
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw setup_dirvec_constants.2737 rt.2974 48
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6665
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw scan_pitch.2462 rt.2974 44
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6664
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw scan_line.2908 rt.2974 40
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6663
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw read_parameter.2639 rt.2974 36
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6662
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw pretrace_line.2898 rt.2974 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6661
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw n_objects.2443 rt.2974 28
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6660
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw light_dirvec.2470 rt.2974 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6659
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw light.2447 rt.2974 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6658
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw init_dirvecs.2957 rt.2974 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6657
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw image_size.2460 rt.2974 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6656
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw image_center.2461 rt.2974 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6655
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw create_pixelline.2921 rt.2974 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Ti326.2979
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Li 128
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Ti327.2980
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Li 128
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu240.2977
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												CallCls rt.2974 (rt.2974) d:Ti326.2979 Ti327.2980 f:
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Ti328.2978
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Li 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Ans
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														CallCls min_caml_print_int d:Ti328.2978 f:
