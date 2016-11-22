data
l.6742 : 128.000000
l.6709 : 0.900000
l.6708 : 0.200000
l.6614 : 150.000000
l.6612 : -150.000000
l.6596 : 0.100000
l.6593 : -2.000000
l.6591 : 256.000000
l.6569 : 20.000000
l.6568 : 0.050000
l.6564 : 0.250000
l.6560 : 10.000000
l.6556 : 0.300000
l.6555 : 255.000000
l.6554 : 0.150000
l.6552 : 3.141593
l.6551 : 30.000000
l.6550 : 15.000000
l.6549 : 0.000100
l.6506 : 100000000.000000
l.6502 : 1000000000.000000
l.6482 : -0.100000
l.6469 : 0.010000
l.6468 : -0.200000
l.6244 : -200.000000
l.6242 : 200.000000
l.6238 : 0.017453
l.6155 : -1.000000
l.6154 : 32767.000000
l.6153 : 8388608.000000
l.6152 : 1.000000
l.6151 : 2.000000
l.6150 : 0.500000
l.6149 : 0.000000

fundefs
fneg.2514 (args) : (fargs) : x.2515 
	Ans
		FNeg x.2515
fispos.2516 (args) : (fargs) : x.2517 
	Let Td2483.6053
		FLi l.6149
		Ans
			IfFLE x.2517 Td2483.6053
				Ans
					Li 0
				Ans
					Li 1
fisneg.2518 (args) : (fargs) : x.2519 
	Let Td2482.6052
		FLi l.6149
		Ans
			IfFLE Td2482.6052 x.2519
				Ans
					Li 0
				Ans
					Li 1
fiszero.2520 (args) : (fargs) : x.2521 
	Let Td2481.6051
		FLi l.6149
		Ans
			IfFEq x.2521 Td2481.6051
				Ans
					Li 1
				Ans
					Li 0
fhalf.2522 (args) : (fargs) : x.2523 
	Let Td2480.6050
		FLi l.6150
		Ans
			FMul x.2523 Td2480.6050
fsqr.2524 (args) : (fargs) : x.2525 
	Ans
		FMul x.2525 x.2525
fabs.2526 (args) : (fargs) : x.2527 
	Let Td2479.6049
		FLi l.6149
		Ans
			IfFLE Td2479.6049 x.2527
				Ans
					FMr x.2527
				Ans
					CallCls fneg.2514 d:f:x.2527 
fless.2528 (args) : (fargs) : x.2529 y.2530 
	Let z.6048
		FSub x.2529 y.2530
		Ans
			CallCls fisneg.2518 d:f:z.6048 
fflag.2531 (args) : (fargs) : a.2532 
	Let Td2477.6046
		FLi l.6149
		Ans
			IfFLE Td2477.6046 a.2532
				Ans
					Li 1
				Ans
					Li -1
itof_ret_sub.6027 (args) : a.6028 (fargs) : b.6029 c.6030 
	Let a_sub.6033
		ShiftR1 a.6028
		Let Ti2468.6034
			Li 0
			Ans
				IfEq a.6028 Ti2468.6034
					Ans
						FMr b.6029
					Let Ti2469.6042
						Sub a.6028 a_sub.6033
						Let Ti2470.6035
							Sub Ti2469.6042 a_sub.6033
							Let Ti2471.6036
								Li 0
								Ans
									IfLE Ti2470.6035 Ti2471.6036
										Let Td2472.6041
											FLi l.6151
											Let Td2473.6040
												FMul c.6030 Td2472.6041
												Ans
													CallCls itof_ret_sub.6027 d:a_sub.6033 f:b.6029 Td2473.6040 
										Let Td2474.6037
											FAdd b.6029 c.6030
											Let Td2475.6039
												FLi l.6151
												Let Td2476.6038
													FMul c.6030 Td2475.6039
													Ans
														CallCls itof_ret_sub.6027 d:a_sub.6033 f:Td2474.6037 Td2476.6038 
itof_ret.6009 (args) : a.6010 (fargs) : 
	Let Td2466.6031
		FLi l.6149
		Let Td2467.6032
			FLi l.6152
			Ans
				CallCls itof_ret_sub.6027 d:a.6010 f:Td2466.6031 Td2467.6032 
itof_big.6011 (args) : a.6012 (fargs) : b.6013 
	Let Ti2462.6026
		Li 8388608
		Let a_sub.6021
			Sub a.6012 Ti2462.6026
			Let Td2463.6025
				FLi l.6153
				Let b_sub.6022
					FAdd b.6013 Td2463.6025
					Let Ti2464.6023
						Li 8388608
						Ans
							IfLE Ti2464.6023 a_sub.6021
								Ans
									CallCls itof_big.6011 d:a_sub.6021 f:b_sub.6022 
								Let Td2465.6024
									CallCls itof_ret.6009 d:a_sub.6021 f:
									Ans
										FAdd b_sub.6022 Td2465.6024
float_of_int.2533 (args) : a.2534 (fargs) : 
	Let Ti2452.6045
		Li 0
		Let abs.6007
			IfLE a.2534 Ti2452.6045
				Ans
					Neg a.2534
				Ans
					Mr a.2534
			Let Ti2453.6043
				Li 0
				Let flag.6008
					IfLE a.2534 Ti2453.6043
						Ans
							Li -1
						Ans
							Li 1
					Let Ti2455.6014
						Li 1
						Ans
							IfEq flag.6008 Ti2455.6014
								Let Ti2456.6019
									Li 8388608
									Ans
										IfLE abs.6007 Ti2456.6019
											Ans
												CallCls itof_ret.6009 d:abs.6007 f:
											Let Td2457.6020
												FLi l.6149
												Ans
													CallCls itof_big.6011 d:abs.6007 f:Td2457.6020 
								Let Ti2458.6015
									Li 8388608
									Ans
										IfLE abs.6007 Ti2458.6015
											Let Td2459.6018
												CallCls itof_ret.6009 d:abs.6007 f:
												Ans
													FNeg Td2459.6018
											Let Td2460.6017
												FLi l.6149
												Let Td2461.6016
													CallCls itof_big.6011 d:abs.6007 f:Td2460.6017 
													Ans
														FNeg Td2461.6016
floor.2535 (args) : (fargs) : a.2536 
	Let abs.5991
		CallCls fabs.2526 d:f:a.2536 
		Let flag.5992
			CallCls fflag.2531 d:f:a.2536 
			Let Td2441.6005
				FLi l.6154
				Let Td2442.6006
					FReciprocal Td2441.6005
					Let Td2443.6004
						FMul a.2536 Td2442.6006
						Let Ti2444.6003
							CallCls min_caml_int_of_float d:f:Td2443.6004 
							Let c.5993
								CallCls float_of_int.2533 d:Ti2444.6003 f:
								Let Td2445.6002
									FLi l.6154
									Let Td2446.6001
										FMul Td2445.6002 c.5993
										Let kernel.5994
											FSub abs.5991 Td2446.6001
											Let Td2447.6000
												FLi l.6154
												Let Td2448.5997
													FMul c.5993 Td2447.6000
													Let Ti2449.5999
														CallCls min_caml_int_of_float d:f:kernel.5994 
														Let Td2450.5998
															CallCls float_of_int.2533 d:Ti2449.5999 f:
															Let ans_abs.5995
																FAdd Td2448.5997 Td2450.5998
																Let Ti2451.5996
																	Li 1
																	Ans
																		IfEq flag.5992 Ti2451.5996
																			Ans
																				FMr ans_abs.5995
																			Ans
																				FNeg ans_abs.5995
xor.2544 (args) : x.2545 y.2546 (fargs) : 
	Let Ti2436.5986
		Li 0
		Ans
			IfEq x.2545 Ti2436.5986
				Ans
					Mr y.2546
				Let Ti2437.5987
					Li 0
					Ans
						IfEq y.2546 Ti2437.5987
							Ans
								Li 1
							Ans
								Li 0
sgn.2547 (args) : (fargs) : x.2548 
	Let Tb2432.5982
		CallCls fiszero.2520 d:f:x.2548 
		Let Ti2433.5983
			Li 0
			Ans
				IfEq Tb2432.5982 Ti2433.5983
					Let Tb2434.5984
						CallCls fispos.2516 d:f:x.2548 
						Let Ti2435.5985
							Li 0
							Ans
								IfEq Tb2434.5984 Ti2435.5985
									Ans
										FLi l.6155
									Ans
										FLi l.6152
					Ans
						FLi l.6149
fneg_cond.2549 (args) : cond.2550 (fargs) : x.2551 
	Let Ti2431.5981
		Li 0
		Ans
			IfEq cond.2550 Ti2431.5981
				Ans
					CallCls fneg.2514 d:f:x.2551 
				Ans
					FMr x.2551
add_mod5.2552 (args) : x.2553 y.2554 (fargs) : 
	Let sum.5978
		Add x.2553 y.2554
		Let Ti2429.5979
			Li 5
			Ans
				IfLE Ti2429.5979 sum.5978
					Ans
						Sub sum.5978 5
					Ans
						Mr sum.5978
vecset.2555 (args) : v.2556 (fargs) : x.2557 y.2558 z.2559 
	Let Tu2.5973
		Stfd x.2557 v.2556 0
		Let Tu1.5974
			Stfd y.2558 v.2556 4
			Ans
				Stfd z.2559 v.2556 8
vecfill.2560 (args) : v.2561 (fargs) : elem.2562 
	Let Tu4.5968
		Stfd elem.2562 v.2561 0
		Let Tu3.5969
			Stfd elem.2562 v.2561 4
			Ans
				Stfd elem.2562 v.2561 8
vecbzero.2563 (args) : v.2564 (fargs) : 
	Let Td2422.5967
		FLi l.6149
		Ans
			CallCls vecfill.2560 d:v.2564 f:Td2422.5967 
veccpy.2565 (args) : dest.2566 src.2567 (fargs) : 
	Let Td2415.5965
		Lfd src.2567 0
		Let Tu6.5956
			Stfd Td2415.5965 dest.2566 0
			Let Td2418.5962
				Lfd src.2567 4
				Let Tu5.5957
					Stfd Td2418.5962 dest.2566 4
					Let Td2421.5959
						Lfd src.2567 8
						Ans
							Stfd Td2421.5959 dest.2566 8
vecunit_sgn.2573 (args) : v.2574 inv.2575 (fargs) : 
	Let Td2339.5906
		Lfd v.2574 0
		Let Td2340.5902
			CallCls fsqr.2524 d:f:Td2339.5906 
			Let Td2342.5904
				Lfd v.2574 4
				Let Td2343.5903
					CallCls fsqr.2524 d:f:Td2342.5904 
					Let Td2344.5898
						FAdd Td2340.5902 Td2343.5903
						Let Td2346.5900
							Lfd v.2574 8
							Let Td2347.5899
								CallCls fsqr.2524 d:f:Td2346.5900 
								Let Td2348.5897
									FAdd Td2344.5898 Td2347.5899
									Let l.5874
										CallCls min_caml_sqrt d:f:Td2348.5897 
										Let Tb2349.5890
											CallCls fiszero.2520 d:f:l.5874 
											Let Ti2350.5891
												Li 0
												Let il.5875
													IfEq Tb2349.5890 Ti2350.5891
														Let Ti2351.5892
															Li 0
															Ans
																IfEq inv.2575 Ti2351.5892
																	Let Td2352.5895
																		FLi l.6152
																		Let Td2353.5896
																			FReciprocal l.5874
																			Ans
																				FMul Td2352.5895 Td2353.5896
																	Let Td2354.5893
																		FLi l.6155
																		Let Td2355.5894
																			FReciprocal l.5874
																			Ans
																				FMul Td2354.5893 Td2355.5894
														Ans
															FLi l.6152
													Let Td2358.5888
														Lfd v.2574 0
														Let Td2359.5887
															FMul Td2358.5888 il.5875
															Let Tu10.5876
																Stfd Td2359.5887 v.2574 0
																Let Td2362.5884
																	Lfd v.2574 4
																	Let Td2363.5883
																		FMul Td2362.5884 il.5875
																		Let Tu9.5877
																			Stfd Td2363.5883 v.2574 4
																			Let Td2366.5880
																				Lfd v.2574 8
																				Let Td2367.5879
																					FMul Td2366.5880 il.5875
																					Ans
																						Stfd Td2367.5879 v.2574 8
veciprod.2576 (args) : v.2577 w.2578 (fargs) : 
	Let Td2323.5870
		Lfd v.2577 0
		Let Td2325.5871
			Lfd w.2578 0
			Let Td2326.5864
				FMul Td2323.5870 Td2325.5871
				Let Td2328.5866
					Lfd v.2577 4
					Let Td2330.5867
						Lfd w.2578 4
						Let Td2331.5865
							FMul Td2328.5866 Td2330.5867
							Let Td2332.5858
								FAdd Td2326.5864 Td2331.5865
								Let Td2334.5860
									Lfd v.2577 8
									Let Td2336.5861
										Lfd w.2578 8
										Let Td2337.5859
											FMul Td2334.5860 Td2336.5861
											Ans
												FAdd Td2332.5858 Td2337.5859
veciprod2.2579 (args) : v.2580 (fargs) : w0.2581 w1.2582 w2.2583 
	Let Td2313.5856
		Lfd v.2580 0
		Let Td2314.5852
			FMul Td2313.5856 w0.2581
			Let Td2316.5854
				Lfd v.2580 4
				Let Td2317.5853
					FMul Td2316.5854 w1.2582
					Let Td2318.5848
						FAdd Td2314.5852 Td2317.5853
						Let Td2320.5850
							Lfd v.2580 8
							Let Td2321.5849
								FMul Td2320.5850 w2.2583
								Ans
									FAdd Td2318.5848 Td2321.5849
vecaccum.2584 (args) : dest.2585 v.2587 (fargs) : scale.2586 
	Let Td2293.5843
		Lfd dest.2585 0
		Let Td2295.5845
			Lfd v.2587 0
			Let Td2296.5844
				FMul scale.2586 Td2295.5845
				Let Td2297.5842
					FAdd Td2293.5843 Td2296.5844
					Let Tu12.5825
						Stfd Td2297.5842 dest.2585 0
						Let Td2300.5836
							Lfd dest.2585 4
							Let Td2302.5838
								Lfd v.2587 4
								Let Td2303.5837
									FMul scale.2586 Td2302.5838
									Let Td2304.5835
										FAdd Td2300.5836 Td2303.5837
										Let Tu11.5826
											Stfd Td2304.5835 dest.2585 4
											Let Td2307.5829
												Lfd dest.2585 8
												Let Td2309.5831
													Lfd v.2587 8
													Let Td2310.5830
														FMul scale.2586 Td2309.5831
														Let Td2311.5828
															FAdd Td2307.5829 Td2310.5830
															Ans
																Stfd Td2311.5828 dest.2585 8
vecadd.2588 (args) : dest.2589 v.2590 (fargs) : 
	Let Td2275.5821
		Lfd dest.2589 0
		Let Td2277.5822
			Lfd v.2590 0
			Let Td2278.5820
				FAdd Td2275.5821 Td2277.5822
				Let Tu14.5805
					Stfd Td2278.5820 dest.2589 0
					Let Td2281.5815
						Lfd dest.2589 4
						Let Td2283.5816
							Lfd v.2590 4
							Let Td2284.5814
								FAdd Td2281.5815 Td2283.5816
								Let Tu13.5806
									Stfd Td2284.5814 dest.2589 4
									Let Td2287.5809
										Lfd dest.2589 8
										Let Td2289.5810
											Lfd v.2590 8
											Let Td2290.5808
												FAdd Td2287.5809 Td2289.5810
												Ans
													Stfd Td2290.5808 dest.2589 8
vecscale.2594 (args) : dest.2595 (fargs) : scale.2596 
	Let Td2245.5783
		Lfd dest.2595 0
		Let Td2246.5782
			FMul Td2245.5783 scale.2596
			Let Tu18.5771
				Stfd Td2246.5782 dest.2595 0
				Let Td2249.5779
					Lfd dest.2595 4
					Let Td2250.5778
						FMul Td2249.5779 scale.2596
						Let Tu17.5772
							Stfd Td2250.5778 dest.2595 4
							Let Td2253.5775
								Lfd dest.2595 8
								Let Td2254.5774
									FMul Td2253.5775 scale.2596
									Ans
										Stfd Td2254.5774 dest.2595 8
vecaccumv.2597 (args) : dest.2598 v.2599 w.2600 (fargs) : 
	Let Td2218.5764
		Lfd dest.2598 0
		Let Td2220.5766
			Lfd v.2599 0
			Let Td2222.5767
				Lfd w.2600 0
				Let Td2223.5765
					FMul Td2220.5766 Td2222.5767
					Let Td2224.5763
						FAdd Td2218.5764 Td2223.5765
						Let Tu20.5742
							Stfd Td2224.5763 dest.2598 0
							Let Td2227.5755
								Lfd dest.2598 4
								Let Td2229.5757
									Lfd v.2599 4
									Let Td2231.5758
										Lfd w.2600 4
										Let Td2232.5756
											FMul Td2229.5757 Td2231.5758
											Let Td2233.5754
												FAdd Td2227.5755 Td2232.5756
												Let Tu19.5743
													Stfd Td2233.5754 dest.2598 4
													Let Td2236.5746
														Lfd dest.2598 8
														Let Td2238.5748
															Lfd v.2599 8
															Let Td2240.5749
																Lfd w.2600 8
																Let Td2241.5747
																	FMul Td2238.5748 Td2240.5749
																	Let Td2242.5745
																		FAdd Td2236.5746 Td2241.5747
																		Ans
																			Stfd Td2242.5745 dest.2598 8
o_texturetype.2601 (args) : m.2602 (fargs) : 
	Let m_tex.5731
		Lwz m.2602 0
		Ans
			Mr m_tex.5731
o_form.2603 (args) : m.2604 (fargs) : 
	Let m_shape.5721
		Lwz m.2604 4
		Ans
			Mr m_shape.5721
o_reflectiontype.2605 (args) : m.2606 (fargs) : 
	Let m_surface.5711
		Lwz m.2606 8
		Ans
			Mr m_surface.5711
o_isinvert.2607 (args) : m.2608 (fargs) : 
	Let m_invert.5704
		Lwz m.2608 24
		Ans
			Mr m_invert.5704
o_isrot.2609 (args) : m.2610 (fargs) : 
	Let m_isrot.5690
		Lwz m.2610 12
		Ans
			Mr m_isrot.5690
o_param_a.2611 (args) : m.2612 (fargs) : 
	Let m_abc.5679
		Lwz m.2612 16
		Ans
			Lfd m_abc.5679 0
o_param_b.2613 (args) : m.2614 (fargs) : 
	Let m_abc.5667
		Lwz m.2614 16
		Ans
			Lfd m_abc.5667 4
o_param_c.2615 (args) : m.2616 (fargs) : 
	Let m_abc.5655
		Lwz m.2616 16
		Ans
			Lfd m_abc.5655 8
o_param_abc.2617 (args) : m.2618 (fargs) : 
	Let m_abc.5644
		Lwz m.2618 16
		Ans
			Mr m_abc.5644
o_param_x.2619 (args) : m.2620 (fargs) : 
	Let m_xyz.5633
		Lwz m.2620 20
		Ans
			Lfd m_xyz.5633 0
o_param_y.2621 (args) : m.2622 (fargs) : 
	Let m_xyz.5621
		Lwz m.2622 20
		Ans
			Lfd m_xyz.5621 4
o_param_z.2623 (args) : m.2624 (fargs) : 
	Let m_xyz.5609
		Lwz m.2624 20
		Ans
			Lfd m_xyz.5609 8
o_diffuse.2625 (args) : m.2626 (fargs) : 
	Let m_surfparams.5599
		Lwz m.2626 28
		Ans
			Lfd m_surfparams.5599 0
o_hilight.2627 (args) : m.2628 (fargs) : 
	Let m_surfparams.5587
		Lwz m.2628 28
		Ans
			Lfd m_surfparams.5587 4
o_color_red.2629 (args) : m.2630 (fargs) : 
	Let m_color.5576
		Lwz m.2630 32
		Ans
			Lfd m_color.5576 0
o_color_green.2631 (args) : m.2632 (fargs) : 
	Let m_color.5564
		Lwz m.2632 32
		Ans
			Lfd m_color.5564 4
o_color_blue.2633 (args) : m.2634 (fargs) : 
	Let m_color.5552
		Lwz m.2634 32
		Ans
			Lfd m_color.5552 8
o_param_r1.2635 (args) : m.2636 (fargs) : 
	Let m_rot123.5541
		Lwz m.2636 36
		Ans
			Lfd m_rot123.5541 0
o_param_r2.2637 (args) : m.2638 (fargs) : 
	Let m_rot123.5529
		Lwz m.2638 36
		Ans
			Lfd m_rot123.5529 4
o_param_r3.2639 (args) : m.2640 (fargs) : 
	Let m_rot123.5517
		Lwz m.2640 36
		Ans
			Lfd m_rot123.5517 8
o_param_ctbl.2641 (args) : m.2642 (fargs) : 
	Let m_ctbl.5507
		Lwz m.2642 40
		Ans
			Mr m_ctbl.5507
p_rgb.2643 (args) : pixel.2644 (fargs) : 
	Let m_rgb.5489
		Lwz pixel.2644 0
		Ans
			Mr m_rgb.5489
p_intersection_points.2645 (args) : pixel.2646 (fargs) : 
	Let m_isect_ps.5482
		Lwz pixel.2646 4
		Ans
			Mr m_isect_ps.5482
p_surface_ids.2647 (args) : pixel.2648 (fargs) : 
	Let m_sids.5475
		Lwz pixel.2648 8
		Ans
			Mr m_sids.5475
p_calc_diffuse.2649 (args) : pixel.2650 (fargs) : 
	Let m_cdif.5468
		Lwz pixel.2650 12
		Ans
			Mr m_cdif.5468
p_energy.2651 (args) : pixel.2652 (fargs) : 
	Let m_engy.5461
		Lwz pixel.2652 16
		Ans
			Mr m_engy.5461
p_received_ray_20percent.2653 (args) : pixel.2654 (fargs) : 
	Let m_r20p.5454
		Lwz pixel.2654 20
		Ans
			Mr m_r20p.5454
p_group_id.2655 (args) : pixel.2656 (fargs) : 
	Let m_gid.5446
		Lwz pixel.2656 24
		Ans
			Lwz m_gid.5446 0
p_set_group_id.2657 (args) : pixel.2658 id.2659 (fargs) : 
	Let m_gid.5437
		Lwz pixel.2658 24
		Ans
			Stw id.2659 m_gid.5437 0
p_nvectors.2660 (args) : pixel.2661 (fargs) : 
	Let m_nvectors.5430
		Lwz pixel.2661 28
		Ans
			Mr m_nvectors.5430
d_vec.2662 (args) : d.2663 (fargs) : 
	Let m_vec.5421
		Lwz d.2663 0
		Ans
			Mr m_vec.5421
d_const.2664 (args) : d.2665 (fargs) : 
	Let m_const.5420
		Lwz d.2665 4
		Ans
			Mr m_const.5420
r_surface_id.2666 (args) : r.2667 (fargs) : 
	Let m_sid.5416
		Lwz r.2667 0
		Ans
			Mr m_sid.5416
r_dvec.2668 (args) : r.2669 (fargs) : 
	Let m_dvec.5414
		Lwz r.2669 4
		Ans
			Mr m_dvec.5414
r_bright.2670 (args) : r.2671 (fargs) : 
	Let m_br.5412
		Lfd r.2671 8
		Ans
			FMr m_br.5412
rad.2672 (args) : (fargs) : x.2673 
	Let Td2199.5409
		FLi l.6238
		Ans
			FMul x.2673 Td2199.5409
read_screen_settings.2674 (args) : (fargs) : 
	Let viewpoint.2487
		Lwz $a26 20
		Let screenz_dir.2508
			Lwz $a26 16
			Let screeny_dir.2507
				Lwz $a26 12
				Let screenx_dir.2506
					Lwz $a26 8
					Let screen.2486
						Lwz $a26 4
						Let Tu2145.5408
							Nop
							Let Td2146.5407
								CallCls min_caml_read_float d:f:
								Let Tu35.5334
									Stfd Td2146.5407 screen.2486 0
									Let Tu2148.5405
										Nop
										Let Td2149.5404
											CallCls min_caml_read_float d:f:
											Let Tu34.5335
												Stfd Td2149.5404 screen.2486 4
												Let Tu2151.5402
													Nop
													Let Td2152.5401
														CallCls min_caml_read_float d:f:
														Let Tu33.5336
															Stfd Td2152.5401 screen.2486 8
															Let Tu2153.5399
																Nop
																Let Td2154.5398
																	CallCls min_caml_read_float d:f:
																	Let v1.5337
																		CallCls rad.2672 d:f:Td2154.5398 
																		Let cos_v1.5338
																			CallCls min_caml_cos d:f:v1.5337 
																			Let sin_v1.5339
																				CallCls min_caml_sin d:f:v1.5337 
																				Let Tu2155.5397
																					Nop
																					Let Td2156.5396
																						CallCls min_caml_read_float d:f:
																						Let v2.5340
																							CallCls rad.2672 d:f:Td2156.5396 
																							Let cos_v2.5341
																								CallCls min_caml_cos d:f:v2.5340 
																								Let sin_v2.5342
																									CallCls min_caml_sin d:f:v2.5340 
																									Let Td2158.5394
																										FMul cos_v1.5338 sin_v2.5342
																										Let Td2159.5395
																											FLi l.6242
																											Let Td2160.5393
																												FMul Td2158.5394 Td2159.5395
																												Let Tu32.5343
																													Stfd Td2160.5393 screenz_dir.2508 0
																													Let Td2162.5391
																														FLi l.6244
																														Let Td2163.5390
																															FMul sin_v1.5339 Td2162.5391
																															Let Tu31.5344
																																Stfd Td2163.5390 screenz_dir.2508 4
																																Let Td2165.5387
																																	FMul cos_v1.5338 cos_v2.5341
																																	Let Td2166.5388
																																		FLi l.6242
																																		Let Td2167.5386
																																			FMul Td2165.5387 Td2166.5388
																																			Let Tu30.5345
																																				Stfd Td2167.5386 screenz_dir.2508 8
																																				Let Tu29.5346
																																					Stfd cos_v2.5341 screenx_dir.2506 0
																																					Let Td2170.5383
																																						FLi l.6149
																																						Let Tu28.5347
																																							Stfd Td2170.5383 screenx_dir.2506 4
																																							Let Td2172.5381
																																								CallCls fneg.2514 d:f:sin_v2.5342 
																																								Let Tu27.5348
																																									Stfd Td2172.5381 screenx_dir.2506 8
																																									Let Td2174.5379
																																										CallCls fneg.2514 d:f:sin_v1.5339 
																																										Let Td2175.5378
																																											FMul Td2174.5379 sin_v2.5342
																																											Let Tu26.5349
																																												Stfd Td2175.5378 screeny_dir.2507 0
																																												Let Td2177.5376
																																													CallCls fneg.2514 d:f:cos_v1.5338 
																																													Let Tu25.5350
																																														Stfd Td2177.5376 screeny_dir.2507 4
																																														Let Td2179.5374
																																															CallCls fneg.2514 d:f:sin_v1.5339 
																																															Let Td2180.5373
																																																FMul Td2179.5374 cos_v2.5341
																																																Let Tu24.5351
																																																	Stfd Td2180.5373 screeny_dir.2507 8
																																																	Let Td2183.5368
																																																		Lfd screen.2486 0
																																																		Let Td2185.5369
																																																			Lfd screenz_dir.2508 0
																																																			Let Td2186.5367
																																																				FSub Td2183.5368 Td2185.5369
																																																				Let Tu23.5352
																																																					Stfd Td2186.5367 viewpoint.2487 0
																																																					Let Td2189.5362
																																																						Lfd screen.2486 4
																																																						Let Td2191.5363
																																																							Lfd screenz_dir.2508 4
																																																							Let Td2192.5361
																																																								FSub Td2189.5362 Td2191.5363
																																																								Let Tu22.5353
																																																									Stfd Td2192.5361 viewpoint.2487 4
																																																									Let Td2195.5356
																																																										Lfd screen.2486 8
																																																										Let Td2197.5357
																																																											Lfd screenz_dir.2508 8
																																																											Let Td2198.5355
																																																												FSub Td2195.5356 Td2197.5357
																																																												Ans
																																																													Stfd Td2198.5355 viewpoint.2487 8
read_light.2676 (args) : (fargs) : 
	Let light.2488
		Lwz $a26 8
		Let beam.2489
			Lwz $a26 4
			Let Tu2130.5333
				Nop
				Let nl.5310
					CallCls min_caml_read_int d:f:
					Let Tu2131.5332
						Nop
						Let Td2132.5331
							CallCls min_caml_read_float d:f:
							Let l1.5311
								CallCls rad.2672 d:f:Td2132.5331 
								Let sl1.5312
									CallCls min_caml_sin d:f:l1.5311 
									Let Td2134.5330
										CallCls fneg.2514 d:f:sl1.5312 
										Let Tu39.5313
											Stfd Td2134.5330 light.2488 4
											Let Tu2135.5328
												Nop
												Let Td2136.5327
													CallCls min_caml_read_float d:f:
													Let l2.5314
														CallCls rad.2672 d:f:Td2136.5327 
														Let cl1.5315
															CallCls min_caml_cos d:f:l1.5311 
															Let sl2.5316
																CallCls min_caml_sin d:f:l2.5314 
																Let Td2138.5326
																	FMul cl1.5315 sl2.5316
																	Let Tu38.5317
																		Stfd Td2138.5326 light.2488 0
																		Let cl2.5318
																			CallCls min_caml_cos d:f:l2.5314 
																			Let Td2140.5324
																				FMul cl1.5315 cl2.5318
																				Let Tu37.5319
																					Stfd Td2140.5324 light.2488 8
																					Let Tu2142.5322
																						Nop
																						Let Td2143.5321
																							CallCls min_caml_read_float d:f:
																							Ans
																								Stfd Td2143.5321 beam.2489 0
rotate_quadratic_matrix.2678 (args) : abc.2679 rot.2680 (fargs) : 
	Let Td2044.5308
		Lfd rot.2680 0
		Let cos_x.5200
			CallCls min_caml_cos d:f:Td2044.5308 
			Let Td2046.5306
				Lfd rot.2680 0
				Let sin_x.5201
					CallCls min_caml_sin d:f:Td2046.5306 
					Let Td2048.5304
						Lfd rot.2680 4
						Let cos_y.5202
							CallCls min_caml_cos d:f:Td2048.5304 
							Let Td2050.5302
								Lfd rot.2680 4
								Let sin_y.5203
									CallCls min_caml_sin d:f:Td2050.5302 
									Let Td2052.5300
										Lfd rot.2680 8
										Let cos_z.5204
											CallCls min_caml_cos d:f:Td2052.5300 
											Let Td2054.5298
												Lfd rot.2680 8
												Let sin_z.5205
													CallCls min_caml_sin d:f:Td2054.5298 
													Let m00.5206
														FMul cos_y.5202 cos_z.5204
														Let Td2055.5297
															FMul sin_x.5201 sin_y.5203
															Let Td2056.5295
																FMul Td2055.5297 cos_z.5204
																Let Td2057.5296
																	FMul cos_x.5200 sin_z.5205
																	Let m01.5207
																		FSub Td2056.5295 Td2057.5296
																		Let Td2058.5294
																			FMul cos_x.5200 sin_y.5203
																			Let Td2059.5292
																				FMul Td2058.5294 cos_z.5204
																				Let Td2060.5293
																					FMul sin_x.5201 sin_z.5205
																					Let m02.5208
																						FAdd Td2059.5292 Td2060.5293
																						Let m10.5209
																							FMul cos_y.5202 sin_z.5205
																							Let Td2061.5291
																								FMul sin_x.5201 sin_y.5203
																								Let Td2062.5289
																									FMul Td2061.5291 sin_z.5205
																									Let Td2063.5290
																										FMul cos_x.5200 cos_z.5204
																										Let m11.5210
																											FAdd Td2062.5289 Td2063.5290
																											Let Td2064.5288
																												FMul cos_x.5200 sin_y.5203
																												Let Td2065.5286
																													FMul Td2064.5288 sin_z.5205
																													Let Td2066.5287
																														FMul sin_x.5201 cos_z.5204
																														Let m12.5211
																															FSub Td2065.5286 Td2066.5287
																															Let m20.5212
																																CallCls fneg.2514 d:f:sin_y.5203 
																																Let m21.5213
																																	FMul sin_x.5201 cos_y.5202
																																	Let m22.5214
																																		FMul cos_x.5200 cos_y.5202
																																		Let ao.5215
																																			Lfd abc.2679 0
																																			Let bo.5216
																																				Lfd abc.2679 4
																																				Let co.5217
																																					Lfd abc.2679 8
																																					Let Td2071.5282
																																						CallCls fsqr.2524 d:f:m00.5206 
																																						Let Td2072.5279
																																							FMul ao.5215 Td2071.5282
																																							Let Td2073.5281
																																								CallCls fsqr.2524 d:f:m10.5209 
																																								Let Td2074.5280
																																									FMul bo.5216 Td2073.5281
																																									Let Td2075.5276
																																										FAdd Td2072.5279 Td2074.5280
																																										Let Td2076.5278
																																											CallCls fsqr.2524 d:f:m20.5212 
																																											Let Td2077.5277
																																												FMul co.5217 Td2076.5278
																																												Let Td2078.5275
																																													FAdd Td2075.5276 Td2077.5277
																																													Let Tu44.5218
																																														Stfd Td2078.5275 abc.2679 0
																																														Let Td2080.5273
																																															CallCls fsqr.2524 d:f:m01.5207 
																																															Let Td2081.5270
																																																FMul ao.5215 Td2080.5273
																																																Let Td2082.5272
																																																	CallCls fsqr.2524 d:f:m11.5210 
																																																	Let Td2083.5271
																																																		FMul bo.5216 Td2082.5272
																																																		Let Td2084.5267
																																																			FAdd Td2081.5270 Td2083.5271
																																																			Let Td2085.5269
																																																				CallCls fsqr.2524 d:f:m21.5213 
																																																				Let Td2086.5268
																																																					FMul co.5217 Td2085.5269
																																																					Let Td2087.5266
																																																						FAdd Td2084.5267 Td2086.5268
																																																						Let Tu43.5219
																																																							Stfd Td2087.5266 abc.2679 4
																																																							Let Td2089.5264
																																																								CallCls fsqr.2524 d:f:m02.5208 
																																																								Let Td2090.5261
																																																									FMul ao.5215 Td2089.5264
																																																									Let Td2091.5263
																																																										CallCls fsqr.2524 d:f:m12.5211 
																																																										Let Td2092.5262
																																																											FMul bo.5216 Td2091.5263
																																																											Let Td2093.5258
																																																												FAdd Td2090.5261 Td2092.5262
																																																												Let Td2094.5260
																																																													CallCls fsqr.2524 d:f:m22.5214 
																																																													Let Td2095.5259
																																																														FMul co.5217 Td2094.5260
																																																														Let Td2096.5257
																																																															FAdd Td2093.5258 Td2095.5259
																																																															Let Tu42.5220
																																																																Stfd Td2096.5257 abc.2679 8
																																																																Let Td2098.5247
																																																																	FLi l.6151
																																																																	Let Td2099.5255
																																																																		FMul ao.5215 m01.5207
																																																																		Let Td2100.5252
																																																																			FMul Td2099.5255 m02.5208
																																																																			Let Td2101.5254
																																																																				FMul bo.5216 m11.5210
																																																																				Let Td2102.5253
																																																																					FMul Td2101.5254 m12.5211
																																																																					Let Td2103.5249
																																																																						FAdd Td2100.5252 Td2102.5253
																																																																						Let Td2104.5251
																																																																							FMul co.5217 m21.5213
																																																																							Let Td2105.5250
																																																																								FMul Td2104.5251 m22.5214
																																																																								Let Td2106.5248
																																																																									FAdd Td2103.5249 Td2105.5250
																																																																									Let Td2107.5246
																																																																										FMul Td2098.5247 Td2106.5248
																																																																										Let Tu41.5221
																																																																											Stfd Td2107.5246 rot.2680 0
																																																																											Let Td2109.5236
																																																																												FLi l.6151
																																																																												Let Td2110.5244
																																																																													FMul ao.5215 m00.5206
																																																																													Let Td2111.5241
																																																																														FMul Td2110.5244 m02.5208
																																																																														Let Td2112.5243
																																																																															FMul bo.5216 m10.5209
																																																																															Let Td2113.5242
																																																																																FMul Td2112.5243 m12.5211
																																																																																Let Td2114.5238
																																																																																	FAdd Td2111.5241 Td2113.5242
																																																																																	Let Td2115.5240
																																																																																		FMul co.5217 m20.5212
																																																																																		Let Td2116.5239
																																																																																			FMul Td2115.5240 m22.5214
																																																																																			Let Td2117.5237
																																																																																				FAdd Td2114.5238 Td2116.5239
																																																																																				Let Td2118.5235
																																																																																					FMul Td2109.5236 Td2117.5237
																																																																																					Let Tu40.5222
																																																																																						Stfd Td2118.5235 rot.2680 4
																																																																																						Let Td2120.5225
																																																																																							FLi l.6151
																																																																																							Let Td2121.5233
																																																																																								FMul ao.5215 m00.5206
																																																																																								Let Td2122.5230
																																																																																									FMul Td2121.5233 m01.5207
																																																																																									Let Td2123.5232
																																																																																										FMul bo.5216 m10.5209
																																																																																										Let Td2124.5231
																																																																																											FMul Td2123.5232 m11.5210
																																																																																											Let Td2125.5227
																																																																																												FAdd Td2122.5230 Td2124.5231
																																																																																												Let Td2126.5229
																																																																																													FMul co.5217 m20.5212
																																																																																													Let Td2127.5228
																																																																																														FMul Td2126.5229 m21.5213
																																																																																														Let Td2128.5226
																																																																																															FAdd Td2125.5227 Td2127.5228
																																																																																															Let Td2129.5224
																																																																																																FMul Td2120.5225 Td2128.5226
																																																																																																Ans
																																																																																																	Stfd Td2129.5224 rot.2680 8
read_nth_object.2681 (args) : n.2682 (fargs) : 
	Let objects.2485
		Lwz $a26 4
		Let Tu1947.5199
			Nop
			Let texture.5069
				CallCls min_caml_read_int d:f:
				Let Ti1949.5070
					Li -1
					Ans
						IfEq texture.5069 Ti1949.5070
							Ans
								Li 0
							Let Tu1950.5197
								Nop
								Let form.5071
									CallCls min_caml_read_int d:f:
									Let Tu1951.5196
										Nop
										Let refltype.5072
											CallCls min_caml_read_int d:f:
											Let Tu1952.5195
												Nop
												Let isrot_p.5073
													CallCls min_caml_read_int d:f:
													Let Ti1953.5193
														Li 3
														Let Td1954.5194
															FLi l.6149
															Let abc.5074
																CallCls min_caml_create_float_array d:Ti1953.5193 f:Td1954.5194 
																Let Tu1956.5192
																	Nop
																	Let Td1957.5191
																		CallCls min_caml_read_float d:f:
																		Let Tu63.5075
																			Stfd Td1957.5191 abc.5074 0
																			Let Tu1959.5189
																				Nop
																				Let Td1960.5188
																					CallCls min_caml_read_float d:f:
																					Let Tu62.5076
																						Stfd Td1960.5188 abc.5074 4
																						Let Tu1962.5186
																							Nop
																							Let Td1963.5185
																								CallCls min_caml_read_float d:f:
																								Let Tu61.5077
																									Stfd Td1963.5185 abc.5074 8
																									Let Ti1964.5182
																										Li 3
																										Let Td1965.5183
																											FLi l.6149
																											Let xyz.5078
																												CallCls min_caml_create_float_array d:Ti1964.5182 f:Td1965.5183 
																												Let Tu1967.5181
																													Nop
																													Let Td1968.5180
																														CallCls min_caml_read_float d:f:
																														Let Tu60.5079
																															Stfd Td1968.5180 xyz.5078 0
																															Let Tu1970.5178
																																Nop
																																Let Td1971.5177
																																	CallCls min_caml_read_float d:f:
																																	Let Tu59.5080
																																		Stfd Td1971.5177 xyz.5078 4
																																		Let Tu1973.5175
																																			Nop
																																			Let Td1974.5174
																																				CallCls min_caml_read_float d:f:
																																				Let Tu58.5081
																																					Stfd Td1974.5174 xyz.5078 8
																																					Let Tu1975.5172
																																						Nop
																																						Let Td1976.5171
																																							CallCls min_caml_read_float d:f:
																																							Let m_invert.5082
																																								CallCls fisneg.2518 d:f:Td1976.5171 
																																								Let Ti1977.5169
																																									Li 2
																																									Let Td1978.5170
																																										FLi l.6149
																																										Let reflparam.5083
																																											CallCls min_caml_create_float_array d:Ti1977.5169 f:Td1978.5170 
																																											Let Tu1980.5168
																																												Nop
																																												Let Td1981.5167
																																													CallCls min_caml_read_float d:f:
																																													Let Tu57.5084
																																														Stfd Td1981.5167 reflparam.5083 0
																																														Let Tu1983.5165
																																															Nop
																																															Let Td1984.5164
																																																CallCls min_caml_read_float d:f:
																																																Let Tu56.5085
																																																	Stfd Td1984.5164 reflparam.5083 4
																																																	Let Ti1985.5161
																																																		Li 3
																																																		Let Td1986.5162
																																																			FLi l.6149
																																																			Let color.5086
																																																				CallCls min_caml_create_float_array d:Ti1985.5161 f:Td1986.5162 
																																																				Let Tu1988.5160
																																																					Nop
																																																					Let Td1989.5159
																																																						CallCls min_caml_read_float d:f:
																																																						Let Tu55.5087
																																																							Stfd Td1989.5159 color.5086 0
																																																							Let Tu1991.5157
																																																								Nop
																																																								Let Td1992.5156
																																																									CallCls min_caml_read_float d:f:
																																																									Let Tu54.5088
																																																										Stfd Td1992.5156 color.5086 4
																																																										Let Tu1994.5154
																																																											Nop
																																																											Let Td1995.5153
																																																												CallCls min_caml_read_float d:f:
																																																												Let Tu53.5089
																																																													Stfd Td1995.5153 color.5086 8
																																																													Let Ti1996.5150
																																																														Li 3
																																																														Let Td1997.5151
																																																															FLi l.6149
																																																															Let rotation.5090
																																																																CallCls min_caml_create_float_array d:Ti1996.5150 f:Td1997.5151 
																																																																Let Ti1998.5135
																																																																	Li 0
																																																																	Let Tu52.5091
																																																																		IfEq isrot_p.5073 Ti1998.5135
																																																																			Ans
																																																																				Nop
																																																																			Let Tu2000.5149
																																																																				Nop
																																																																				Let Td2001.5148
																																																																					CallCls min_caml_read_float d:f:
																																																																					Let Td2002.5147
																																																																						CallCls rad.2672 d:f:Td2001.5148 
																																																																						Let Tu46.5136
																																																																							Stfd Td2002.5147 rotation.5090 0
																																																																							Let Tu2004.5145
																																																																								Nop
																																																																								Let Td2005.5144
																																																																									CallCls min_caml_read_float d:f:
																																																																									Let Td2006.5143
																																																																										CallCls rad.2672 d:f:Td2005.5144 
																																																																										Let Tu45.5137
																																																																											Stfd Td2006.5143 rotation.5090 4
																																																																											Let Tu2008.5141
																																																																												Nop
																																																																												Let Td2009.5140
																																																																													CallCls min_caml_read_float d:f:
																																																																													Let Td2010.5139
																																																																														CallCls rad.2672 d:f:Td2009.5140 
																																																																														Ans
																																																																															Stfd Td2010.5139 rotation.5090 8
																																																																		Let Ti2011.5134
																																																																			Li 2
																																																																			Let m_invert2.5092
																																																																				IfEq form.5071 Ti2011.5134
																																																																					Ans
																																																																						Li 1
																																																																					Ans
																																																																						Mr m_invert.5082
																																																																				Let Ti2012.5132
																																																																					Li 4
																																																																					Let Td2013.5133
																																																																						FLi l.6149
																																																																						Let ctbl.5093
																																																																							CallCls min_caml_create_float_array d:Ti2012.5132 f:Td2013.5133 
																																																																							Let t.6295
																																																																								Mr $fp
																																																																								Let $fp
																																																																									Add $fp 48
																																																																									Let Tu6306
																																																																										Stw ctbl.5093 t.6295 40
																																																																										Let Tu6305
																																																																											Stw rotation.5090 t.6295 36
																																																																											Let Tu6304
																																																																												Stw color.5086 t.6295 32
																																																																												Let Tu6303
																																																																													Stw reflparam.5083 t.6295 28
																																																																													Let Tu6302
																																																																														Stw m_invert2.5092 t.6295 24
																																																																														Let Tu6301
																																																																															Stw xyz.5078 t.6295 20
																																																																															Let Tu6300
																																																																																Stw abc.5074 t.6295 16
																																																																																Let Tu6299
																																																																																	Stw isrot_p.5073 t.6295 12
																																																																																	Let Tu6298
																																																																																		Stw refltype.5072 t.6295 8
																																																																																		Let Tu6297
																																																																																			Stw form.5071 t.6295 4
																																																																																			Let Tu6296
																																																																																				Stw texture.5069 t.6295 0
																																																																																				Let obj.5094
																																																																																					Mr t.6295
																																																																																					Let o.6307
																																																																																						Slw n.2682 2
																																																																																						Let Tu51.5095
																																																																																							Stw obj.5094 objects.2485 o.6307
																																																																																							Let Ti2014.5099
																																																																																								Li 3
																																																																																								Let Tu50.5096
																																																																																									IfEq form.5071 Ti2014.5099
																																																																																										Let a.5103
																																																																																											Lfd abc.5074 0
																																																																																											Let Tb2017.5126
																																																																																												CallCls fiszero.2520 d:f:a.5103 
																																																																																												Let Ti2018.5127
																																																																																													Li 0
																																																																																													Let Td2022.5125
																																																																																														IfEq Tb2017.5126 Ti2018.5127
																																																																																															Let Td2019.5128
																																																																																																CallCls sgn.2547 d:f:a.5103 
																																																																																																Let Td2020.5129
																																																																																																	CallCls fsqr.2524 d:f:a.5103 
																																																																																																	Let Td2021.5130
																																																																																																		FReciprocal Td2020.5129
																																																																																																		Ans
																																																																																																			FMul Td2019.5128 Td2021.5130
																																																																																															Ans
																																																																																																FLi l.6149
																																																																																														Let Tu48.5104
																																																																																															Stfd Td2022.5125 abc.5074 0
																																																																																															Let b.5105
																																																																																																Lfd abc.5074 4
																																																																																																Let Tb2025.5118
																																																																																																	CallCls fiszero.2520 d:f:b.5105 
																																																																																																	Let Ti2026.5119
																																																																																																		Li 0
																																																																																																		Let Td2030.5117
																																																																																																			IfEq Tb2025.5118 Ti2026.5119
																																																																																																				Let Td2027.5120
																																																																																																					CallCls sgn.2547 d:f:b.5105 
																																																																																																					Let Td2028.5121
																																																																																																						CallCls fsqr.2524 d:f:b.5105 
																																																																																																						Let Td2029.5122
																																																																																																							FReciprocal Td2028.5121
																																																																																																							Ans
																																																																																																								FMul Td2027.5120 Td2029.5122
																																																																																																				Ans
																																																																																																					FLi l.6149
																																																																																																			Let Tu47.5106
																																																																																																				Stfd Td2030.5117 abc.5074 4
																																																																																																				Let c.5107
																																																																																																					Lfd abc.5074 8
																																																																																																					Let Tb2033.5110
																																																																																																						CallCls fiszero.2520 d:f:c.5107 
																																																																																																						Let Ti2034.5111
																																																																																																							Li 0
																																																																																																							Let Td2038.5109
																																																																																																								IfEq Tb2033.5110 Ti2034.5111
																																																																																																									Let Td2035.5112
																																																																																																										CallCls sgn.2547 d:f:c.5107 
																																																																																																										Let Td2036.5113
																																																																																																											CallCls fsqr.2524 d:f:c.5107 
																																																																																																											Let Td2037.5114
																																																																																																												FReciprocal Td2036.5113
																																																																																																												Ans
																																																																																																													FMul Td2035.5112 Td2037.5114
																																																																																																									Ans
																																																																																																										FLi l.6149
																																																																																																								Ans
																																																																																																									Stfd Td2038.5109 abc.5074 8
																																																																																										Let Ti2039.5100
																																																																																											Li 2
																																																																																											Ans
																																																																																												IfEq form.5071 Ti2039.5100
																																																																																													Let Ti2040.5102
																																																																																														Li 0
																																																																																														Let Ti2041.5101
																																																																																															IfEq m_invert.5082 Ti2040.5102
																																																																																																Ans
																																																																																																	Li 1
																																																																																																Ans
																																																																																																	Li 0
																																																																																															Ans
																																																																																																CallCls vecunit_sgn.2573 d:abc.5074 Ti2041.5101 f:
																																																																																													Ans
																																																																																														Nop
																																																																																									Let Ti2042.5098
																																																																																										Li 0
																																																																																										Let Tu49.5097
																																																																																											IfEq isrot_p.5073 Ti2042.5098
																																																																																												Ans
																																																																																													Nop
																																																																																												Ans
																																																																																													CallCls rotate_quadratic_matrix.2678 d:abc.5074 rotation.5090 f:
																																																																																											Ans
																																																																																												Li 1
read_object.2683 (args) : n.2684 (fargs) : 
	Let read_nth_object.2681
		Lwz $a26 8
		Let n_objects.2484
			Lwz $a26 4
			Let Ti1941.5063
				Li 60
				Ans
					IfLE Ti1941.5063 n.2684
						Ans
							Nop
						Let Tb1942.5064
							CallCls read_nth_object.2681 (read_nth_object.2681) d:n.2684 f:
							Let Ti1943.5065
								Li 0
								Ans
									IfEq Tb1942.5064 Ti1943.5065
										Ans
											Stw n.2684 n_objects.2484 0
										Let Ti1946.5066
											Add n.2684 1
											Ans
												CallCls read_object.2683 (read_object.2683) d:Ti1946.5066 f:
read_all_object.2685 (args) : (fargs) : 
	Let read_object.2683
		Lwz $a26 4
		Let Ti1940.5062
			Li 0
			Ans
				CallCls read_object.2683 (read_object.2683) d:Ti1940.5062 f:
read_net_item.2687 (args) : length.2688 (fargs) : 
	Let Tu1931.5061
		Nop
		Let item.5050
			CallCls min_caml_read_int d:f:
			Let Ti1933.5051
				Li -1
				Ans
					IfEq item.5050 Ti1933.5051
						Let Ti1935.5056
							Add length.2688 1
							Let Ti1937.5057
								Li -1
								Ans
									CallCls min_caml_create_array d:Ti1935.5056 Ti1937.5057 f:
						Let Ti1939.5054
							Add length.2688 1
							Let v.5052
								CallCls read_net_item.2687 d:Ti1939.5054 f:
								Let o.6315
									Slw length.2688 2
									Let Tu65.5053
										Stw item.5050 v.5052 o.6315
										Ans
											Mr v.5052
read_or_network.2689 (args) : length.2690 (fargs) : 
	Let Ti1922.5049
		Li 0
		Let net.5038
			CallCls read_net_item.2687 d:Ti1922.5049 f:
			Let Ti1924.5039
				Lwz net.5038 0
				Let Ti1926.5040
					Li -1
					Ans
						IfEq Ti1924.5039 Ti1926.5040
							Let Ti1928.5045
								Add length.2690 1
								Ans
									CallCls min_caml_create_array d:Ti1928.5045 net.5038 f:
							Let Ti1930.5043
								Add length.2690 1
								Let v.5041
									CallCls read_or_network.2689 d:Ti1930.5043 f:
									Let o.6317
										Slw length.2690 2
										Let Tu66.5042
											Stw net.5038 v.5041 o.6317
											Ans
												Mr v.5041
read_and_network.2691 (args) : n.2692 (fargs) : 
	Let and_net.2490
		Lwz $a26 4
		Let Ti1915.5037
			Li 0
			Let net.5029
				CallCls read_net_item.2687 d:Ti1915.5037 f:
				Let Ti1917.5030
					Lwz net.5029 0
					Let Ti1919.5031
						Li -1
						Ans
							IfEq Ti1917.5030 Ti1919.5031
								Ans
									Nop
								Let o.6319
									Slw n.2692 2
									Let Tu67.5032
										Stw net.5029 and_net.2490 o.6319
										Let Ti1921.5033
											Add n.2692 1
											Ans
												CallCls read_and_network.2691 (read_and_network.2691) d:Ti1921.5033 f:
read_parameter.2693 (args) : (fargs) : 
	Let read_screen_settings.2674
		Lwz $a26 20
		Let read_light.2676
			Lwz $a26 16
			Let read_and_network.2691
				Lwz $a26 12
				Let read_all_object.2685
					Lwz $a26 8
					Let or_net.2491
						Lwz $a26 4
						Let Tu1908.5028
							Nop
							Let Tu72.5018
								CallCls read_screen_settings.2674 (read_screen_settings.2674) d:f:
								Let Tu1909.5027
									Nop
									Let Tu71.5019
										CallCls read_light.2676 (read_light.2676) d:f:
										Let Tu1910.5026
											Nop
											Let Tu70.5020
												CallCls read_all_object.2685 (read_all_object.2685) d:f:
												Let Ti1911.5025
													Li 0
													Let Tu69.5021
														CallCls read_and_network.2691 (read_and_network.2691) d:Ti1911.5025 f:
														Let Ti1913.5024
															Li 0
															Let Ta1914.5023
																CallCls read_or_network.2689 d:Ti1913.5024 f:
																Ans
																	Stw Ta1914.5023 or_net.2491 0
solver_rect_surface.2695 (args) : m.2696 dirvec.2697 i0.2701 i1.2702 i2.2703 (fargs) : b0.2698 b1.2699 b2.2700 
	Let solver_dist.2492
		Lwz $a26 4
		Let o.6321
			Slw i0.2701 2
			Let Td1882.5017
				Lfd dirvec.2697 o.6321
				Let Tb1883.4988
					CallCls fiszero.2520 d:f:Td1882.5017 
					Let Ti1884.4989
						Li 0
						Ans
							IfEq Tb1883.4988 Ti1884.4989
								Let abc.4990
									CallCls o_param_abc.2617 d:m.2696 f:
									Let Tb1885.5014
										CallCls o_isinvert.2607 d:m.2696 f:
										Let o.6322
											Slw i0.2701 2
											Let Td1886.5016
												Lfd dirvec.2697 o.6322
												Let Tb1887.5015
													CallCls fisneg.2518 d:f:Td1886.5016 
													Let Tb1888.5012
														CallCls xor.2544 d:Tb1885.5014 Tb1887.5015 f:
														Let o.6323
															Slw i0.2701 2
															Let Td1889.5013
																Lfd abc.4990 o.6323
																Let d.4991
																	CallCls fneg_cond.2549 d:Tb1888.5012 f:Td1889.5013 
																	Let Td1890.5009
																		FSub d.4991 b0.2698
																		Let o.6324
																			Slw i0.2701 2
																			Let Td1891.5010
																				Lfd dirvec.2697 o.6324
																				Let Td1892.5011
																					FReciprocal Td1891.5010
																					Let d2.4992
																						FMul Td1890.5009 Td1892.5011
																						Let o.6325
																							Slw i1.2702 2
																							Let Td1893.5008
																								Lfd dirvec.2697 o.6325
																								Let Td1894.5007
																									FMul d2.4992 Td1893.5008
																									Let Td1895.5006
																										FAdd Td1894.5007 b1.2699
																										Let Td1896.5004
																											CallCls fabs.2526 d:f:Td1895.5006 
																											Let o.6326
																												Slw i1.2702 2
																												Let Td1897.5005
																													Lfd abc.4990 o.6326
																													Let Tb1898.4993
																														CallCls fless.2528 d:f:Td1896.5004 Td1897.5005 
																														Let Ti1899.4994
																															Li 0
																															Ans
																																IfEq Tb1898.4993 Ti1899.4994
																																	Ans
																																		Li 0
																																	Let o.6327
																																		Slw i2.2703 2
																																		Let Td1900.5003
																																			Lfd dirvec.2697 o.6327
																																			Let Td1901.5002
																																				FMul d2.4992 Td1900.5003
																																				Let Td1902.5001
																																					FAdd Td1901.5002 b2.2700
																																					Let Td1903.4999
																																						CallCls fabs.2526 d:f:Td1902.5001 
																																						Let o.6328
																																							Slw i2.2703 2
																																							Let Td1904.5000
																																								Lfd abc.4990 o.6328
																																								Let Tb1905.4995
																																									CallCls fless.2528 d:f:Td1903.4999 Td1904.5000 
																																									Let Ti1906.4996
																																										Li 0
																																										Ans
																																											IfEq Tb1905.4995 Ti1906.4996
																																												Ans
																																													Li 0
																																												Let Tu73.4997
																																													Stfd d2.4992 solver_dist.2492 0
																																													Ans
																																														Li 1
								Ans
									Li 0
solver_rect.2704 (args) : m.2705 dirvec.2706 (fargs) : b0.2707 b1.2708 b2.2709 
	Let solver_rect_surface.2695
		Lwz $a26 4
		Let Ti1867.4985
			Li 0
			Let Ti1868.4986
				Li 1
				Let Ti1869.4987
					Li 2
					Let Tb1870.4973
						CallCls solver_rect_surface.2695 (solver_rect_surface.2695) d:m.2705 dirvec.2706 Ti1867.4985 Ti1868.4986 Ti1869.4987 f:b0.2707 b1.2708 b2.2709 
						Let Ti1871.4974
							Li 0
							Ans
								IfEq Tb1870.4973 Ti1871.4974
									Let Ti1872.4982
										Li 1
										Let Ti1873.4983
											Li 2
											Let Ti1874.4984
												Li 0
												Let Tb1875.4975
													CallCls solver_rect_surface.2695 (solver_rect_surface.2695) d:m.2705 dirvec.2706 Ti1872.4982 Ti1873.4983 Ti1874.4984 f:b1.2708 b2.2709 b0.2707 
													Let Ti1876.4976
														Li 0
														Ans
															IfEq Tb1875.4975 Ti1876.4976
																Let Ti1877.4979
																	Li 2
																	Let Ti1878.4980
																		Li 0
																		Let Ti1879.4981
																			Li 1
																			Let Tb1880.4977
																				CallCls solver_rect_surface.2695 (solver_rect_surface.2695) d:m.2705 dirvec.2706 Ti1877.4979 Ti1878.4980 Ti1879.4981 f:b2.2709 b0.2707 b1.2708 
																				Let Ti1881.4978
																					Li 0
																					Ans
																						IfEq Tb1880.4977 Ti1881.4978
																							Ans
																								Li 0
																							Ans
																								Li 3
																Ans
																	Li 2
									Ans
										Li 1
solver_surface.2710 (args) : m.2711 dirvec.2712 (fargs) : b0.2713 b1.2714 b2.2715 
	Let solver_dist.2492
		Lwz $a26 4
		Let abc.4963
			CallCls o_param_abc.2617 d:m.2711 f:
			Let d.4964
				CallCls veciprod.2576 d:dirvec.2712 abc.4963 f:
				Let Tb1860.4965
					CallCls fispos.2516 d:f:d.4964 
					Let Ti1861.4966
						Li 0
						Ans
							IfEq Tb1860.4965 Ti1861.4966
								Ans
									Li 0
								Let Td1863.4972
									CallCls veciprod2.2579 d:abc.4963 f:b0.2713 b1.2714 b2.2715 
									Let Td1864.4970
										CallCls fneg.2514 d:f:Td1863.4972 
										Let Td1865.4971
											FReciprocal d.4964
											Let Td1866.4969
												FMul Td1864.4970 Td1865.4971
												Let Tu74.4967
													Stfd Td1866.4969 solver_dist.2492 0
													Ans
														Li 1
quadratic.2716 (args) : m.2717 (fargs) : v0.2718 v1.2719 v2.2720 
	Let Td1837.4961
		CallCls fsqr.2524 d:f:v0.2718 
		Let Td1838.4962
			CallCls o_param_a.2611 d:m.2717 f:
			Let Td1839.4957
				FMul Td1837.4961 Td1838.4962
				Let Td1840.4959
					CallCls fsqr.2524 d:f:v1.2719 
					Let Td1841.4960
						CallCls o_param_b.2613 d:m.2717 f:
						Let Td1842.4958
							FMul Td1840.4959 Td1841.4960
							Let Td1843.4953
								FAdd Td1839.4957 Td1842.4958
								Let Td1844.4955
									CallCls fsqr.2524 d:f:v2.2720 
									Let Td1845.4956
										CallCls o_param_c.2615 d:m.2717 f:
										Let Td1846.4954
											FMul Td1844.4955 Td1845.4956
											Let diag_part.4939
												FAdd Td1843.4953 Td1846.4954
												Let Ti1847.4940
													CallCls o_isrot.2609 d:m.2717 f:
													Let Ti1848.4941
														Li 0
														Ans
															IfEq Ti1847.4940 Ti1848.4941
																Ans
																	FMr diag_part.4939
																Let Td1849.4951
																	FMul v1.2719 v2.2720
																	Let Td1850.4952
																		CallCls o_param_r1.2635 d:m.2717 f:
																		Let Td1851.4950
																			FMul Td1849.4951 Td1850.4952
																			Let Td1852.4946
																				FAdd diag_part.4939 Td1851.4950
																				Let Td1853.4948
																					FMul v2.2720 v0.2718
																					Let Td1854.4949
																						CallCls o_param_r2.2637 d:m.2717 f:
																						Let Td1855.4947
																							FMul Td1853.4948 Td1854.4949
																							Let Td1856.4942
																								FAdd Td1852.4946 Td1855.4947
																								Let Td1857.4944
																									FMul v0.2718 v1.2719
																									Let Td1858.4945
																										CallCls o_param_r3.2639 d:m.2717 f:
																										Let Td1859.4943
																											FMul Td1857.4944 Td1858.4945
																											Ans
																												FAdd Td1856.4942 Td1859.4943
bilinear.2721 (args) : m.2722 (fargs) : v0.2723 v1.2724 v2.2725 w0.2726 w1.2727 w2.2728 
	Let Td1807.4937
		FMul v0.2723 w0.2726
		Let Td1808.4938
			CallCls o_param_a.2611 d:m.2722 f:
			Let Td1809.4933
				FMul Td1807.4937 Td1808.4938
				Let Td1810.4935
					FMul v1.2724 w1.2727
					Let Td1811.4936
						CallCls o_param_b.2613 d:m.2722 f:
						Let Td1812.4934
							FMul Td1810.4935 Td1811.4936
							Let Td1813.4929
								FAdd Td1809.4933 Td1812.4934
								Let Td1814.4931
									FMul v2.2725 w2.2728
									Let Td1815.4932
										CallCls o_param_c.2615 d:m.2722 f:
										Let Td1816.4930
											FMul Td1814.4931 Td1815.4932
											Let diag_part.4908
												FAdd Td1813.4929 Td1816.4930
												Let Ti1817.4909
													CallCls o_isrot.2609 d:m.2722 f:
													Let Ti1818.4910
														Li 0
														Ans
															IfEq Ti1817.4909 Ti1818.4910
																Ans
																	FMr diag_part.4908
																Let Td1819.4927
																	FMul v2.2725 w1.2727
																	Let Td1820.4928
																		FMul v1.2724 w2.2728
																		Let Td1821.4925
																			FAdd Td1819.4927 Td1820.4928
																			Let Td1822.4926
																				CallCls o_param_r1.2635 d:m.2722 f:
																				Let Td1823.4919
																					FMul Td1821.4925 Td1822.4926
																					Let Td1824.4923
																						FMul v0.2723 w2.2728
																						Let Td1825.4924
																							FMul v2.2725 w0.2726
																							Let Td1826.4921
																								FAdd Td1824.4923 Td1825.4924
																								Let Td1827.4922
																									CallCls o_param_r2.2637 d:m.2722 f:
																									Let Td1828.4920
																										FMul Td1826.4921 Td1827.4922
																										Let Td1829.4913
																											FAdd Td1823.4919 Td1828.4920
																											Let Td1830.4917
																												FMul v0.2723 w1.2727
																												Let Td1831.4918
																													FMul v1.2724 w0.2726
																													Let Td1832.4915
																														FAdd Td1830.4917 Td1831.4918
																														Let Td1833.4916
																															CallCls o_param_r3.2639 d:m.2722 f:
																															Let Td1834.4914
																																FMul Td1832.4915 Td1833.4916
																																Let Td1835.4912
																																	FAdd Td1829.4913 Td1834.4914
																																	Let Td1836.4911
																																		CallCls fhalf.2522 d:f:Td1835.4912 
																																		Ans
																																			FAdd diag_part.4908 Td1836.4911
solver_second.2729 (args) : m.2730 dirvec.2731 (fargs) : b0.2732 b1.2733 b2.2734 
	Let solver_dist.2492
		Lwz $a26 4
		Let Td1781.4902
			Lfd dirvec.2731 0
			Let Td1783.4903
				Lfd dirvec.2731 4
				Let Td1785.4904
					Lfd dirvec.2731 8
					Let aa.4873
						CallCls quadratic.2716 d:m.2730 f:Td1781.4902 Td1783.4903 Td1785.4904 
						Let Tb1786.4874
							CallCls fiszero.2520 d:f:aa.4873 
							Let Ti1787.4875
								Li 0
								Ans
									IfEq Tb1786.4874 Ti1787.4875
										Let Td1789.4896
											Lfd dirvec.2731 0
											Let Td1791.4897
												Lfd dirvec.2731 4
												Let Td1793.4898
													Lfd dirvec.2731 8
													Let bb.4876
														CallCls bilinear.2721 d:m.2730 f:Td1789.4896 Td1791.4897 Td1793.4898 b0.2732 b1.2733 b2.2734 
														Let cc0.4877
															CallCls quadratic.2716 d:m.2730 f:b0.2732 b1.2733 b2.2734 
															Let Ti1794.4893
																CallCls o_form.2603 d:m.2730 f:
																Let Ti1795.4894
																	Li 3
																	Let cc.4878
																		IfEq Ti1794.4893 Ti1795.4894
																			Let Td1796.4895
																				FLi l.6152
																				Ans
																					FSub cc0.4877 Td1796.4895
																			Ans
																				FMr cc0.4877
																		Let Td1797.4891
																			CallCls fsqr.2524 d:f:bb.4876 
																			Let Td1798.4892
																				FMul aa.4873 cc.4878
																				Let d.4879
																					FSub Td1797.4891 Td1798.4892
																					Let Tb1799.4880
																						CallCls fispos.2516 d:f:d.4879 
																						Let Ti1800.4881
																							Li 0
																							Ans
																								IfEq Tb1799.4880 Ti1800.4881
																									Ans
																										Li 0
																									Let sd.4882
																										CallCls min_caml_sqrt d:f:d.4879 
																										Let Tb1801.4889
																											CallCls o_isinvert.2607 d:m.2730 f:
																											Let Ti1802.4890
																												Li 0
																												Let t1.4883
																													IfEq Tb1801.4889 Ti1802.4890
																														Ans
																															CallCls fneg.2514 d:f:sd.4882 
																														Ans
																															FMr sd.4882
																													Let Td1804.4887
																														FSub t1.4883 bb.4876
																														Let Td1805.4888
																															FReciprocal aa.4873
																															Let Td1806.4886
																																FMul Td1804.4887 Td1805.4888
																																Let Tu75.4884
																																	Stfd Td1806.4886 solver_dist.2492 0
																																	Ans
																																		Li 1
										Ans
											Li 0
solver.2735 (args) : index.2736 dirvec.2737 org.2738 (fargs) : 
	Let solver_surface.2710
		Lwz $a26 16
		Let solver_second.2729
			Lwz $a26 12
			Let solver_rect.2704
				Lwz $a26 8
				Let objects.2485
					Lwz $a26 4
					Let o.6338
						Slw index.2736 2
						Let m.4857
							Lwz objects.2485 o.6338
							Let Td1770.4870
								Lfd org.2738 0
								Let Td1771.4871
									CallCls o_param_x.2619 d:m.4857 f:
									Let b0.4858
										FSub Td1770.4870 Td1771.4871
										Let Td1773.4867
											Lfd org.2738 4
											Let Td1774.4868
												CallCls o_param_y.2621 d:m.4857 f:
												Let b1.4859
													FSub Td1773.4867 Td1774.4868
													Let Td1776.4864
														Lfd org.2738 8
														Let Td1777.4865
															CallCls o_param_z.2623 d:m.4857 f:
															Let b2.4860
																FSub Td1776.4864 Td1777.4865
																Let m_shape.4861
																	CallCls o_form.2603 d:m.4857 f:
																	Let Ti1778.4862
																		Li 1
																		Ans
																			IfEq m_shape.4861 Ti1778.4862
																				Ans
																					CallCls solver_rect.2704 (solver_rect.2704) d:m.4857 dirvec.2737 f:b0.4858 b1.4859 b2.4860 
																				Let Ti1779.4863
																					Li 2
																					Ans
																						IfEq m_shape.4861 Ti1779.4863
																							Ans
																								CallCls solver_surface.2710 (solver_surface.2710) d:m.4857 dirvec.2737 f:b0.4858 b1.4859 b2.4860 
																							Ans
																								CallCls solver_second.2729 (solver_second.2729) d:m.4857 dirvec.2737 f:b0.4858 b1.4859 b2.4860 
solver_rect_fast.2739 (args) : m.2740 v.2741 dconst.2742 (fargs) : b0.2743 b1.2744 b2.2745 
	Let solver_dist.2492
		Lwz $a26 4
		Let Td1686.4855
			Lfd dconst.2742 0
			Let Td1687.4852
				FSub Td1686.4855 b0.2743
				Let Td1689.4853
					Lfd dconst.2742 4
					Let d0.4767
						FMul Td1687.4852 Td1689.4853
						Let Td1691.4850
							Lfd v.2741 4
							Let Td1692.4849
								FMul d0.4767 Td1691.4850
								Let Td1693.4848
									FAdd Td1692.4849 b1.2744
									Let Td1694.4846
										CallCls fabs.2526 d:f:Td1693.4848 
										Let Td1695.4847
											CallCls o_param_b.2613 d:m.2740 f:
											Let Tb1696.4832
												CallCls fless.2528 d:f:Td1694.4846 Td1695.4847 
												Let Ti1697.4833
													Li 0
													Let Ti1710.4768
														IfEq Tb1696.4832 Ti1697.4833
															Ans
																Li 0
															Let Td1699.4844
																Lfd v.2741 8
																Let Td1700.4843
																	FMul d0.4767 Td1699.4844
																	Let Td1701.4842
																		FAdd Td1700.4843 b2.2745
																		Let Td1702.4840
																			CallCls fabs.2526 d:f:Td1701.4842 
																			Let Td1703.4841
																				CallCls o_param_c.2615 d:m.2740 f:
																				Let Tb1704.4834
																					CallCls fless.2528 d:f:Td1702.4840 Td1703.4841 
																					Let Ti1705.4835
																						Li 0
																						Ans
																							IfEq Tb1704.4834 Ti1705.4835
																								Ans
																									Li 0
																								Let Td1707.4838
																									Lfd dconst.2742 4
																									Let Tb1708.4836
																										CallCls fiszero.2520 d:f:Td1707.4838 
																										Let Ti1709.4837
																											Li 0
																											Ans
																												IfEq Tb1708.4836 Ti1709.4837
																													Ans
																														Li 1
																													Ans
																														Li 0
														Let Ti1711.4769
															Li 0
															Ans
																IfEq Ti1710.4768 Ti1711.4769
																	Let Td1713.4830
																		Lfd dconst.2742 8
																		Let Td1714.4827
																			FSub Td1713.4830 b1.2744
																			Let Td1716.4828
																				Lfd dconst.2742 12
																				Let d1.4772
																					FMul Td1714.4827 Td1716.4828
																					Let Td1718.4825
																						Lfd v.2741 0
																						Let Td1719.4824
																							FMul d1.4772 Td1718.4825
																							Let Td1720.4823
																								FAdd Td1719.4824 b0.2743
																								Let Td1721.4821
																									CallCls fabs.2526 d:f:Td1720.4823 
																									Let Td1722.4822
																										CallCls o_param_a.2611 d:m.2740 f:
																										Let Tb1723.4807
																											CallCls fless.2528 d:f:Td1721.4821 Td1722.4822 
																											Let Ti1724.4808
																												Li 0
																												Let Ti1737.4773
																													IfEq Tb1723.4807 Ti1724.4808
																														Ans
																															Li 0
																														Let Td1726.4819
																															Lfd v.2741 8
																															Let Td1727.4818
																																FMul d1.4772 Td1726.4819
																																Let Td1728.4817
																																	FAdd Td1727.4818 b2.2745
																																	Let Td1729.4815
																																		CallCls fabs.2526 d:f:Td1728.4817 
																																		Let Td1730.4816
																																			CallCls o_param_c.2615 d:m.2740 f:
																																			Let Tb1731.4809
																																				CallCls fless.2528 d:f:Td1729.4815 Td1730.4816 
																																				Let Ti1732.4810
																																					Li 0
																																					Ans
																																						IfEq Tb1731.4809 Ti1732.4810
																																							Ans
																																								Li 0
																																							Let Td1734.4813
																																								Lfd dconst.2742 12
																																								Let Tb1735.4811
																																									CallCls fiszero.2520 d:f:Td1734.4813 
																																									Let Ti1736.4812
																																										Li 0
																																										Ans
																																											IfEq Tb1735.4811 Ti1736.4812
																																												Ans
																																													Li 1
																																												Ans
																																													Li 0
																													Let Ti1738.4774
																														Li 0
																														Ans
																															IfEq Ti1737.4773 Ti1738.4774
																																Let Td1740.4805
																																	Lfd dconst.2742 16
																																	Let Td1741.4802
																																		FSub Td1740.4805 b2.2745
																																		Let Td1743.4803
																																			Lfd dconst.2742 20
																																			Let d2.4777
																																				FMul Td1741.4802 Td1743.4803
																																				Let Td1745.4800
																																					Lfd v.2741 0
																																					Let Td1746.4799
																																						FMul d2.4777 Td1745.4800
																																						Let Td1747.4798
																																							FAdd Td1746.4799 b0.2743
																																							Let Td1748.4796
																																								CallCls fabs.2526 d:f:Td1747.4798 
																																								Let Td1749.4797
																																									CallCls o_param_a.2611 d:m.2740 f:
																																									Let Tb1750.4782
																																										CallCls fless.2528 d:f:Td1748.4796 Td1749.4797 
																																										Let Ti1751.4783
																																											Li 0
																																											Let Ti1764.4778
																																												IfEq Tb1750.4782 Ti1751.4783
																																													Ans
																																														Li 0
																																													Let Td1753.4794
																																														Lfd v.2741 4
																																														Let Td1754.4793
																																															FMul d2.4777 Td1753.4794
																																															Let Td1755.4792
																																																FAdd Td1754.4793 b1.2744
																																																Let Td1756.4790
																																																	CallCls fabs.2526 d:f:Td1755.4792 
																																																	Let Td1757.4791
																																																		CallCls o_param_b.2613 d:m.2740 f:
																																																		Let Tb1758.4784
																																																			CallCls fless.2528 d:f:Td1756.4790 Td1757.4791 
																																																			Let Ti1759.4785
																																																				Li 0
																																																				Ans
																																																					IfEq Tb1758.4784 Ti1759.4785
																																																						Ans
																																																							Li 0
																																																						Let Td1761.4788
																																																							Lfd dconst.2742 20
																																																							Let Tb1762.4786
																																																								CallCls fiszero.2520 d:f:Td1761.4788 
																																																								Let Ti1763.4787
																																																									Li 0
																																																									Ans
																																																										IfEq Tb1762.4786 Ti1763.4787
																																																											Ans
																																																												Li 1
																																																											Ans
																																																												Li 0
																																												Let Ti1765.4779
																																													Li 0
																																													Ans
																																														IfEq Ti1764.4778 Ti1765.4779
																																															Ans
																																																Li 0
																																															Let Tu78.4780
																																																Stfd d2.4777 solver_dist.2492 0
																																																Ans
																																																	Li 3
																																Let Tu77.4775
																																	Stfd d1.4772 solver_dist.2492 0
																																	Ans
																																		Li 2
																	Let Tu76.4770
																		Stfd d0.4767 solver_dist.2492 0
																		Ans
																			Li 1
solver_surface_fast.2746 (args) : m.2747 dconst.2748 (fargs) : b0.2749 b1.2750 b2.2751 
	Let solver_dist.2492
		Lwz $a26 4
		Let Td1670.4765
			Lfd dconst.2748 0
			Let Tb1671.4750
				CallCls fisneg.2518 d:f:Td1670.4765 
				Let Ti1672.4751
					Li 0
					Ans
						IfEq Tb1671.4750 Ti1672.4751
							Ans
								Li 0
							Let Td1675.4763
								Lfd dconst.2748 4
								Let Td1676.4759
									FMul Td1675.4763 b0.2749
									Let Td1678.4761
										Lfd dconst.2748 8
										Let Td1679.4760
											FMul Td1678.4761 b1.2750
											Let Td1680.4755
												FAdd Td1676.4759 Td1679.4760
												Let Td1682.4757
													Lfd dconst.2748 12
													Let Td1683.4756
														FMul Td1682.4757 b2.2751
														Let Td1684.4754
															FAdd Td1680.4755 Td1683.4756
															Let Tu79.4752
																Stfd Td1684.4754 solver_dist.2492 0
																Ans
																	Li 1
solver_second_fast.2752 (args) : m.2753 dconst.2754 (fargs) : b0.2755 b1.2756 b2.2757 
	Let solver_dist.2492
		Lwz $a26 4
		Let aa.4710
			Lfd dconst.2754 0
			Let Tb1636.4711
				CallCls fiszero.2520 d:f:aa.4710 
				Let Ti1637.4712
					Li 0
					Ans
						IfEq Tb1636.4711 Ti1637.4712
							Let Td1639.4747
								Lfd dconst.2754 4
								Let Td1640.4743
									FMul Td1639.4747 b0.2755
									Let Td1642.4745
										Lfd dconst.2754 8
										Let Td1643.4744
											FMul Td1642.4745 b1.2756
											Let Td1644.4739
												FAdd Td1640.4743 Td1643.4744
												Let Td1646.4741
													Lfd dconst.2754 12
													Let Td1647.4740
														FMul Td1646.4741 b2.2757
														Let neg_bb.4713
															FAdd Td1644.4739 Td1647.4740
															Let cc0.4714
																CallCls quadratic.2716 d:m.2753 f:b0.2755 b1.2756 b2.2757 
																Let Ti1648.4736
																	CallCls o_form.2603 d:m.2753 f:
																	Let Ti1649.4737
																		Li 3
																		Let cc.4715
																			IfEq Ti1648.4736 Ti1649.4737
																				Let Td1650.4738
																					FLi l.6152
																					Ans
																						FSub cc0.4714 Td1650.4738
																				Ans
																					FMr cc0.4714
																			Let Td1651.4734
																				CallCls fsqr.2524 d:f:neg_bb.4713 
																				Let Td1652.4735
																					FMul aa.4710 cc.4715
																					Let d.4716
																						FSub Td1651.4734 Td1652.4735
																						Let Tb1653.4717
																							CallCls fispos.2516 d:f:d.4716 
																							Let Ti1654.4718
																								Li 0
																								Ans
																									IfEq Tb1653.4717 Ti1654.4718
																										Ans
																											Li 0
																										Let Tb1655.4720
																											CallCls o_isinvert.2607 d:m.2753 f:
																											Let Ti1656.4721
																												Li 0
																												Let Tu80.4719
																													IfEq Tb1655.4720 Ti1656.4721
																														Let Td1658.4733
																															CallCls min_caml_sqrt d:f:d.4716 
																															Let Td1659.4730
																																FSub neg_bb.4713 Td1658.4733
																																Let Td1661.4731
																																	Lfd dconst.2754 16
																																	Let Td1662.4729
																																		FMul Td1659.4730 Td1661.4731
																																		Ans
																																			Stfd Td1662.4729 solver_dist.2492 0
																														Let Td1664.4727
																															CallCls min_caml_sqrt d:f:d.4716 
																															Let Td1665.4724
																																FAdd neg_bb.4713 Td1664.4727
																																Let Td1667.4725
																																	Lfd dconst.2754 16
																																	Let Td1668.4723
																																		FMul Td1665.4724 Td1667.4725
																																		Ans
																																			Stfd Td1668.4723 solver_dist.2492 0
																													Ans
																														Li 1
							Ans
								Li 0
solver_fast.2758 (args) : index.2759 dirvec.2760 org.2761 (fargs) : 
	Let solver_surface_fast.2746
		Lwz $a26 16
		Let solver_second_fast.2752
			Lwz $a26 12
			Let solver_rect_fast.2739
				Lwz $a26 8
				Let objects.2485
					Lwz $a26 4
					Let o.6373
						Slw index.2759 2
						Let m.4691
							Lwz objects.2485 o.6373
							Let Td1624.4707
								Lfd org.2761 0
								Let Td1625.4708
									CallCls o_param_x.2619 d:m.4691 f:
									Let b0.4692
										FSub Td1624.4707 Td1625.4708
										Let Td1627.4704
											Lfd org.2761 4
											Let Td1628.4705
												CallCls o_param_y.2621 d:m.4691 f:
												Let b1.4693
													FSub Td1627.4704 Td1628.4705
													Let Td1630.4701
														Lfd org.2761 8
														Let Td1631.4702
															CallCls o_param_z.2623 d:m.4691 f:
															Let b2.4694
																FSub Td1630.4701 Td1631.4702
																Let dconsts.4695
																	CallCls d_const.2664 d:dirvec.2760 f:
																	Let o.6377
																		Slw index.2759 2
																		Let dconst.4696
																			Lwz dconsts.4695 o.6377
																			Let m_shape.4697
																				CallCls o_form.2603 d:m.4691 f:
																				Let Ti1632.4698
																					Li 1
																					Ans
																						IfEq m_shape.4697 Ti1632.4698
																							Let Ta1633.4700
																								CallCls d_vec.2662 d:dirvec.2760 f:
																								Ans
																									CallCls solver_rect_fast.2739 (solver_rect_fast.2739) d:m.4691 Ta1633.4700 dconst.4696 f:b0.4692 b1.4693 b2.4694 
																							Let Ti1634.4699
																								Li 2
																								Ans
																									IfEq m_shape.4697 Ti1634.4699
																										Ans
																											CallCls solver_surface_fast.2746 (solver_surface_fast.2746) d:m.4691 dconst.4696 f:b0.4692 b1.4693 b2.4694 
																										Ans
																											CallCls solver_second_fast.2752 (solver_second_fast.2752) d:m.4691 dconst.4696 f:b0.4692 b1.4693 b2.4694 
solver_surface_fast2.2762 (args) : m.2763 dconst.2764 sconst.2765 (fargs) : b0.2766 b1.2767 b2.2768 
	Let solver_dist.2492
		Lwz $a26 4
		Let Td1614.4689
			Lfd dconst.2764 0
			Let Tb1615.4680
				CallCls fisneg.2518 d:f:Td1614.4689 
				Let Ti1616.4681
					Li 0
					Ans
						IfEq Tb1615.4680 Ti1616.4681
							Ans
								Li 0
							Let Td1619.4685
								Lfd dconst.2764 0
								Let Td1621.4686
									Lfd sconst.2765 12
									Let Td1622.4684
										FMul Td1619.4685 Td1621.4686
										Let Tu81.4682
											Stfd Td1622.4684 solver_dist.2492 0
											Ans
												Li 1
solver_second_fast2.2769 (args) : m.2770 dconst.2771 sconst.2772 (fargs) : b0.2773 b1.2774 b2.2775 
	Let solver_dist.2492
		Lwz $a26 4
		Let aa.4643
			Lfd dconst.2771 0
			Let Tb1582.4644
				CallCls fiszero.2520 d:f:aa.4643 
				Let Ti1583.4645
					Li 0
					Ans
						IfEq Tb1582.4644 Ti1583.4645
							Let Td1585.4677
								Lfd dconst.2771 4
								Let Td1586.4673
									FMul Td1585.4677 b0.2773
									Let Td1588.4675
										Lfd dconst.2771 8
										Let Td1589.4674
											FMul Td1588.4675 b1.2774
											Let Td1590.4669
												FAdd Td1586.4673 Td1589.4674
												Let Td1592.4671
													Lfd dconst.2771 12
													Let Td1593.4670
														FMul Td1592.4671 b2.2775
														Let neg_bb.4646
															FAdd Td1590.4669 Td1593.4670
															Let cc.4647
																Lfd sconst.2772 12
																Let Td1595.4666
																	CallCls fsqr.2524 d:f:neg_bb.4646 
																	Let Td1596.4667
																		FMul aa.4643 cc.4647
																		Let d.4648
																			FSub Td1595.4666 Td1596.4667
																			Let Tb1597.4649
																				CallCls fispos.2516 d:f:d.4648 
																				Let Ti1598.4650
																					Li 0
																					Ans
																						IfEq Tb1597.4649 Ti1598.4650
																							Ans
																								Li 0
																							Let Tb1599.4652
																								CallCls o_isinvert.2607 d:m.2770 f:
																								Let Ti1600.4653
																									Li 0
																									Let Tu82.4651
																										IfEq Tb1599.4652 Ti1600.4653
																											Let Td1602.4665
																												CallCls min_caml_sqrt d:f:d.4648 
																												Let Td1603.4662
																													FSub neg_bb.4646 Td1602.4665
																													Let Td1605.4663
																														Lfd dconst.2771 16
																														Let Td1606.4661
																															FMul Td1603.4662 Td1605.4663
																															Ans
																																Stfd Td1606.4661 solver_dist.2492 0
																											Let Td1608.4659
																												CallCls min_caml_sqrt d:f:d.4648 
																												Let Td1609.4656
																													FAdd neg_bb.4646 Td1608.4659
																													Let Td1611.4657
																														Lfd dconst.2771 16
																														Let Td1612.4655
																															FMul Td1609.4656 Td1611.4657
																															Ans
																																Stfd Td1612.4655 solver_dist.2492 0
																										Ans
																											Li 1
							Ans
								Li 0
solver_fast2.2776 (args) : index.2777 dirvec.2778 (fargs) : 
	Let solver_surface_fast2.2762
		Lwz $a26 16
		Let solver_second_fast2.2769
			Lwz $a26 12
			Let solver_rect_fast.2739
				Lwz $a26 8
				Let objects.2485
					Lwz $a26 4
					Let o.6391
						Slw index.2777 2
						Let m.4629
							Lwz objects.2485 o.6391
							Let sconst.4630
								CallCls o_param_ctbl.2641 d:m.4629 f:
								Let b0.4631
									Lfd sconst.4630 0
									Let b1.4632
										Lfd sconst.4630 4
										Let b2.4633
											Lfd sconst.4630 8
											Let dconsts.4634
												CallCls d_const.2664 d:dirvec.2778 f:
												Let o.6395
													Slw index.2777 2
													Let dconst.4635
														Lwz dconsts.4634 o.6395
														Let m_shape.4636
															CallCls o_form.2603 d:m.4629 f:
															Let Ti1578.4637
																Li 1
																Ans
																	IfEq m_shape.4636 Ti1578.4637
																		Let Ta1579.4639
																			CallCls d_vec.2662 d:dirvec.2778 f:
																			Ans
																				CallCls solver_rect_fast.2739 (solver_rect_fast.2739) d:m.4629 Ta1579.4639 dconst.4635 f:b0.4631 b1.4632 b2.4633 
																		Let Ti1580.4638
																			Li 2
																			Ans
																				IfEq m_shape.4636 Ti1580.4638
																					Ans
																						CallCls solver_surface_fast2.2762 (solver_surface_fast2.2762) d:m.4629 dconst.4635 sconst.4630 f:b0.4631 b1.4632 b2.4633 
																					Ans
																						CallCls solver_second_fast2.2769 (solver_second_fast2.2769) d:m.4629 dconst.4635 sconst.4630 f:b0.4631 b1.4632 b2.4633 
setup_rect_table.2779 (args) : vec.2780 m.2781 (fargs) : 
	Let Ti1513.4627
		Li 6
		Let Td1514.4628
			FLi l.6149
			Let const.4560
				CallCls min_caml_create_float_array d:Ti1513.4627 f:Td1514.4628 
				Let Td1516.4625
					Lfd vec.2780 0
					Let Tb1517.4606
						CallCls fiszero.2520 d:f:Td1516.4625 
						Let Ti1518.4607
							Li 0
							Let Tu88.4561
								IfEq Tb1517.4606 Ti1518.4607
									Let Tb1520.4621
										CallCls o_isinvert.2607 d:m.2781 f:
										Let Td1522.4623
											Lfd vec.2780 0
											Let Tb1523.4622
												CallCls fisneg.2518 d:f:Td1522.4623 
												Let Tb1524.4619
													CallCls xor.2544 d:Tb1520.4621 Tb1523.4622 f:
													Let Td1525.4620
														CallCls o_param_a.2611 d:m.2781 f:
														Let Td1526.4618
															CallCls fneg_cond.2549 d:Tb1524.4619 f:Td1525.4620 
															Let Tu83.4610
																Stfd Td1526.4618 const.4560 0
																Let Td1528.4613
																	FLi l.6152
																	Let Td1530.4614
																		Lfd vec.2780 0
																		Let Td1531.4615
																			FReciprocal Td1530.4614
																			Let Td1532.4612
																				FMul Td1528.4613 Td1531.4615
																				Ans
																					Stfd Td1532.4612 const.4560 4
									Let Td1534.4609
										FLi l.6149
										Ans
											Stfd Td1534.4609 const.4560 4
								Let Td1536.4604
									Lfd vec.2780 4
									Let Tb1537.4585
										CallCls fiszero.2520 d:f:Td1536.4604 
										Let Ti1538.4586
											Li 0
											Let Tu87.4562
												IfEq Tb1537.4585 Ti1538.4586
													Let Tb1540.4600
														CallCls o_isinvert.2607 d:m.2781 f:
														Let Td1542.4602
															Lfd vec.2780 4
															Let Tb1543.4601
																CallCls fisneg.2518 d:f:Td1542.4602 
																Let Tb1544.4598
																	CallCls xor.2544 d:Tb1540.4600 Tb1543.4601 f:
																	Let Td1545.4599
																		CallCls o_param_b.2613 d:m.2781 f:
																		Let Td1546.4597
																			CallCls fneg_cond.2549 d:Tb1544.4598 f:Td1545.4599 
																			Let Tu84.4589
																				Stfd Td1546.4597 const.4560 8
																				Let Td1548.4592
																					FLi l.6152
																					Let Td1550.4593
																						Lfd vec.2780 4
																						Let Td1551.4594
																							FReciprocal Td1550.4593
																							Let Td1552.4591
																								FMul Td1548.4592 Td1551.4594
																								Ans
																									Stfd Td1552.4591 const.4560 12
													Let Td1554.4588
														FLi l.6149
														Ans
															Stfd Td1554.4588 const.4560 12
												Let Td1556.4583
													Lfd vec.2780 8
													Let Tb1557.4564
														CallCls fiszero.2520 d:f:Td1556.4583 
														Let Ti1558.4565
															Li 0
															Let Tu86.4563
																IfEq Tb1557.4564 Ti1558.4565
																	Let Tb1560.4579
																		CallCls o_isinvert.2607 d:m.2781 f:
																		Let Td1562.4581
																			Lfd vec.2780 8
																			Let Tb1563.4580
																				CallCls fisneg.2518 d:f:Td1562.4581 
																				Let Tb1564.4577
																					CallCls xor.2544 d:Tb1560.4579 Tb1563.4580 f:
																					Let Td1565.4578
																						CallCls o_param_c.2615 d:m.2781 f:
																						Let Td1566.4576
																							CallCls fneg_cond.2549 d:Tb1564.4577 f:Td1565.4578 
																							Let Tu85.4568
																								Stfd Td1566.4576 const.4560 16
																								Let Td1568.4571
																									FLi l.6152
																									Let Td1570.4572
																										Lfd vec.2780 8
																										Let Td1571.4573
																											FReciprocal Td1570.4572
																											Let Td1572.4570
																												FMul Td1568.4571 Td1571.4573
																												Ans
																													Stfd Td1572.4570 const.4560 20
																	Let Td1574.4567
																		FLi l.6149
																		Ans
																			Stfd Td1574.4567 const.4560 20
																Ans
																	Mr const.4560
setup_surface_table.2782 (args) : vec.2783 m.2784 (fargs) : 
	Let Ti1475.4558
		Li 4
		Let Td1476.4559
			FLi l.6149
			Let const.4516
				CallCls min_caml_create_float_array d:Ti1475.4558 f:Td1476.4559 
				Let Td1478.4555
					Lfd vec.2783 0
					Let Td1479.4556
						CallCls o_param_a.2611 d:m.2784 f:
						Let Td1480.4550
							FMul Td1478.4555 Td1479.4556
							Let Td1482.4552
								Lfd vec.2783 4
								Let Td1483.4553
									CallCls o_param_b.2613 d:m.2784 f:
									Let Td1484.4551
										FMul Td1482.4552 Td1483.4553
										Let Td1485.4545
											FAdd Td1480.4550 Td1484.4551
											Let Td1487.4547
												Lfd vec.2783 8
												Let Td1488.4548
													CallCls o_param_c.2615 d:m.2784 f:
													Let Td1489.4546
														FMul Td1487.4547 Td1488.4548
														Let d.4517
															FAdd Td1485.4545 Td1489.4546
															Let Tb1490.4519
																CallCls fispos.2516 d:f:d.4517 
																Let Ti1491.4520
																	Li 0
																	Let Tu92.4518
																		IfEq Tb1490.4519 Ti1491.4520
																			Let Td1493.4544
																				FLi l.6149
																				Ans
																					Stfd Td1493.4544 const.4516 0
																			Let Td1495.4541
																				FLi l.6155
																				Let Td1496.4542
																					FReciprocal d.4517
																					Let Td1497.4540
																						FMul Td1495.4541 Td1496.4542
																						Let Tu91.4521
																							Stfd Td1497.4540 const.4516 0
																							Let Td1499.4537
																								CallCls o_param_a.2611 d:m.2784 f:
																								Let Td1500.4538
																									FReciprocal d.4517
																									Let Td1501.4536
																										FMul Td1499.4537 Td1500.4538
																										Let Td1502.4535
																											CallCls fneg.2514 d:f:Td1501.4536 
																											Let Tu90.4522
																												Stfd Td1502.4535 const.4516 4
																												Let Td1504.4532
																													CallCls o_param_b.2613 d:m.2784 f:
																													Let Td1505.4533
																														FReciprocal d.4517
																														Let Td1506.4531
																															FMul Td1504.4532 Td1505.4533
																															Let Td1507.4530
																																CallCls fneg.2514 d:f:Td1506.4531 
																																Let Tu89.4523
																																	Stfd Td1507.4530 const.4516 8
																																	Let Td1509.4527
																																		CallCls o_param_c.2615 d:m.2784 f:
																																		Let Td1510.4528
																																			FReciprocal d.4517
																																			Let Td1511.4526
																																				FMul Td1509.4527 Td1510.4528
																																				Let Td1512.4525
																																					CallCls fneg.2514 d:f:Td1511.4526 
																																					Ans
																																						Stfd Td1512.4525 const.4516 12
																		Ans
																			Mr const.4516
setup_second_table.2785 (args) : v.2786 m.2787 (fargs) : 
	Let Ti1407.4514
		Li 5
		Let Td1408.4515
			FLi l.6149
			Let const.4436
				CallCls min_caml_create_float_array d:Ti1407.4514 f:Td1408.4515 
				Let Td1410.4508
					Lfd v.2786 0
					Let Td1412.4509
						Lfd v.2786 4
						Let Td1414.4510
							Lfd v.2786 8
							Let aa.4437
								CallCls quadratic.2716 d:m.2787 f:Td1410.4508 Td1412.4509 Td1414.4510 
								Let Td1416.4505
									Lfd v.2786 0
									Let Td1417.4506
										CallCls o_param_a.2611 d:m.2787 f:
										Let Td1418.4504
											FMul Td1416.4505 Td1417.4506
											Let c1.4438
												CallCls fneg.2514 d:f:Td1418.4504 
												Let Td1420.4501
													Lfd v.2786 4
													Let Td1421.4502
														CallCls o_param_b.2613 d:m.2787 f:
														Let Td1422.4500
															FMul Td1420.4501 Td1421.4502
															Let c2.4439
																CallCls fneg.2514 d:f:Td1422.4500 
																Let Td1424.4497
																	Lfd v.2786 8
																	Let Td1425.4498
																		CallCls o_param_c.2615 d:m.2787 f:
																		Let Td1426.4496
																			FMul Td1424.4497 Td1425.4498
																			Let c3.4440
																				CallCls fneg.2514 d:f:Td1426.4496 
																				Let Tu99.4441
																					Stfd aa.4437 const.4436 0
																					Let Ti1428.4450
																						CallCls o_isrot.2609 d:m.2787 f:
																						Let Ti1429.4451
																							Li 0
																							Let Tu98.4442
																								IfEq Ti1428.4450 Ti1429.4451
																									Let Tu96.4490
																										Stfd c1.4438 const.4436 4
																										Let Tu95.4491
																											Stfd c2.4439 const.4436 8
																											Ans
																												Stfd c3.4440 const.4436 12
																									Let Td1435.4487
																										Lfd v.2786 8
																										Let Td1436.4488
																											CallCls o_param_r2.2637 d:m.2787 f:
																											Let Td1437.4482
																												FMul Td1435.4487 Td1436.4488
																												Let Td1439.4484
																													Lfd v.2786 4
																													Let Td1440.4485
																														CallCls o_param_r3.2639 d:m.2787 f:
																														Let Td1441.4483
																															FMul Td1439.4484 Td1440.4485
																															Let Td1442.4481
																																FAdd Td1437.4482 Td1441.4483
																																Let Td1443.4480
																																	CallCls fhalf.2522 d:f:Td1442.4481 
																																	Let Td1444.4479
																																		FSub c1.4438 Td1443.4480
																																		Let Tu94.4452
																																			Stfd Td1444.4479 const.4436 4
																																			Let Td1447.4475
																																				Lfd v.2786 8
																																				Let Td1448.4476
																																					CallCls o_param_r1.2635 d:m.2787 f:
																																					Let Td1449.4470
																																						FMul Td1447.4475 Td1448.4476
																																						Let Td1451.4472
																																							Lfd v.2786 0
																																							Let Td1452.4473
																																								CallCls o_param_r3.2639 d:m.2787 f:
																																								Let Td1453.4471
																																									FMul Td1451.4472 Td1452.4473
																																									Let Td1454.4469
																																										FAdd Td1449.4470 Td1453.4471
																																										Let Td1455.4468
																																											CallCls fhalf.2522 d:f:Td1454.4469 
																																											Let Td1456.4467
																																												FSub c2.4439 Td1455.4468
																																												Let Tu93.4453
																																													Stfd Td1456.4467 const.4436 8
																																													Let Td1459.4463
																																														Lfd v.2786 4
																																														Let Td1460.4464
																																															CallCls o_param_r1.2635 d:m.2787 f:
																																															Let Td1461.4458
																																																FMul Td1459.4463 Td1460.4464
																																																Let Td1463.4460
																																																	Lfd v.2786 0
																																																	Let Td1464.4461
																																																		CallCls o_param_r2.2637 d:m.2787 f:
																																																		Let Td1465.4459
																																																			FMul Td1463.4460 Td1464.4461
																																																			Let Td1466.4457
																																																				FAdd Td1461.4458 Td1465.4459
																																																				Let Td1467.4456
																																																					CallCls fhalf.2522 d:f:Td1466.4457 
																																																					Let Td1468.4455
																																																						FSub c3.4440 Td1467.4456
																																																						Ans
																																																							Stfd Td1468.4455 const.4436 12
																								Let Tb1469.4444
																									CallCls fiszero.2520 d:f:aa.4437 
																									Let Ti1470.4445
																										Li 0
																										Let Tu97.4443
																											IfEq Tb1469.4444 Ti1470.4445
																												Let Td1472.4448
																													FLi l.6152
																													Let Td1473.4449
																														FReciprocal aa.4437
																														Let Td1474.4447
																															FMul Td1472.4448 Td1473.4449
																															Ans
																																Stfd Td1474.4447 const.4436 16
																												Ans
																													Nop
																											Ans
																												Mr const.4436
iter_setup_dirvec_constants.2788 (args) : dirvec.2789 index.2790 (fargs) : 
	Let objects.2485
		Lwz $a26 4
		Let Ti1399.4423
			Li 0
			Ans
				IfLE Ti1399.4423 index.2790
					Let o.6442
						Slw index.2790 2
						Let m.4424
							Lwz objects.2485 o.6442
							Let dconst.4425
								CallCls d_const.2664 d:dirvec.2789 f:
								Let v.4426
									CallCls d_vec.2662 d:dirvec.2789 f:
									Let m_shape.4427
										CallCls o_form.2603 d:m.4424 f:
										Let Ti1400.4431
											Li 1
											Let Tu100.4428
												IfEq m_shape.4427 Ti1400.4431
													Let Ta1401.4435
														CallCls setup_rect_table.2779 d:v.4426 m.4424 f:
														Let o.6445
															Slw index.2790 2
															Ans
																Stw Ta1401.4435 dconst.4425 o.6445
													Let Ti1402.4432
														Li 2
														Ans
															IfEq m_shape.4427 Ti1402.4432
																Let Ta1403.4434
																	CallCls setup_surface_table.2782 d:v.4426 m.4424 f:
																	Let o.6444
																		Slw index.2790 2
																		Ans
																			Stw Ta1403.4434 dconst.4425 o.6444
																Let Ta1404.4433
																	CallCls setup_second_table.2785 d:v.4426 m.4424 f:
																	Let o.6443
																		Slw index.2790 2
																		Ans
																			Stw Ta1404.4433 dconst.4425 o.6443
												Let Ti1406.4429
													Sub index.2790 1
													Ans
														CallCls iter_setup_dirvec_constants.2788 (iter_setup_dirvec_constants.2788) d:dirvec.2789 Ti1406.4429 f:
					Ans
						Nop
setup_dirvec_constants.2791 (args) : dirvec.2792 (fargs) : 
	Let n_objects.2484
		Lwz $a26 8
		Let iter_setup_dirvec_constants.2788
			Lwz $a26 4
			Let Ti1396.4420
				Lwz n_objects.2484 0
				Let Ti1398.4419
					Sub Ti1396.4420 1
					Ans
						CallCls iter_setup_dirvec_constants.2788 (iter_setup_dirvec_constants.2788) d:dirvec.2792 Ti1398.4419 f:
setup_startp_constants.2793 (args) : p.2794 index.2795 (fargs) : 
	Let objects.2485
		Lwz $a26 4
		Let Ti1356.4372
			Li 0
			Ans
				IfLE Ti1356.4372 index.2795
					Let o.6447
						Slw index.2795 2
						Let obj.4373
							Lwz objects.2485 o.6447
							Let sconst.4374
								CallCls o_param_ctbl.2641 d:obj.4373 f:
								Let m_shape.4375
									CallCls o_form.2603 d:obj.4373 f:
									Let Td1359.4416
										Lfd p.2794 0
										Let Td1360.4417
											CallCls o_param_x.2619 d:obj.4373 f:
											Let Td1361.4415
												FSub Td1359.4416 Td1360.4417
												Let Tu104.4376
													Stfd Td1361.4415 sconst.4374 0
													Let Td1364.4411
														Lfd p.2794 4
														Let Td1365.4412
															CallCls o_param_y.2621 d:obj.4373 f:
															Let Td1366.4410
																FSub Td1364.4411 Td1365.4412
																Let Tu103.4377
																	Stfd Td1366.4410 sconst.4374 4
																	Let Td1369.4406
																		Lfd p.2794 8
																		Let Td1370.4407
																			CallCls o_param_z.2623 d:obj.4373 f:
																			Let Td1371.4405
																				FSub Td1369.4406 Td1370.4407
																				Let Tu102.4378
																					Stfd Td1371.4405 sconst.4374 8
																					Let Ti1372.4382
																						Li 2
																						Let Tu101.4379
																							IfEq m_shape.4375 Ti1372.4382
																								Let Ta1374.4397
																									CallCls o_param_abc.2617 d:obj.4373 f:
																									Let Td1376.4398
																										Lfd sconst.4374 0
																										Let Td1378.4399
																											Lfd sconst.4374 4
																											Let Td1380.4400
																												Lfd sconst.4374 8
																												Let Td1381.4396
																													CallCls veciprod2.2579 d:Ta1374.4397 f:Td1376.4398 Td1378.4399 Td1380.4400 
																													Ans
																														Stfd Td1381.4396 sconst.4374 12
																								Let Ti1382.4383
																									Li 2
																									Ans
																										IfLE m_shape.4375 Ti1382.4383
																											Ans
																												Nop
																											Let Td1384.4389
																												Lfd sconst.4374 0
																												Let Td1386.4390
																													Lfd sconst.4374 4
																													Let Td1388.4391
																														Lfd sconst.4374 8
																														Let cc0.4384
																															CallCls quadratic.2716 d:obj.4373 f:Td1384.4389 Td1386.4390 Td1388.4391 
																															Let Ti1390.4387
																																Li 3
																																Let Td1392.4386
																																	IfEq m_shape.4375 Ti1390.4387
																																		Let Td1391.4388
																																			FLi l.6152
																																			Ans
																																				FSub cc0.4384 Td1391.4388
																																		Ans
																																			FMr cc0.4384
																																	Ans
																																		Stfd Td1392.4386 sconst.4374 12
																							Let Ti1394.4380
																								Sub index.2795 1
																								Ans
																									CallCls setup_startp_constants.2793 (setup_startp_constants.2793) d:p.2794 Ti1394.4380 f:
					Ans
						Nop
setup_startp.2796 (args) : p.2797 (fargs) : 
	Let startp_fast.2505
		Lwz $a26 12
		Let setup_startp_constants.2793
			Lwz $a26 8
			Let n_objects.2484
				Lwz $a26 4
				Let Tu105.4367
					CallCls veccpy.2565 d:startp_fast.2505 p.2797 f:
					Let Ti1353.4369
						Lwz n_objects.2484 0
						Let Ti1355.4368
							Sub Ti1353.4369 1
							Ans
								CallCls setup_startp_constants.2793 (setup_startp_constants.2793) d:p.2797 Ti1355.4368 f:
is_rect_outside.2798 (args) : m.2799 (fargs) : p0.2800 p1.2801 p2.2802 
	Let Td1338.4365
		CallCls fabs.2526 d:f:p0.2800 
		Let Td1339.4366
			CallCls o_param_a.2611 d:m.2799 f:
			Let Tb1340.4357
				CallCls fless.2528 d:f:Td1338.4365 Td1339.4366 
				Let Ti1341.4358
					Li 0
					Let Ti1348.4353
						IfEq Tb1340.4357 Ti1341.4358
							Ans
								Li 0
							Let Td1342.4363
								CallCls fabs.2526 d:f:p1.2801 
								Let Td1343.4364
									CallCls o_param_b.2613 d:m.2799 f:
									Let Tb1344.4359
										CallCls fless.2528 d:f:Td1342.4363 Td1343.4364 
										Let Ti1345.4360
											Li 0
											Ans
												IfEq Tb1344.4359 Ti1345.4360
													Ans
														Li 0
													Let Td1346.4361
														CallCls fabs.2526 d:f:p2.2802 
														Let Td1347.4362
															CallCls o_param_c.2615 d:m.2799 f:
															Ans
																CallCls fless.2528 d:f:Td1346.4361 Td1347.4362 
						Let Ti1349.4354
							Li 0
							Ans
								IfEq Ti1348.4353 Ti1349.4354
									Let Tb1350.4355
										CallCls o_isinvert.2607 d:m.2799 f:
										Let Ti1351.4356
											Li 0
											Ans
												IfEq Tb1350.4355 Ti1351.4356
													Ans
														Li 1
													Ans
														Li 0
									Ans
										CallCls o_isinvert.2607 d:m.2799 f:
is_plane_outside.2803 (args) : m.2804 (fargs) : p0.2805 p1.2806 p2.2807 
	Let Ta1333.4352
		CallCls o_param_abc.2617 d:m.2804 f:
		Let w.4347
			CallCls veciprod2.2579 d:Ta1333.4352 f:p0.2805 p1.2806 p2.2807 
			Let Tb1334.4350
				CallCls o_isinvert.2607 d:m.2804 f:
				Let Tb1335.4351
					CallCls fisneg.2518 d:f:w.4347 
					Let Tb1336.4348
						CallCls xor.2544 d:Tb1334.4350 Tb1335.4351 f:
						Let Ti1337.4349
							Li 0
							Ans
								IfEq Tb1336.4348 Ti1337.4349
									Ans
										Li 1
									Ans
										Li 0
is_second_outside.2808 (args) : m.2809 (fargs) : p0.2810 p1.2811 p2.2812 
	Let w.4338
		CallCls quadratic.2716 d:m.2809 f:p0.2810 p1.2811 p2.2812 
		Let Ti1326.4344
			CallCls o_form.2603 d:m.2809 f:
			Let Ti1327.4345
				Li 3
				Let w2.4339
					IfEq Ti1326.4344 Ti1327.4345
						Let Td1328.4346
							FLi l.6152
							Ans
								FSub w.4338 Td1328.4346
						Ans
							FMr w.4338
					Let Tb1329.4342
						CallCls o_isinvert.2607 d:m.2809 f:
						Let Tb1330.4343
							CallCls fisneg.2518 d:f:w2.4339 
							Let Tb1331.4340
								CallCls xor.2544 d:Tb1329.4342 Tb1330.4343 f:
								Let Ti1332.4341
									Li 0
									Ans
										IfEq Tb1331.4340 Ti1332.4341
											Ans
												Li 1
											Ans
												Li 0
is_outside.2813 (args) : m.2814 (fargs) : q0.2815 q1.2816 q2.2817 
	Let Td1321.4337
		CallCls o_param_x.2619 d:m.2814 f:
		Let p0.4329
			FSub q0.2815 Td1321.4337
			Let Td1322.4336
				CallCls o_param_y.2621 d:m.2814 f:
				Let p1.4330
					FSub q1.2816 Td1322.4336
					Let Td1323.4335
						CallCls o_param_z.2623 d:m.2814 f:
						Let p2.4331
							FSub q2.2817 Td1323.4335
							Let m_shape.4332
								CallCls o_form.2603 d:m.2814 f:
								Let Ti1324.4333
									Li 1
									Ans
										IfEq m_shape.4332 Ti1324.4333
											Ans
												CallCls is_rect_outside.2798 d:m.2814 f:p0.4329 p1.4330 p2.4331 
											Let Ti1325.4334
												Li 2
												Ans
													IfEq m_shape.4332 Ti1325.4334
														Ans
															CallCls is_plane_outside.2803 d:m.2814 f:p0.4329 p1.4330 p2.4331 
														Ans
															CallCls is_second_outside.2808 d:m.2814 f:p0.4329 p1.4330 p2.4331 
check_all_inside.2818 (args) : ofs.2819 iand.2820 (fargs) : q0.2821 q1.2822 q2.2823 
	Let objects.2485
		Lwz $a26 4
		Let o.6463
			Slw ofs.2819 2
			Let head.4321
				Lwz iand.2820 o.6463
				Let Ti1315.4322
					Li -1
					Ans
						IfEq head.4321 Ti1315.4322
							Ans
								Li 1
							Let o.6464
								Slw head.4321 2
								Let Tt1316.4327
									Lwz objects.2485 o.6464
									Let Tb1317.4323
										CallCls is_outside.2813 d:Tt1316.4327 f:q0.2821 q1.2822 q2.2823 
										Let Ti1318.4324
											Li 0
											Ans
												IfEq Tb1317.4323 Ti1318.4324
													Let Ti1320.4325
														Add ofs.2819 1
														Ans
															CallCls check_all_inside.2818 (check_all_inside.2818) d:Ti1320.4325 iand.2820 f:q0.2821 q1.2822 q2.2823 
													Ans
														Li 0
shadow_check_and_group.2824 (args) : iand_ofs.2825 and_group.2826 (fargs) : 
	Let solver_fast.2758
		Lwz $a26 28
		Let solver_dist.2492
			Lwz $a26 24
			Let objects.2485
				Lwz $a26 20
				Let light_dirvec.2511
					Lwz $a26 16
					Let light.2488
						Lwz $a26 12
						Let intersection_point.2495
							Lwz $a26 8
							Let check_all_inside.2818
								Lwz $a26 4
								Let o.6465
									Slw iand_ofs.2825 2
									Let Ti1280.4280
										Lwz and_group.2826 o.6465
										Let Ti1282.4281
											Li -1
											Ans
												IfEq Ti1280.4280 Ti1282.4281
													Ans
														Li 0
													Let o.6466
														Slw iand_ofs.2825 2
														Let obj.4282
															Lwz and_group.2826 o.6466
															Let t0.4283
																CallCls solver_fast.2758 (solver_fast.2758) d:obj.4282 light_dirvec.2511 intersection_point.2495 f:
																Let t0p.4284
																	Lfd solver_dist.2492 0
																	Let Ti1284.4317
																		Li 0
																		Let Ti1286.4285
																			IfEq t0.4283 Ti1284.4317
																				Ans
																					Li 0
																				Let Td1285.4318
																					FLi l.6468
																					Ans
																						CallCls fless.2528 d:f:t0p.4284 Td1285.4318 
																			Let Ti1287.4286
																				Li 0
																				Ans
																					IfEq Ti1286.4285 Ti1287.4286
																						Let o.6476
																							Slw obj.4282 2
																							Let Tt1288.4316
																								Lwz objects.2485 o.6476
																								Let Tb1289.4312
																									CallCls o_isinvert.2607 d:Tt1288.4316 f:
																									Let Ti1290.4313
																										Li 0
																										Ans
																											IfEq Tb1289.4312 Ti1290.4313
																												Ans
																													Li 0
																												Let Ti1292.4314
																													Add iand_ofs.2825 1
																													Ans
																														CallCls shadow_check_and_group.2824 (shadow_check_and_group.2824) d:Ti1292.4314 and_group.2826 f:
																						Let Td1293.4311
																							FLi l.6469
																							Let t.4287
																								FAdd t0p.4284 Td1293.4311
																								Let Td1295.4309
																									Lfd light.2488 0
																									Let Td1296.4306
																										FMul Td1295.4309 t.4287
																										Let Td1298.4307
																											Lfd intersection_point.2495 0
																											Let q0.4288
																												FAdd Td1296.4306 Td1298.4307
																												Let Td1300.4304
																													Lfd light.2488 4
																													Let Td1301.4301
																														FMul Td1300.4304 t.4287
																														Let Td1303.4302
																															Lfd intersection_point.2495 4
																															Let q1.4289
																																FAdd Td1301.4301 Td1303.4302
																																Let Td1305.4299
																																	Lfd light.2488 8
																																	Let Td1306.4296
																																		FMul Td1305.4299 t.4287
																																		Let Td1308.4297
																																			Lfd intersection_point.2495 8
																																			Let q2.4290
																																				FAdd Td1306.4296 Td1308.4297
																																				Let Ti1309.4295
																																					Li 0
																																					Let Tb1310.4291
																																						CallCls check_all_inside.2818 (check_all_inside.2818) d:Ti1309.4295 and_group.2826 f:q0.4288 q1.4289 q2.4290 
																																						Let Ti1311.4292
																																							Li 0
																																							Ans
																																								IfEq Tb1310.4291 Ti1311.4292
																																									Let Ti1313.4293
																																										Add iand_ofs.2825 1
																																										Ans
																																											CallCls shadow_check_and_group.2824 (shadow_check_and_group.2824) d:Ti1313.4293 and_group.2826 f:
																																									Ans
																																										Li 1
shadow_check_one_or_group.2827 (args) : ofs.2828 or_group.2829 (fargs) : 
	Let shadow_check_and_group.2824
		Lwz $a26 8
		Let and_net.2490
			Lwz $a26 4
			Let o.6477
				Slw ofs.2828 2
				Let head.4271
					Lwz or_group.2829 o.6477
					Let Ti1275.4272
						Li -1
						Ans
							IfEq head.4271 Ti1275.4272
								Ans
									Li 0
								Let o.6478
									Slw head.4271 2
									Let and_group.4273
										Lwz and_net.2490 o.6478
										Let Ti1276.4278
											Li 0
											Let shadow_p.4274
												CallCls shadow_check_and_group.2824 (shadow_check_and_group.2824) d:Ti1276.4278 and_group.4273 f:
												Let Ti1277.4275
													Li 0
													Ans
														IfEq shadow_p.4274 Ti1277.4275
															Let Ti1279.4276
																Add ofs.2828 1
																Ans
																	CallCls shadow_check_one_or_group.2827 (shadow_check_one_or_group.2827) d:Ti1279.4276 or_group.2829 f:
															Ans
																Li 1
shadow_check_one_or_matrix.2830 (args) : ofs.2831 or_matrix.2832 (fargs) : 
	Let solver_fast.2758
		Lwz $a26 20
		Let solver_dist.2492
			Lwz $a26 16
			Let shadow_check_one_or_group.2827
				Lwz $a26 12
				Let light_dirvec.2511
					Lwz $a26 8
					Let intersection_point.2495
						Lwz $a26 4
						Let o.6479
							Slw ofs.2831 2
							Let head.4246
								Lwz or_matrix.2832 o.6479
								Let range_primitive.4247
									Lwz head.4246 0
									Let Ti1254.4248
										Li -1
										Ans
											IfEq range_primitive.4247 Ti1254.4248
												Ans
													Li 0
												Let Ti1255.4258
													Li 99
													Let Ti1265.4249
														IfEq range_primitive.4247 Ti1255.4258
															Ans
																Li 1
															Let t.4259
																CallCls solver_fast.2758 (solver_fast.2758) d:range_primitive.4247 light_dirvec.2511 intersection_point.2495 f:
																Let Ti1256.4260
																	Li 0
																	Ans
																		IfEq t.4259 Ti1256.4260
																			Ans
																				Li 0
																			Let Td1258.4266
																				Lfd solver_dist.2492 0
																				Let Td1259.4267
																					FLi l.6482
																					Let Tb1260.4261
																						CallCls fless.2528 d:f:Td1258.4266 Td1259.4267 
																						Let Ti1261.4262
																							Li 0
																							Ans
																								IfEq Tb1260.4261 Ti1261.4262
																									Ans
																										Li 0
																									Let Ti1262.4265
																										Li 1
																										Let Tb1263.4263
																											CallCls shadow_check_one_or_group.2827 (shadow_check_one_or_group.2827) d:Ti1262.4265 head.4246 f:
																											Let Ti1264.4264
																												Li 0
																												Ans
																													IfEq Tb1263.4263 Ti1264.4264
																														Ans
																															Li 0
																														Ans
																															Li 1
														Let Ti1266.4250
															Li 0
															Ans
																IfEq Ti1265.4249 Ti1266.4250
																	Let Ti1268.4256
																		Add ofs.2831 1
																		Ans
																			CallCls shadow_check_one_or_matrix.2830 (shadow_check_one_or_matrix.2830) d:Ti1268.4256 or_matrix.2832 f:
																	Let Ti1269.4255
																		Li 1
																		Let Tb1270.4251
																			CallCls shadow_check_one_or_group.2827 (shadow_check_one_or_group.2827) d:Ti1269.4255 head.4246 f:
																			Let Ti1271.4252
																				Li 0
																				Ans
																					IfEq Tb1270.4251 Ti1271.4252
																						Let Ti1273.4253
																							Add ofs.2831 1
																							Ans
																								CallCls shadow_check_one_or_matrix.2830 (shadow_check_one_or_matrix.2830) d:Ti1273.4253 or_matrix.2832 f:
																						Ans
																							Li 1
solve_each_element.2833 (args) : iand_ofs.2834 and_group.2835 dirvec.2836 (fargs) : 
	Let tmin.2494
		Lwz $a26 36
		Let startp.2504
			Lwz $a26 32
			Let solver_dist.2492
				Lwz $a26 28
				Let solver.2735
					Lwz $a26 24
					Let objects.2485
						Lwz $a26 20
						Let intsec_rectside.2493
							Lwz $a26 16
							Let intersection_point.2495
								Lwz $a26 12
								Let intersected_object_id.2496
									Lwz $a26 8
									Let check_all_inside.2818
										Lwz $a26 4
										Let o.6483
											Slw iand_ofs.2834 2
											Let iobj.4195
												Lwz and_group.2835 o.6483
												Let Ti1213.4196
													Li -1
													Ans
														IfEq iobj.4195 Ti1213.4196
															Ans
																Nop
															Let t0.4197
																CallCls solver.2735 (solver.2735) d:iobj.4195 dirvec.2836 startp.2504 f:
																Let Ti1214.4198
																	Li 0
																	Ans
																		IfEq t0.4197 Ti1214.4198
																			Let o.6495
																				Slw iobj.4195 2
																				Let Tt1215.4244
																					Lwz objects.2485 o.6495
																					Let Tb1216.4240
																						CallCls o_isinvert.2607 d:Tt1215.4244 f:
																						Let Ti1217.4241
																							Li 0
																							Ans
																								IfEq Tb1216.4240 Ti1217.4241
																									Ans
																										Nop
																									Let Ti1219.4242
																										Add iand_ofs.2834 1
																										Ans
																											CallCls solve_each_element.2833 (solve_each_element.2833) d:Ti1219.4242 and_group.2835 dirvec.2836 f:
																			Let t0p.4199
																				Lfd solver_dist.2492 0
																				Let Td1221.4238
																					FLi l.6149
																					Let Tb1222.4203
																						CallCls fless.2528 d:f:Td1221.4238 t0p.4199 
																						Let Ti1223.4204
																							Li 0
																							Let Tu109.4200
																								IfEq Tb1222.4203 Ti1223.4204
																									Ans
																										Nop
																									Let Td1225.4236
																										Lfd tmin.2494 0
																										Let Tb1226.4205
																											CallCls fless.2528 d:f:t0p.4199 Td1225.4236 
																											Let Ti1227.4206
																												Li 0
																												Ans
																													IfEq Tb1226.4205 Ti1227.4206
																														Ans
																															Nop
																														Let Td1228.4235
																															FLi l.6469
																															Let t.4207
																																FAdd t0p.4199 Td1228.4235
																																Let Td1230.4233
																																	Lfd dirvec.2836 0
																																	Let Td1231.4230
																																		FMul Td1230.4233 t.4207
																																		Let Td1233.4231
																																			Lfd startp.2504 0
																																			Let q0.4208
																																				FAdd Td1231.4230 Td1233.4231
																																				Let Td1235.4228
																																					Lfd dirvec.2836 4
																																					Let Td1236.4225
																																						FMul Td1235.4228 t.4207
																																						Let Td1238.4226
																																							Lfd startp.2504 4
																																							Let q1.4209
																																								FAdd Td1236.4225 Td1238.4226
																																								Let Td1240.4223
																																									Lfd dirvec.2836 8
																																									Let Td1241.4220
																																										FMul Td1240.4223 t.4207
																																										Let Td1243.4221
																																											Lfd startp.2504 8
																																											Let q2.4210
																																												FAdd Td1241.4220 Td1243.4221
																																												Let Ti1244.4219
																																													Li 0
																																													Let Tb1245.4211
																																														CallCls check_all_inside.2818 (check_all_inside.2818) d:Ti1244.4219 and_group.2835 f:q0.4208 q1.4209 q2.4210 
																																														Let Ti1246.4212
																																															Li 0
																																															Ans
																																																IfEq Tb1245.4211 Ti1246.4212
																																																	Ans
																																																		Nop
																																																	Let Tu108.4213
																																																		Stfd t.4207 tmin.2494 0
																																																		Let Tu107.4214
																																																			CallCls vecset.2555 d:intersection_point.2495 f:q0.4208 q1.4209 q2.4210 
																																																			Let Tu106.4215
																																																				Stw iobj.4195 intersected_object_id.2496 0
																																																				Ans
																																																					Stw t0.4197 intsec_rectside.2493 0
																								Let Ti1251.4201
																									Add iand_ofs.2834 1
																									Ans
																										CallCls solve_each_element.2833 (solve_each_element.2833) d:Ti1251.4201 and_group.2835 dirvec.2836 f:
solve_one_or_network.2837 (args) : ofs.2838 or_group.2839 dirvec.2840 (fargs) : 
	Let solve_each_element.2833
		Lwz $a26 8
		Let and_net.2490
			Lwz $a26 4
			Let o.6496
				Slw ofs.2838 2
				Let head.4187
					Lwz or_group.2839 o.6496
					Let Ti1208.4188
						Li -1
						Ans
							IfEq head.4187 Ti1208.4188
								Ans
									Nop
								Let o.6497
									Slw head.4187 2
									Let and_group.4189
										Lwz and_net.2490 o.6497
										Let Ti1209.4193
											Li 0
											Let Tu110.4190
												CallCls solve_each_element.2833 (solve_each_element.2833) d:Ti1209.4193 and_group.4189 dirvec.2840 f:
												Let Ti1211.4191
													Add ofs.2838 1
													Ans
														CallCls solve_one_or_network.2837 (solve_one_or_network.2837) d:Ti1211.4191 or_group.2839 dirvec.2840 f:
trace_or_matrix.2841 (args) : ofs.2842 or_network.2843 dirvec.2844 (fargs) : 
	Let tmin.2494
		Lwz $a26 20
		Let startp.2504
			Lwz $a26 16
			Let solver_dist.2492
				Lwz $a26 12
				Let solver.2735
					Lwz $a26 8
					Let solve_one_or_network.2837
						Lwz $a26 4
						Let o.6498
							Slw ofs.2842 2
							Let head.4168
								Lwz or_network.2843 o.6498
								Let range_primitive.4169
									Lwz head.4168 0
									Let Ti1195.4170
										Li -1
										Ans
											IfEq range_primitive.4169 Ti1195.4170
												Ans
													Nop
												Let Ti1196.4174
													Li 99
													Let Tu111.4171
														IfEq range_primitive.4169 Ti1196.4174
															Let Ti1197.4184
																Li 1
																Ans
																	CallCls solve_one_or_network.2837 (solve_one_or_network.2837) d:Ti1197.4184 head.4168 dirvec.2844 f:
															Let t.4175
																CallCls solver.2735 (solver.2735) d:range_primitive.4169 dirvec.2844 startp.2504 f:
																Let Ti1198.4176
																	Li 0
																	Ans
																		IfEq t.4175 Ti1198.4176
																			Ans
																				Nop
																			Let tp.4177
																				Lfd solver_dist.2492 0
																				Let Td1201.4181
																					Lfd tmin.2494 0
																					Let Tb1202.4178
																						CallCls fless.2528 d:f:tp.4177 Td1201.4181 
																						Let Ti1203.4179
																							Li 0
																							Ans
																								IfEq Tb1202.4178 Ti1203.4179
																									Ans
																										Nop
																									Let Ti1204.4180
																										Li 1
																										Ans
																											CallCls solve_one_or_network.2837 (solve_one_or_network.2837) d:Ti1204.4180 head.4168 dirvec.2844 f:
														Let Ti1206.4172
															Add ofs.2842 1
															Ans
																CallCls trace_or_matrix.2841 (trace_or_matrix.2841) d:Ti1206.4172 or_network.2843 dirvec.2844 f:
judge_intersection.2845 (args) : dirvec.2846 (fargs) : 
	Let trace_or_matrix.2841
		Lwz $a26 12
		Let tmin.2494
			Lwz $a26 8
			Let or_net.2491
				Lwz $a26 4
				Let Td1184.4167
					FLi l.6502
					Let Tu113.4155
						Stfd Td1184.4167 tmin.2494 0
						Let Ti1185.4163
							Li 0
							Let Ta1187.4164
								Lwz or_net.2491 0
								Let Tu112.4156
									CallCls trace_or_matrix.2841 (trace_or_matrix.2841) d:Ti1185.4163 Ta1187.4164 dirvec.2846 f:
									Let t.4157
										Lfd tmin.2494 0
										Let Td1189.4161
											FLi l.6482
											Let Tb1190.4158
												CallCls fless.2528 d:f:Td1189.4161 t.4157 
												Let Ti1191.4159
													Li 0
													Ans
														IfEq Tb1190.4158 Ti1191.4159
															Ans
																Li 0
															Let Td1192.4160
																FLi l.6506
																Ans
																	CallCls fless.2528 d:f:t.4157 Td1192.4160 
solve_each_element_fast.2847 (args) : iand_ofs.2848 and_group.2849 dirvec.2850 (fargs) : 
	Let tmin.2494
		Lwz $a26 36
		Let startp_fast.2505
			Lwz $a26 32
			Let solver_fast2.2776
				Lwz $a26 28
				Let solver_dist.2492
					Lwz $a26 24
					Let objects.2485
						Lwz $a26 20
						Let intsec_rectside.2493
							Lwz $a26 16
							Let intersection_point.2495
								Lwz $a26 12
								Let intersected_object_id.2496
									Lwz $a26 8
									Let check_all_inside.2818
										Lwz $a26 4
										Let vec.4103
											CallCls d_vec.2662 d:dirvec.2850 f:
											Let o.6507
												Slw iand_ofs.2848 2
												Let iobj.4104
													Lwz and_group.2849 o.6507
													Let Ti1144.4105
														Li -1
														Ans
															IfEq iobj.4104 Ti1144.4105
																Ans
																	Nop
																Let t0.4106
																	CallCls solver_fast2.2776 (solver_fast2.2776) d:iobj.4104 dirvec.2850 f:
																	Let Ti1145.4107
																		Li 0
																		Ans
																			IfEq t0.4106 Ti1145.4107
																				Let o.6519
																					Slw iobj.4104 2
																					Let Tt1146.4153
																						Lwz objects.2485 o.6519
																						Let Tb1147.4149
																							CallCls o_isinvert.2607 d:Tt1146.4153 f:
																							Let Ti1148.4150
																								Li 0
																								Ans
																									IfEq Tb1147.4149 Ti1148.4150
																										Ans
																											Nop
																										Let Ti1150.4151
																											Add iand_ofs.2848 1
																											Ans
																												CallCls solve_each_element_fast.2847 (solve_each_element_fast.2847) d:Ti1150.4151 and_group.2849 dirvec.2850 f:
																				Let t0p.4108
																					Lfd solver_dist.2492 0
																					Let Td1152.4147
																						FLi l.6149
																						Let Tb1153.4112
																							CallCls fless.2528 d:f:Td1152.4147 t0p.4108 
																							Let Ti1154.4113
																								Li 0
																								Let Tu117.4109
																									IfEq Tb1153.4112 Ti1154.4113
																										Ans
																											Nop
																										Let Td1156.4145
																											Lfd tmin.2494 0
																											Let Tb1157.4114
																												CallCls fless.2528 d:f:t0p.4108 Td1156.4145 
																												Let Ti1158.4115
																													Li 0
																													Ans
																														IfEq Tb1157.4114 Ti1158.4115
																															Ans
																																Nop
																															Let Td1159.4144
																																FLi l.6469
																																Let t.4116
																																	FAdd t0p.4108 Td1159.4144
																																	Let Td1161.4142
																																		Lfd vec.4103 0
																																		Let Td1162.4139
																																			FMul Td1161.4142 t.4116
																																			Let Td1164.4140
																																				Lfd startp_fast.2505 0
																																				Let q0.4117
																																					FAdd Td1162.4139 Td1164.4140
																																					Let Td1166.4137
																																						Lfd vec.4103 4
																																						Let Td1167.4134
																																							FMul Td1166.4137 t.4116
																																							Let Td1169.4135
																																								Lfd startp_fast.2505 4
																																								Let q1.4118
																																									FAdd Td1167.4134 Td1169.4135
																																									Let Td1171.4132
																																										Lfd vec.4103 8
																																										Let Td1172.4129
																																											FMul Td1171.4132 t.4116
																																											Let Td1174.4130
																																												Lfd startp_fast.2505 8
																																												Let q2.4119
																																													FAdd Td1172.4129 Td1174.4130
																																													Let Ti1175.4128
																																														Li 0
																																														Let Tb1176.4120
																																															CallCls check_all_inside.2818 (check_all_inside.2818) d:Ti1175.4128 and_group.2849 f:q0.4117 q1.4118 q2.4119 
																																															Let Ti1177.4121
																																																Li 0
																																																Ans
																																																	IfEq Tb1176.4120 Ti1177.4121
																																																		Ans
																																																			Nop
																																																		Let Tu116.4122
																																																			Stfd t.4116 tmin.2494 0
																																																			Let Tu115.4123
																																																				CallCls vecset.2555 d:intersection_point.2495 f:q0.4117 q1.4118 q2.4119 
																																																				Let Tu114.4124
																																																					Stw iobj.4104 intersected_object_id.2496 0
																																																					Ans
																																																						Stw t0.4106 intsec_rectside.2493 0
																									Let Ti1182.4110
																										Add iand_ofs.2848 1
																										Ans
																											CallCls solve_each_element_fast.2847 (solve_each_element_fast.2847) d:Ti1182.4110 and_group.2849 dirvec.2850 f:
solve_one_or_network_fast.2851 (args) : ofs.2852 or_group.2853 dirvec.2854 (fargs) : 
	Let solve_each_element_fast.2847
		Lwz $a26 8
		Let and_net.2490
			Lwz $a26 4
			Let o.6520
				Slw ofs.2852 2
				Let head.4095
					Lwz or_group.2853 o.6520
					Let Ti1139.4096
						Li -1
						Ans
							IfEq head.4095 Ti1139.4096
								Ans
									Nop
								Let o.6521
									Slw head.4095 2
									Let and_group.4097
										Lwz and_net.2490 o.6521
										Let Ti1140.4101
											Li 0
											Let Tu118.4098
												CallCls solve_each_element_fast.2847 (solve_each_element_fast.2847) d:Ti1140.4101 and_group.4097 dirvec.2854 f:
												Let Ti1142.4099
													Add ofs.2852 1
													Ans
														CallCls solve_one_or_network_fast.2851 (solve_one_or_network_fast.2851) d:Ti1142.4099 or_group.2853 dirvec.2854 f:
trace_or_matrix_fast.2855 (args) : ofs.2856 or_network.2857 dirvec.2858 (fargs) : 
	Let tmin.2494
		Lwz $a26 16
		Let solver_fast2.2776
			Lwz $a26 12
			Let solver_dist.2492
				Lwz $a26 8
				Let solve_one_or_network_fast.2851
					Lwz $a26 4
					Let o.6522
						Slw ofs.2856 2
						Let head.4076
							Lwz or_network.2857 o.6522
							Let range_primitive.4077
								Lwz head.4076 0
								Let Ti1126.4078
									Li -1
									Ans
										IfEq range_primitive.4077 Ti1126.4078
											Ans
												Nop
											Let Ti1127.4082
												Li 99
												Let Tu119.4079
													IfEq range_primitive.4077 Ti1127.4082
														Let Ti1128.4092
															Li 1
															Ans
																CallCls solve_one_or_network_fast.2851 (solve_one_or_network_fast.2851) d:Ti1128.4092 head.4076 dirvec.2858 f:
														Let t.4083
															CallCls solver_fast2.2776 (solver_fast2.2776) d:range_primitive.4077 dirvec.2858 f:
															Let Ti1129.4084
																Li 0
																Ans
																	IfEq t.4083 Ti1129.4084
																		Ans
																			Nop
																		Let tp.4085
																			Lfd solver_dist.2492 0
																			Let Td1132.4089
																				Lfd tmin.2494 0
																				Let Tb1133.4086
																					CallCls fless.2528 d:f:tp.4085 Td1132.4089 
																					Let Ti1134.4087
																						Li 0
																						Ans
																							IfEq Tb1133.4086 Ti1134.4087
																								Ans
																									Nop
																								Let Ti1135.4088
																									Li 1
																									Ans
																										CallCls solve_one_or_network_fast.2851 (solve_one_or_network_fast.2851) d:Ti1135.4088 head.4076 dirvec.2858 f:
													Let Ti1137.4080
														Add ofs.2856 1
														Ans
															CallCls trace_or_matrix_fast.2855 (trace_or_matrix_fast.2855) d:Ti1137.4080 or_network.2857 dirvec.2858 f:
judge_intersection_fast.2859 (args) : dirvec.2860 (fargs) : 
	Let trace_or_matrix_fast.2855
		Lwz $a26 12
		Let tmin.2494
			Lwz $a26 8
			Let or_net.2491
				Lwz $a26 4
				Let Td1115.4075
					FLi l.6502
					Let Tu121.4063
						Stfd Td1115.4075 tmin.2494 0
						Let Ti1116.4071
							Li 0
							Let Ta1118.4072
								Lwz or_net.2491 0
								Let Tu120.4064
									CallCls trace_or_matrix_fast.2855 (trace_or_matrix_fast.2855) d:Ti1116.4071 Ta1118.4072 dirvec.2860 f:
									Let t.4065
										Lfd tmin.2494 0
										Let Td1120.4069
											FLi l.6482
											Let Tb1121.4066
												CallCls fless.2528 d:f:Td1120.4069 t.4065 
												Let Ti1122.4067
													Li 0
													Ans
														IfEq Tb1121.4066 Ti1122.4067
															Ans
																Li 0
															Let Td1123.4068
																FLi l.6506
																Ans
																	CallCls fless.2528 d:f:t.4065 Td1123.4068 
get_nvector_rect.2861 (args) : dirvec.2862 (fargs) : 
	Let nvector.2497
		Lwz $a26 8
		Let intsec_rectside.2493
			Lwz $a26 4
			Let rectside.4053
				Lwz intsec_rectside.2493 0
				Let Tu122.4054
					CallCls vecbzero.2563 d:nvector.2497 f:
					Let Ti1108.4055
						Sub rectside.4053 1
						Let Ti1110.4059
							Sub rectside.4053 1
							Let o.6530
								Slw Ti1110.4059 2
								Let Td1111.4058
									Lfd dirvec.2862 o.6530
									Let Td1112.4057
										CallCls sgn.2547 d:f:Td1111.4058 
										Let Td1113.4056
											CallCls fneg.2514 d:f:Td1112.4057 
											Let o.6531
												Slw Ti1108.4055 2
												Ans
													Stfd Td1113.4056 nvector.2497 o.6531
get_nvector_plane.2863 (args) : m.2864 (fargs) : 
	Let nvector.2497
		Lwz $a26 4
		Let Td1098.4052
			CallCls o_param_a.2611 d:m.2864 f:
			Let Td1099.4051
				CallCls fneg.2514 d:f:Td1098.4052 
				Let Tu124.4042
					Stfd Td1099.4051 nvector.2497 0
					Let Td1101.4049
						CallCls o_param_b.2613 d:m.2864 f:
						Let Td1102.4048
							CallCls fneg.2514 d:f:Td1101.4049 
							Let Tu123.4043
								Stfd Td1102.4048 nvector.2497 4
								Let Td1104.4046
									CallCls o_param_c.2615 d:m.2864 f:
									Let Td1105.4045
										CallCls fneg.2514 d:f:Td1104.4046 
										Ans
											Stfd Td1105.4045 nvector.2497 8
get_nvector_second.2865 (args) : m.2866 (fargs) : 
	Let nvector.2497
		Lwz $a26 8
		Let intersection_point.2495
			Lwz $a26 4
			Let Td1056.4039
				Lfd intersection_point.2495 0
				Let Td1057.4040
					CallCls o_param_x.2619 d:m.2866 f:
					Let p0.3989
						FSub Td1056.4039 Td1057.4040
						Let Td1059.4036
							Lfd intersection_point.2495 4
							Let Td1060.4037
								CallCls o_param_y.2621 d:m.2866 f:
								Let p1.3990
									FSub Td1059.4036 Td1060.4037
									Let Td1062.4033
										Lfd intersection_point.2495 8
										Let Td1063.4034
											CallCls o_param_z.2623 d:m.2866 f:
											Let p2.3991
												FSub Td1062.4033 Td1063.4034
												Let Td1064.4032
													CallCls o_param_a.2611 d:m.2866 f:
													Let d0.3992
														FMul p0.3989 Td1064.4032
														Let Td1065.4031
															CallCls o_param_b.2613 d:m.2866 f:
															Let d1.3993
																FMul p1.3990 Td1065.4031
																Let Td1066.4030
																	CallCls o_param_c.2615 d:m.2866 f:
																	Let d2.3994
																		FMul p2.3991 Td1066.4030
																		Let Ti1067.3997
																			CallCls o_isrot.2609 d:m.2866 f:
																			Let Ti1068.3998
																				Li 0
																				Let Tu129.3995
																					IfEq Ti1067.3997 Ti1068.3998
																						Let Tu126.4025
																							Stfd d0.3992 nvector.2497 0
																							Let Tu125.4026
																								Stfd d1.3993 nvector.2497 4
																								Ans
																									Stfd d2.3994 nvector.2497 8
																						Let Td1073.4024
																							CallCls o_param_r3.2639 d:m.2866 f:
																							Let Td1074.4021
																								FMul p1.3990 Td1073.4024
																								Let Td1075.4023
																									CallCls o_param_r2.2637 d:m.2866 f:
																									Let Td1076.4022
																										FMul p2.3991 Td1075.4023
																										Let Td1077.4020
																											FAdd Td1074.4021 Td1076.4022
																											Let Td1078.4019
																												CallCls fhalf.2522 d:f:Td1077.4020 
																												Let Td1079.4018
																													FAdd d0.3992 Td1078.4019
																													Let Tu128.3999
																														Stfd Td1079.4018 nvector.2497 0
																														Let Td1081.4016
																															CallCls o_param_r3.2639 d:m.2866 f:
																															Let Td1082.4013
																																FMul p0.3989 Td1081.4016
																																Let Td1083.4015
																																	CallCls o_param_r1.2635 d:m.2866 f:
																																	Let Td1084.4014
																																		FMul p2.3991 Td1083.4015
																																		Let Td1085.4012
																																			FAdd Td1082.4013 Td1084.4014
																																			Let Td1086.4011
																																				CallCls fhalf.2522 d:f:Td1085.4012 
																																				Let Td1087.4010
																																					FAdd d1.3993 Td1086.4011
																																					Let Tu127.4000
																																						Stfd Td1087.4010 nvector.2497 4
																																						Let Td1089.4008
																																							CallCls o_param_r2.2637 d:m.2866 f:
																																							Let Td1090.4005
																																								FMul p0.3989 Td1089.4008
																																								Let Td1091.4007
																																									CallCls o_param_r1.2635 d:m.2866 f:
																																									Let Td1092.4006
																																										FMul p1.3990 Td1091.4007
																																										Let Td1093.4004
																																											FAdd Td1090.4005 Td1092.4006
																																											Let Td1094.4003
																																												CallCls fhalf.2522 d:f:Td1093.4004 
																																												Let Td1095.4002
																																													FAdd d2.3994 Td1094.4003
																																													Ans
																																														Stfd Td1095.4002 nvector.2497 8
																					Let Tb1096.3996
																						CallCls o_isinvert.2607 d:m.2866 f:
																						Ans
																							CallCls vecunit_sgn.2573 d:nvector.2497 Tb1096.3996 f:
get_nvector.2867 (args) : m.2868 dirvec.2869 (fargs) : 
	Let get_nvector_second.2865
		Lwz $a26 12
		Let get_nvector_rect.2861
			Lwz $a26 8
			Let get_nvector_plane.2863
				Lwz $a26 4
				Let m_shape.3986
					CallCls o_form.2603 d:m.2868 f:
					Let Ti1053.3987
						Li 1
						Ans
							IfEq m_shape.3986 Ti1053.3987
								Ans
									CallCls get_nvector_rect.2861 (get_nvector_rect.2861) d:dirvec.2869 f:
								Let Ti1054.3988
									Li 2
									Ans
										IfEq m_shape.3986 Ti1054.3988
											Ans
												CallCls get_nvector_plane.2863 (get_nvector_plane.2863) d:m.2868 f:
											Ans
												CallCls get_nvector_second.2865 (get_nvector_second.2865) d:m.2868 f:
utexture.2870 (args) : m.2871 p.2872 (fargs) : 
	Let texture_color.2498
		Lwz $a26 4
		Let m_tex.3826
			CallCls o_texturetype.2601 d:m.2871 f:
			Let Td924.3985
				CallCls o_color_red.2629 d:m.2871 f:
				Let Tu134.3827
					Stfd Td924.3985 texture_color.2498 0
					Let Td926.3983
						CallCls o_color_green.2631 d:m.2871 f:
						Let Tu133.3828
							Stfd Td926.3983 texture_color.2498 4
							Let Td928.3981
								CallCls o_color_blue.2633 d:m.2871 f:
								Let Tu132.3829
									Stfd Td928.3981 texture_color.2498 8
									Let Ti929.3830
										Li 1
										Ans
											IfEq m_tex.3826 Ti929.3830
												Let Td931.3977
													Lfd p.2872 0
													Let Td932.3978
														CallCls o_param_x.2619 d:m.2871 f:
														Let w1.3951
															FSub Td931.3977 Td932.3978
															Let Td933.3976
																FLi l.6568
																Let Td934.3975
																	FMul w1.3951 Td933.3976
																	Let Td935.3973
																		CallCls floor.2535 d:f:Td934.3975 
																		Let Td936.3974
																			FLi l.6569
																			Let d1.3970
																				FMul Td935.3973 Td936.3974
																				Let Td937.3971
																					FSub w1.3951 d1.3970
																					Let Td938.3972
																						FLi l.6560
																						Let flag1.3952
																							CallCls fless.2528 d:f:Td937.3971 Td938.3972 
																							Let Td940.3967
																								Lfd p.2872 8
																								Let Td941.3968
																									CallCls o_param_z.2623 d:m.2871 f:
																									Let w3.3953
																										FSub Td940.3967 Td941.3968
																										Let Td942.3966
																											FLi l.6568
																											Let Td943.3965
																												FMul w3.3953 Td942.3966
																												Let Td944.3963
																													CallCls floor.2535 d:f:Td943.3965 
																													Let Td945.3964
																														FLi l.6569
																														Let d2.3960
																															FMul Td944.3963 Td945.3964
																															Let Td946.3961
																																FSub w3.3953 d2.3960
																																Let Td947.3962
																																	FLi l.6560
																																	Let flag2.3954
																																		CallCls fless.2528 d:f:Td946.3961 Td947.3962 
																																		Let Ti949.3957
																																			Li 0
																																			Let Td952.3956
																																				IfEq flag1.3952 Ti949.3957
																																					Let Ti950.3959
																																						Li 0
																																						Ans
																																							IfEq flag2.3954 Ti950.3959
																																								Ans
																																									FLi l.6555
																																								Ans
																																									FLi l.6149
																																					Let Ti951.3958
																																						Li 0
																																						Ans
																																							IfEq flag2.3954 Ti951.3958
																																								Ans
																																									FLi l.6149
																																								Ans
																																									FLi l.6555
																																				Ans
																																					Stfd Td952.3956 texture_color.2498 4
												Let Ti953.3831
													Li 2
													Ans
														IfEq m_tex.3826 Ti953.3831
															Let Td955.3948
																Lfd p.2872 4
																Let Td956.3949
																	FLi l.6564
																	Let Td957.3947
																		FMul Td955.3948 Td956.3949
																		Let Td958.3946
																			CallCls min_caml_sin d:f:Td957.3947 
																			Let w2.3936
																				CallCls fsqr.2524 d:f:Td958.3946 
																				Let Td960.3945
																					FLi l.6555
																					Let Td961.3944
																						FMul Td960.3945 w2.3936
																						Let Tu130.3937
																							Stfd Td961.3944 texture_color.2498 0
																							Let Td963.3940
																								FLi l.6555
																								Let Td964.3942
																									FLi l.6152
																									Let Td965.3941
																										FSub Td964.3942 w2.3936
																										Let Td966.3939
																											FMul Td963.3940 Td965.3941
																											Ans
																												Stfd Td966.3939 texture_color.2498 4
															Let Ti967.3832
																Li 3
																Ans
																	IfEq m_tex.3826 Ti967.3832
																		Let Td969.3933
																			Lfd p.2872 0
																			Let Td970.3934
																				CallCls o_param_x.2619 d:m.2871 f:
																				Let w1.3906
																					FSub Td969.3933 Td970.3934
																					Let Td972.3930
																						Lfd p.2872 8
																						Let Td973.3931
																							CallCls o_param_z.2623 d:m.2871 f:
																							Let w3.3907
																								FSub Td972.3930 Td973.3931
																								Let Td974.3928
																									CallCls fsqr.2524 d:f:w1.3906 
																									Let Td975.3929
																										CallCls fsqr.2524 d:f:w3.3907 
																										Let Td976.3927
																											FAdd Td974.3928 Td975.3929
																											Let Td977.3924
																												CallCls min_caml_sqrt d:f:Td976.3927 
																												Let Td978.3925
																													FLi l.6560
																													Let Td979.3926
																														FReciprocal Td978.3925
																														Let w2.3908
																															FMul Td977.3924 Td979.3926
																															Let Td980.3923
																																CallCls floor.2535 d:f:w2.3908 
																																Let Td981.3921
																																	FSub w2.3908 Td980.3923
																																	Let Td982.3922
																																		FLi l.6552
																																		Let w4.3909
																																			FMul Td981.3921 Td982.3922
																																			Let Td983.3920
																																				CallCls min_caml_cos d:f:w4.3909 
																																				Let cws.3910
																																					CallCls fsqr.2524 d:f:Td983.3920 
																																					Let Td985.3919
																																						FLi l.6555
																																						Let Td986.3918
																																							FMul cws.3910 Td985.3919
																																							Let Tu131.3911
																																								Stfd Td986.3918 texture_color.2498 4
																																								Let Td988.3916
																																									FLi l.6152
																																									Let Td989.3914
																																										FSub Td988.3916 cws.3910
																																										Let Td990.3915
																																											FLi l.6555
																																											Let Td991.3913
																																												FMul Td989.3914 Td990.3915
																																												Ans
																																													Stfd Td991.3913 texture_color.2498 8
																		Let Ti992.3833
																			Li 4
																			Ans
																				IfEq m_tex.3826 Ti992.3833
																					Let Td994.3903
																						Lfd p.2872 0
																						Let Td995.3904
																							CallCls o_param_x.2619 d:m.2871 f:
																							Let Td996.3900
																								FSub Td994.3903 Td995.3904
																								Let Td997.3902
																									CallCls o_param_a.2611 d:m.2871 f:
																									Let Td998.3901
																										CallCls min_caml_sqrt d:f:Td997.3902 
																										Let w1.3834
																											FMul Td996.3900 Td998.3901
																											Let Td1000.3897
																												Lfd p.2872 8
																												Let Td1001.3898
																													CallCls o_param_z.2623 d:m.2871 f:
																													Let Td1002.3894
																														FSub Td1000.3897 Td1001.3898
																														Let Td1003.3896
																															CallCls o_param_c.2615 d:m.2871 f:
																															Let Td1004.3895
																																CallCls min_caml_sqrt d:f:Td1003.3896 
																																Let w3.3835
																																	FMul Td1002.3894 Td1004.3895
																																	Let Td1005.3892
																																		CallCls fsqr.2524 d:f:w1.3834 
																																		Let Td1006.3893
																																			CallCls fsqr.2524 d:f:w3.3835 
																																			Let w4.3836
																																				FAdd Td1005.3892 Td1006.3893
																																				Let Td1007.3890
																																					CallCls fabs.2526 d:f:w1.3834 
																																					Let Td1008.3891
																																						FLi l.6549
																																						Let Tb1009.3880
																																							CallCls fless.2528 d:f:Td1007.3890 Td1008.3891 
																																							Let Ti1010.3881
																																								Li 0
																																								Let w7.3837
																																									IfEq Tb1009.3880 Ti1010.3881
																																										Let Td1011.3889
																																											FReciprocal w1.3834
																																											Let Td1012.3888
																																												FMul w3.3835 Td1011.3889
																																												Let w5.3882
																																													CallCls fabs.2526 d:f:Td1012.3888 
																																													Let Td1013.3886
																																														CallCls min_caml_atan d:f:w5.3882 
																																														Let Td1014.3887
																																															FLi l.6551
																																															Let Td1015.3883
																																																FMul Td1013.3886 Td1014.3887
																																																Let Td1016.3884
																																																	FLi l.6552
																																																	Let Td1017.3885
																																																		FReciprocal Td1016.3884
																																																		Ans
																																																			FMul Td1015.3883 Td1017.3885
																																										Ans
																																											FLi l.6550
																																									Let Td1018.3879
																																										CallCls floor.2535 d:f:w7.3837 
																																										Let w9.3838
																																											FSub w7.3837 Td1018.3879
																																											Let Td1020.3876
																																												Lfd p.2872 4
																																												Let Td1021.3877
																																													CallCls o_param_y.2621 d:m.2871 f:
																																													Let Td1022.3873
																																														FSub Td1020.3876 Td1021.3877
																																														Let Td1023.3875
																																															CallCls o_param_b.2613 d:m.2871 f:
																																															Let Td1024.3874
																																																CallCls min_caml_sqrt d:f:Td1023.3875 
																																																Let w2.3839
																																																	FMul Td1022.3873 Td1024.3874
																																																	Let Td1025.3871
																																																		CallCls fabs.2526 d:f:w4.3836 
																																																		Let Td1026.3872
																																																			FLi l.6549
																																																			Let Tb1027.3861
																																																				CallCls fless.2528 d:f:Td1025.3871 Td1026.3872 
																																																				Let Ti1028.3862
																																																					Li 0
																																																					Let w8.3840
																																																						IfEq Tb1027.3861 Ti1028.3862
																																																							Let Td1029.3870
																																																								FReciprocal w4.3836
																																																								Let Td1030.3869
																																																									FMul w2.3839 Td1029.3870
																																																									Let w6.3863
																																																										CallCls fabs.2526 d:f:Td1030.3869 
																																																										Let Td1031.3867
																																																											CallCls min_caml_atan d:f:w6.3863 
																																																											Let Td1032.3868
																																																												FLi l.6551
																																																												Let Td1033.3864
																																																													FMul Td1031.3867 Td1032.3868
																																																													Let Td1034.3865
																																																														FLi l.6552
																																																														Let Td1035.3866
																																																															FReciprocal Td1034.3865
																																																															Ans
																																																																FMul Td1033.3864 Td1035.3866
																																																							Ans
																																																								FLi l.6550
																																																						Let Td1036.3860
																																																							CallCls floor.2535 d:f:w8.3840 
																																																							Let w10.3841
																																																								FSub w8.3840 Td1036.3860
																																																								Let Td1037.3856
																																																									FLi l.6554
																																																									Let Td1038.3859
																																																										FLi l.6150
																																																										Let Td1039.3858
																																																											FSub Td1038.3859 w9.3838
																																																											Let Td1040.3857
																																																												CallCls fsqr.2524 d:f:Td1039.3858 
																																																												Let Td1041.3852
																																																													FSub Td1037.3856 Td1040.3857
																																																													Let Td1042.3855
																																																														FLi l.6150
																																																														Let Td1043.3854
																																																															FSub Td1042.3855 w10.3841
																																																															Let Td1044.3853
																																																																CallCls fsqr.2524 d:f:Td1043.3854 
																																																																Let w11.3842
																																																																	FSub Td1041.3852 Td1044.3853
																																																																	Let Tb1045.3850
																																																																		CallCls fisneg.2518 d:f:w11.3842 
																																																																		Let Ti1046.3851
																																																																			Li 0
																																																																			Let w12.3843
																																																																				IfEq Tb1045.3850 Ti1046.3851
																																																																					Ans
																																																																						FMr w11.3842
																																																																					Ans
																																																																						FLi l.6149
																																																																				Let Td1048.3849
																																																																					FLi l.6555
																																																																					Let Td1049.3846
																																																																						FMul Td1048.3849 w12.3843
																																																																						Let Td1050.3847
																																																																							FLi l.6556
																																																																							Let Td1051.3848
																																																																								FReciprocal Td1050.3847
																																																																								Let Td1052.3845
																																																																									FMul Td1049.3846 Td1051.3848
																																																																									Ans
																																																																										Stfd Td1052.3845 texture_color.2498 8
																					Ans
																						Nop
add_light.2873 (args) : (fargs) : bright.2874 hilight.2875 hilight_scale.2876 
	Let texture_color.2498
		Lwz $a26 8
		Let rgb.2500
			Lwz $a26 4
			Let Tb905.3824
				CallCls fispos.2516 d:f:bright.2874 
				Let Ti906.3825
					Li 0
					Let Tu137.3804
						IfEq Tb905.3824 Ti906.3825
							Ans
								Nop
							Ans
								CallCls vecaccum.2584 d:rgb.2500 texture_color.2498 f:bright.2874 
						Let Tb907.3805
							CallCls fispos.2516 d:f:hilight.2875 
							Let Ti908.3806
								Li 0
								Ans
									IfEq Tb907.3805 Ti908.3806
										Ans
											Nop
										Let Td909.3823
											CallCls fsqr.2524 d:f:hilight.2875 
											Let Td910.3822
												CallCls fsqr.2524 d:f:Td909.3823 
												Let ihl.3807
													FMul Td910.3822 hilight_scale.2876
													Let Td913.3820
														Lfd rgb.2500 0
														Let Td914.3819
															FAdd Td913.3820 ihl.3807
															Let Tu136.3808
																Stfd Td914.3819 rgb.2500 0
																Let Td917.3816
																	Lfd rgb.2500 4
																	Let Td918.3815
																		FAdd Td917.3816 ihl.3807
																		Let Tu135.3809
																			Stfd Td918.3815 rgb.2500 4
																			Let Td921.3812
																				Lfd rgb.2500 8
																				Let Td922.3811
																					FAdd Td921.3812 ihl.3807
																					Ans
																						Stfd Td922.3811 rgb.2500 8
trace_reflections.2877 (args) : index.2878 dirvec.2881 (fargs) : diffuse.2879 hilight_scale.2880 
	Let shadow_check_one_or_matrix.2830
		Lwz $a26 32
		Let reflections.2512
			Lwz $a26 28
			Let or_net.2491
				Lwz $a26 24
				Let nvector.2497
					Lwz $a26 20
					Let judge_intersection_fast.2859
						Lwz $a26 16
						Let intsec_rectside.2493
							Lwz $a26 12
							Let intersected_object_id.2496
								Lwz $a26 8
								Let add_light.2873
									Lwz $a26 4
									Let Ti885.3776
										Li 0
										Ans
											IfLE Ti885.3776 index.2878
												Let o.6578
													Slw index.2878 2
													Let rinfo.3777
														Lwz reflections.2512 o.6578
														Let dvec.3778
															CallCls r_dvec.2668 d:rinfo.3777 f:
															Let Tb886.3782
																CallCls judge_intersection_fast.2859 (judge_intersection_fast.2859) d:dvec.3778 f:
																Let Ti887.3783
																	Li 0
																	Let Tu138.3779
																		IfEq Tb886.3782 Ti887.3783
																			Ans
																				Nop
																			Let Ti889.3802
																				Lwz intersected_object_id.2496 0
																				Let Ti890.3799
																					ShiftL2 Ti889.3802
																					Let Ti892.3800
																						Lwz intsec_rectside.2493 0
																						Let surface_id.3784
																							Add Ti890.3799 Ti892.3800
																							Let Ti893.3785
																								CallCls r_surface_id.2666 d:rinfo.3777 f:
																								Ans
																									IfEq surface_id.3784 Ti893.3785
																										Let Ti894.3796
																											Li 0
																											Let Ta896.3797
																												Lwz or_net.2491 0
																												Let Tb897.3786
																													CallCls shadow_check_one_or_matrix.2830 (shadow_check_one_or_matrix.2830) d:Ti894.3796 Ta896.3797 f:
																													Let Ti898.3787
																														Li 0
																														Ans
																															IfEq Tb897.3786 Ti898.3787
																																Let Ta899.3795
																																	CallCls d_vec.2662 d:dvec.3778 f:
																																	Let p.3788
																																		CallCls veciprod.2576 d:nvector.2497 Ta899.3795 f:
																																		Let scale.3789
																																			CallCls r_bright.2670 d:rinfo.3777 f:
																																			Let Td900.3794
																																				FMul scale.3789 diffuse.2879
																																				Let bright.3790
																																					FMul Td900.3794 p.3788
																																					Let Ta901.3793
																																						CallCls d_vec.2662 d:dvec.3778 f:
																																						Let Td902.3792
																																							CallCls veciprod.2576 d:dirvec.2881 Ta901.3793 f:
																																							Let hilight.3791
																																								FMul scale.3789 Td902.3792
																																								Ans
																																									CallCls add_light.2873 (add_light.2873) d:f:bright.3790 hilight.3791 hilight_scale.2880 
																																Ans
																																	Nop
																										Ans
																											Nop
																		Let Ti904.3780
																			Sub index.2878 1
																			Ans
																				CallCls trace_reflections.2877 (trace_reflections.2877) d:Ti904.3780 dirvec.2881 f:diffuse.2879 hilight_scale.2880 
												Ans
													Nop
trace_ray.2882 (args) : nref.2883 dirvec.2885 pixel.2886 (fargs) : energy.2884 dist.2887 
	Let utexture.2870
		Lwz $a26 80
		Let trace_reflections.2877
			Lwz $a26 76
			Let tmin.2494
				Lwz $a26 72
				Let texture_color.2498
					Lwz $a26 68
					Let startp.2504
						Lwz $a26 64
						Let shadow_check_one_or_matrix.2830
							Lwz $a26 60
							Let setup_startp.2796
								Lwz $a26 56
								Let rgb.2500
									Lwz $a26 52
									Let or_net.2491
										Lwz $a26 48
										Let objects.2485
											Lwz $a26 44
											Let nvector.2497
												Lwz $a26 40
												Let n_reflections.2513
													Lwz $a26 36
													Let light.2488
														Lwz $a26 32
														Let judge_intersection.2845
															Lwz $a26 28
															Let intsec_rectside.2493
																Lwz $a26 24
																Let intersection_point.2495
																	Lwz $a26 20
																	Let intersected_object_id.2496
																		Lwz $a26 16
																		Let get_nvector.2867
																			Lwz $a26 12
																			Let beam.2489
																				Lwz $a26 8
																				Let add_light.2873
																					Lwz $a26 4
																					Let Ti806.3664
																						Li 4
																						Ans
																							IfLE nref.2883 Ti806.3664
																								Let surface_ids.3665
																									CallCls p_surface_ids.2647 d:pixel.2886 f:
																									Let Tb807.3666
																										CallCls judge_intersection.2845 (judge_intersection.2845) d:dirvec.2885 f:
																										Let Ti808.3667
																											Li 0
																											Ans
																												IfEq Tb807.3666 Ti808.3667
																													Let Ti810.3774
																														Li -1
																														Let o.6599
																															Slw nref.2883 2
																															Let Tu155.3748
																																Stw Ti810.3774 surface_ids.3665 o.6599
																																Let Ti811.3749
																																	Li 0
																																	Ans
																																		IfEq nref.2883 Ti811.3749
																																			Ans
																																				Nop
																																			Let Td812.3773
																																				CallCls veciprod.2576 d:dirvec.2885 light.2488 f:
																																				Let hl.3750
																																					CallCls fneg.2514 d:f:Td812.3773 
																																					Let Tb813.3751
																																						CallCls fispos.2516 d:f:hl.3750 
																																						Let Ti814.3752
																																							Li 0
																																							Ans
																																								IfEq Tb813.3751 Ti814.3752
																																									Ans
																																										Nop
																																									Let Td815.3772
																																										CallCls fsqr.2524 d:f:hl.3750 
																																										Let Td816.3771
																																											FMul Td815.3772 hl.3750
																																											Let Td817.3768
																																												FMul Td816.3771 energy.2884
																																												Let Td819.3769
																																													Lfd beam.2489 0
																																													Let ihl.3753
																																														FMul Td817.3768 Td819.3769
																																														Let Td822.3766
																																															Lfd rgb.2500 0
																																															Let Td823.3765
																																																FAdd Td822.3766 ihl.3753
																																																Let Tu154.3754
																																																	Stfd Td823.3765 rgb.2500 0
																																																	Let Td826.3762
																																																		Lfd rgb.2500 4
																																																		Let Td827.3761
																																																			FAdd Td826.3762 ihl.3753
																																																			Let Tu153.3755
																																																				Stfd Td827.3761 rgb.2500 4
																																																				Let Td830.3758
																																																					Lfd rgb.2500 8
																																																					Let Td831.3757
																																																						FAdd Td830.3758 ihl.3753
																																																						Ans
																																																							Stfd Td831.3757 rgb.2500 8
																													Let obj_id.3668
																														Lwz intersected_object_id.2496 0
																														Let o.6583
																															Slw obj_id.3668 2
																															Let obj.3669
																																Lwz objects.2485 o.6583
																																Let m_surface.3670
																																	CallCls o_reflectiontype.2605 d:obj.3669 f:
																																	Let Td833.3746
																																		CallCls o_diffuse.2625 d:obj.3669 f:
																																		Let diffuse.3671
																																			FMul Td833.3746 energy.2884
																																			Let Tu152.3672
																																				CallCls get_nvector.2867 (get_nvector.2867) d:obj.3669 dirvec.2885 f:
																																				Let Tu151.3673
																																					CallCls veccpy.2565 d:startp.2504 intersection_point.2495 f:
																																					Let Tu150.3674
																																						CallCls utexture.2870 (utexture.2870) d:obj.3669 intersection_point.2495 f:
																																						Let Ti834.3743
																																							ShiftL2 obj_id.3668
																																							Let Ti836.3744
																																								Lwz intsec_rectside.2493 0
																																								Let Ti837.3742
																																									Add Ti834.3743 Ti836.3744
																																									Let o.6585
																																										Slw nref.2883 2
																																										Let Tu149.3675
																																											Stw Ti837.3742 surface_ids.3665 o.6585
																																											Let intersection_points.3676
																																												CallCls p_intersection_points.2645 d:pixel.2886 f:
																																												Let o.6586
																																													Slw nref.2883 2
																																													Let Ta838.3741
																																														Lwz intersection_points.3676 o.6586
																																														Let Tu148.3677
																																															CallCls veccpy.2565 d:Ta838.3741 intersection_point.2495 f:
																																															Let calc_diffuse.3678
																																																CallCls p_calc_diffuse.2649 d:pixel.2886 f:
																																																Let Td839.3739
																																																	CallCls o_diffuse.2625 d:obj.3669 f:
																																																	Let Td840.3740
																																																		FLi l.6150
																																																		Let Tb841.3722
																																																			CallCls fless.2528 d:f:Td839.3739 Td840.3740 
																																																			Let Ti842.3723
																																																				Li 0
																																																				Let Tu147.3679
																																																					IfEq Tb841.3722 Ti842.3723
																																																						Let Ti843.3738
																																																							Li 1
																																																							Let o.6588
																																																								Slw nref.2883 2
																																																								Let Tu141.3725
																																																									Stw Ti843.3738 calc_diffuse.3678 o.6588
																																																									Let energya.3726
																																																										CallCls p_energy.2651 d:pixel.2886 f:
																																																										Let o.6589
																																																											Slw nref.2883 2
																																																											Let Ta844.3737
																																																												Lwz energya.3726 o.6589
																																																												Let Tu140.3727
																																																													CallCls veccpy.2565 d:Ta844.3737 texture_color.2498 f:
																																																													Let o.6590
																																																														Slw nref.2883 2
																																																														Let Ta845.3731
																																																															Lwz energya.3726 o.6590
																																																															Let Td846.3734
																																																																FLi l.6152
																																																																Let Td847.3735
																																																																	FLi l.6591
																																																																	Let Td848.3736
																																																																		FReciprocal Td847.3735
																																																																		Let Td849.3733
																																																																			FMul Td846.3734 Td848.3736
																																																																			Let Td850.3732
																																																																				FMul Td849.3733 diffuse.3671
																																																																				Let Tu139.3728
																																																																					CallCls vecscale.2594 d:Ta845.3731 f:Td850.3732 
																																																																					Let nvectors.3729
																																																																						CallCls p_nvectors.2660 d:pixel.2886 f:
																																																																						Let o.6592
																																																																							Slw nref.2883 2
																																																																							Let Ta851.3730
																																																																								Lwz nvectors.3729 o.6592
																																																																								Ans
																																																																									CallCls veccpy.2565 d:Ta851.3730 nvector.2497 f:
																																																						Let Ti852.3724
																																																							Li 0
																																																							Let o.6587
																																																								Slw nref.2883 2
																																																								Ans
																																																									Stw Ti852.3724 calc_diffuse.3678 o.6587
																																																					Let Td853.3720
																																																						FLi l.6593
																																																						Let Td854.3721
																																																							CallCls veciprod.2576 d:dirvec.2885 nvector.2497 f:
																																																							Let w.3680
																																																								FMul Td853.3720 Td854.3721
																																																								Let Tu146.3681
																																																									CallCls vecaccum.2584 d:dirvec.2885 nvector.2497 f:w.3680 
																																																									Let Td855.3719
																																																										CallCls o_hilight.2627 d:obj.3669 f:
																																																										Let hilight_scale.3682
																																																											FMul energy.2884 Td855.3719
																																																											Let Ti856.3716
																																																												Li 0
																																																												Let Ta858.3717
																																																													Lwz or_net.2491 0
																																																													Let Tb859.3709
																																																														CallCls shadow_check_one_or_matrix.2830 (shadow_check_one_or_matrix.2830) d:Ti856.3716 Ta858.3717 f:
																																																														Let Ti860.3710
																																																															Li 0
																																																															Let Tu145.3683
																																																																IfEq Tb859.3709 Ti860.3710
																																																																	Let Td861.3715
																																																																		CallCls veciprod.2576 d:nvector.2497 light.2488 f:
																																																																		Let Td862.3714
																																																																			CallCls fneg.2514 d:f:Td861.3715 
																																																																			Let bright.3711
																																																																				FMul Td862.3714 diffuse.3671
																																																																				Let Td863.3713
																																																																					CallCls veciprod.2576 d:dirvec.2885 light.2488 f:
																																																																					Let hilight.3712
																																																																						CallCls fneg.2514 d:f:Td863.3713 
																																																																						Ans
																																																																							CallCls add_light.2873 (add_light.2873) d:f:bright.3711 hilight.3712 hilight_scale.3682 
																																																																	Ans
																																																																		Nop
																																																																Let Tu144.3684
																																																																	CallCls setup_startp.2796 (setup_startp.2796) d:intersection_point.2495 f:
																																																																	Let Ti865.3706
																																																																		Lwz n_reflections.2513 0
																																																																		Let Ti867.3705
																																																																			Sub Ti865.3706 1
																																																																			Let Tu143.3685
																																																																				CallCls trace_reflections.2877 (trace_reflections.2877) d:Ti867.3705 dirvec.2885 f:diffuse.3671 hilight_scale.3682 
																																																																				Let Td868.3704
																																																																					FLi l.6596
																																																																					Let Tb869.3686
																																																																						CallCls fless.2528 d:f:Td868.3704 energy.2884 
																																																																						Let Ti870.3687
																																																																							Li 0
																																																																							Ans
																																																																								IfEq Tb869.3686 Ti870.3687
																																																																									Ans
																																																																										Nop
																																																																									Let Ti871.3699
																																																																										Li 4
																																																																										Let Tu142.3688
																																																																											IfLE Ti871.3699 nref.2883
																																																																												Ans
																																																																													Nop
																																																																												Let Ti873.3700
																																																																													Add nref.2883 1
																																																																													Let Ti875.3701
																																																																														Li -1
																																																																														Let o.6597
																																																																															Slw Ti873.3700 2
																																																																															Ans
																																																																																Stw Ti875.3701 surface_ids.3665 o.6597
																																																																											Let Ti876.3689
																																																																												Li 2
																																																																												Ans
																																																																													IfEq m_surface.3670 Ti876.3689
																																																																														Let Td877.3697
																																																																															FLi l.6152
																																																																															Let Td878.3698
																																																																																CallCls o_diffuse.2625 d:obj.3669 f:
																																																																																Let Td879.3696
																																																																																	FSub Td877.3697 Td878.3698
																																																																																	Let energy2.3690
																																																																																		FMul energy.2884 Td879.3696
																																																																																		Let Ti881.3691
																																																																																			Add nref.2883 1
																																																																																			Let Td883.3693
																																																																																				Lfd tmin.2494 0
																																																																																				Let Td884.3692
																																																																																					FAdd dist.2887 Td883.3693
																																																																																					Ans
																																																																																						CallCls trace_ray.2882 (trace_ray.2882) d:Ti881.3691 dirvec.2885 pixel.2886 f:energy2.3690 Td884.3692 
																																																																														Ans
																																																																															Nop
																								Ans
																									Nop
trace_diffuse_ray.2888 (args) : dirvec.2889 (fargs) : energy.2890 
	Let utexture.2870
		Lwz $a26 48
		Let texture_color.2498
			Lwz $a26 44
			Let shadow_check_one_or_matrix.2830
				Lwz $a26 40
				Let or_net.2491
					Lwz $a26 36
					Let objects.2485
						Lwz $a26 32
						Let nvector.2497
							Lwz $a26 28
							Let light.2488
								Lwz $a26 24
								Let judge_intersection_fast.2859
									Lwz $a26 20
									Let intersection_point.2495
										Lwz $a26 16
										Let intersected_object_id.2496
											Lwz $a26 12
											Let get_nvector.2867
												Lwz $a26 8
												Let diffuse_ray.2499
													Lwz $a26 4
													Let Tb790.3643
														CallCls judge_intersection_fast.2859 (judge_intersection_fast.2859) d:dirvec.2889 f:
														Let Ti791.3644
															Li 0
															Ans
																IfEq Tb790.3643 Ti791.3644
																	Ans
																		Nop
																	Let Ti793.3662
																		Lwz intersected_object_id.2496 0
																		Let o.6608
																			Slw Ti793.3662 2
																			Let obj.3645
																				Lwz objects.2485 o.6608
																				Let Ta794.3661
																					CallCls d_vec.2662 d:dirvec.2889 f:
																					Let Tu157.3646
																						CallCls get_nvector.2867 (get_nvector.2867) d:obj.3645 Ta794.3661 f:
																						Let Tu156.3647
																							CallCls utexture.2870 (utexture.2870) d:obj.3645 intersection_point.2495 f:
																							Let Ti795.3658
																								Li 0
																								Let Ta797.3659
																									Lwz or_net.2491 0
																									Let Tb798.3648
																										CallCls shadow_check_one_or_matrix.2830 (shadow_check_one_or_matrix.2830) d:Ti795.3658 Ta797.3659 f:
																										Let Ti799.3649
																											Li 0
																											Ans
																												IfEq Tb798.3648 Ti799.3649
																													Let Td800.3657
																														CallCls veciprod.2576 d:nvector.2497 light.2488 f:
																														Let br.3650
																															CallCls fneg.2514 d:f:Td800.3657 
																															Let Tb801.3655
																																CallCls fispos.2516 d:f:br.3650 
																																Let Ti802.3656
																																	Li 0
																																	Let bright.3651
																																		IfEq Tb801.3655 Ti802.3656
																																			Ans
																																				FLi l.6149
																																			Ans
																																				FMr br.3650
																																		Let Td803.3653
																																			FMul energy.2890 bright.3651
																																			Let Td804.3654
																																				CallCls o_diffuse.2625 d:obj.3645 f:
																																				Let Td805.3652
																																					FMul Td803.3653 Td804.3654
																																					Ans
																																						CallCls vecaccum.2584 d:diffuse_ray.2499 texture_color.2498 f:Td805.3652 
																													Ans
																														Nop
iter_trace_diffuse_rays.2891 (args) : dirvec_group.2892 nvector.2893 org.2894 index.2895 (fargs) : 
	Let trace_diffuse_ray.2888
		Lwz $a26 4
		Let Ti773.3624
			Li 0
			Ans
				IfLE Ti773.3624 index.2895
					Let o.6610
						Slw index.2895 2
						Let Tt774.3642
							Lwz dirvec_group.2892 o.6610
							Let Ta775.3641
								CallCls d_vec.2662 d:Tt774.3642 f:
								Let p.3625
									CallCls veciprod.2576 d:Ta775.3641 nvector.2893 f:
									Let Tb776.3629
										CallCls fisneg.2518 d:f:p.3625 
										Let Ti777.3630
											Li 0
											Let Tu158.3626
												IfEq Tb776.3629 Ti777.3630
													Let o.6613
														Slw index.2895 2
														Let Tt778.3637
															Lwz dirvec_group.2892 o.6613
															Let Td779.3639
																FLi l.6614
																Let Td780.3640
																	FReciprocal Td779.3639
																	Let Td781.3638
																		FMul p.3625 Td780.3640
																		Ans
																			CallCls trace_diffuse_ray.2888 (trace_diffuse_ray.2888) d:Tt778.3637 f:Td781.3638 
													Let Ti783.3635
														Add index.2895 1
														Let o.6611
															Slw Ti783.3635 2
															Let Tt784.3631
																Lwz dirvec_group.2892 o.6611
																Let Td785.3633
																	FLi l.6612
																	Let Td786.3634
																		FReciprocal Td785.3633
																		Let Td787.3632
																			FMul p.3625 Td786.3634
																			Ans
																				CallCls trace_diffuse_ray.2888 (trace_diffuse_ray.2888) d:Tt784.3631 f:Td787.3632 
												Let Ti789.3627
													Sub index.2895 2
													Ans
														CallCls iter_trace_diffuse_rays.2891 (iter_trace_diffuse_rays.2891) d:dirvec_group.2892 nvector.2893 org.2894 Ti789.3627 f:
					Ans
						Nop
trace_diffuse_rays.2896 (args) : dirvec_group.2897 nvector.2898 org.2899 (fargs) : 
	Let setup_startp.2796
		Lwz $a26 8
		Let iter_trace_diffuse_rays.2891
			Lwz $a26 4
			Let Tu159.3622
				CallCls setup_startp.2796 (setup_startp.2796) d:org.2899 f:
				Let Ti772.3623
					Li 118
					Ans
						CallCls iter_trace_diffuse_rays.2891 (iter_trace_diffuse_rays.2891) d:dirvec_group.2897 nvector.2898 org.2899 Ti772.3623 f:
trace_diffuse_ray_80percent.2900 (args) : group_id.2901 nvector.2902 org.2903 (fargs) : 
	Let trace_diffuse_rays.2896
		Lwz $a26 8
		Let dirvecs.2510
			Lwz $a26 4
			Let Ti757.3619
				Li 0
				Let Tu163.3603
					IfEq group_id.2901 Ti757.3619
						Ans
							Nop
						Let Ta759.3620
							Lwz dirvecs.2510 0
							Ans
								CallCls trace_diffuse_rays.2896 (trace_diffuse_rays.2896) d:Ta759.3620 nvector.2902 org.2903 f:
					Let Ti760.3616
						Li 1
						Let Tu162.3604
							IfEq group_id.2901 Ti760.3616
								Ans
									Nop
								Let Ta762.3617
									Lwz dirvecs.2510 4
									Ans
										CallCls trace_diffuse_rays.2896 (trace_diffuse_rays.2896) d:Ta762.3617 nvector.2902 org.2903 f:
							Let Ti763.3613
								Li 2
								Let Tu161.3605
									IfEq group_id.2901 Ti763.3613
										Ans
											Nop
										Let Ta765.3614
											Lwz dirvecs.2510 8
											Ans
												CallCls trace_diffuse_rays.2896 (trace_diffuse_rays.2896) d:Ta765.3614 nvector.2902 org.2903 f:
									Let Ti766.3610
										Li 3
										Let Tu160.3606
											IfEq group_id.2901 Ti766.3610
												Ans
													Nop
												Let Ta768.3611
													Lwz dirvecs.2510 12
													Ans
														CallCls trace_diffuse_rays.2896 (trace_diffuse_rays.2896) d:Ta768.3611 nvector.2902 org.2903 f:
											Let Ti769.3607
												Li 4
												Ans
													IfEq group_id.2901 Ti769.3607
														Ans
															Nop
														Let Ta771.3608
															Lwz dirvecs.2510 16
															Ans
																CallCls trace_diffuse_rays.2896 (trace_diffuse_rays.2896) d:Ta771.3608 nvector.2902 org.2903 f:
calc_diffuse_using_1point.2904 (args) : pixel.2905 nref.2906 (fargs) : 
	Let trace_diffuse_ray_80percent.2900
		Lwz $a26 12
		Let rgb.2500
			Lwz $a26 8
			Let diffuse_ray.2499
				Lwz $a26 4
				Let ray20p.3592
					CallCls p_received_ray_20percent.2653 d:pixel.2905 f:
					Let nvectors.3593
						CallCls p_nvectors.2660 d:pixel.2905 f:
						Let intersection_points.3594
							CallCls p_intersection_points.2645 d:pixel.2905 f:
							Let energya.3595
								CallCls p_energy.2651 d:pixel.2905 f:
								Let o.6620
									Slw nref.2906 2
									Let Ta752.3602
										Lwz ray20p.3592 o.6620
										Let Tu165.3596
											CallCls veccpy.2565 d:diffuse_ray.2499 Ta752.3602 f:
											Let Ti753.3599
												CallCls p_group_id.2655 d:pixel.2905 f:
												Let o.6621
													Slw nref.2906 2
													Let Ta754.3600
														Lwz nvectors.3593 o.6621
														Let o.6622
															Slw nref.2906 2
															Let Ta755.3601
																Lwz intersection_points.3594 o.6622
																Let Tu164.3597
																	CallCls trace_diffuse_ray_80percent.2900 (trace_diffuse_ray_80percent.2900) d:Ti753.3599 Ta754.3600 Ta755.3601 f:
																	Let o.6623
																		Slw nref.2906 2
																		Let Ta756.3598
																			Lwz energya.3595 o.6623
																			Ans
																				CallCls vecaccumv.2597 d:rgb.2500 Ta756.3598 diffuse_ray.2499 f:
calc_diffuse_using_5points.2907 (args) : x.2908 prev.2909 cur.2910 next.2911 nref.2912 (fargs) : 
	Let rgb.2500
		Lwz $a26 8
		Let diffuse_ray.2499
			Lwz $a26 4
			Let o.6624
				Slw x.2908 2
				Let Tt736.3591
					Lwz prev.2909 o.6624
					Let r_up.3565
						CallCls p_received_ray_20percent.2653 d:Tt736.3591 f:
						Let Ti738.3589
							Sub x.2908 1
							Let o.6625
								Slw Ti738.3589 2
								Let Tt739.3588
									Lwz cur.2910 o.6625
									Let r_left.3566
										CallCls p_received_ray_20percent.2653 d:Tt739.3588 f:
										Let o.6626
											Slw x.2908 2
											Let Tt740.3587
												Lwz cur.2910 o.6626
												Let r_center.3567
													CallCls p_received_ray_20percent.2653 d:Tt740.3587 f:
													Let Ti742.3585
														Add x.2908 1
														Let o.6627
															Slw Ti742.3585 2
															Let Tt743.3584
																Lwz cur.2910 o.6627
																Let r_right.3568
																	CallCls p_received_ray_20percent.2653 d:Tt743.3584 f:
																	Let o.6628
																		Slw x.2908 2
																		Let Tt744.3583
																			Lwz next.2911 o.6628
																			Let r_down.3569
																				CallCls p_received_ray_20percent.2653 d:Tt744.3583 f:
																				Let o.6629
																					Slw nref.2912 2
																					Let Ta745.3582
																						Lwz r_up.3565 o.6629
																						Let Tu170.3570
																							CallCls veccpy.2565 d:diffuse_ray.2499 Ta745.3582 f:
																							Let o.6630
																								Slw nref.2912 2
																								Let Ta746.3581
																									Lwz r_left.3566 o.6630
																									Let Tu169.3571
																										CallCls vecadd.2588 d:diffuse_ray.2499 Ta746.3581 f:
																										Let o.6631
																											Slw nref.2912 2
																											Let Ta747.3580
																												Lwz r_center.3567 o.6631
																												Let Tu168.3572
																													CallCls vecadd.2588 d:diffuse_ray.2499 Ta747.3580 f:
																													Let o.6632
																														Slw nref.2912 2
																														Let Ta748.3579
																															Lwz r_right.3568 o.6632
																															Let Tu167.3573
																																CallCls vecadd.2588 d:diffuse_ray.2499 Ta748.3579 f:
																																Let o.6633
																																	Slw nref.2912 2
																																	Let Ta749.3578
																																		Lwz r_down.3569 o.6633
																																		Let Tu166.3574
																																			CallCls vecadd.2588 d:diffuse_ray.2499 Ta749.3578 f:
																																			Let o.6634
																																				Slw x.2908 2
																																				Let Tt750.3577
																																					Lwz cur.2910 o.6634
																																					Let energya.3575
																																						CallCls p_energy.2651 d:Tt750.3577 f:
																																						Let o.6635
																																							Slw nref.2912 2
																																							Let Ta751.3576
																																								Lwz energya.3575 o.6635
																																								Ans
																																									CallCls vecaccumv.2597 d:rgb.2500 Ta751.3576 diffuse_ray.2499 f:
do_without_neighbors.2913 (args) : pixel.2914 nref.2915 (fargs) : 
	Let calc_diffuse_using_1point.2904
		Lwz $a26 4
		Let Ti729.3555
			Li 4
			Ans
				IfLE nref.2915 Ti729.3555
					Let surface_ids.3556
						CallCls p_surface_ids.2647 d:pixel.2914 f:
						Let Ti730.3557
							Li 0
							Let o.6636
								Slw nref.2915 2
								Let Ti731.3558
									Lwz surface_ids.3556 o.6636
									Ans
										IfLE Ti730.3557 Ti731.3558
											Let calc_diffuse.3559
												CallCls p_calc_diffuse.2649 d:pixel.2914 f:
												Let o.6637
													Slw nref.2915 2
													Let Tb732.3563
														Lwz calc_diffuse.3559 o.6637
														Let Ti733.3564
															Li 0
															Let Tu171.3560
																IfEq Tb732.3563 Ti733.3564
																	Ans
																		Nop
																	Ans
																		CallCls calc_diffuse_using_1point.2904 (calc_diffuse_using_1point.2904) d:pixel.2914 nref.2915 f:
																Let Ti735.3561
																	Add nref.2915 1
																	Ans
																		CallCls do_without_neighbors.2913 (do_without_neighbors.2913) d:pixel.2914 Ti735.3561 f:
											Ans
												Nop
					Ans
						Nop
neighbors_exist.2916 (args) : x.2917 y.2918 next.2919 (fargs) : 
	Let image_size.2501
		Lwz $a26 4
		Let Ti720.3545
			Lwz image_size.2501 4
			Let Ti722.3546
				Add y.2918 1
				Ans
					IfLE Ti720.3545 Ti722.3546
						Ans
							Li 0
						Let Ti723.3547
							Li 0
							Ans
								IfLE y.2918 Ti723.3547
									Ans
										Li 0
									Let Ti725.3548
										Lwz image_size.2501 0
										Let Ti727.3549
											Add x.2917 1
											Ans
												IfLE Ti725.3548 Ti727.3549
													Ans
														Li 0
													Let Ti728.3550
														Li 0
														Ans
															IfLE x.2917 Ti728.3550
																Ans
																	Li 0
																Ans
																	Li 1
get_surface_id.2920 (args) : pixel.2921 index.2922 (fargs) : 
	Let surface_ids.3544
		CallCls p_surface_ids.2647 d:pixel.2921 f:
		Let o.6640
			Slw index.2922 2
			Ans
				Lwz surface_ids.3544 o.6640
neighbors_are_available.2923 (args) : x.2924 prev.2925 cur.2926 next.2927 nref.2928 (fargs) : 
	Let o.6641
		Slw x.2924 2
		Let Tt706.3543
			Lwz cur.2926 o.6641
			Let sid_center.3530
				CallCls get_surface_id.2920 d:Tt706.3543 nref.2928 f:
				Let o.6642
					Slw x.2924 2
					Let Tt707.3542
						Lwz prev.2925 o.6642
						Let Ti708.3531
							CallCls get_surface_id.2920 d:Tt707.3542 nref.2928 f:
							Ans
								IfEq Ti708.3531 sid_center.3530
									Let o.6643
										Slw x.2924 2
										Let Tt709.3541
											Lwz next.2927 o.6643
											Let Ti710.3532
												CallCls get_surface_id.2920 d:Tt709.3541 nref.2928 f:
												Ans
													IfEq Ti710.3532 sid_center.3530
														Let Ti712.3539
															Sub x.2924 1
															Let o.6644
																Slw Ti712.3539 2
																Let Tt713.3538
																	Lwz cur.2926 o.6644
																	Let Ti714.3533
																		CallCls get_surface_id.2920 d:Tt713.3538 nref.2928 f:
																		Ans
																			IfEq Ti714.3533 sid_center.3530
																				Let Ti716.3536
																					Add x.2924 1
																					Let o.6645
																						Slw Ti716.3536 2
																						Let Tt717.3535
																							Lwz cur.2926 o.6645
																							Let Ti718.3534
																								CallCls get_surface_id.2920 d:Tt717.3535 nref.2928 f:
																								Ans
																									IfEq Ti718.3534 sid_center.3530
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
try_exploit_neighbors.2929 (args) : x.2930 y.2931 prev.2932 cur.2933 next.2934 nref.2935 (fargs) : 
	Let do_without_neighbors.2913
		Lwz $a26 8
		Let calc_diffuse_using_5points.2907
			Lwz $a26 4
			Let o.6646
				Slw x.2930 2
				Let pixel.3517
					Lwz cur.2933 o.6646
					Let Ti696.3518
						Li 4
						Ans
							IfLE nref.2935 Ti696.3518
								Let Ti697.3519
									Li 0
									Let Ti698.3520
										CallCls get_surface_id.2920 d:pixel.3517 nref.2935 f:
										Ans
											IfLE Ti697.3519 Ti698.3520
												Let Tb699.3521
													CallCls neighbors_are_available.2923 d:x.2930 prev.2932 cur.2933 next.2934 nref.2935 f:
													Let Ti700.3522
														Li 0
														Ans
															IfEq Tb699.3521 Ti700.3522
																Let o.6648
																	Slw x.2930 2
																	Let Tt701.3529
																		Lwz cur.2933 o.6648
																		Ans
																			CallCls do_without_neighbors.2913 (do_without_neighbors.2913) d:Tt701.3529 nref.2935 f:
																Let calc_diffuse.3523
																	CallCls p_calc_diffuse.2649 d:pixel.3517 f:
																	Let o.6647
																		Slw nref.2935 2
																		Let Tb702.3527
																			Lwz calc_diffuse.3523 o.6647
																			Let Ti703.3528
																				Li 0
																				Let Tu172.3524
																					IfEq Tb702.3527 Ti703.3528
																						Ans
																							Nop
																						Ans
																							CallCls calc_diffuse_using_5points.2907 (calc_diffuse_using_5points.2907) d:x.2930 prev.2932 cur.2933 next.2934 nref.2935 f:
																					Let Ti705.3525
																						Add nref.2935 1
																						Ans
																							CallCls try_exploit_neighbors.2929 (try_exploit_neighbors.2929) d:x.2930 y.2931 prev.2932 cur.2933 next.2934 Ti705.3525 f:
												Ans
													Nop
								Ans
									Nop
write_ppm_header.2936 (args) : (fargs) : 
	Let image_size.2501
		Lwz $a26 4
		Let Ti692.3515
			Lwz image_size.2501 0
			Let Tu175.3510
				CallCls min_caml_print_int d:Ti692.3515 f:
				Let Ti694.3513
					Lwz image_size.2501 4
					Let Tu174.3511
						CallCls min_caml_print_int d:Ti694.3513 f:
						Let Ti695.3512
							Li 255
							Ans
								CallCls min_caml_print_int d:Ti695.3512 f:
write_rgb_element.2938 (args) : (fargs) : x.2939 
	Let ix.3506
		CallCls min_caml_int_of_float d:f:x.2939 
		Let Ti689.3508
			Li 255
			Let elem.3507
				IfLE ix.3506 Ti689.3508
					Let Ti690.3509
						Li 0
						Ans
							IfLE Ti690.3509 ix.3506
								Ans
									Mr ix.3506
								Ans
									Li 0
					Ans
						Li 255
				Ans
					CallCls min_caml_print_int d:elem.3507 f:
write_rgb.2940 (args) : (fargs) : 
	Let rgb.2500
		Lwz $a26 4
		Let Td684.3504
			Lfd rgb.2500 0
			Let Tu178.3498
				CallCls write_rgb_element.2938 d:f:Td684.3504 
				Let Td686.3502
					Lfd rgb.2500 4
					Let Tu177.3499
						CallCls write_rgb_element.2938 d:f:Td686.3502 
						Let Td688.3500
							Lfd rgb.2500 8
							Ans
								CallCls write_rgb_element.2938 d:f:Td688.3500 
pretrace_diffuse_rays.2942 (args) : pixel.2943 nref.2944 (fargs) : 
	Let trace_diffuse_rays.2896
		Lwz $a26 12
		Let dirvecs.2510
			Lwz $a26 8
			Let diffuse_ray.2499
				Lwz $a26 4
				Let Ti673.3479
					Li 4
					Ans
						IfLE nref.2944 Ti673.3479
							Let sid.3480
								CallCls get_surface_id.2920 d:pixel.2943 nref.2944 f:
								Let Ti674.3481
									Li 0
									Ans
										IfLE Ti674.3481 sid.3480
											Let calc_diffuse.3482
												CallCls p_calc_diffuse.2649 d:pixel.2943 f:
												Let o.6654
													Slw nref.2944 2
													Let Tb675.3486
														Lwz calc_diffuse.3482 o.6654
														Let Ti676.3487
															Li 0
															Let Tu181.3483
																IfEq Tb675.3486 Ti676.3487
																	Ans
																		Nop
																	Let group_id.3488
																		CallCls p_group_id.2655 d:pixel.2943 f:
																		Let Tu180.3489
																			CallCls vecbzero.2563 d:diffuse_ray.2499 f:
																			Let nvectors.3490
																				CallCls p_nvectors.2660 d:pixel.2943 f:
																				Let intersection_points.3491
																					CallCls p_intersection_points.2645 d:pixel.2943 f:
																					Let o.6655
																						Slw group_id.3488 2
																						Let Ta677.3495
																							Lwz dirvecs.2510 o.6655
																							Let o.6656
																								Slw nref.2944 2
																								Let Ta678.3496
																									Lwz nvectors.3490 o.6656
																									Let o.6657
																										Slw nref.2944 2
																										Let Ta679.3497
																											Lwz intersection_points.3491 o.6657
																											Let Tu179.3492
																												CallCls trace_diffuse_rays.2896 (trace_diffuse_rays.2896) d:Ta677.3495 Ta678.3496 Ta679.3497 f:
																												Let ray20p.3493
																													CallCls p_received_ray_20percent.2653 d:pixel.2943 f:
																													Let o.6658
																														Slw nref.2944 2
																														Let Ta680.3494
																															Lwz ray20p.3493 o.6658
																															Ans
																																CallCls veccpy.2565 d:Ta680.3494 diffuse_ray.2499 f:
																Let Ti682.3484
																	Add nref.2944 1
																	Ans
																		CallCls pretrace_diffuse_rays.2942 (pretrace_diffuse_rays.2942) d:pixel.2943 Ti682.3484 f:
											Ans
												Nop
							Ans
								Nop
pretrace_pixels.2945 (args) : line.2946 x.2947 group_id.2948 (fargs) : lc0.2949 lc1.2950 lc2.2951 
	Let viewpoint.2487
		Lwz $a26 36
		Let trace_ray.2882
			Lwz $a26 32
			Let startp.2504
				Lwz $a26 28
				Let screenx_dir.2506
					Lwz $a26 24
					Let scan_pitch.2503
						Lwz $a26 20
						Let rgb.2500
							Lwz $a26 16
							Let ptrace_dirvec.2509
								Lwz $a26 12
								Let pretrace_diffuse_rays.2942
									Lwz $a26 8
									Let image_center.2502
										Lwz $a26 4
										Let Ti637.3432
											Li 0
											Ans
												IfLE Ti637.3432 x.2947
													Let Td639.3473
														Lfd scan_pitch.2503 0
														Let Ti641.3476
															Lwz image_center.2502 0
															Let Ti642.3475
																Sub x.2947 Ti641.3476
																Let Td643.3474
																	CallCls float_of_int.2533 d:Ti642.3475 f:
																	Let xdisp.3433
																		FMul Td639.3473 Td643.3474
																		Let Td646.3471
																			Lfd screenx_dir.2506 0
																			Let Td647.3470
																				FMul xdisp.3433 Td646.3471
																				Let Td648.3469
																					FAdd Td647.3470 lc0.2949
																					Let Tu191.3434
																						Stfd Td648.3469 ptrace_dirvec.2509 0
																						Let Td651.3466
																							Lfd screenx_dir.2506 4
																							Let Td652.3465
																								FMul xdisp.3433 Td651.3466
																								Let Td653.3464
																									FAdd Td652.3465 lc1.2950
																									Let Tu190.3435
																										Stfd Td653.3464 ptrace_dirvec.2509 4
																										Let Td656.3461
																											Lfd screenx_dir.2506 8
																											Let Td657.3460
																												FMul xdisp.3433 Td656.3461
																												Let Td658.3459
																													FAdd Td657.3460 lc2.2951
																													Let Tu189.3436
																														Stfd Td658.3459 ptrace_dirvec.2509 8
																														Let Ti659.3457
																															Li 0
																															Let Tu188.3437
																																CallCls vecunit_sgn.2573 d:ptrace_dirvec.2509 Ti659.3457 f:
																																Let Tu187.3438
																																	CallCls vecbzero.2563 d:rgb.2500 f:
																																	Let Tu186.3439
																																		CallCls veccpy.2565 d:startp.2504 viewpoint.2487 f:
																																		Let Ti660.3453
																																			Li 0
																																			Let Td661.3454
																																				FLi l.6152
																																				Let o.6667
																																					Slw x.2947 2
																																					Let Tt662.3455
																																						Lwz line.2946 o.6667
																																						Let Td663.3456
																																							FLi l.6149
																																							Let Tu185.3440
																																								CallCls trace_ray.2882 (trace_ray.2882) d:Ti660.3453 ptrace_dirvec.2509 Tt662.3455 f:Td661.3454 Td663.3456 
																																								Let o.6668
																																									Slw x.2947 2
																																									Let Tt664.3452
																																										Lwz line.2946 o.6668
																																										Let Ta665.3451
																																											CallCls p_rgb.2643 d:Tt664.3452 f:
																																											Let Tu184.3441
																																												CallCls veccpy.2565 d:Ta665.3451 rgb.2500 f:
																																												Let o.6669
																																													Slw x.2947 2
																																													Let Tt666.3450
																																														Lwz line.2946 o.6669
																																														Let Tu183.3442
																																															CallCls p_set_group_id.2657 d:Tt666.3450 group_id.2948 f:
																																															Let o.6670
																																																Slw x.2947 2
																																																Let Tt667.3448
																																																	Lwz line.2946 o.6670
																																																	Let Ti668.3449
																																																		Li 0
																																																		Let Tu182.3443
																																																			CallCls pretrace_diffuse_rays.2942 (pretrace_diffuse_rays.2942) d:Tt667.3448 Ti668.3449 f:
																																																			Let Ti670.3444
																																																				Sub x.2947 1
																																																				Let Ti671.3446
																																																					Li 1
																																																					Let Ti672.3445
																																																						CallCls add_mod5.2552 d:group_id.2948 Ti671.3446 f:
																																																						Ans
																																																							CallCls pretrace_pixels.2945 (pretrace_pixels.2945) d:line.2946 Ti670.3444 Ti672.3445 f:lc0.2949 lc1.2950 lc2.2951 
													Ans
														Nop
pretrace_line.2952 (args) : line.2953 y.2954 group_id.2955 (fargs) : 
	Let screenz_dir.2508
		Lwz $a26 24
		Let screeny_dir.2507
			Lwz $a26 20
			Let scan_pitch.2503
				Lwz $a26 16
				Let pretrace_pixels.2945
					Lwz $a26 12
					Let image_size.2501
						Lwz $a26 8
						Let image_center.2502
							Lwz $a26 4
							Let Td613.3426
								Lfd scan_pitch.2503 0
								Let Ti615.3429
									Lwz image_center.2502 4
									Let Ti616.3428
										Sub y.2954 Ti615.3429
										Let Td617.3427
											CallCls float_of_int.2533 d:Ti616.3428 f:
											Let ydisp.3403
												FMul Td613.3426 Td617.3427
												Let Td619.3424
													Lfd screeny_dir.2507 0
													Let Td620.3421
														FMul ydisp.3403 Td619.3424
														Let Td622.3422
															Lfd screenz_dir.2508 0
															Let lc0.3404
																FAdd Td620.3421 Td622.3422
																Let Td624.3419
																	Lfd screeny_dir.2507 4
																	Let Td625.3416
																		FMul ydisp.3403 Td624.3419
																		Let Td627.3417
																			Lfd screenz_dir.2508 4
																			Let lc1.3405
																				FAdd Td625.3416 Td627.3417
																				Let Td629.3414
																					Lfd screeny_dir.2507 8
																					Let Td630.3411
																						FMul ydisp.3403 Td629.3414
																						Let Td632.3412
																							Lfd screenz_dir.2508 8
																							Let lc2.3406
																								FAdd Td630.3411 Td632.3412
																								Let Ti634.3408
																									Lwz image_size.2501 0
																									Let Ti636.3407
																										Sub Ti634.3408 1
																										Ans
																											CallCls pretrace_pixels.2945 (pretrace_pixels.2945) d:line.2953 Ti636.3407 group_id.2955 f:lc0.3404 lc1.3405 lc2.3406 
scan_pixel.2956 (args) : x.2957 y.2958 prev.2959 cur.2960 next.2961 (fargs) : 
	Let write_rgb.2940
		Lwz $a26 24
		Let try_exploit_neighbors.2929
			Lwz $a26 20
			Let rgb.2500
				Lwz $a26 16
				Let neighbors_exist.2916
					Lwz $a26 12
					Let image_size.2501
						Lwz $a26 8
						Let do_without_neighbors.2913
							Lwz $a26 4
							Let Ti601.3388
								Lwz image_size.2501 0
								Ans
									IfLE Ti601.3388 x.2957
										Ans
											Nop
										Let o.6681
											Slw x.2957 2
											Let Tt602.3401
												Lwz cur.2960 o.6681
												Let Ta603.3400
													CallCls p_rgb.2643 d:Tt602.3401 f:
													Let Tu194.3389
														CallCls veccpy.2565 d:rgb.2500 Ta603.3400 f:
														Let Tb604.3395
															CallCls neighbors_exist.2916 (neighbors_exist.2916) d:x.2957 y.2958 next.2961 f:
															Let Ti605.3396
																Li 0
																Let Tu193.3390
																	IfEq Tb604.3395 Ti605.3396
																		Let o.6682
																			Slw x.2957 2
																			Let Tt606.3398
																				Lwz cur.2960 o.6682
																				Let Ti607.3399
																					Li 0
																					Ans
																						CallCls do_without_neighbors.2913 (do_without_neighbors.2913) d:Tt606.3398 Ti607.3399 f:
																		Let Ti608.3397
																			Li 0
																			Ans
																				CallCls try_exploit_neighbors.2929 (try_exploit_neighbors.2929) d:x.2957 y.2958 prev.2959 cur.2960 next.2961 Ti608.3397 f:
																	Let Tu609.3394
																		Nop
																		Let Tu192.3391
																			CallCls write_rgb.2940 (write_rgb.2940) d:f:
																			Let Ti611.3392
																				Add x.2957 1
																				Ans
																					CallCls scan_pixel.2956 (scan_pixel.2956) d:Ti611.3392 y.2958 prev.2959 cur.2960 next.2961 f:
scan_line.2962 (args) : y.2963 prev.2964 cur.2965 next.2966 group_id.2967 (fargs) : 
	Let scan_pixel.2956
		Lwz $a26 12
		Let pretrace_line.2952
			Lwz $a26 8
			Let image_size.2501
				Lwz $a26 4
				Let Ti588.3373
					Lwz image_size.2501 4
					Ans
						IfLE Ti588.3373 y.2963
							Ans
								Nop
							Let Ti590.3384
								Lwz image_size.2501 4
								Let Ti592.3381
									Sub Ti590.3384 1
									Let Tu196.3374
										IfLE Ti592.3381 y.2963
											Ans
												Nop
											Let Ti594.3382
												Add y.2963 1
												Ans
													CallCls pretrace_line.2952 (pretrace_line.2952) d:next.2966 Ti594.3382 group_id.2967 f:
										Let Ti595.3380
											Li 0
											Let Tu195.3375
												CallCls scan_pixel.2956 (scan_pixel.2956) d:Ti595.3380 y.2963 prev.2964 cur.2965 next.2966 f:
												Let Ti597.3376
													Add y.2963 1
													Let Ti598.3378
														Li 2
														Let Ti599.3377
															CallCls add_mod5.2552 d:group_id.2967 Ti598.3378 f:
															Ans
																CallCls scan_line.2962 (scan_line.2962) d:Ti597.3376 cur.2965 next.2966 prev.2964 Ti599.3377 f:
create_float5x3array.2968 (args) : (fargs) : 
	Let Ti568.3371
		Li 3
		Let Td569.3372
			FLi l.6149
			Let vec.3348
				CallCls min_caml_create_float_array d:Ti568.3371 f:Td569.3372 
				Let Ti570.3370
					Li 5
					Let array.3349
						CallCls min_caml_create_array d:Ti570.3370 vec.3348 f:
						Let Ti572.3368
							Li 3
							Let Td573.3369
								FLi l.6149
								Let Ta574.3367
									CallCls min_caml_create_float_array d:Ti572.3368 f:Td573.3369 
									Let Tu201.3350
										Stw Ta574.3367 array.3349 4
										Let Ti576.3364
											Li 3
											Let Td577.3365
												FLi l.6149
												Let Ta578.3363
													CallCls min_caml_create_float_array d:Ti576.3364 f:Td577.3365 
													Let Tu200.3351
														Stw Ta578.3363 array.3349 8
														Let Ti580.3360
															Li 3
															Let Td581.3361
																FLi l.6149
																Let Ta582.3359
																	CallCls min_caml_create_float_array d:Ti580.3360 f:Td581.3361 
																	Let Tu199.3352
																		Stw Ta582.3359 array.3349 12
																		Let Ti584.3356
																			Li 3
																			Let Td585.3357
																				FLi l.6149
																				Let Ta586.3355
																					CallCls min_caml_create_float_array d:Ti584.3356 f:Td585.3357 
																					Let Tu198.3353
																						Stw Ta586.3355 array.3349 16
																						Ans
																							Mr array.3349
create_pixel.2970 (args) : (fargs) : 
	Let Ti556.3346
		Li 3
		Let Td557.3347
			FLi l.6149
			Let m_rgb.3328
				CallCls min_caml_create_float_array d:Ti556.3346 f:Td557.3347 
				Let Tu558.3345
					Nop
					Let m_isect_ps.3329
						CallCls create_float5x3array.2968 d:f:
						Let Ti559.3343
							Li 5
							Let Ti560.3344
								Li 0
								Let m_sids.3330
									CallCls min_caml_create_array d:Ti559.3343 Ti560.3344 f:
									Let Ti561.3341
										Li 5
										Let Ti562.3342
											Li 0
											Let m_cdif.3331
												CallCls min_caml_create_array d:Ti561.3341 Ti562.3342 f:
												Let Tu563.3340
													Nop
													Let m_engy.3332
														CallCls create_float5x3array.2968 d:f:
														Let Tu564.3339
															Nop
															Let m_r20p.3333
																CallCls create_float5x3array.2968 d:f:
																Let Ti565.3337
																	Li 1
																	Let Ti566.3338
																		Li 0
																		Let m_gid.3334
																			CallCls min_caml_create_array d:Ti565.3337 Ti566.3338 f:
																			Let Tu567.3336
																				Nop
																				Let m_nvectors.3335
																					CallCls create_float5x3array.2968 d:f:
																					Let t.6689
																						Mr $fp
																						Let $fp
																							Add $fp 32
																							Let Tu6697
																								Stw m_nvectors.3335 t.6689 28
																								Let Tu6696
																									Stw m_gid.3334 t.6689 24
																									Let Tu6695
																										Stw m_r20p.3333 t.6689 20
																										Let Tu6694
																											Stw m_engy.3332 t.6689 16
																											Let Tu6693
																												Stw m_cdif.3331 t.6689 12
																												Let Tu6692
																													Stw m_sids.3330 t.6689 8
																													Let Tu6691
																														Stw m_isect_ps.3329 t.6689 4
																														Let Tu6690
																															Stw m_rgb.3328 t.6689 0
																															Ans
																																Mr t.6689
init_line_elements.2972 (args) : line.2973 n.2974 (fargs) : 
	Let Ti551.3322
		Li 0
		Ans
			IfLE Ti551.3322 n.2974
				Let Tu552.3327
					Nop
					Let Tt553.3326
						CallCls create_pixel.2970 d:f:
						Let o.6698
							Slw n.2974 2
							Let Tu203.3323
								Stw Tt553.3326 line.2973 o.6698
								Let Ti555.3324
									Sub n.2974 1
									Ans
										CallCls init_line_elements.2972 d:line.2973 Ti555.3324 f:
				Ans
					Mr line.2973
create_pixelline.2975 (args) : (fargs) : 
	Let image_size.2501
		Lwz $a26 4
		Let Ti544.3318
			Lwz image_size.2501 0
			Let Tu545.3320
				Nop
				Let Tt546.3319
					CallCls create_pixel.2970 d:f:
					Let line.3313
						CallCls min_caml_create_array d:Ti544.3318 Tt546.3319 f:
						Let Ti548.3315
							Lwz image_size.2501 0
							Let Ti550.3314
								Sub Ti548.3315 2
								Ans
									CallCls init_line_elements.2972 d:line.3313 Ti550.3314 f:
tan.2977 (args) : (fargs) : x.2978 
	Let Td540.3310
		CallCls min_caml_sin d:f:x.2978 
		Let Td541.3311
			CallCls min_caml_cos d:f:x.2978 
			Let Td542.3312
				FReciprocal Td541.3311
				Ans
					FMul Td540.3310 Td542.3312
adjust_position.2979 (args) : (fargs) : h.2980 ratio.2981 
	Let Td534.3308
		FMul h.2980 h.2980
		Let Td535.3309
			FLi l.6596
			Let Td536.3307
				FAdd Td534.3308 Td535.3309
				Let l.3300
					CallCls min_caml_sqrt d:f:Td536.3307 
					Let Td537.3305
						FLi l.6152
						Let Td538.3306
							FReciprocal l.3300
							Let tan_h.3301
								FMul Td537.3305 Td538.3306
								Let theta_h.3302
									CallCls min_caml_atan d:f:tan_h.3301 
									Let Td539.3304
										FMul theta_h.3302 ratio.2981
										Let tan_m.3303
											CallCls tan.2977 d:f:Td539.3304 
											Ans
												FMul tan_m.3303 l.3300
calc_dirvec.2982 (args) : icount.2983 group_id.2988 index.2989 (fargs) : x.2984 y.2985 rx.2986 ry.2987 
	Let dirvecs.2510
		Lwz $a26 4
		Let Ti490.3245
			Li 5
			Ans
				IfLE Ti490.3245 icount.2983
					Let Td491.3298
						CallCls fsqr.2524 d:f:x.2984 
						Let Td492.3299
							CallCls fsqr.2524 d:f:y.2985 
							Let Td493.3296
								FAdd Td491.3298 Td492.3299
								Let Td494.3297
									FLi l.6152
									Let Td495.3295
										FAdd Td493.3296 Td494.3297
										Let l.3250
											CallCls min_caml_sqrt d:f:Td495.3295 
											Let Td496.3294
												FReciprocal l.3250
												Let vx.3251
													FMul x.2984 Td496.3294
													Let Td497.3293
														FReciprocal l.3250
														Let vy.3252
															FMul y.2985 Td497.3293
															Let Td498.3291
																FLi l.6152
																Let Td499.3292
																	FReciprocal l.3250
																	Let vz.3253
																		FMul Td498.3291 Td499.3292
																		Let o.6701
																			Slw group_id.2988 2
																			Let dgroup.3254
																				Lwz dirvecs.2510 o.6701
																				Let o.6702
																					Slw index.2989 2
																					Let Tt500.3290
																						Lwz dgroup.3254 o.6702
																						Let Ta501.3289
																							CallCls d_vec.2662 d:Tt500.3290 f:
																							Let Tu209.3255
																								CallCls vecset.2555 d:Ta501.3289 f:vx.3251 vy.3252 vz.3253 
																								Let Ti503.3287
																									Add index.2989 40
																									Let o.6703
																										Slw Ti503.3287 2
																										Let Tt504.3286
																											Lwz dgroup.3254 o.6703
																											Let Ta505.3284
																												CallCls d_vec.2662 d:Tt504.3286 f:
																												Let Td506.3285
																													CallCls fneg.2514 d:f:vy.3252 
																													Let Tu208.3256
																														CallCls vecset.2555 d:Ta505.3284 f:vx.3251 vz.3253 Td506.3285 
																														Let Ti508.3282
																															Add index.2989 80
																															Let o.6704
																																Slw Ti508.3282 2
																																Let Tt509.3281
																																	Lwz dgroup.3254 o.6704
																																	Let Ta510.3278
																																		CallCls d_vec.2662 d:Tt509.3281 f:
																																		Let Td511.3279
																																			CallCls fneg.2514 d:f:vx.3251 
																																			Let Td512.3280
																																				CallCls fneg.2514 d:f:vy.3252 
																																				Let Tu207.3257
																																					CallCls vecset.2555 d:Ta510.3278 f:vz.3253 Td511.3279 Td512.3280 
																																					Let Ti514.3276
																																						Add index.2989 1
																																						Let o.6705
																																							Slw Ti514.3276 2
																																							Let Tt515.3275
																																								Lwz dgroup.3254 o.6705
																																								Let Ta516.3271
																																									CallCls d_vec.2662 d:Tt515.3275 f:
																																									Let Td517.3272
																																										CallCls fneg.2514 d:f:vx.3251 
																																										Let Td518.3273
																																											CallCls fneg.2514 d:f:vy.3252 
																																											Let Td519.3274
																																												CallCls fneg.2514 d:f:vz.3253 
																																												Let Tu206.3258
																																													CallCls vecset.2555 d:Ta516.3271 f:Td517.3272 Td518.3273 Td519.3274 
																																													Let Ti521.3269
																																														Add index.2989 41
																																														Let o.6706
																																															Slw Ti521.3269 2
																																															Let Tt522.3268
																																																Lwz dgroup.3254 o.6706
																																																Let Ta523.3265
																																																	CallCls d_vec.2662 d:Tt522.3268 f:
																																																	Let Td524.3266
																																																		CallCls fneg.2514 d:f:vx.3251 
																																																		Let Td525.3267
																																																			CallCls fneg.2514 d:f:vz.3253 
																																																			Let Tu205.3259
																																																				CallCls vecset.2555 d:Ta523.3265 f:Td524.3266 Td525.3267 vy.3252 
																																																				Let Ti527.3263
																																																					Add index.2989 81
																																																					Let o.6707
																																																						Slw Ti527.3263 2
																																																						Let Tt528.3262
																																																							Lwz dgroup.3254 o.6707
																																																							Let Ta529.3260
																																																								CallCls d_vec.2662 d:Tt528.3262 f:
																																																								Let Td530.3261
																																																									CallCls fneg.2514 d:f:vz.3253 
																																																									Ans
																																																										CallCls vecset.2555 d:Ta529.3260 f:Td530.3261 vx.3251 vy.3252 
					Let x2.3246
						CallCls adjust_position.2979 d:f:y.2985 rx.2986 
						Let Ti532.3247
							Add icount.2983 1
							Let Td533.3248
								CallCls adjust_position.2979 d:f:x2.3246 ry.2987 
								Ans
									CallCls calc_dirvec.2982 (calc_dirvec.2982) d:Ti532.3247 group_id.2988 index.2989 f:x2.3246 Td533.3248 rx.2986 ry.2987 
calc_dirvecs.2990 (args) : col.2991 group_id.2993 index.2994 (fargs) : ry.2992 
	Let calc_dirvec.2982
		Lwz $a26 4
		Let Ti469.3220
			Li 0
			Ans
				IfLE Ti469.3220 col.2991
					Let Td470.3243
						CallCls float_of_int.2533 d:col.2991 f:
						Let Td471.3244
							FLi l.6708
							Let Td472.3241
								FMul Td470.3243 Td471.3244
								Let Td473.3242
									FLi l.6709
									Let rx.3221
										FSub Td472.3241 Td473.3242
										Let Ti474.3238
											Li 0
											Let Td475.3239
												FLi l.6149
												Let Td476.3240
													FLi l.6149
													Let Tu211.3222
														CallCls calc_dirvec.2982 (calc_dirvec.2982) d:Ti474.3238 group_id.2993 index.2994 f:Td475.3239 Td476.3240 rx.3221 ry.2992 
														Let Td477.3236
															CallCls float_of_int.2533 d:col.2991 f:
															Let Td478.3237
																FLi l.6708
																Let Td479.3234
																	FMul Td477.3236 Td478.3237
																	Let Td480.3235
																		FLi l.6596
																		Let rx2.3223
																			FAdd Td479.3234 Td480.3235
																			Let Ti481.3229
																				Li 0
																				Let Td482.3230
																					FLi l.6149
																					Let Td483.3231
																						FLi l.6149
																						Let Ti485.3232
																							Add index.2994 2
																							Let Tu210.3224
																								CallCls calc_dirvec.2982 (calc_dirvec.2982) d:Ti481.3229 group_id.2993 Ti485.3232 f:Td482.3230 Td483.3231 rx2.3223 ry.2992 
																								Let Ti487.3225
																									Sub col.2991 1
																									Let Ti488.3227
																										Li 1
																										Let Ti489.3226
																											CallCls add_mod5.2552 d:group_id.2993 Ti488.3227 f:
																											Ans
																												CallCls calc_dirvecs.2990 (calc_dirvecs.2990) d:Ti487.3225 Ti489.3226 index.2994 f:ry.2992 
					Ans
						Nop
calc_dirvec_rows.2995 (args) : row.2996 group_id.2997 index.2998 (fargs) : 
	Let calc_dirvecs.2990
		Lwz $a26 4
		Let Ti457.3206
			Li 0
			Ans
				IfLE Ti457.3206 row.2996
					Let Td458.3218
						CallCls float_of_int.2533 d:row.2996 f:
						Let Td459.3219
							FLi l.6708
							Let Td460.3216
								FMul Td458.3218 Td459.3219
								Let Td461.3217
									FLi l.6709
									Let ry.3207
										FSub Td460.3216 Td461.3217
										Let Ti462.3215
											Li 4
											Let Tu212.3208
												CallCls calc_dirvecs.2990 (calc_dirvecs.2990) d:Ti462.3215 group_id.2997 index.2998 f:ry.3207 
												Let Ti464.3209
													Sub row.2996 1
													Let Ti465.3213
														Li 2
														Let Ti466.3210
															CallCls add_mod5.2552 d:group_id.2997 Ti465.3213 f:
															Let Ti468.3211
																Add index.2998 4
																Ans
																	CallCls calc_dirvec_rows.2995 (calc_dirvec_rows.2995) d:Ti464.3209 Ti466.3210 Ti468.3211 f:
					Ans
						Nop
create_dirvec.2999 (args) : (fargs) : 
	Let n_objects.2484
		Lwz $a26 4
		Let Ti453.3204
			Li 3
			Let Td454.3205
				FLi l.6149
				Let v3.3200
					CallCls min_caml_create_float_array d:Ti453.3204 f:Td454.3205 
					Let Ti456.3202
						Lwz n_objects.2484 0
						Let consts.3201
							CallCls min_caml_create_array d:Ti456.3202 v3.3200 f:
							Let t.6711
								Mr $fp
								Let $fp
									Add $fp 8
									Let Tu6713
										Stw consts.3201 t.6711 4
										Let Tu6712
											Stw v3.3200 t.6711 0
											Ans
												Mr t.6711
create_dirvec_elements.3001 (args) : d.3002 index.3003 (fargs) : 
	Let create_dirvec.2999
		Lwz $a26 4
		Let Ti448.3194
			Li 0
			Ans
				IfLE Ti448.3194 index.3003
					Let Tu449.3199
						Nop
						Let Tt450.3198
							CallCls create_dirvec.2999 (create_dirvec.2999) d:f:
							Let o.6714
								Slw index.3003 2
								Let Tu214.3195
									Stw Tt450.3198 d.3002 o.6714
									Let Ti452.3196
										Sub index.3003 1
										Ans
											CallCls create_dirvec_elements.3001 (create_dirvec_elements.3001) d:d.3002 Ti452.3196 f:
					Ans
						Nop
create_dirvecs.3004 (args) : index.3005 (fargs) : 
	Let dirvecs.2510
		Lwz $a26 12
		Let create_dirvec_elements.3001
			Lwz $a26 8
			Let create_dirvec.2999
				Lwz $a26 4
				Let Ti439.3183
					Li 0
					Ans
						IfLE Ti439.3183 index.3005
							Let Ti440.3191
								Li 120
								Let Tu441.3193
									Nop
									Let Tt442.3192
										CallCls create_dirvec.2999 (create_dirvec.2999) d:f:
										Let Ta443.3190
											CallCls min_caml_create_array d:Ti440.3191 Tt442.3192 f:
											Let o.6715
												Slw index.3005 2
												Let Tu216.3184
													Stw Ta443.3190 dirvecs.2510 o.6715
													Let o.6716
														Slw index.3005 2
														Let Ta444.3188
															Lwz dirvecs.2510 o.6716
															Let Ti445.3189
																Li 118
																Let Tu215.3185
																	CallCls create_dirvec_elements.3001 (create_dirvec_elements.3001) d:Ta444.3188 Ti445.3189 f:
																	Let Ti447.3186
																		Sub index.3005 1
																		Ans
																			CallCls create_dirvecs.3004 (create_dirvecs.3004) d:Ti447.3186 f:
							Ans
								Nop
init_dirvec_constants.3006 (args) : vecset.3007 index.3008 (fargs) : 
	Let setup_dirvec_constants.2791
		Lwz $a26 4
		Let Ti435.3178
			Li 0
			Ans
				IfLE Ti435.3178 index.3008
					Let o.6717
						Slw index.3008 2
						Let Tt436.3182
							Lwz vecset.3007 o.6717
							Let Tu217.3179
								CallCls setup_dirvec_constants.2791 (setup_dirvec_constants.2791) d:Tt436.3182 f:
								Let Ti438.3180
									Sub index.3008 1
									Ans
										CallCls init_dirvec_constants.3006 (init_dirvec_constants.3006) d:vecset.3007 Ti438.3180 f:
					Ans
						Nop
init_vecset_constants.3009 (args) : index.3010 (fargs) : 
	Let init_dirvec_constants.3006
		Lwz $a26 8
		Let dirvecs.2510
			Lwz $a26 4
			Let Ti430.3172
				Li 0
				Ans
					IfLE Ti430.3172 index.3010
						Let o.6718
							Slw index.3010 2
							Let Ta431.3176
								Lwz dirvecs.2510 o.6718
								Let Ti432.3177
									Li 119
									Let Tu218.3173
										CallCls init_dirvec_constants.3006 (init_dirvec_constants.3006) d:Ta431.3176 Ti432.3177 f:
										Let Ti434.3174
											Sub index.3010 1
											Ans
												CallCls init_vecset_constants.3009 (init_vecset_constants.3009) d:Ti434.3174 f:
						Ans
							Nop
init_dirvecs.3011 (args) : (fargs) : 
	Let init_vecset_constants.3009
		Lwz $a26 12
		Let create_dirvecs.3004
			Lwz $a26 8
			Let calc_dirvec_rows.2995
				Lwz $a26 4
				Let Ti425.3171
					Li 4
					Let Tu221.3165
						CallCls create_dirvecs.3004 (create_dirvecs.3004) d:Ti425.3171 f:
						Let Ti426.3168
							Li 9
							Let Ti427.3169
								Li 0
								Let Ti428.3170
									Li 0
									Let Tu220.3166
										CallCls calc_dirvec_rows.2995 (calc_dirvec_rows.2995) d:Ti426.3168 Ti427.3169 Ti428.3170 f:
										Let Ti429.3167
											Li 4
											Ans
												CallCls init_vecset_constants.3009 (init_vecset_constants.3009) d:Ti429.3167 f:
add_reflection.3013 (args) : index.3014 surface_id.3015 (fargs) : bright.3016 v0.3017 v1.3018 v2.3019 
	Let setup_dirvec_constants.2791
		Lwz $a26 12
		Let reflections.2512
			Lwz $a26 8
			Let create_dirvec.2999
				Lwz $a26 4
				Let Tu422.3164
					Nop
					Let dvec.3159
						CallCls create_dirvec.2999 (create_dirvec.2999) d:f:
						Let Ta423.3163
							CallCls d_vec.2662 d:dvec.3159 f:
							Let Tu223.3160
								CallCls vecset.2555 d:Ta423.3163 f:v0.3017 v1.3018 v2.3019 
								Let Tu222.3161
									CallCls setup_dirvec_constants.2791 (setup_dirvec_constants.2791) d:dvec.3159 f:
									Let t.6719
										Mr $fp
										Let $fp
											Add $fp 16
											Let Tu6722
												Stfd bright.3016 t.6719 8
												Let Tu6721
													Stw dvec.3159 t.6719 4
													Let Tu6720
														Stw surface_id.3015 t.6719 0
														Let Tt424.3162
															Mr t.6719
															Let o.6723
																Slw index.3014 2
																Ans
																	Stw Tt424.3162 reflections.2512 o.6723
setup_rect_reflection.3020 (args) : obj_id.3021 obj.3022 (fargs) : 
	Let n_reflections.2513
		Lwz $a26 12
		Let light.2488
			Lwz $a26 8
			Let add_reflection.3013
				Lwz $a26 4
				Let sid.3122
					ShiftL2 obj_id.3021
					Let nr.3123
						Lwz n_reflections.2513 0
						Let Td395.3156
							FLi l.6152
							Let Td396.3157
								CallCls o_diffuse.2625 d:obj.3022 f:
								Let br.3124
									FSub Td395.3156 Td396.3157
									Let Td398.3154
										Lfd light.2488 0
										Let n0.3125
											CallCls fneg.2514 d:f:Td398.3154 
											Let Td400.3152
												Lfd light.2488 4
												Let n1.3126
													CallCls fneg.2514 d:f:Td400.3152 
													Let Td402.3150
														Lfd light.2488 8
														Let n2.3127
															CallCls fneg.2514 d:f:Td402.3150 
															Let Ti404.3146
																Add sid.3122 1
																Let Td406.3147
																	Lfd light.2488 0
																	Let Tu226.3128
																		CallCls add_reflection.3013 (add_reflection.3013) d:nr.3123 Ti404.3146 f:br.3124 Td406.3147 n1.3126 n2.3127 
																		Let Ti408.3140
																			Add nr.3123 1
																			Let Ti410.3141
																				Add sid.3122 2
																				Let Td412.3142
																					Lfd light.2488 4
																					Let Tu225.3129
																						CallCls add_reflection.3013 (add_reflection.3013) d:Ti408.3140 Ti410.3141 f:br.3124 n0.3125 Td412.3142 n2.3127 
																						Let Ti414.3134
																							Add nr.3123 2
																							Let Ti416.3135
																								Add sid.3122 3
																								Let Td418.3136
																									Lfd light.2488 8
																									Let Tu224.3130
																										CallCls add_reflection.3013 (add_reflection.3013) d:Ti414.3134 Ti416.3135 f:br.3124 n0.3125 n1.3126 Td418.3136 
																										Let Ti421.3132
																											Add nr.3123 3
																											Ans
																												Stw Ti421.3132 n_reflections.2513 0
setup_surface_reflection.3023 (args) : obj_id.3024 obj.3025 (fargs) : 
	Let n_reflections.2513
		Lwz $a26 12
		Let light.2488
			Lwz $a26 8
			Let add_reflection.3013
				Lwz $a26 4
				Let Ti364.3120
					ShiftL2 obj_id.3024
					Let sid.3087
						Add Ti364.3120 1
						Let nr.3088
							Lwz n_reflections.2513 0
							Let Td367.3117
								FLi l.6152
								Let Td368.3118
									CallCls o_diffuse.2625 d:obj.3025 f:
									Let br.3089
										FSub Td367.3117 Td368.3118
										Let Ta369.3116
											CallCls o_param_abc.2617 d:obj.3025 f:
											Let p.3090
												CallCls veciprod.2576 d:light.2488 Ta369.3116 f:
												Let Td370.3114
													FLi l.6151
													Let Td371.3115
														CallCls o_param_a.2611 d:obj.3025 f:
														Let Td372.3113
															FMul Td370.3114 Td371.3115
															Let Td373.3110
																FMul Td372.3113 p.3090
																Let Td375.3111
																	Lfd light.2488 0
																	Let Td376.3095
																		FSub Td373.3110 Td375.3111
																		Let Td377.3108
																			FLi l.6151
																			Let Td378.3109
																				CallCls o_param_b.2613 d:obj.3025 f:
																				Let Td379.3107
																					FMul Td377.3108 Td378.3109
																					Let Td380.3104
																						FMul Td379.3107 p.3090
																						Let Td382.3105
																							Lfd light.2488 4
																							Let Td383.3096
																								FSub Td380.3104 Td382.3105
																								Let Td384.3102
																									FLi l.6151
																									Let Td385.3103
																										CallCls o_param_c.2615 d:obj.3025 f:
																										Let Td386.3101
																											FMul Td384.3102 Td385.3103
																											Let Td387.3098
																												FMul Td386.3101 p.3090
																												Let Td389.3099
																													Lfd light.2488 8
																													Let Td390.3097
																														FSub Td387.3098 Td389.3099
																														Let Tu227.3091
																															CallCls add_reflection.3013 (add_reflection.3013) d:nr.3088 sid.3087 f:br.3089 Td376.3095 Td383.3096 Td390.3097 
																															Let Ti393.3093
																																Add nr.3088 1
																																Ans
																																	Stw Ti393.3093 n_reflections.2513 0
setup_reflections.3026 (args) : obj_id.3027 (fargs) : 
	Let setup_surface_reflection.3023
		Lwz $a26 12
		Let setup_rect_reflection.3020
			Lwz $a26 8
			Let objects.2485
				Lwz $a26 4
				Let Ti355.3076
					Li 0
					Ans
						IfLE Ti355.3076 obj_id.3027
							Let o.6737
								Slw obj_id.3027 2
								Let obj.3077
									Lwz objects.2485 o.6737
									Let Ti356.3078
										CallCls o_reflectiontype.2605 d:obj.3077 f:
										Let Ti357.3079
											Li 2
											Ans
												IfEq Ti356.3078 Ti357.3079
													Let Td358.3085
														CallCls o_diffuse.2625 d:obj.3077 f:
														Let Td359.3086
															FLi l.6152
															Let Tb360.3080
																CallCls fless.2528 d:f:Td358.3085 Td359.3086 
																Let Ti361.3081
																	Li 0
																	Ans
																		IfEq Tb360.3080 Ti361.3081
																			Ans
																				Nop
																			Let m_shape.3082
																				CallCls o_form.2603 d:obj.3077 f:
																				Let Ti362.3083
																					Li 1
																					Ans
																						IfEq m_shape.3082 Ti362.3083
																							Ans
																								CallCls setup_rect_reflection.3020 (setup_rect_reflection.3020) d:obj_id.3027 obj.3077 f:
																							Let Ti363.3084
																								Li 2
																								Ans
																									IfEq m_shape.3082 Ti363.3084
																										Ans
																											CallCls setup_surface_reflection.3023 (setup_surface_reflection.3023) d:obj_id.3027 obj.3077 f:
																										Ans
																											Nop
													Ans
														Nop
							Ans
								Nop
rt.3028 (args) : size_x.3029 size_y.3030 (fargs) : 
	Let write_ppm_header.2936
		Lwz $a26 56
		Let setup_reflections.3026
			Lwz $a26 52
			Let setup_dirvec_constants.2791
				Lwz $a26 48
				Let scan_pitch.2503
					Lwz $a26 44
					Let scan_line.2962
						Lwz $a26 40
						Let read_parameter.2693
							Lwz $a26 36
							Let pretrace_line.2952
								Lwz $a26 32
								Let n_objects.2484
									Lwz $a26 28
									Let light_dirvec.2511
										Lwz $a26 24
										Let light.2488
											Lwz $a26 20
											Let init_dirvecs.3011
												Lwz $a26 16
												Let image_size.2501
													Lwz $a26 12
													Let image_center.2502
														Lwz $a26 8
														Let create_pixelline.2975
															Lwz $a26 4
															Let Tu239.3035
																Stw size_x.3029 image_size.2501 0
																Let Tu238.3036
																	Stw size_y.3030 image_size.2501 4
																	Let Ti332.3073
																		ShiftR1 size_x.3029
																		Let Tu237.3037
																			Stw Ti332.3073 image_center.2502 0
																			Let Ti334.3071
																				ShiftR1 size_y.3030
																				Let Tu236.3038
																					Stw Ti334.3071 image_center.2502 4
																					Let Td336.3067
																						FLi l.6742
																						Let Td337.3068
																							CallCls float_of_int.2533 d:size_x.3029 f:
																							Let Td338.3069
																								FReciprocal Td337.3068
																								Let Td339.3066
																									FMul Td336.3067 Td338.3069
																									Let Tu235.3039
																										Stfd Td339.3066 scan_pitch.2503 0
																										Let Tu340.3064
																											Nop
																											Let prev.3040
																												CallCls create_pixelline.2975 (create_pixelline.2975) d:f:
																												Let Tu341.3063
																													Nop
																													Let cur.3041
																														CallCls create_pixelline.2975 (create_pixelline.2975) d:f:
																														Let Tu342.3062
																															Nop
																															Let next.3042
																																CallCls create_pixelline.2975 (create_pixelline.2975) d:f:
																																Let Tu343.3061
																																	Nop
																																	Let Tu234.3043
																																		CallCls read_parameter.2693 (read_parameter.2693) d:f:
																																		Let Tu344.3060
																																			Nop
																																			Let Tu233.3044
																																				CallCls write_ppm_header.2936 (write_ppm_header.2936) d:f:
																																				Let Tu345.3059
																																					Nop
																																					Let Tu232.3045
																																						CallCls init_dirvecs.3011 (init_dirvecs.3011) d:f:
																																						Let Ta346.3058
																																							CallCls d_vec.2662 d:light_dirvec.2511 f:
																																							Let Tu231.3046
																																								CallCls veccpy.2565 d:Ta346.3058 light.2488 f:
																																								Let Tu230.3047
																																									CallCls setup_dirvec_constants.2791 (setup_dirvec_constants.2791) d:light_dirvec.2511 f:
																																									Let Ti348.3055
																																										Lwz n_objects.2484 0
																																										Let Ti350.3054
																																											Sub Ti348.3055 1
																																											Let Tu229.3048
																																												CallCls setup_reflections.3026 (setup_reflections.3026) d:Ti350.3054 f:
																																												Let Ti351.3052
																																													Li 0
																																													Let Ti352.3053
																																														Li 0
																																														Let Tu228.3049
																																															CallCls pretrace_line.2952 (pretrace_line.2952) d:cur.3041 Ti351.3052 Ti352.3053 f:
																																															Let Ti353.3050
																																																Li 0
																																																Let Ti354.3051
																																																	Li 2
																																																	Ans
																																																		CallCls scan_line.2962 (scan_line.2962) d:Ti353.3050 prev.3040 cur.3041 next.3042 Ti354.3051 f:

main
Let Ti241.6147
	Li 1
	Let Ti242.6148
		Li 0
		Let n_objects.2484
			CallCls min_caml_create_array d:Ti241.6147 Ti242.6148 f:
			Let Ti243.6145
				Li 0
				Let Td244.6146
					FLi l.6149
					Let dummy.6137
						CallCls min_caml_create_float_array d:Ti243.6145 f:Td244.6146 
						Let Ti245.6138
							Li 60
							Let Ti246.6140
								Li 0
								Let Ti247.6141
									Li 0
									Let Ti248.6142
										Li 0
										Let Ti249.6143
											Li 0
											Let Ti250.6144
												Li 0
												Let t.6745
													Mr $fp
													Let $fp
														Add $fp 48
														Let Tu6756
															Stw dummy.6137 t.6745 40
															Let Tu6755
																Stw dummy.6137 t.6745 36
																Let Tu6754
																	Stw dummy.6137 t.6745 32
																	Let Tu6753
																		Stw dummy.6137 t.6745 28
																		Let Tu6752
																			Stw Ti250.6144 t.6745 24
																			Let Tu6751
																				Stw dummy.6137 t.6745 20
																				Let Tu6750
																					Stw dummy.6137 t.6745 16
																					Let Tu6749
																						Stw Ti249.6143 t.6745 12
																						Let Tu6748
																							Stw Ti248.6142 t.6745 8
																							Let Tu6747
																								Stw Ti247.6141 t.6745 4
																								Let Tu6746
																									Stw Ti246.6140 t.6745 0
																									Let Tt251.6139
																										Mr t.6745
																										Let objects.2485
																											CallCls min_caml_create_array d:Ti245.6138 Tt251.6139 f:
																											Let Ti252.6135
																												Li 3
																												Let Td253.6136
																													FLi l.6149
																													Let screen.2486
																														CallCls min_caml_create_float_array d:Ti252.6135 f:Td253.6136 
																														Let Ti254.6133
																															Li 3
																															Let Td255.6134
																																FLi l.6149
																																Let viewpoint.2487
																																	CallCls min_caml_create_float_array d:Ti254.6133 f:Td255.6134 
																																	Let Ti256.6131
																																		Li 3
																																		Let Td257.6132
																																			FLi l.6149
																																			Let light.2488
																																				CallCls min_caml_create_float_array d:Ti256.6131 f:Td257.6132 
																																				Let Ti258.6129
																																					Li 1
																																					Let Td259.6130
																																						FLi l.6555
																																						Let beam.2489
																																							CallCls min_caml_create_float_array d:Ti258.6129 f:Td259.6130 
																																							Let Ti260.6124
																																								Li 50
																																								Let Ti261.6126
																																									Li 1
																																									Let Ti263.6127
																																										Li -1
																																										Let Ta264.6125
																																											CallCls min_caml_create_array d:Ti261.6126 Ti263.6127 f:
																																											Let and_net.2490
																																												CallCls min_caml_create_array d:Ti260.6124 Ta264.6125 f:
																																												Let Ti265.6119
																																													Li 1
																																													Let Ti266.6121
																																														Li 1
																																														Let Ta268.6122
																																															Lwz and_net.2490 0
																																															Let Ta269.6120
																																																CallCls min_caml_create_array d:Ti266.6121 Ta268.6122 f:
																																																Let or_net.2491
																																																	CallCls min_caml_create_array d:Ti265.6119 Ta269.6120 f:
																																																	Let Ti270.6117
																																																		Li 1
																																																		Let Td271.6118
																																																			FLi l.6149
																																																			Let solver_dist.2492
																																																				CallCls min_caml_create_float_array d:Ti270.6117 f:Td271.6118 
																																																				Let Ti272.6115
																																																					Li 1
																																																					Let Ti273.6116
																																																						Li 0
																																																						Let intsec_rectside.2493
																																																							CallCls min_caml_create_array d:Ti272.6115 Ti273.6116 f:
																																																							Let Ti274.6113
																																																								Li 1
																																																								Let Td275.6114
																																																									FLi l.6502
																																																									Let tmin.2494
																																																										CallCls min_caml_create_float_array d:Ti274.6113 f:Td275.6114 
																																																										Let Ti276.6111
																																																											Li 3
																																																											Let Td277.6112
																																																												FLi l.6149
																																																												Let intersection_point.2495
																																																													CallCls min_caml_create_float_array d:Ti276.6111 f:Td277.6112 
																																																													Let Ti278.6109
																																																														Li 1
																																																														Let Ti279.6110
																																																															Li 0
																																																															Let intersected_object_id.2496
																																																																CallCls min_caml_create_array d:Ti278.6109 Ti279.6110 f:
																																																																Let Ti280.6107
																																																																	Li 3
																																																																	Let Td281.6108
																																																																		FLi l.6149
																																																																		Let nvector.2497
																																																																			CallCls min_caml_create_float_array d:Ti280.6107 f:Td281.6108 
																																																																			Let Ti282.6105
																																																																				Li 3
																																																																				Let Td283.6106
																																																																					FLi l.6149
																																																																					Let texture_color.2498
																																																																						CallCls min_caml_create_float_array d:Ti282.6105 f:Td283.6106 
																																																																						Let Ti284.6103
																																																																							Li 3
																																																																							Let Td285.6104
																																																																								FLi l.6149
																																																																								Let diffuse_ray.2499
																																																																									CallCls min_caml_create_float_array d:Ti284.6103 f:Td285.6104 
																																																																									Let Ti286.6101
																																																																										Li 3
																																																																										Let Td287.6102
																																																																											FLi l.6149
																																																																											Let rgb.2500
																																																																												CallCls min_caml_create_float_array d:Ti286.6101 f:Td287.6102 
																																																																												Let Ti288.6099
																																																																													Li 2
																																																																													Let Ti289.6100
																																																																														Li 0
																																																																														Let image_size.2501
																																																																															CallCls min_caml_create_array d:Ti288.6099 Ti289.6100 f:
																																																																															Let Ti290.6097
																																																																																Li 2
																																																																																Let Ti291.6098
																																																																																	Li 0
																																																																																	Let image_center.2502
																																																																																		CallCls min_caml_create_array d:Ti290.6097 Ti291.6098 f:
																																																																																		Let Ti292.6095
																																																																																			Li 1
																																																																																			Let Td293.6096
																																																																																				FLi l.6149
																																																																																				Let scan_pitch.2503
																																																																																					CallCls min_caml_create_float_array d:Ti292.6095 f:Td293.6096 
																																																																																					Let Ti294.6093
																																																																																						Li 3
																																																																																						Let Td295.6094
																																																																																							FLi l.6149
																																																																																							Let startp.2504
																																																																																								CallCls min_caml_create_float_array d:Ti294.6093 f:Td295.6094 
																																																																																								Let Ti296.6091
																																																																																									Li 3
																																																																																									Let Td297.6092
																																																																																										FLi l.6149
																																																																																										Let startp_fast.2505
																																																																																											CallCls min_caml_create_float_array d:Ti296.6091 f:Td297.6092 
																																																																																											Let Ti298.6089
																																																																																												Li 3
																																																																																												Let Td299.6090
																																																																																													FLi l.6149
																																																																																													Let screenx_dir.2506
																																																																																														CallCls min_caml_create_float_array d:Ti298.6089 f:Td299.6090 
																																																																																														Let Ti300.6087
																																																																																															Li 3
																																																																																															Let Td301.6088
																																																																																																FLi l.6149
																																																																																																Let screeny_dir.2507
																																																																																																	CallCls min_caml_create_float_array d:Ti300.6087 f:Td301.6088 
																																																																																																	Let Ti302.6085
																																																																																																		Li 3
																																																																																																		Let Td303.6086
																																																																																																			FLi l.6149
																																																																																																			Let screenz_dir.2508
																																																																																																				CallCls min_caml_create_float_array d:Ti302.6085 f:Td303.6086 
																																																																																																				Let Ti304.6083
																																																																																																					Li 3
																																																																																																					Let Td305.6084
																																																																																																						FLi l.6149
																																																																																																						Let ptrace_dirvec.2509
																																																																																																							CallCls min_caml_create_float_array d:Ti304.6083 f:Td305.6084 
																																																																																																							Let Ti306.6081
																																																																																																								Li 0
																																																																																																								Let Td307.6082
																																																																																																									FLi l.6149
																																																																																																									Let dummyf.6074
																																																																																																										CallCls min_caml_create_float_array d:Ti306.6081 f:Td307.6082 
																																																																																																										Let Ti308.6080
																																																																																																											Li 0
																																																																																																											Let dummyff.6075
																																																																																																												CallCls min_caml_create_array d:Ti308.6080 dummyf.6074 f:
																																																																																																												Let Ti309.6078
																																																																																																													Li 0
																																																																																																													Let t.6758
																																																																																																														Mr $fp
																																																																																																														Let $fp
																																																																																																															Add $fp 8
																																																																																																															Let Tu6760
																																																																																																																Stw dummyff.6075 t.6758 4
																																																																																																																Let Tu6759
																																																																																																																	Stw dummyf.6074 t.6758 0
																																																																																																																	Let Tt310.6079
																																																																																																																		Mr t.6758
																																																																																																																		Let dummy_vs.6076
																																																																																																																			CallCls min_caml_create_array d:Ti309.6078 Tt310.6079 f:
																																																																																																																			Let Ti311.6077
																																																																																																																				Li 5
																																																																																																																				Let dirvecs.2510
																																																																																																																					CallCls min_caml_create_array d:Ti311.6077 dummy_vs.6076 f:
																																																																																																																					Let Ti312.6072
																																																																																																																						Li 0
																																																																																																																						Let Td313.6073
																																																																																																																							FLi l.6149
																																																																																																																							Let dummyf2.6066
																																																																																																																								CallCls min_caml_create_float_array d:Ti312.6072 f:Td313.6073 
																																																																																																																								Let Ti314.6070
																																																																																																																									Li 3
																																																																																																																									Let Td315.6071
																																																																																																																										FLi l.6149
																																																																																																																										Let v3.6067
																																																																																																																											CallCls min_caml_create_float_array d:Ti314.6070 f:Td315.6071 
																																																																																																																											Let Ti316.6069
																																																																																																																												Li 60
																																																																																																																												Let consts.6068
																																																																																																																													CallCls min_caml_create_array d:Ti316.6069 dummyf2.6066 f:
																																																																																																																													Let t.6761
																																																																																																																														Mr $fp
																																																																																																																														Let $fp
																																																																																																																															Add $fp 8
																																																																																																																															Let Tu6763
																																																																																																																																Stw consts.6068 t.6761 4
																																																																																																																																Let Tu6762
																																																																																																																																	Stw v3.6067 t.6761 0
																																																																																																																																	Let light_dirvec.2511
																																																																																																																																		Mr t.6761
																																																																																																																																		Let Ti317.6064
																																																																																																																																			Li 0
																																																																																																																																			Let Td318.6065
																																																																																																																																				FLi l.6149
																																																																																																																																				Let dummyf3.6056
																																																																																																																																					CallCls min_caml_create_float_array d:Ti317.6064 f:Td318.6065 
																																																																																																																																					Let Ti319.6063
																																																																																																																																						Li 0
																																																																																																																																						Let dummyff3.6057
																																																																																																																																							CallCls min_caml_create_array d:Ti319.6063 dummyf3.6056 f:
																																																																																																																																							Let t.6764
																																																																																																																																								Mr $fp
																																																																																																																																								Let $fp
																																																																																																																																									Add $fp 8
																																																																																																																																									Let Tu6766
																																																																																																																																										Stw dummyff3.6057 t.6764 4
																																																																																																																																										Let Tu6765
																																																																																																																																											Stw dummyf3.6056 t.6764 0
																																																																																																																																											Let dummydv.6058
																																																																																																																																												Mr t.6764
																																																																																																																																												Let Ti320.6059
																																																																																																																																													Li 180
																																																																																																																																													Let Ti321.6061
																																																																																																																																														Li 0
																																																																																																																																														Let Td322.6062
																																																																																																																																															FLi l.6149
																																																																																																																																															Let t.6767
																																																																																																																																																Mr $fp
																																																																																																																																																Let $fp
																																																																																																																																																	Add $fp 16
																																																																																																																																																	Let Tu6770
																																																																																																																																																		Stfd Td322.6062 t.6767 8
																																																																																																																																																		Let Tu6769
																																																																																																																																																			Stw dummydv.6058 t.6767 4
																																																																																																																																																			Let Tu6768
																																																																																																																																																				Stw Ti321.6061 t.6767 0
																																																																																																																																																				Let Tt323.6060
																																																																																																																																																					Mr t.6767
																																																																																																																																																					Let reflections.2512
																																																																																																																																																						CallCls min_caml_create_array d:Ti320.6059 Tt323.6060 f:
																																																																																																																																																						Let Ti324.6054
																																																																																																																																																							Li 1
																																																																																																																																																							Let Ti325.6055
																																																																																																																																																								Li 0
																																																																																																																																																								Let n_reflections.2513
																																																																																																																																																									CallCls min_caml_create_array d:Ti324.6054 Ti325.6055 f:
																																																																																																																																																									Let read_screen_settings.2674
																																																																																																																																																										Mr $fp
																																																																																																																																																										Let $fp
																																																																																																																																																											Add $fp 24
																																																																																																																																																											Let l.7149
																																																																																																																																																												SetL read_screen_settings.2674
																																																																																																																																																												Let Tu7150
																																																																																																																																																													Stw l.7149 read_screen_settings.2674 0
																																																																																																																																																													Let Tu7148
																																																																																																																																																														Stw viewpoint.2487 read_screen_settings.2674 20
																																																																																																																																																														Let Tu7147
																																																																																																																																																															Stw screenz_dir.2508 read_screen_settings.2674 16
																																																																																																																																																															Let Tu7146
																																																																																																																																																																Stw screeny_dir.2507 read_screen_settings.2674 12
																																																																																																																																																																Let Tu7145
																																																																																																																																																																	Stw screenx_dir.2506 read_screen_settings.2674 8
																																																																																																																																																																	Let Tu7144
																																																																																																																																																																		Stw screen.2486 read_screen_settings.2674 4
																																																																																																																																																																		Let read_light.2676
																																																																																																																																																																			Mr $fp
																																																																																																																																																																			Let $fp
																																																																																																																																																																				Add $fp 16
																																																																																																																																																																				Let l.7142
																																																																																																																																																																					SetL read_light.2676
																																																																																																																																																																					Let Tu7143
																																																																																																																																																																						Stw l.7142 read_light.2676 0
																																																																																																																																																																						Let Tu7141
																																																																																																																																																																							Stw light.2488 read_light.2676 8
																																																																																																																																																																							Let Tu7140
																																																																																																																																																																								Stw beam.2489 read_light.2676 4
																																																																																																																																																																								Let read_nth_object.2681
																																																																																																																																																																									Mr $fp
																																																																																																																																																																									Let $fp
																																																																																																																																																																										Add $fp 8
																																																																																																																																																																										Let l.7138
																																																																																																																																																																											SetL read_nth_object.2681
																																																																																																																																																																											Let Tu7139
																																																																																																																																																																												Stw l.7138 read_nth_object.2681 0
																																																																																																																																																																												Let Tu7137
																																																																																																																																																																													Stw objects.2485 read_nth_object.2681 4
																																																																																																																																																																													Let read_object.2683
																																																																																																																																																																														Mr $fp
																																																																																																																																																																														Let $fp
																																																																																																																																																																															Add $fp 16
																																																																																																																																																																															Let l.7135
																																																																																																																																																																																SetL read_object.2683
																																																																																																																																																																																Let Tu7136
																																																																																																																																																																																	Stw l.7135 read_object.2683 0
																																																																																																																																																																																	Let Tu7134
																																																																																																																																																																																		Stw read_nth_object.2681 read_object.2683 8
																																																																																																																																																																																		Let Tu7133
																																																																																																																																																																																			Stw n_objects.2484 read_object.2683 4
																																																																																																																																																																																			Let read_all_object.2685
																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																				Let $fp
																																																																																																																																																																																					Add $fp 8
																																																																																																																																																																																					Let l.7131
																																																																																																																																																																																						SetL read_all_object.2685
																																																																																																																																																																																						Let Tu7132
																																																																																																																																																																																							Stw l.7131 read_all_object.2685 0
																																																																																																																																																																																							Let Tu7130
																																																																																																																																																																																								Stw read_object.2683 read_all_object.2685 4
																																																																																																																																																																																								Let read_and_network.2691
																																																																																																																																																																																									Mr $fp
																																																																																																																																																																																									Let $fp
																																																																																																																																																																																										Add $fp 8
																																																																																																																																																																																										Let l.7128
																																																																																																																																																																																											SetL read_and_network.2691
																																																																																																																																																																																											Let Tu7129
																																																																																																																																																																																												Stw l.7128 read_and_network.2691 0
																																																																																																																																																																																												Let Tu7127
																																																																																																																																																																																													Stw and_net.2490 read_and_network.2691 4
																																																																																																																																																																																													Let read_parameter.2693
																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																														Let $fp
																																																																																																																																																																																															Add $fp 24
																																																																																																																																																																																															Let l.7125
																																																																																																																																																																																																SetL read_parameter.2693
																																																																																																																																																																																																Let Tu7126
																																																																																																																																																																																																	Stw l.7125 read_parameter.2693 0
																																																																																																																																																																																																	Let Tu7124
																																																																																																																																																																																																		Stw read_screen_settings.2674 read_parameter.2693 20
																																																																																																																																																																																																		Let Tu7123
																																																																																																																																																																																																			Stw read_light.2676 read_parameter.2693 16
																																																																																																																																																																																																			Let Tu7122
																																																																																																																																																																																																				Stw read_and_network.2691 read_parameter.2693 12
																																																																																																																																																																																																				Let Tu7121
																																																																																																																																																																																																					Stw read_all_object.2685 read_parameter.2693 8
																																																																																																																																																																																																					Let Tu7120
																																																																																																																																																																																																						Stw or_net.2491 read_parameter.2693 4
																																																																																																																																																																																																						Let solver_rect_surface.2695
																																																																																																																																																																																																							Mr $fp
																																																																																																																																																																																																							Let $fp
																																																																																																																																																																																																								Add $fp 8
																																																																																																																																																																																																								Let l.7118
																																																																																																																																																																																																									SetL solver_rect_surface.2695
																																																																																																																																																																																																									Let Tu7119
																																																																																																																																																																																																										Stw l.7118 solver_rect_surface.2695 0
																																																																																																																																																																																																										Let Tu7117
																																																																																																																																																																																																											Stw solver_dist.2492 solver_rect_surface.2695 4
																																																																																																																																																																																																											Let solver_rect.2704
																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																													Add $fp 8
																																																																																																																																																																																																													Let l.7115
																																																																																																																																																																																																														SetL solver_rect.2704
																																																																																																																																																																																																														Let Tu7116
																																																																																																																																																																																																															Stw l.7115 solver_rect.2704 0
																																																																																																																																																																																																															Let Tu7114
																																																																																																																																																																																																																Stw solver_rect_surface.2695 solver_rect.2704 4
																																																																																																																																																																																																																Let solver_surface.2710
																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																		Add $fp 8
																																																																																																																																																																																																																		Let l.7112
																																																																																																																																																																																																																			SetL solver_surface.2710
																																																																																																																																																																																																																			Let Tu7113
																																																																																																																																																																																																																				Stw l.7112 solver_surface.2710 0
																																																																																																																																																																																																																				Let Tu7111
																																																																																																																																																																																																																					Stw solver_dist.2492 solver_surface.2710 4
																																																																																																																																																																																																																					Let solver_second.2729
																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																							Add $fp 8
																																																																																																																																																																																																																							Let l.7109
																																																																																																																																																																																																																								SetL solver_second.2729
																																																																																																																																																																																																																								Let Tu7110
																																																																																																																																																																																																																									Stw l.7109 solver_second.2729 0
																																																																																																																																																																																																																									Let Tu7108
																																																																																																																																																																																																																										Stw solver_dist.2492 solver_second.2729 4
																																																																																																																																																																																																																										Let solver.2735
																																																																																																																																																																																																																											Mr $fp
																																																																																																																																																																																																																											Let $fp
																																																																																																																																																																																																																												Add $fp 24
																																																																																																																																																																																																																												Let l.7106
																																																																																																																																																																																																																													SetL solver.2735
																																																																																																																																																																																																																													Let Tu7107
																																																																																																																																																																																																																														Stw l.7106 solver.2735 0
																																																																																																																																																																																																																														Let Tu7105
																																																																																																																																																																																																																															Stw solver_surface.2710 solver.2735 16
																																																																																																																																																																																																																															Let Tu7104
																																																																																																																																																																																																																																Stw solver_second.2729 solver.2735 12
																																																																																																																																																																																																																																Let Tu7103
																																																																																																																																																																																																																																	Stw solver_rect.2704 solver.2735 8
																																																																																																																																																																																																																																	Let Tu7102
																																																																																																																																																																																																																																		Stw objects.2485 solver.2735 4
																																																																																																																																																																																																																																		Let solver_rect_fast.2739
																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																				Add $fp 8
																																																																																																																																																																																																																																				Let l.7100
																																																																																																																																																																																																																																					SetL solver_rect_fast.2739
																																																																																																																																																																																																																																					Let Tu7101
																																																																																																																																																																																																																																						Stw l.7100 solver_rect_fast.2739 0
																																																																																																																																																																																																																																						Let Tu7099
																																																																																																																																																																																																																																							Stw solver_dist.2492 solver_rect_fast.2739 4
																																																																																																																																																																																																																																							Let solver_surface_fast.2746
																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																									Add $fp 8
																																																																																																																																																																																																																																									Let l.7097
																																																																																																																																																																																																																																										SetL solver_surface_fast.2746
																																																																																																																																																																																																																																										Let Tu7098
																																																																																																																																																																																																																																											Stw l.7097 solver_surface_fast.2746 0
																																																																																																																																																																																																																																											Let Tu7096
																																																																																																																																																																																																																																												Stw solver_dist.2492 solver_surface_fast.2746 4
																																																																																																																																																																																																																																												Let solver_second_fast.2752
																																																																																																																																																																																																																																													Mr $fp
																																																																																																																																																																																																																																													Let $fp
																																																																																																																																																																																																																																														Add $fp 8
																																																																																																																																																																																																																																														Let l.7094
																																																																																																																																																																																																																																															SetL solver_second_fast.2752
																																																																																																																																																																																																																																															Let Tu7095
																																																																																																																																																																																																																																																Stw l.7094 solver_second_fast.2752 0
																																																																																																																																																																																																																																																Let Tu7093
																																																																																																																																																																																																																																																	Stw solver_dist.2492 solver_second_fast.2752 4
																																																																																																																																																																																																																																																	Let solver_fast.2758
																																																																																																																																																																																																																																																		Mr $fp
																																																																																																																																																																																																																																																		Let $fp
																																																																																																																																																																																																																																																			Add $fp 24
																																																																																																																																																																																																																																																			Let l.7091
																																																																																																																																																																																																																																																				SetL solver_fast.2758
																																																																																																																																																																																																																																																				Let Tu7092
																																																																																																																																																																																																																																																					Stw l.7091 solver_fast.2758 0
																																																																																																																																																																																																																																																					Let Tu7090
																																																																																																																																																																																																																																																						Stw solver_surface_fast.2746 solver_fast.2758 16
																																																																																																																																																																																																																																																						Let Tu7089
																																																																																																																																																																																																																																																							Stw solver_second_fast.2752 solver_fast.2758 12
																																																																																																																																																																																																																																																							Let Tu7088
																																																																																																																																																																																																																																																								Stw solver_rect_fast.2739 solver_fast.2758 8
																																																																																																																																																																																																																																																								Let Tu7087
																																																																																																																																																																																																																																																									Stw objects.2485 solver_fast.2758 4
																																																																																																																																																																																																																																																									Let solver_surface_fast2.2762
																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																											Add $fp 8
																																																																																																																																																																																																																																																											Let l.7085
																																																																																																																																																																																																																																																												SetL solver_surface_fast2.2762
																																																																																																																																																																																																																																																												Let Tu7086
																																																																																																																																																																																																																																																													Stw l.7085 solver_surface_fast2.2762 0
																																																																																																																																																																																																																																																													Let Tu7084
																																																																																																																																																																																																																																																														Stw solver_dist.2492 solver_surface_fast2.2762 4
																																																																																																																																																																																																																																																														Let solver_second_fast2.2769
																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																Add $fp 8
																																																																																																																																																																																																																																																																Let l.7082
																																																																																																																																																																																																																																																																	SetL solver_second_fast2.2769
																																																																																																																																																																																																																																																																	Let Tu7083
																																																																																																																																																																																																																																																																		Stw l.7082 solver_second_fast2.2769 0
																																																																																																																																																																																																																																																																		Let Tu7081
																																																																																																																																																																																																																																																																			Stw solver_dist.2492 solver_second_fast2.2769 4
																																																																																																																																																																																																																																																																			Let solver_fast2.2776
																																																																																																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																																																																																																				Let $fp
																																																																																																																																																																																																																																																																					Add $fp 24
																																																																																																																																																																																																																																																																					Let l.7079
																																																																																																																																																																																																																																																																						SetL solver_fast2.2776
																																																																																																																																																																																																																																																																						Let Tu7080
																																																																																																																																																																																																																																																																							Stw l.7079 solver_fast2.2776 0
																																																																																																																																																																																																																																																																							Let Tu7078
																																																																																																																																																																																																																																																																								Stw solver_surface_fast2.2762 solver_fast2.2776 16
																																																																																																																																																																																																																																																																								Let Tu7077
																																																																																																																																																																																																																																																																									Stw solver_second_fast2.2769 solver_fast2.2776 12
																																																																																																																																																																																																																																																																									Let Tu7076
																																																																																																																																																																																																																																																																										Stw solver_rect_fast.2739 solver_fast2.2776 8
																																																																																																																																																																																																																																																																										Let Tu7075
																																																																																																																																																																																																																																																																											Stw objects.2485 solver_fast2.2776 4
																																																																																																																																																																																																																																																																											Let iter_setup_dirvec_constants.2788
																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																													Add $fp 8
																																																																																																																																																																																																																																																																													Let l.7073
																																																																																																																																																																																																																																																																														SetL iter_setup_dirvec_constants.2788
																																																																																																																																																																																																																																																																														Let Tu7074
																																																																																																																																																																																																																																																																															Stw l.7073 iter_setup_dirvec_constants.2788 0
																																																																																																																																																																																																																																																																															Let Tu7072
																																																																																																																																																																																																																																																																																Stw objects.2485 iter_setup_dirvec_constants.2788 4
																																																																																																																																																																																																																																																																																Let setup_dirvec_constants.2791
																																																																																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																																																																																		Add $fp 16
																																																																																																																																																																																																																																																																																		Let l.7070
																																																																																																																																																																																																																																																																																			SetL setup_dirvec_constants.2791
																																																																																																																																																																																																																																																																																			Let Tu7071
																																																																																																																																																																																																																																																																																				Stw l.7070 setup_dirvec_constants.2791 0
																																																																																																																																																																																																																																																																																				Let Tu7069
																																																																																																																																																																																																																																																																																					Stw n_objects.2484 setup_dirvec_constants.2791 8
																																																																																																																																																																																																																																																																																					Let Tu7068
																																																																																																																																																																																																																																																																																						Stw iter_setup_dirvec_constants.2788 setup_dirvec_constants.2791 4
																																																																																																																																																																																																																																																																																						Let setup_startp_constants.2793
																																																																																																																																																																																																																																																																																							Mr $fp
																																																																																																																																																																																																																																																																																							Let $fp
																																																																																																																																																																																																																																																																																								Add $fp 8
																																																																																																																																																																																																																																																																																								Let l.7066
																																																																																																																																																																																																																																																																																									SetL setup_startp_constants.2793
																																																																																																																																																																																																																																																																																									Let Tu7067
																																																																																																																																																																																																																																																																																										Stw l.7066 setup_startp_constants.2793 0
																																																																																																																																																																																																																																																																																										Let Tu7065
																																																																																																																																																																																																																																																																																											Stw objects.2485 setup_startp_constants.2793 4
																																																																																																																																																																																																																																																																																											Let setup_startp.2796
																																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																																													Add $fp 16
																																																																																																																																																																																																																																																																																													Let l.7063
																																																																																																																																																																																																																																																																																														SetL setup_startp.2796
																																																																																																																																																																																																																																																																																														Let Tu7064
																																																																																																																																																																																																																																																																																															Stw l.7063 setup_startp.2796 0
																																																																																																																																																																																																																																																																																															Let Tu7062
																																																																																																																																																																																																																																																																																																Stw startp_fast.2505 setup_startp.2796 12
																																																																																																																																																																																																																																																																																																Let Tu7061
																																																																																																																																																																																																																																																																																																	Stw setup_startp_constants.2793 setup_startp.2796 8
																																																																																																																																																																																																																																																																																																	Let Tu7060
																																																																																																																																																																																																																																																																																																		Stw n_objects.2484 setup_startp.2796 4
																																																																																																																																																																																																																																																																																																		Let check_all_inside.2818
																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																				Add $fp 8
																																																																																																																																																																																																																																																																																																				Let l.7058
																																																																																																																																																																																																																																																																																																					SetL check_all_inside.2818
																																																																																																																																																																																																																																																																																																					Let Tu7059
																																																																																																																																																																																																																																																																																																						Stw l.7058 check_all_inside.2818 0
																																																																																																																																																																																																																																																																																																						Let Tu7057
																																																																																																																																																																																																																																																																																																							Stw objects.2485 check_all_inside.2818 4
																																																																																																																																																																																																																																																																																																							Let shadow_check_and_group.2824
																																																																																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																																																																																									Add $fp 32
																																																																																																																																																																																																																																																																																																									Let l.7055
																																																																																																																																																																																																																																																																																																										SetL shadow_check_and_group.2824
																																																																																																																																																																																																																																																																																																										Let Tu7056
																																																																																																																																																																																																																																																																																																											Stw l.7055 shadow_check_and_group.2824 0
																																																																																																																																																																																																																																																																																																											Let Tu7054
																																																																																																																																																																																																																																																																																																												Stw solver_fast.2758 shadow_check_and_group.2824 28
																																																																																																																																																																																																																																																																																																												Let Tu7053
																																																																																																																																																																																																																																																																																																													Stw solver_dist.2492 shadow_check_and_group.2824 24
																																																																																																																																																																																																																																																																																																													Let Tu7052
																																																																																																																																																																																																																																																																																																														Stw objects.2485 shadow_check_and_group.2824 20
																																																																																																																																																																																																																																																																																																														Let Tu7051
																																																																																																																																																																																																																																																																																																															Stw light_dirvec.2511 shadow_check_and_group.2824 16
																																																																																																																																																																																																																																																																																																															Let Tu7050
																																																																																																																																																																																																																																																																																																																Stw light.2488 shadow_check_and_group.2824 12
																																																																																																																																																																																																																																																																																																																Let Tu7049
																																																																																																																																																																																																																																																																																																																	Stw intersection_point.2495 shadow_check_and_group.2824 8
																																																																																																																																																																																																																																																																																																																	Let Tu7048
																																																																																																																																																																																																																																																																																																																		Stw check_all_inside.2818 shadow_check_and_group.2824 4
																																																																																																																																																																																																																																																																																																																		Let shadow_check_one_or_group.2827
																																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																																				Add $fp 16
																																																																																																																																																																																																																																																																																																																				Let l.7046
																																																																																																																																																																																																																																																																																																																					SetL shadow_check_one_or_group.2827
																																																																																																																																																																																																																																																																																																																					Let Tu7047
																																																																																																																																																																																																																																																																																																																						Stw l.7046 shadow_check_one_or_group.2827 0
																																																																																																																																																																																																																																																																																																																						Let Tu7045
																																																																																																																																																																																																																																																																																																																							Stw shadow_check_and_group.2824 shadow_check_one_or_group.2827 8
																																																																																																																																																																																																																																																																																																																							Let Tu7044
																																																																																																																																																																																																																																																																																																																								Stw and_net.2490 shadow_check_one_or_group.2827 4
																																																																																																																																																																																																																																																																																																																								Let shadow_check_one_or_matrix.2830
																																																																																																																																																																																																																																																																																																																									Mr $fp
																																																																																																																																																																																																																																																																																																																									Let $fp
																																																																																																																																																																																																																																																																																																																										Add $fp 24
																																																																																																																																																																																																																																																																																																																										Let l.7042
																																																																																																																																																																																																																																																																																																																											SetL shadow_check_one_or_matrix.2830
																																																																																																																																																																																																																																																																																																																											Let Tu7043
																																																																																																																																																																																																																																																																																																																												Stw l.7042 shadow_check_one_or_matrix.2830 0
																																																																																																																																																																																																																																																																																																																												Let Tu7041
																																																																																																																																																																																																																																																																																																																													Stw solver_fast.2758 shadow_check_one_or_matrix.2830 20
																																																																																																																																																																																																																																																																																																																													Let Tu7040
																																																																																																																																																																																																																																																																																																																														Stw solver_dist.2492 shadow_check_one_or_matrix.2830 16
																																																																																																																																																																																																																																																																																																																														Let Tu7039
																																																																																																																																																																																																																																																																																																																															Stw shadow_check_one_or_group.2827 shadow_check_one_or_matrix.2830 12
																																																																																																																																																																																																																																																																																																																															Let Tu7038
																																																																																																																																																																																																																																																																																																																																Stw light_dirvec.2511 shadow_check_one_or_matrix.2830 8
																																																																																																																																																																																																																																																																																																																																Let Tu7037
																																																																																																																																																																																																																																																																																																																																	Stw intersection_point.2495 shadow_check_one_or_matrix.2830 4
																																																																																																																																																																																																																																																																																																																																	Let solve_each_element.2833
																																																																																																																																																																																																																																																																																																																																		Mr $fp
																																																																																																																																																																																																																																																																																																																																		Let $fp
																																																																																																																																																																																																																																																																																																																																			Add $fp 40
																																																																																																																																																																																																																																																																																																																																			Let l.7035
																																																																																																																																																																																																																																																																																																																																				SetL solve_each_element.2833
																																																																																																																																																																																																																																																																																																																																				Let Tu7036
																																																																																																																																																																																																																																																																																																																																					Stw l.7035 solve_each_element.2833 0
																																																																																																																																																																																																																																																																																																																																					Let Tu7034
																																																																																																																																																																																																																																																																																																																																						Stw tmin.2494 solve_each_element.2833 36
																																																																																																																																																																																																																																																																																																																																						Let Tu7033
																																																																																																																																																																																																																																																																																																																																							Stw startp.2504 solve_each_element.2833 32
																																																																																																																																																																																																																																																																																																																																							Let Tu7032
																																																																																																																																																																																																																																																																																																																																								Stw solver_dist.2492 solve_each_element.2833 28
																																																																																																																																																																																																																																																																																																																																								Let Tu7031
																																																																																																																																																																																																																																																																																																																																									Stw solver.2735 solve_each_element.2833 24
																																																																																																																																																																																																																																																																																																																																									Let Tu7030
																																																																																																																																																																																																																																																																																																																																										Stw objects.2485 solve_each_element.2833 20
																																																																																																																																																																																																																																																																																																																																										Let Tu7029
																																																																																																																																																																																																																																																																																																																																											Stw intsec_rectside.2493 solve_each_element.2833 16
																																																																																																																																																																																																																																																																																																																																											Let Tu7028
																																																																																																																																																																																																																																																																																																																																												Stw intersection_point.2495 solve_each_element.2833 12
																																																																																																																																																																																																																																																																																																																																												Let Tu7027
																																																																																																																																																																																																																																																																																																																																													Stw intersected_object_id.2496 solve_each_element.2833 8
																																																																																																																																																																																																																																																																																																																																													Let Tu7026
																																																																																																																																																																																																																																																																																																																																														Stw check_all_inside.2818 solve_each_element.2833 4
																																																																																																																																																																																																																																																																																																																																														Let solve_one_or_network.2837
																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																Add $fp 16
																																																																																																																																																																																																																																																																																																																																																Let l.7024
																																																																																																																																																																																																																																																																																																																																																	SetL solve_one_or_network.2837
																																																																																																																																																																																																																																																																																																																																																	Let Tu7025
																																																																																																																																																																																																																																																																																																																																																		Stw l.7024 solve_one_or_network.2837 0
																																																																																																																																																																																																																																																																																																																																																		Let Tu7023
																																																																																																																																																																																																																																																																																																																																																			Stw solve_each_element.2833 solve_one_or_network.2837 8
																																																																																																																																																																																																																																																																																																																																																			Let Tu7022
																																																																																																																																																																																																																																																																																																																																																				Stw and_net.2490 solve_one_or_network.2837 4
																																																																																																																																																																																																																																																																																																																																																				Let trace_or_matrix.2841
																																																																																																																																																																																																																																																																																																																																																					Mr $fp
																																																																																																																																																																																																																																																																																																																																																					Let $fp
																																																																																																																																																																																																																																																																																																																																																						Add $fp 24
																																																																																																																																																																																																																																																																																																																																																						Let l.7020
																																																																																																																																																																																																																																																																																																																																																							SetL trace_or_matrix.2841
																																																																																																																																																																																																																																																																																																																																																							Let Tu7021
																																																																																																																																																																																																																																																																																																																																																								Stw l.7020 trace_or_matrix.2841 0
																																																																																																																																																																																																																																																																																																																																																								Let Tu7019
																																																																																																																																																																																																																																																																																																																																																									Stw tmin.2494 trace_or_matrix.2841 20
																																																																																																																																																																																																																																																																																																																																																									Let Tu7018
																																																																																																																																																																																																																																																																																																																																																										Stw startp.2504 trace_or_matrix.2841 16
																																																																																																																																																																																																																																																																																																																																																										Let Tu7017
																																																																																																																																																																																																																																																																																																																																																											Stw solver_dist.2492 trace_or_matrix.2841 12
																																																																																																																																																																																																																																																																																																																																																											Let Tu7016
																																																																																																																																																																																																																																																																																																																																																												Stw solver.2735 trace_or_matrix.2841 8
																																																																																																																																																																																																																																																																																																																																																												Let Tu7015
																																																																																																																																																																																																																																																																																																																																																													Stw solve_one_or_network.2837 trace_or_matrix.2841 4
																																																																																																																																																																																																																																																																																																																																																													Let judge_intersection.2845
																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																															Add $fp 16
																																																																																																																																																																																																																																																																																																																																																															Let l.7013
																																																																																																																																																																																																																																																																																																																																																																SetL judge_intersection.2845
																																																																																																																																																																																																																																																																																																																																																																Let Tu7014
																																																																																																																																																																																																																																																																																																																																																																	Stw l.7013 judge_intersection.2845 0
																																																																																																																																																																																																																																																																																																																																																																	Let Tu7012
																																																																																																																																																																																																																																																																																																																																																																		Stw trace_or_matrix.2841 judge_intersection.2845 12
																																																																																																																																																																																																																																																																																																																																																																		Let Tu7011
																																																																																																																																																																																																																																																																																																																																																																			Stw tmin.2494 judge_intersection.2845 8
																																																																																																																																																																																																																																																																																																																																																																			Let Tu7010
																																																																																																																																																																																																																																																																																																																																																																				Stw or_net.2491 judge_intersection.2845 4
																																																																																																																																																																																																																																																																																																																																																																				Let solve_each_element_fast.2847
																																																																																																																																																																																																																																																																																																																																																																					Mr $fp
																																																																																																																																																																																																																																																																																																																																																																					Let $fp
																																																																																																																																																																																																																																																																																																																																																																						Add $fp 40
																																																																																																																																																																																																																																																																																																																																																																						Let l.7008
																																																																																																																																																																																																																																																																																																																																																																							SetL solve_each_element_fast.2847
																																																																																																																																																																																																																																																																																																																																																																							Let Tu7009
																																																																																																																																																																																																																																																																																																																																																																								Stw l.7008 solve_each_element_fast.2847 0
																																																																																																																																																																																																																																																																																																																																																																								Let Tu7007
																																																																																																																																																																																																																																																																																																																																																																									Stw tmin.2494 solve_each_element_fast.2847 36
																																																																																																																																																																																																																																																																																																																																																																									Let Tu7006
																																																																																																																																																																																																																																																																																																																																																																										Stw startp_fast.2505 solve_each_element_fast.2847 32
																																																																																																																																																																																																																																																																																																																																																																										Let Tu7005
																																																																																																																																																																																																																																																																																																																																																																											Stw solver_fast2.2776 solve_each_element_fast.2847 28
																																																																																																																																																																																																																																																																																																																																																																											Let Tu7004
																																																																																																																																																																																																																																																																																																																																																																												Stw solver_dist.2492 solve_each_element_fast.2847 24
																																																																																																																																																																																																																																																																																																																																																																												Let Tu7003
																																																																																																																																																																																																																																																																																																																																																																													Stw objects.2485 solve_each_element_fast.2847 20
																																																																																																																																																																																																																																																																																																																																																																													Let Tu7002
																																																																																																																																																																																																																																																																																																																																																																														Stw intsec_rectside.2493 solve_each_element_fast.2847 16
																																																																																																																																																																																																																																																																																																																																																																														Let Tu7001
																																																																																																																																																																																																																																																																																																																																																																															Stw intersection_point.2495 solve_each_element_fast.2847 12
																																																																																																																																																																																																																																																																																																																																																																															Let Tu7000
																																																																																																																																																																																																																																																																																																																																																																																Stw intersected_object_id.2496 solve_each_element_fast.2847 8
																																																																																																																																																																																																																																																																																																																																																																																Let Tu6999
																																																																																																																																																																																																																																																																																																																																																																																	Stw check_all_inside.2818 solve_each_element_fast.2847 4
																																																																																																																																																																																																																																																																																																																																																																																	Let solve_one_or_network_fast.2851
																																																																																																																																																																																																																																																																																																																																																																																		Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																		Let $fp
																																																																																																																																																																																																																																																																																																																																																																																			Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																			Let l.6997
																																																																																																																																																																																																																																																																																																																																																																																				SetL solve_one_or_network_fast.2851
																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6998
																																																																																																																																																																																																																																																																																																																																																																																					Stw l.6997 solve_one_or_network_fast.2851 0
																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6996
																																																																																																																																																																																																																																																																																																																																																																																						Stw solve_each_element_fast.2847 solve_one_or_network_fast.2851 8
																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6995
																																																																																																																																																																																																																																																																																																																																																																																							Stw and_net.2490 solve_one_or_network_fast.2851 4
																																																																																																																																																																																																																																																																																																																																																																																							Let trace_or_matrix_fast.2855
																																																																																																																																																																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																																																																																																																																																																									Add $fp 24
																																																																																																																																																																																																																																																																																																																																																																																									Let l.6993
																																																																																																																																																																																																																																																																																																																																																																																										SetL trace_or_matrix_fast.2855
																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6994
																																																																																																																																																																																																																																																																																																																																																																																											Stw l.6993 trace_or_matrix_fast.2855 0
																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6992
																																																																																																																																																																																																																																																																																																																																																																																												Stw tmin.2494 trace_or_matrix_fast.2855 16
																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6991
																																																																																																																																																																																																																																																																																																																																																																																													Stw solver_fast2.2776 trace_or_matrix_fast.2855 12
																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6990
																																																																																																																																																																																																																																																																																																																																																																																														Stw solver_dist.2492 trace_or_matrix_fast.2855 8
																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6989
																																																																																																																																																																																																																																																																																																																																																																																															Stw solve_one_or_network_fast.2851 trace_or_matrix_fast.2855 4
																																																																																																																																																																																																																																																																																																																																																																																															Let judge_intersection_fast.2859
																																																																																																																																																																																																																																																																																																																																																																																																Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																	Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																	Let l.6987
																																																																																																																																																																																																																																																																																																																																																																																																		SetL judge_intersection_fast.2859
																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6988
																																																																																																																																																																																																																																																																																																																																																																																																			Stw l.6987 judge_intersection_fast.2859 0
																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6986
																																																																																																																																																																																																																																																																																																																																																																																																				Stw trace_or_matrix_fast.2855 judge_intersection_fast.2859 12
																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6985
																																																																																																																																																																																																																																																																																																																																																																																																					Stw tmin.2494 judge_intersection_fast.2859 8
																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6984
																																																																																																																																																																																																																																																																																																																																																																																																						Stw or_net.2491 judge_intersection_fast.2859 4
																																																																																																																																																																																																																																																																																																																																																																																																						Let get_nvector_rect.2861
																																																																																																																																																																																																																																																																																																																																																																																																							Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																							Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																								Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																								Let l.6982
																																																																																																																																																																																																																																																																																																																																																																																																									SetL get_nvector_rect.2861
																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6983
																																																																																																																																																																																																																																																																																																																																																																																																										Stw l.6982 get_nvector_rect.2861 0
																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6981
																																																																																																																																																																																																																																																																																																																																																																																																											Stw nvector.2497 get_nvector_rect.2861 8
																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6980
																																																																																																																																																																																																																																																																																																																																																																																																												Stw intsec_rectside.2493 get_nvector_rect.2861 4
																																																																																																																																																																																																																																																																																																																																																																																																												Let get_nvector_plane.2863
																																																																																																																																																																																																																																																																																																																																																																																																													Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																													Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																														Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																														Let l.6978
																																																																																																																																																																																																																																																																																																																																																																																																															SetL get_nvector_plane.2863
																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6979
																																																																																																																																																																																																																																																																																																																																																																																																																Stw l.6978 get_nvector_plane.2863 0
																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6977
																																																																																																																																																																																																																																																																																																																																																																																																																	Stw nvector.2497 get_nvector_plane.2863 4
																																																																																																																																																																																																																																																																																																																																																																																																																	Let get_nvector_second.2865
																																																																																																																																																																																																																																																																																																																																																																																																																		Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																		Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																			Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																			Let l.6975
																																																																																																																																																																																																																																																																																																																																																																																																																				SetL get_nvector_second.2865
																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6976
																																																																																																																																																																																																																																																																																																																																																																																																																					Stw l.6975 get_nvector_second.2865 0
																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6974
																																																																																																																																																																																																																																																																																																																																																																																																																						Stw nvector.2497 get_nvector_second.2865 8
																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6973
																																																																																																																																																																																																																																																																																																																																																																																																																							Stw intersection_point.2495 get_nvector_second.2865 4
																																																																																																																																																																																																																																																																																																																																																																																																																							Let get_nvector.2867
																																																																																																																																																																																																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																									Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																									Let l.6971
																																																																																																																																																																																																																																																																																																																																																																																																																										SetL get_nvector.2867
																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6972
																																																																																																																																																																																																																																																																																																																																																																																																																											Stw l.6971 get_nvector.2867 0
																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6970
																																																																																																																																																																																																																																																																																																																																																																																																																												Stw get_nvector_second.2865 get_nvector.2867 12
																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6969
																																																																																																																																																																																																																																																																																																																																																																																																																													Stw get_nvector_rect.2861 get_nvector.2867 8
																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6968
																																																																																																																																																																																																																																																																																																																																																																																																																														Stw get_nvector_plane.2863 get_nvector.2867 4
																																																																																																																																																																																																																																																																																																																																																																																																																														Let utexture.2870
																																																																																																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																Let l.6966
																																																																																																																																																																																																																																																																																																																																																																																																																																	SetL utexture.2870
																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6967
																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw l.6966 utexture.2870 0
																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6965
																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw texture_color.2498 utexture.2870 4
																																																																																																																																																																																																																																																																																																																																																																																																																																			Let add_light.2873
																																																																																																																																																																																																																																																																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																				Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																					Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																					Let l.6963
																																																																																																																																																																																																																																																																																																																																																																																																																																						SetL add_light.2873
																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6964
																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw l.6963 add_light.2873 0
																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6962
																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw texture_color.2498 add_light.2873 8
																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6961
																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw rgb.2500 add_light.2873 4
																																																																																																																																																																																																																																																																																																																																																																																																																																									Let trace_reflections.2877
																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 40
																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6959
																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL trace_reflections.2877
																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6960
																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6959 trace_reflections.2877 0
																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6958
																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw shadow_check_one_or_matrix.2830 trace_reflections.2877 32
																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6957
																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw reflections.2512 trace_reflections.2877 28
																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6956
																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw or_net.2491 trace_reflections.2877 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6955
																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw nvector.2497 trace_reflections.2877 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6954
																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw judge_intersection_fast.2859 trace_reflections.2877 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6953
																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw intsec_rectside.2493 trace_reflections.2877 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6952
																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw intersected_object_id.2496 trace_reflections.2877 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6951
																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw add_light.2873 trace_reflections.2877 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let trace_ray.2882
																																																																																																																																																																																																																																																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																							Add $fp 88
																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let l.6949
																																																																																																																																																																																																																																																																																																																																																																																																																																																								SetL trace_ray.2882
																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6950
																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw l.6949 trace_ray.2882 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6948
																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw utexture.2870 trace_ray.2882 80
																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6947
																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw trace_reflections.2877 trace_ray.2882 76
																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6946
																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw tmin.2494 trace_ray.2882 72
																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6945
																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw texture_color.2498 trace_ray.2882 68
																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6944
																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw startp.2504 trace_ray.2882 64
																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6943
																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw shadow_check_one_or_matrix.2830 trace_ray.2882 60
																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6942
																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw setup_startp.2796 trace_ray.2882 56
																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6941
																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw rgb.2500 trace_ray.2882 52
																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6940
																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw or_net.2491 trace_ray.2882 48
																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6939
																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw objects.2485 trace_ray.2882 44
																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6938
																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw nvector.2497 trace_ray.2882 40
																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6937
																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw n_reflections.2513 trace_ray.2882 36
																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6936
																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw light.2488 trace_ray.2882 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6935
																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw judge_intersection.2845 trace_ray.2882 28
																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6934
																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw intsec_rectside.2493 trace_ray.2882 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6933
																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw intersection_point.2495 trace_ray.2882 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6932
																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw intersected_object_id.2496 trace_ray.2882 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6931
																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw get_nvector.2867 trace_ray.2882 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6930
																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw beam.2489 trace_ray.2882 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6929
																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw add_light.2873 trace_ray.2882 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let trace_diffuse_ray.2888
																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Add $fp 56
																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let l.6927
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																SetL trace_diffuse_ray.2888
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6928
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw l.6927 trace_diffuse_ray.2888 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6926
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw utexture.2870 trace_diffuse_ray.2888 48
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6925
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw texture_color.2498 trace_diffuse_ray.2888 44
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6924
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw shadow_check_one_or_matrix.2830 trace_diffuse_ray.2888 40
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6923
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw or_net.2491 trace_diffuse_ray.2888 36
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6922
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw objects.2485 trace_diffuse_ray.2888 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6921
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw nvector.2497 trace_diffuse_ray.2888 28
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6920
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw light.2488 trace_diffuse_ray.2888 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6919
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw judge_intersection_fast.2859 trace_diffuse_ray.2888 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6918
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw intersection_point.2495 trace_diffuse_ray.2888 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6917
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw intersected_object_id.2496 trace_diffuse_ray.2888 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6916
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw get_nvector.2867 trace_diffuse_ray.2888 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6915
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw diffuse_ray.2499 trace_diffuse_ray.2888 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let iter_trace_diffuse_rays.2891
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let l.6913
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																SetL iter_trace_diffuse_rays.2891
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6914
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw l.6913 iter_trace_diffuse_rays.2891 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6912
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw trace_diffuse_ray.2888 iter_trace_diffuse_rays.2891 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let trace_diffuse_rays.2896
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let l.6910
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					SetL trace_diffuse_rays.2896
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6911
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw l.6910 trace_diffuse_rays.2896 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6909
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw setup_startp.2796 trace_diffuse_rays.2896 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6908
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw iter_trace_diffuse_rays.2891 trace_diffuse_rays.2896 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let trace_diffuse_ray_80percent.2900
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let l.6906
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											SetL trace_diffuse_ray_80percent.2900
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6907
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw l.6906 trace_diffuse_ray_80percent.2900 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6905
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw trace_diffuse_rays.2896 trace_diffuse_ray_80percent.2900 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6904
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw dirvecs.2510 trace_diffuse_ray_80percent.2900 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let calc_diffuse_using_1point.2904
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let l.6902
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	SetL calc_diffuse_using_1point.2904
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6903
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw l.6902 calc_diffuse_using_1point.2904 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6901
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw trace_diffuse_ray_80percent.2900 calc_diffuse_using_1point.2904 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6900
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw rgb.2500 calc_diffuse_using_1point.2904 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6899
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw diffuse_ray.2499 calc_diffuse_using_1point.2904 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let calc_diffuse_using_5points.2907
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let l.6897
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								SetL calc_diffuse_using_5points.2907
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6898
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw l.6897 calc_diffuse_using_5points.2907 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6896
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw rgb.2500 calc_diffuse_using_5points.2907 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6895
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw diffuse_ray.2499 calc_diffuse_using_5points.2907 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let do_without_neighbors.2913
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let l.6893
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														SetL do_without_neighbors.2913
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6894
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw l.6893 do_without_neighbors.2913 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6892
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw calc_diffuse_using_1point.2904 do_without_neighbors.2913 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let neighbors_exist.2916
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let l.6890
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			SetL neighbors_exist.2916
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6891
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw l.6890 neighbors_exist.2916 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6889
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw image_size.2501 neighbors_exist.2916 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let try_exploit_neighbors.2929
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let l.6887
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								SetL try_exploit_neighbors.2929
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6888
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw l.6887 try_exploit_neighbors.2929 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6886
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw do_without_neighbors.2913 try_exploit_neighbors.2929 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6885
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw calc_diffuse_using_5points.2907 try_exploit_neighbors.2929 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let write_ppm_header.2936
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let l.6883
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														SetL write_ppm_header.2936
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6884
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw l.6883 write_ppm_header.2936 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6882
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw image_size.2501 write_ppm_header.2936 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let write_rgb.2940
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let l.6880
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			SetL write_rgb.2940
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6881
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw l.6880 write_rgb.2940 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6879
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw rgb.2500 write_rgb.2940 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let pretrace_diffuse_rays.2942
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let l.6877
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								SetL pretrace_diffuse_rays.2942
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6878
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw l.6877 pretrace_diffuse_rays.2942 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6876
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw trace_diffuse_rays.2896 pretrace_diffuse_rays.2942 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6875
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw dirvecs.2510 pretrace_diffuse_rays.2942 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6874
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw diffuse_ray.2499 pretrace_diffuse_rays.2942 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let pretrace_pixels.2945
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Add $fp 40
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let l.6872
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															SetL pretrace_pixels.2945
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6873
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw l.6872 pretrace_pixels.2945 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6871
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw viewpoint.2487 pretrace_pixels.2945 36
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6870
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw trace_ray.2882 pretrace_pixels.2945 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6869
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw startp.2504 pretrace_pixels.2945 28
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6868
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw screenx_dir.2506 pretrace_pixels.2945 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6867
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw scan_pitch.2503 pretrace_pixels.2945 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6866
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw rgb.2500 pretrace_pixels.2945 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6865
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw ptrace_dirvec.2509 pretrace_pixels.2945 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6864
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw pretrace_diffuse_rays.2942 pretrace_pixels.2945 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6863
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw image_center.2502 pretrace_pixels.2945 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let pretrace_line.2952
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6861
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL pretrace_line.2952
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6862
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6861 pretrace_line.2952 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6860
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw screenz_dir.2508 pretrace_line.2952 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6859
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw screeny_dir.2507 pretrace_line.2952 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6858
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw scan_pitch.2503 pretrace_line.2952 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6857
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw pretrace_pixels.2945 pretrace_line.2952 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6856
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw image_size.2501 pretrace_line.2952 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6855
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw image_center.2502 pretrace_line.2952 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let scan_pixel.2956
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Add $fp 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let l.6853
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						SetL scan_pixel.2956
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6854
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw l.6853 scan_pixel.2956 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6852
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw write_rgb.2940 scan_pixel.2956 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6851
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw try_exploit_neighbors.2929 scan_pixel.2956 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6850
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw rgb.2500 scan_pixel.2956 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6849
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw neighbors_exist.2916 scan_pixel.2956 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6848
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw image_size.2501 scan_pixel.2956 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6847
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw do_without_neighbors.2913 scan_pixel.2956 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let scan_line.2962
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let l.6845
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																SetL scan_line.2962
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6846
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw l.6845 scan_line.2962 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6844
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw scan_pixel.2956 scan_line.2962 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6843
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw pretrace_line.2952 scan_line.2962 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6842
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw image_size.2501 scan_line.2962 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let create_pixelline.2975
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let l.6840
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							SetL create_pixelline.2975
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6841
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw l.6840 create_pixelline.2975 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6839
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw image_size.2501 create_pixelline.2975 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let calc_dirvec.2982
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6837
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL calc_dirvec.2982
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6838
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6837 calc_dirvec.2982 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6836
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw dirvecs.2510 calc_dirvec.2982 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let calc_dirvecs.2990
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let l.6834
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	SetL calc_dirvecs.2990
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6835
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw l.6834 calc_dirvecs.2990 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6833
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw calc_dirvec.2982 calc_dirvecs.2990 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let calc_dirvec_rows.2995
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let l.6831
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						SetL calc_dirvec_rows.2995
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6832
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw l.6831 calc_dirvec_rows.2995 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6830
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw calc_dirvecs.2990 calc_dirvec_rows.2995 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let create_dirvec.2999
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let l.6828
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											SetL create_dirvec.2999
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6829
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw l.6828 create_dirvec.2999 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6827
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw n_objects.2484 create_dirvec.2999 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let create_dirvec_elements.3001
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let l.6825
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																SetL create_dirvec_elements.3001
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6826
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw l.6825 create_dirvec_elements.3001 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6824
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw create_dirvec.2999 create_dirvec_elements.3001 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let create_dirvecs.3004
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let l.6822
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					SetL create_dirvecs.3004
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6823
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw l.6822 create_dirvecs.3004 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6821
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw dirvecs.2510 create_dirvecs.3004 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6820
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw create_dirvec_elements.3001 create_dirvecs.3004 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6819
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw create_dirvec.2999 create_dirvecs.3004 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let init_dirvec_constants.3006
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6817
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL init_dirvec_constants.3006
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6818
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6817 init_dirvec_constants.3006 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6816
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw setup_dirvec_constants.2791 init_dirvec_constants.3006 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let init_vecset_constants.3009
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let l.6814
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	SetL init_vecset_constants.3009
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6815
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw l.6814 init_vecset_constants.3009 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6813
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw init_dirvec_constants.3006 init_vecset_constants.3009 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6812
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw dirvecs.2510 init_vecset_constants.3009 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let init_dirvecs.3011
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let l.6810
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							SetL init_dirvecs.3011
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6811
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw l.6810 init_dirvecs.3011 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6809
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw init_vecset_constants.3009 init_dirvecs.3011 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Tu6808
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Stw create_dirvecs.3004 init_dirvecs.3011 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6807
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw calc_dirvec_rows.2995 init_dirvecs.3011 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let add_reflection.3013
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let l.6805
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														SetL add_reflection.3013
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6806
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw l.6805 add_reflection.3013 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6804
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw setup_dirvec_constants.2791 add_reflection.3013 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6803
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw reflections.2512 add_reflection.3013 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6802
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw create_dirvec.2999 add_reflection.3013 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let setup_rect_reflection.3020
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let l.6800
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					SetL setup_rect_reflection.3020
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6801
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw l.6800 setup_rect_reflection.3020 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6799
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw n_reflections.2513 setup_rect_reflection.3020 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6798
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw light.2488 setup_rect_reflection.3020 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6797
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw add_reflection.3013 setup_rect_reflection.3020 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let setup_surface_reflection.3023
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let l.6795
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												SetL setup_surface_reflection.3023
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6796
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw l.6795 setup_surface_reflection.3023 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6794
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw n_reflections.2513 setup_surface_reflection.3023 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6793
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw light.2488 setup_surface_reflection.3023 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6792
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw add_reflection.3013 setup_surface_reflection.3023 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let setup_reflections.3026
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Add $fp 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let l.6790
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			SetL setup_reflections.3026
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6791
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw l.6790 setup_reflections.3026 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6789
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw setup_surface_reflection.3023 setup_reflections.3026 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6788
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw setup_rect_reflection.3020 setup_reflections.3026 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6787
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw objects.2485 setup_reflections.3026 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let rt.3028
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Mr $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let $fp
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Add $fp 64
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let l.6785
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										SetL rt.3028
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Tu6786
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Stw l.6785 rt.3028 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu6784
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Stw write_ppm_header.2936 rt.3028 56
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Tu6783
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Stw setup_reflections.3026 rt.3028 52
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Let Tu6782
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Stw setup_dirvec_constants.2791 rt.3028 48
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														Let Tu6781
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Stw scan_pitch.2503 rt.3028 44
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															Let Tu6780
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Stw scan_line.2962 rt.3028 40
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																Let Tu6779
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Stw read_parameter.2693 rt.3028 36
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	Let Tu6778
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Stw pretrace_line.2952 rt.3028 32
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		Let Tu6777
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Stw n_objects.2484 rt.3028 28
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			Let Tu6776
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Stw light_dirvec.2511 rt.3028 24
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				Let Tu6775
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Stw light.2488 rt.3028 20
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					Let Tu6774
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Stw init_dirvecs.3011 rt.3028 16
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						Let Tu6773
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Stw image_size.2501 rt.3028 12
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							Let Tu6772
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Stw image_center.2502 rt.3028 8
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								Let Tu6771
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Stw create_pixelline.2975 rt.3028 4
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									Let Ti326.3033
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Li 128
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										Let Ti327.3034
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Li 128
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											Let Tu240.3031
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												CallCls rt.3028 (rt.3028) d:Ti326.3033 Ti327.3034 f:
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												Let Ti328.3032
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Li 0
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													Ans
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														CallCls min_caml_print_int d:Ti328.3032 f:
