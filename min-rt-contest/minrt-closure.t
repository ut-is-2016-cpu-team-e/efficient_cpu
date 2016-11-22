toplevel
name : fneg.2514 args : x.2515  formal_fv :  
FNeg x.2515
name : fispos.2516 args : x.2517  formal_fv :  
Let Td2483.6053
	Float:0.000000
	IfLE x.2517 Td2483.6053
		Int:0
		Int:1
name : fisneg.2518 args : x.2519  formal_fv :  
Let Td2482.6052
	Float:0.000000
	IfLE Td2482.6052 x.2519
		Int:0
		Int:1
name : fiszero.2520 args : x.2521  formal_fv :  
Let Td2481.6051
	Float:0.000000
	IfEq x.2521 Td2481.6051
		Int:1
		Int:0
name : fhalf.2522 args : x.2523  formal_fv :  
Let Td2480.6050
	Float:0.500000
	FMul x.2523 Td2480.6050
name : fsqr.2524 args : x.2525  formal_fv :  
FMul x.2525 x.2525
name : fabs.2526 args : x.2527  formal_fv :  
Let Td2479.6049
	Float:0.000000
	IfLE Td2479.6049 x.2527
		Var x.2527
		AppDir fneg.2514 x.2527 )
name : fless.2528 args : x.2529 y.2530  formal_fv :  
Let z.6048
	FSub x.2529 y.2530
	AppDir fisneg.2518 z.6048 )
name : fflag.2531 args : a.2532  formal_fv :  
Let Td2477.6046
	Float:0.000000
	IfLE Td2477.6046 a.2532
		Int:1
		Int:-1
name : itof_ret_sub.6027 args : a.6028 b.6029 c.6030  formal_fv :  
Let a_sub.6033
	ShiftR1 a.6028
	Let Ti2468.6034
		Int:0
		IfEq a.6028 Ti2468.6034
			Var b.6029
			Let Ti2469.6042
				Sub a.6028 a_sub.6033
				Let Ti2470.6035
					Sub Ti2469.6042 a_sub.6033
					Let Ti2471.6036
						Int:0
						IfLE Ti2470.6035 Ti2471.6036
							Let Td2472.6041
								Float:2.000000
								Let Td2473.6040
									FMul c.6030 Td2472.6041
									AppDir itof_ret_sub.6027 a_sub.6033 b.6029 Td2473.6040 )
							Let Td2474.6037
								FAdd b.6029 c.6030
								Let Td2475.6039
									Float:2.000000
									Let Td2476.6038
										FMul c.6030 Td2475.6039
										AppDir itof_ret_sub.6027 a_sub.6033 Td2474.6037 Td2476.6038 )
name : itof_ret.6009 args : a.6010  formal_fv :  
Let Td2466.6031
	Float:0.000000
	Let Td2467.6032
		Float:1.000000
		AppDir itof_ret_sub.6027 a.6010 Td2466.6031 Td2467.6032 )
name : itof_big.6011 args : a.6012 b.6013  formal_fv :  
Let Ti2462.6026
	Int:8388608
	Let a_sub.6021
		Sub a.6012 Ti2462.6026
		Let Td2463.6025
			Float:8388608.000000
			Let b_sub.6022
				FAdd b.6013 Td2463.6025
				Let Ti2464.6023
					Int:8388608
					IfLE Ti2464.6023 a_sub.6021
						AppDir itof_big.6011 a_sub.6021 b_sub.6022 )
						Let Td2465.6024
							AppDir itof_ret.6009 a_sub.6021 )
							FAdd b_sub.6022 Td2465.6024
name : float_of_int.2533 args : a.2534  formal_fv :  
Let Ti2452.6045
	Int:0
	Let abs.6007
		IfLE a.2534 Ti2452.6045
			Neg a.2534
			Var a.2534
		Let Ti2453.6043
			Int:0
			Let flag.6008
				IfLE a.2534 Ti2453.6043
					Int:-1
					Int:1
				Let Ti2455.6014
					Int:1
					IfEq flag.6008 Ti2455.6014
						Let Ti2456.6019
							Int:8388608
							IfLE abs.6007 Ti2456.6019
								AppDir itof_ret.6009 abs.6007 )
								Let Td2457.6020
									Float:0.000000
									AppDir itof_big.6011 abs.6007 Td2457.6020 )
						Let Ti2458.6015
							Int:8388608
							IfLE abs.6007 Ti2458.6015
								Let Td2459.6018
									AppDir itof_ret.6009 abs.6007 )
									FNeg Td2459.6018
								Let Td2460.6017
									Float:0.000000
									Let Td2461.6016
										AppDir itof_big.6011 abs.6007 Td2460.6017 )
										FNeg Td2461.6016
name : floor.2535 args : a.2536  formal_fv :  
Let abs.5991
	AppDir fabs.2526 a.2536 )
	Let flag.5992
		AppDir fflag.2531 a.2536 )
		Let Td2441.6005
			Float:32767.000000
			Let Td2442.6006
				FReciprocal Td2441.6005
				Let Td2443.6004
					FMul a.2536 Td2442.6006
					Let Ti2444.6003
						AppDir min_caml_int_of_float Td2443.6004 )
						Let c.5993
							AppDir float_of_int.2533 Ti2444.6003 )
							Let Td2445.6002
								Float:32767.000000
								Let Td2446.6001
									FMul Td2445.6002 c.5993
									Let kernel.5994
										FSub abs.5991 Td2446.6001
										Let Td2447.6000
											Float:32767.000000
											Let Td2448.5997
												FMul c.5993 Td2447.6000
												Let Ti2449.5999
													AppDir min_caml_int_of_float kernel.5994 )
													Let Td2450.5998
														AppDir float_of_int.2533 Ti2449.5999 )
														Let ans_abs.5995
															FAdd Td2448.5997 Td2450.5998
															Let Ti2451.5996
																Int:1
																IfEq flag.5992 Ti2451.5996
																	Var ans_abs.5995
																	FNeg ans_abs.5995
name : xor.2544 args : x.2545 y.2546  formal_fv :  
Let Ti2436.5986
	Int:0
	IfEq x.2545 Ti2436.5986
		Var y.2546
		Let Ti2437.5987
			Int:0
			IfEq y.2546 Ti2437.5987
				Int:1
				Int:0
name : sgn.2547 args : x.2548  formal_fv :  
Let Tb2432.5982
	AppDir fiszero.2520 x.2548 )
	Let Ti2433.5983
		Int:0
		IfEq Tb2432.5982 Ti2433.5983
			Let Tb2434.5984
				AppDir fispos.2516 x.2548 )
				Let Ti2435.5985
					Int:0
					IfEq Tb2434.5984 Ti2435.5985
						Float:-1.000000
						Float:1.000000
			Float:0.000000
name : fneg_cond.2549 args : cond.2550 x.2551  formal_fv :  
Let Ti2431.5981
	Int:0
	IfEq cond.2550 Ti2431.5981
		AppDir fneg.2514 x.2551 )
		Var x.2551
name : add_mod5.2552 args : x.2553 y.2554  formal_fv :  
Let sum.5978
	Add x.2553 y.2554
	Let Ti2429.5979
		Int:5
		IfLE Ti2429.5979 sum.5978
			Let Ti2430.5980
				Int:5
				Sub sum.5978 Ti2430.5980
			Var sum.5978
name : vecset.2555 args : v.2556 x.2557 y.2558 z.2559  formal_fv :  
Let Ti2426.5977
	Int:0
	Let Tu2.5973
		Put v.2556 Ti2426.5977 x.2557
		Let Ti2427.5976
			Int:1
			Let Tu1.5974
				Put v.2556 Ti2427.5976 y.2558
				Let Ti2428.5975
					Int:2
					Put v.2556 Ti2428.5975 z.2559
name : vecfill.2560 args : v.2561 elem.2562  formal_fv :  
Let Ti2423.5972
	Int:0
	Let Tu4.5968
		Put v.2561 Ti2423.5972 elem.2562
		Let Ti2424.5971
			Int:1
			Let Tu3.5969
				Put v.2561 Ti2424.5971 elem.2562
				Let Ti2425.5970
					Int:2
					Put v.2561 Ti2425.5970 elem.2562
name : vecbzero.2563 args : v.2564  formal_fv :  
Let Td2422.5967
	Float:0.000000
	AppDir vecfill.2560 v.2564 Td2422.5967 )
name : veccpy.2565 args : dest.2566 src.2567  formal_fv :  
Let Ti2413.5964
	Int:0
	Let Ti2414.5966
		Int:0
		Let Td2415.5965
			Get src.2567 Ti2414.5966
			Let Tu6.5956
				Put dest.2566 Ti2413.5964 Td2415.5965
				Let Ti2416.5961
					Int:1
					Let Ti2417.5963
						Int:1
						Let Td2418.5962
							Get src.2567 Ti2417.5963
							Let Tu5.5957
								Put dest.2566 Ti2416.5961 Td2418.5962
								Let Ti2419.5958
									Int:2
									Let Ti2420.5960
										Int:2
										Let Td2421.5959
											Get src.2567 Ti2420.5960
											Put dest.2566 Ti2419.5958 Td2421.5959
name : vecunit_sgn.2573 args : v.2574 inv.2575  formal_fv :  
Let Ti2338.5907
	Int:0
	Let Td2339.5906
		Get v.2574 Ti2338.5907
		Let Td2340.5902
			AppDir fsqr.2524 Td2339.5906 )
			Let Ti2341.5905
				Int:1
				Let Td2342.5904
					Get v.2574 Ti2341.5905
					Let Td2343.5903
						AppDir fsqr.2524 Td2342.5904 )
						Let Td2344.5898
							FAdd Td2340.5902 Td2343.5903
							Let Ti2345.5901
								Int:2
								Let Td2346.5900
									Get v.2574 Ti2345.5901
									Let Td2347.5899
										AppDir fsqr.2524 Td2346.5900 )
										Let Td2348.5897
											FAdd Td2344.5898 Td2347.5899
											Let l.5874
												AppDir min_caml_sqrt Td2348.5897 )
												Let Tb2349.5890
													AppDir fiszero.2520 l.5874 )
													Let Ti2350.5891
														Int:0
														Let il.5875
															IfEq Tb2349.5890 Ti2350.5891
																Let Ti2351.5892
																	Int:0
																	IfEq inv.2575 Ti2351.5892
																		Let Td2352.5895
																			Float:1.000000
																			Let Td2353.5896
																				FReciprocal l.5874
																				FMul Td2352.5895 Td2353.5896
																		Let Td2354.5893
																			Float:-1.000000
																			Let Td2355.5894
																				FReciprocal l.5874
																				FMul Td2354.5893 Td2355.5894
																Float:1.000000
															Let Ti2356.5886
																Int:0
																Let Ti2357.5889
																	Int:0
																	Let Td2358.5888
																		Get v.2574 Ti2357.5889
																		Let Td2359.5887
																			FMul Td2358.5888 il.5875
																			Let Tu10.5876
																				Put v.2574 Ti2356.5886 Td2359.5887
																				Let Ti2360.5882
																					Int:1
																					Let Ti2361.5885
																						Int:1
																						Let Td2362.5884
																							Get v.2574 Ti2361.5885
																							Let Td2363.5883
																								FMul Td2362.5884 il.5875
																								Let Tu9.5877
																									Put v.2574 Ti2360.5882 Td2363.5883
																									Let Ti2364.5878
																										Int:2
																										Let Ti2365.5881
																											Int:2
																											Let Td2366.5880
																												Get v.2574 Ti2365.5881
																												Let Td2367.5879
																													FMul Td2366.5880 il.5875
																													Put v.2574 Ti2364.5878 Td2367.5879
name : veciprod.2576 args : v.2577 w.2578  formal_fv :  
Let Ti2322.5873
	Int:0
	Let Td2323.5870
		Get v.2577 Ti2322.5873
		Let Ti2324.5872
			Int:0
			Let Td2325.5871
				Get w.2578 Ti2324.5872
				Let Td2326.5864
					FMul Td2323.5870 Td2325.5871
					Let Ti2327.5869
						Int:1
						Let Td2328.5866
							Get v.2577 Ti2327.5869
							Let Ti2329.5868
								Int:1
								Let Td2330.5867
									Get w.2578 Ti2329.5868
									Let Td2331.5865
										FMul Td2328.5866 Td2330.5867
										Let Td2332.5858
											FAdd Td2326.5864 Td2331.5865
											Let Ti2333.5863
												Int:2
												Let Td2334.5860
													Get v.2577 Ti2333.5863
													Let Ti2335.5862
														Int:2
														Let Td2336.5861
															Get w.2578 Ti2335.5862
															Let Td2337.5859
																FMul Td2334.5860 Td2336.5861
																FAdd Td2332.5858 Td2337.5859
name : veciprod2.2579 args : v.2580 w0.2581 w1.2582 w2.2583  formal_fv :  
Let Ti2312.5857
	Int:0
	Let Td2313.5856
		Get v.2580 Ti2312.5857
		Let Td2314.5852
			FMul Td2313.5856 w0.2581
			Let Ti2315.5855
				Int:1
				Let Td2316.5854
					Get v.2580 Ti2315.5855
					Let Td2317.5853
						FMul Td2316.5854 w1.2582
						Let Td2318.5848
							FAdd Td2314.5852 Td2317.5853
							Let Ti2319.5851
								Int:2
								Let Td2320.5850
									Get v.2580 Ti2319.5851
									Let Td2321.5849
										FMul Td2320.5850 w2.2583
										FAdd Td2318.5848 Td2321.5849
name : vecaccum.2584 args : dest.2585 scale.2586 v.2587  formal_fv :  
Let Ti2291.5841
	Int:0
	Let Ti2292.5847
		Int:0
		Let Td2293.5843
			Get dest.2585 Ti2292.5847
			Let Ti2294.5846
				Int:0
				Let Td2295.5845
					Get v.2587 Ti2294.5846
					Let Td2296.5844
						FMul scale.2586 Td2295.5845
						Let Td2297.5842
							FAdd Td2293.5843 Td2296.5844
							Let Tu12.5825
								Put dest.2585 Ti2291.5841 Td2297.5842
								Let Ti2298.5834
									Int:1
									Let Ti2299.5840
										Int:1
										Let Td2300.5836
											Get dest.2585 Ti2299.5840
											Let Ti2301.5839
												Int:1
												Let Td2302.5838
													Get v.2587 Ti2301.5839
													Let Td2303.5837
														FMul scale.2586 Td2302.5838
														Let Td2304.5835
															FAdd Td2300.5836 Td2303.5837
															Let Tu11.5826
																Put dest.2585 Ti2298.5834 Td2304.5835
																Let Ti2305.5827
																	Int:2
																	Let Ti2306.5833
																		Int:2
																		Let Td2307.5829
																			Get dest.2585 Ti2306.5833
																			Let Ti2308.5832
																				Int:2
																				Let Td2309.5831
																					Get v.2587 Ti2308.5832
																					Let Td2310.5830
																						FMul scale.2586 Td2309.5831
																						Let Td2311.5828
																							FAdd Td2307.5829 Td2310.5830
																							Put dest.2585 Ti2305.5827 Td2311.5828
name : vecadd.2588 args : dest.2589 v.2590  formal_fv :  
Let Ti2273.5819
	Int:0
	Let Ti2274.5824
		Int:0
		Let Td2275.5821
			Get dest.2589 Ti2274.5824
			Let Ti2276.5823
				Int:0
				Let Td2277.5822
					Get v.2590 Ti2276.5823
					Let Td2278.5820
						FAdd Td2275.5821 Td2277.5822
						Let Tu14.5805
							Put dest.2589 Ti2273.5819 Td2278.5820
							Let Ti2279.5813
								Int:1
								Let Ti2280.5818
									Int:1
									Let Td2281.5815
										Get dest.2589 Ti2280.5818
										Let Ti2282.5817
											Int:1
											Let Td2283.5816
												Get v.2590 Ti2282.5817
												Let Td2284.5814
													FAdd Td2281.5815 Td2283.5816
													Let Tu13.5806
														Put dest.2589 Ti2279.5813 Td2284.5814
														Let Ti2285.5807
															Int:2
															Let Ti2286.5812
																Int:2
																Let Td2287.5809
																	Get dest.2589 Ti2286.5812
																	Let Ti2288.5811
																		Int:2
																		Let Td2289.5810
																			Get v.2590 Ti2288.5811
																			Let Td2290.5808
																				FAdd Td2287.5809 Td2289.5810
																				Put dest.2589 Ti2285.5807 Td2290.5808
name : vecscale.2594 args : dest.2595 scale.2596  formal_fv :  
Let Ti2243.5781
	Int:0
	Let Ti2244.5784
		Int:0
		Let Td2245.5783
			Get dest.2595 Ti2244.5784
			Let Td2246.5782
				FMul Td2245.5783 scale.2596
				Let Tu18.5771
					Put dest.2595 Ti2243.5781 Td2246.5782
					Let Ti2247.5777
						Int:1
						Let Ti2248.5780
							Int:1
							Let Td2249.5779
								Get dest.2595 Ti2248.5780
								Let Td2250.5778
									FMul Td2249.5779 scale.2596
									Let Tu17.5772
										Put dest.2595 Ti2247.5777 Td2250.5778
										Let Ti2251.5773
											Int:2
											Let Ti2252.5776
												Int:2
												Let Td2253.5775
													Get dest.2595 Ti2252.5776
													Let Td2254.5774
														FMul Td2253.5775 scale.2596
														Put dest.2595 Ti2251.5773 Td2254.5774
name : vecaccumv.2597 args : dest.2598 v.2599 w.2600  formal_fv :  
Let Ti2216.5762
	Int:0
	Let Ti2217.5770
		Int:0
		Let Td2218.5764
			Get dest.2598 Ti2217.5770
			Let Ti2219.5769
				Int:0
				Let Td2220.5766
					Get v.2599 Ti2219.5769
					Let Ti2221.5768
						Int:0
						Let Td2222.5767
							Get w.2600 Ti2221.5768
							Let Td2223.5765
								FMul Td2220.5766 Td2222.5767
								Let Td2224.5763
									FAdd Td2218.5764 Td2223.5765
									Let Tu20.5742
										Put dest.2598 Ti2216.5762 Td2224.5763
										Let Ti2225.5753
											Int:1
											Let Ti2226.5761
												Int:1
												Let Td2227.5755
													Get dest.2598 Ti2226.5761
													Let Ti2228.5760
														Int:1
														Let Td2229.5757
															Get v.2599 Ti2228.5760
															Let Ti2230.5759
																Int:1
																Let Td2231.5758
																	Get w.2600 Ti2230.5759
																	Let Td2232.5756
																		FMul Td2229.5757 Td2231.5758
																		Let Td2233.5754
																			FAdd Td2227.5755 Td2232.5756
																			Let Tu19.5743
																				Put dest.2598 Ti2225.5753 Td2233.5754
																				Let Ti2234.5744
																					Int:2
																					Let Ti2235.5752
																						Int:2
																						Let Td2236.5746
																							Get dest.2598 Ti2235.5752
																							Let Ti2237.5751
																								Int:2
																								Let Td2238.5748
																									Get v.2599 Ti2237.5751
																									Let Ti2239.5750
																										Int:2
																										Let Td2240.5749
																											Get w.2600 Ti2239.5750
																											Let Td2241.5747
																												FMul Td2238.5748 Td2240.5749
																												Let Td2242.5745
																													FAdd Td2236.5746 Td2241.5747
																													Put dest.2598 Ti2234.5744 Td2242.5745
name : o_texturetype.2601 args : m.2602  formal_fv :  
LetTuple (m_tex.5731,xm_shape.5732,xm_surface.5733,xm_isrot.5734,xm_abc.5735,xm_xyz.5736,xm_invert.5737,xm_surfparams.5738,xm_color.5739,xm_rot123.5740,xm_ctbl.5741,)
 m.2602
	Var m_tex.5731
name : o_form.2603 args : m.2604  formal_fv :  
LetTuple (xm_tex.5720,m_shape.5721,xm_surface.5722,xm_isrot.5723,xm_abc.5724,xm_xyz.5725,xm_invert.5726,xm_surfparams.5727,xm_color.5728,xm_rot123.5729,xm_ctbl.5730,)
 m.2604
	Var m_shape.5721
name : o_reflectiontype.2605 args : m.2606  formal_fv :  
LetTuple (xm_tex.5709,xm_shape.5710,m_surface.5711,xm_isrot.5712,xm_abc.5713,xm_xyz.5714,xm_invert.5715,xm_surfparams.5716,xm_color.5717,xm_rot123.5718,xm_ctbl.5719,)
 m.2606
	Var m_surface.5711
name : o_isinvert.2607 args : m.2608  formal_fv :  
LetTuple (xm_tex.5698,xm_shape.5699,xm_surface.5700,xm_isrot.5701,xm_abc.5702,xm_xyz.5703,m_invert.5704,xm_surfparams.5705,xm_color.5706,xm_rot123.5707,xm_ctbl.5708,)
 m.2608
	Var m_invert.5704
name : o_isrot.2609 args : m.2610  formal_fv :  
LetTuple (xm_tex.5687,xm_shape.5688,xm_surface.5689,m_isrot.5690,xm_abc.5691,xm_xyz.5692,xm_invert.5693,xm_surfparams.5694,xm_color.5695,xm_rot123.5696,xm_ctbl.5697,)
 m.2610
	Var m_isrot.5690
name : o_param_a.2611 args : m.2612  formal_fv :  
LetTuple (xm_tex.5675,xm_shape.5676,xm_surface.5677,xm_isrot.5678,m_abc.5679,xm_xyz.5680,xm_invert.5681,xm_surfparams.5682,xm_color.5683,xm_rot123.5684,xm_ctbl.5685,)
 m.2612
	Let Ti2215.5686
		Int:0
		Get m_abc.5679 Ti2215.5686
name : o_param_b.2613 args : m.2614  formal_fv :  
LetTuple (xm_tex.5663,xm_shape.5664,xm_surface.5665,xm_isrot.5666,m_abc.5667,xm_xyz.5668,xm_invert.5669,xm_surfparams.5670,xm_color.5671,xm_rot123.5672,xm_ctbl.5673,)
 m.2614
	Let Ti2214.5674
		Int:1
		Get m_abc.5667 Ti2214.5674
name : o_param_c.2615 args : m.2616  formal_fv :  
LetTuple (xm_tex.5651,xm_shape.5652,xm_surface.5653,xm_isrot.5654,m_abc.5655,xm_xyz.5656,xm_invert.5657,xm_surfparams.5658,xm_color.5659,xm_rot123.5660,xm_ctbl.5661,)
 m.2616
	Let Ti2213.5662
		Int:2
		Get m_abc.5655 Ti2213.5662
name : o_param_abc.2617 args : m.2618  formal_fv :  
LetTuple (xm_tex.5640,xm_shape.5641,xm_surface.5642,xm_isrot.5643,m_abc.5644,xm_xyz.5645,xm_invert.5646,xm_surfparams.5647,xm_color.5648,xm_rot123.5649,xm_ctbl.5650,)
 m.2618
	Var m_abc.5644
name : o_param_x.2619 args : m.2620  formal_fv :  
LetTuple (xm_tex.5628,xm_shape.5629,xm_surface.5630,xm_isrot.5631,xm_abc.5632,m_xyz.5633,xm_invert.5634,xm_surfparams.5635,xm_color.5636,xm_rot123.5637,xm_ctbl.5638,)
 m.2620
	Let Ti2212.5639
		Int:0
		Get m_xyz.5633 Ti2212.5639
name : o_param_y.2621 args : m.2622  formal_fv :  
LetTuple (xm_tex.5616,xm_shape.5617,xm_surface.5618,xm_isrot.5619,xm_abc.5620,m_xyz.5621,xm_invert.5622,xm_surfparams.5623,xm_color.5624,xm_rot123.5625,xm_ctbl.5626,)
 m.2622
	Let Ti2211.5627
		Int:1
		Get m_xyz.5621 Ti2211.5627
name : o_param_z.2623 args : m.2624  formal_fv :  
LetTuple (xm_tex.5604,xm_shape.5605,xm_surface.5606,xm_isrot.5607,xm_abc.5608,m_xyz.5609,xm_invert.5610,xm_surfparams.5611,xm_color.5612,xm_rot123.5613,xm_ctbl.5614,)
 m.2624
	Let Ti2210.5615
		Int:2
		Get m_xyz.5609 Ti2210.5615
name : o_diffuse.2625 args : m.2626  formal_fv :  
LetTuple (xm_tex.5592,xm_shape.5593,xm_surface.5594,xm_isrot.5595,xm_abc.5596,xm_xyz.5597,xm_invert.5598,m_surfparams.5599,xm_color.5600,xm_rot123.5601,xm_ctbl.5602,)
 m.2626
	Let Ti2209.5603
		Int:0
		Get m_surfparams.5599 Ti2209.5603
name : o_hilight.2627 args : m.2628  formal_fv :  
LetTuple (xm_tex.5580,xm_shape.5581,xm_surface.5582,xm_isrot.5583,xm_abc.5584,xm_xyz.5585,xm_invert.5586,m_surfparams.5587,xm_color.5588,xm_rot123.5589,xm_ctbl.5590,)
 m.2628
	Let Ti2208.5591
		Int:1
		Get m_surfparams.5587 Ti2208.5591
name : o_color_red.2629 args : m.2630  formal_fv :  
LetTuple (xm_tex.5568,xm_shape.5569,m_surface.5570,xm_isrot.5571,xm_abc.5572,xm_xyz.5573,xm_invert.5574,xm_surfparams.5575,m_color.5576,xm_rot123.5577,xm_ctbl.5578,)
 m.2630
	Let Ti2207.5579
		Int:0
		Get m_color.5576 Ti2207.5579
name : o_color_green.2631 args : m.2632  formal_fv :  
LetTuple (xm_tex.5556,xm_shape.5557,m_surface.5558,xm_isrot.5559,xm_abc.5560,xm_xyz.5561,xm_invert.5562,xm_surfparams.5563,m_color.5564,xm_rot123.5565,xm_ctbl.5566,)
 m.2632
	Let Ti2206.5567
		Int:1
		Get m_color.5564 Ti2206.5567
name : o_color_blue.2633 args : m.2634  formal_fv :  
LetTuple (xm_tex.5544,xm_shape.5545,m_surface.5546,xm_isrot.5547,xm_abc.5548,xm_xyz.5549,xm_invert.5550,xm_surfparams.5551,m_color.5552,xm_rot123.5553,xm_ctbl.5554,)
 m.2634
	Let Ti2205.5555
		Int:2
		Get m_color.5552 Ti2205.5555
name : o_param_r1.2635 args : m.2636  formal_fv :  
LetTuple (xm_tex.5532,xm_shape.5533,xm_surface.5534,xm_isrot.5535,xm_abc.5536,xm_xyz.5537,xm_invert.5538,xm_surfparams.5539,xm_color.5540,m_rot123.5541,xm_ctbl.5542,)
 m.2636
	Let Ti2204.5543
		Int:0
		Get m_rot123.5541 Ti2204.5543
name : o_param_r2.2637 args : m.2638  formal_fv :  
LetTuple (xm_tex.5520,xm_shape.5521,xm_surface.5522,xm_isrot.5523,xm_abc.5524,xm_xyz.5525,xm_invert.5526,xm_surfparams.5527,xm_color.5528,m_rot123.5529,xm_ctbl.5530,)
 m.2638
	Let Ti2203.5531
		Int:1
		Get m_rot123.5529 Ti2203.5531
name : o_param_r3.2639 args : m.2640  formal_fv :  
LetTuple (xm_tex.5508,xm_shape.5509,xm_surface.5510,xm_isrot.5511,xm_abc.5512,xm_xyz.5513,xm_invert.5514,xm_surfparams.5515,xm_color.5516,m_rot123.5517,xm_ctbl.5518,)
 m.2640
	Let Ti2202.5519
		Int:2
		Get m_rot123.5517 Ti2202.5519
name : o_param_ctbl.2641 args : m.2642  formal_fv :  
LetTuple (xm_tex.5497,xm_shape.5498,xm_surface.5499,xm_isrot.5500,xm_abc.5501,xm_xyz.5502,xm_invert.5503,xm_surfparams.5504,xm_color.5505,xm_rot123.5506,m_ctbl.5507,)
 m.2642
	Var m_ctbl.5507
name : p_rgb.2643 args : pixel.2644  formal_fv :  
LetTuple (m_rgb.5489,xm_isect_ps.5490,xm_sids.5491,xm_cdif.5492,xm_engy.5493,xm_r20p.5494,xm_gid.5495,xm_nvectors.5496,)
 pixel.2644
	Var m_rgb.5489
name : p_intersection_points.2645 args : pixel.2646  formal_fv :  
LetTuple (xm_rgb.5481,m_isect_ps.5482,xm_sids.5483,xm_cdif.5484,xm_engy.5485,xm_r20p.5486,xm_gid.5487,xm_nvectors.5488,)
 pixel.2646
	Var m_isect_ps.5482
name : p_surface_ids.2647 args : pixel.2648  formal_fv :  
LetTuple (xm_rgb.5473,xm_isect_ps.5474,m_sids.5475,xm_cdif.5476,xm_engy.5477,xm_r20p.5478,xm_gid.5479,xm_nvectors.5480,)
 pixel.2648
	Var m_sids.5475
name : p_calc_diffuse.2649 args : pixel.2650  formal_fv :  
LetTuple (xm_rgb.5465,xm_isect_ps.5466,xm_sids.5467,m_cdif.5468,xm_engy.5469,xm_r20p.5470,xm_gid.5471,xm_nvectors.5472,)
 pixel.2650
	Var m_cdif.5468
name : p_energy.2651 args : pixel.2652  formal_fv :  
LetTuple (xm_rgb.5457,xm_isect_ps.5458,xm_sids.5459,xm_cdif.5460,m_engy.5461,xm_r20p.5462,xm_gid.5463,xm_nvectors.5464,)
 pixel.2652
	Var m_engy.5461
name : p_received_ray_20percent.2653 args : pixel.2654  formal_fv :  
LetTuple (xm_rgb.5449,xm_isect_ps.5450,xm_sids.5451,xm_cdif.5452,xm_engy.5453,m_r20p.5454,xm_gid.5455,xm_nvectors.5456,)
 pixel.2654
	Var m_r20p.5454
name : p_group_id.2655 args : pixel.2656  formal_fv :  
LetTuple (xm_rgb.5440,xm_isect_ps.5441,xm_sids.5442,xm_cdif.5443,xm_engy.5444,xm_r20p.5445,m_gid.5446,xm_nvectors.5447,)
 pixel.2656
	Let Ti2201.5448
		Int:0
		Get m_gid.5446 Ti2201.5448
name : p_set_group_id.2657 args : pixel.2658 id.2659  formal_fv :  
LetTuple (xm_rgb.5431,xm_isect_ps.5432,xm_sids.5433,xm_cdif.5434,xm_engy.5435,xm_r20p.5436,m_gid.5437,xm_nvectors.5438,)
 pixel.2658
	Let Ti2200.5439
		Int:0
		Put m_gid.5437 Ti2200.5439 id.2659
name : p_nvectors.2660 args : pixel.2661  formal_fv :  
LetTuple (xm_rgb.5423,xm_isect_ps.5424,xm_sids.5425,xm_cdif.5426,xm_engy.5427,xm_r20p.5428,xm_gid.5429,m_nvectors.5430,)
 pixel.2661
	Var m_nvectors.5430
name : d_vec.2662 args : d.2663  formal_fv :  
LetTuple (m_vec.5421,xm_const.5422,)
 d.2663
	Var m_vec.5421
name : d_const.2664 args : d.2665  formal_fv :  
LetTuple (dm_vec.5419,m_const.5420,)
 d.2665
	Var m_const.5420
name : r_surface_id.2666 args : r.2667  formal_fv :  
LetTuple (m_sid.5416,xm_dvec.5417,xm_br.5418,)
 r.2667
	Var m_sid.5416
name : r_dvec.2668 args : r.2669  formal_fv :  
LetTuple (xm_sid.5413,m_dvec.5414,xm_br.5415,)
 r.2669
	Var m_dvec.5414
name : r_bright.2670 args : r.2671  formal_fv :  
LetTuple (xm_sid.5410,xm_dvec.5411,m_br.5412,)
 r.2671
	Var m_br.5412
name : rad.2672 args : x.2673  formal_fv :  
Let Td2199.5409
	Float:0.017453
	FMul x.2673 Td2199.5409
name : read_screen_settings.2674 args : Tu21.2675  formal_fv : screen.2486 screenx_dir.2506 screeny_dir.2507 screenz_dir.2508 viewpoint.2487  
Let Ti2144.5406
	Int:0
	Let Tu2145.5408
		Unit
		Let Td2146.5407
			AppDir min_caml_read_float Tu2145.5408 )
			Let Tu35.5334
				Put screen.2486 Ti2144.5406 Td2146.5407
				Let Ti2147.5403
					Int:1
					Let Tu2148.5405
						Unit
						Let Td2149.5404
							AppDir min_caml_read_float Tu2148.5405 )
							Let Tu34.5335
								Put screen.2486 Ti2147.5403 Td2149.5404
								Let Ti2150.5400
									Int:2
									Let Tu2151.5402
										Unit
										Let Td2152.5401
											AppDir min_caml_read_float Tu2151.5402 )
											Let Tu33.5336
												Put screen.2486 Ti2150.5400 Td2152.5401
												Let Tu2153.5399
													Unit
													Let Td2154.5398
														AppDir min_caml_read_float Tu2153.5399 )
														Let v1.5337
															AppDir rad.2672 Td2154.5398 )
															Let cos_v1.5338
																AppDir min_caml_cos v1.5337 )
																Let sin_v1.5339
																	AppDir min_caml_sin v1.5337 )
																	Let Tu2155.5397
																		Unit
																		Let Td2156.5396
																			AppDir min_caml_read_float Tu2155.5397 )
																			Let v2.5340
																				AppDir rad.2672 Td2156.5396 )
																				Let cos_v2.5341
																					AppDir min_caml_cos v2.5340 )
																					Let sin_v2.5342
																						AppDir min_caml_sin v2.5340 )
																						Let Ti2157.5392
																							Int:0
																							Let Td2158.5394
																								FMul cos_v1.5338 sin_v2.5342
																								Let Td2159.5395
																									Float:200.000000
																									Let Td2160.5393
																										FMul Td2158.5394 Td2159.5395
																										Let Tu32.5343
																											Put screenz_dir.2508 Ti2157.5392 Td2160.5393
																											Let Ti2161.5389
																												Int:1
																												Let Td2162.5391
																													Float:-200.000000
																													Let Td2163.5390
																														FMul sin_v1.5339 Td2162.5391
																														Let Tu31.5344
																															Put screenz_dir.2508 Ti2161.5389 Td2163.5390
																															Let Ti2164.5385
																																Int:2
																																Let Td2165.5387
																																	FMul cos_v1.5338 cos_v2.5341
																																	Let Td2166.5388
																																		Float:200.000000
																																		Let Td2167.5386
																																			FMul Td2165.5387 Td2166.5388
																																			Let Tu30.5345
																																				Put screenz_dir.2508 Ti2164.5385 Td2167.5386
																																				Let Ti2168.5384
																																					Int:0
																																					Let Tu29.5346
																																						Put screenx_dir.2506 Ti2168.5384 cos_v2.5341
																																						Let Ti2169.5382
																																							Int:1
																																							Let Td2170.5383
																																								Float:0.000000
																																								Let Tu28.5347
																																									Put screenx_dir.2506 Ti2169.5382 Td2170.5383
																																									Let Ti2171.5380
																																										Int:2
																																										Let Td2172.5381
																																											AppDir fneg.2514 sin_v2.5342 )
																																											Let Tu27.5348
																																												Put screenx_dir.2506 Ti2171.5380 Td2172.5381
																																												Let Ti2173.5377
																																													Int:0
																																													Let Td2174.5379
																																														AppDir fneg.2514 sin_v1.5339 )
																																														Let Td2175.5378
																																															FMul Td2174.5379 sin_v2.5342
																																															Let Tu26.5349
																																																Put screeny_dir.2507 Ti2173.5377 Td2175.5378
																																																Let Ti2176.5375
																																																	Int:1
																																																	Let Td2177.5376
																																																		AppDir fneg.2514 cos_v1.5338 )
																																																		Let Tu25.5350
																																																			Put screeny_dir.2507 Ti2176.5375 Td2177.5376
																																																			Let Ti2178.5372
																																																				Int:2
																																																				Let Td2179.5374
																																																					AppDir fneg.2514 sin_v1.5339 )
																																																					Let Td2180.5373
																																																						FMul Td2179.5374 cos_v2.5341
																																																						Let Tu24.5351
																																																							Put screeny_dir.2507 Ti2178.5372 Td2180.5373
																																																							Let Ti2181.5366
																																																								Int:0
																																																								Let Ti2182.5371
																																																									Int:0
																																																									Let Td2183.5368
																																																										Get screen.2486 Ti2182.5371
																																																										Let Ti2184.5370
																																																											Int:0
																																																											Let Td2185.5369
																																																												Get screenz_dir.2508 Ti2184.5370
																																																												Let Td2186.5367
																																																													FSub Td2183.5368 Td2185.5369
																																																													Let Tu23.5352
																																																														Put viewpoint.2487 Ti2181.5366 Td2186.5367
																																																														Let Ti2187.5360
																																																															Int:1
																																																															Let Ti2188.5365
																																																																Int:1
																																																																Let Td2189.5362
																																																																	Get screen.2486 Ti2188.5365
																																																																	Let Ti2190.5364
																																																																		Int:1
																																																																		Let Td2191.5363
																																																																			Get screenz_dir.2508 Ti2190.5364
																																																																			Let Td2192.5361
																																																																				FSub Td2189.5362 Td2191.5363
																																																																				Let Tu22.5353
																																																																					Put viewpoint.2487 Ti2187.5360 Td2192.5361
																																																																					Let Ti2193.5354
																																																																						Int:2
																																																																						Let Ti2194.5359
																																																																							Int:2
																																																																							Let Td2195.5356
																																																																								Get screen.2486 Ti2194.5359
																																																																								Let Ti2196.5358
																																																																									Int:2
																																																																									Let Td2197.5357
																																																																										Get screenz_dir.2508 Ti2196.5358
																																																																										Let Td2198.5355
																																																																											FSub Td2195.5356 Td2197.5357
																																																																											Put viewpoint.2487 Ti2193.5354 Td2198.5355
name : read_light.2676 args : Tu36.2677  formal_fv : beam.2489 light.2488  
Let Tu2130.5333
	Unit
	Let nl.5310
		AppDir min_caml_read_int Tu2130.5333 )
		Let Tu2131.5332
			Unit
			Let Td2132.5331
				AppDir min_caml_read_float Tu2131.5332 )
				Let l1.5311
					AppDir rad.2672 Td2132.5331 )
					Let sl1.5312
						AppDir min_caml_sin l1.5311 )
						Let Ti2133.5329
							Int:1
							Let Td2134.5330
								AppDir fneg.2514 sl1.5312 )
								Let Tu39.5313
									Put light.2488 Ti2133.5329 Td2134.5330
									Let Tu2135.5328
										Unit
										Let Td2136.5327
											AppDir min_caml_read_float Tu2135.5328 )
											Let l2.5314
												AppDir rad.2672 Td2136.5327 )
												Let cl1.5315
													AppDir min_caml_cos l1.5311 )
													Let sl2.5316
														AppDir min_caml_sin l2.5314 )
														Let Ti2137.5325
															Int:0
															Let Td2138.5326
																FMul cl1.5315 sl2.5316
																Let Tu38.5317
																	Put light.2488 Ti2137.5325 Td2138.5326
																	Let cl2.5318
																		AppDir min_caml_cos l2.5314 )
																		Let Ti2139.5323
																			Int:2
																			Let Td2140.5324
																				FMul cl1.5315 cl2.5318
																				Let Tu37.5319
																					Put light.2488 Ti2139.5323 Td2140.5324
																					Let Ti2141.5320
																						Int:0
																						Let Tu2142.5322
																							Unit
																							Let Td2143.5321
																								AppDir min_caml_read_float Tu2142.5322 )
																								Put beam.2489 Ti2141.5320 Td2143.5321
name : rotate_quadratic_matrix.2678 args : abc.2679 rot.2680  formal_fv :  
Let Ti2043.5309
	Int:0
	Let Td2044.5308
		Get rot.2680 Ti2043.5309
		Let cos_x.5200
			AppDir min_caml_cos Td2044.5308 )
			Let Ti2045.5307
				Int:0
				Let Td2046.5306
					Get rot.2680 Ti2045.5307
					Let sin_x.5201
						AppDir min_caml_sin Td2046.5306 )
						Let Ti2047.5305
							Int:1
							Let Td2048.5304
								Get rot.2680 Ti2047.5305
								Let cos_y.5202
									AppDir min_caml_cos Td2048.5304 )
									Let Ti2049.5303
										Int:1
										Let Td2050.5302
											Get rot.2680 Ti2049.5303
											Let sin_y.5203
												AppDir min_caml_sin Td2050.5302 )
												Let Ti2051.5301
													Int:2
													Let Td2052.5300
														Get rot.2680 Ti2051.5301
														Let cos_z.5204
															AppDir min_caml_cos Td2052.5300 )
															Let Ti2053.5299
																Int:2
																Let Td2054.5298
																	Get rot.2680 Ti2053.5299
																	Let sin_z.5205
																		AppDir min_caml_sin Td2054.5298 )
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
																																					AppDir fneg.2514 sin_y.5203 )
																																					Let m21.5213
																																						FMul sin_x.5201 cos_y.5202
																																						Let m22.5214
																																							FMul cos_x.5200 cos_y.5202
																																							Let Ti2067.5285
																																								Int:0
																																								Let ao.5215
																																									Get abc.2679 Ti2067.5285
																																									Let Ti2068.5284
																																										Int:1
																																										Let bo.5216
																																											Get abc.2679 Ti2068.5284
																																											Let Ti2069.5283
																																												Int:2
																																												Let co.5217
																																													Get abc.2679 Ti2069.5283
																																													Let Ti2070.5274
																																														Int:0
																																														Let Td2071.5282
																																															AppDir fsqr.2524 m00.5206 )
																																															Let Td2072.5279
																																																FMul ao.5215 Td2071.5282
																																																Let Td2073.5281
																																																	AppDir fsqr.2524 m10.5209 )
																																																	Let Td2074.5280
																																																		FMul bo.5216 Td2073.5281
																																																		Let Td2075.5276
																																																			FAdd Td2072.5279 Td2074.5280
																																																			Let Td2076.5278
																																																				AppDir fsqr.2524 m20.5212 )
																																																				Let Td2077.5277
																																																					FMul co.5217 Td2076.5278
																																																					Let Td2078.5275
																																																						FAdd Td2075.5276 Td2077.5277
																																																						Let Tu44.5218
																																																							Put abc.2679 Ti2070.5274 Td2078.5275
																																																							Let Ti2079.5265
																																																								Int:1
																																																								Let Td2080.5273
																																																									AppDir fsqr.2524 m01.5207 )
																																																									Let Td2081.5270
																																																										FMul ao.5215 Td2080.5273
																																																										Let Td2082.5272
																																																											AppDir fsqr.2524 m11.5210 )
																																																											Let Td2083.5271
																																																												FMul bo.5216 Td2082.5272
																																																												Let Td2084.5267
																																																													FAdd Td2081.5270 Td2083.5271
																																																													Let Td2085.5269
																																																														AppDir fsqr.2524 m21.5213 )
																																																														Let Td2086.5268
																																																															FMul co.5217 Td2085.5269
																																																															Let Td2087.5266
																																																																FAdd Td2084.5267 Td2086.5268
																																																																Let Tu43.5219
																																																																	Put abc.2679 Ti2079.5265 Td2087.5266
																																																																	Let Ti2088.5256
																																																																		Int:2
																																																																		Let Td2089.5264
																																																																			AppDir fsqr.2524 m02.5208 )
																																																																			Let Td2090.5261
																																																																				FMul ao.5215 Td2089.5264
																																																																				Let Td2091.5263
																																																																					AppDir fsqr.2524 m12.5211 )
																																																																					Let Td2092.5262
																																																																						FMul bo.5216 Td2091.5263
																																																																						Let Td2093.5258
																																																																							FAdd Td2090.5261 Td2092.5262
																																																																							Let Td2094.5260
																																																																								AppDir fsqr.2524 m22.5214 )
																																																																								Let Td2095.5259
																																																																									FMul co.5217 Td2094.5260
																																																																									Let Td2096.5257
																																																																										FAdd Td2093.5258 Td2095.5259
																																																																										Let Tu42.5220
																																																																											Put abc.2679 Ti2088.5256 Td2096.5257
																																																																											Let Ti2097.5245
																																																																												Int:0
																																																																												Let Td2098.5247
																																																																													Float:2.000000
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
																																																																																							Put rot.2680 Ti2097.5245 Td2107.5246
																																																																																							Let Ti2108.5234
																																																																																								Int:1
																																																																																								Let Td2109.5236
																																																																																									Float:2.000000
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
																																																																																																			Put rot.2680 Ti2108.5234 Td2118.5235
																																																																																																			Let Ti2119.5223
																																																																																																				Int:2
																																																																																																				Let Td2120.5225
																																																																																																					Float:2.000000
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
																																																																																																														Put rot.2680 Ti2119.5223 Td2129.5224
name : read_nth_object.2681 args : n.2682  formal_fv : objects.2485  
Let Tu1947.5199
	Unit
	Let texture.5069
		AppDir min_caml_read_int Tu1947.5199 )
		Let Ti1949.5070
			Int:-1
			IfEq texture.5069 Ti1949.5070
				Int:0
				Let Tu1950.5197
					Unit
					Let form.5071
						AppDir min_caml_read_int Tu1950.5197 )
						Let Tu1951.5196
							Unit
							Let refltype.5072
								AppDir min_caml_read_int Tu1951.5196 )
								Let Tu1952.5195
									Unit
									Let isrot_p.5073
										AppDir min_caml_read_int Tu1952.5195 )
										Let Ti1953.5193
											Int:3
											Let Td1954.5194
												Float:0.000000
												Let abc.5074
													AppDir min_caml_create_float_array Ti1953.5193 Td1954.5194 )
													Let Ti1955.5190
														Int:0
														Let Tu1956.5192
															Unit
															Let Td1957.5191
																AppDir min_caml_read_float Tu1956.5192 )
																Let Tu63.5075
																	Put abc.5074 Ti1955.5190 Td1957.5191
																	Let Ti1958.5187
																		Int:1
																		Let Tu1959.5189
																			Unit
																			Let Td1960.5188
																				AppDir min_caml_read_float Tu1959.5189 )
																				Let Tu62.5076
																					Put abc.5074 Ti1958.5187 Td1960.5188
																					Let Ti1961.5184
																						Int:2
																						Let Tu1962.5186
																							Unit
																							Let Td1963.5185
																								AppDir min_caml_read_float Tu1962.5186 )
																								Let Tu61.5077
																									Put abc.5074 Ti1961.5184 Td1963.5185
																									Let Ti1964.5182
																										Int:3
																										Let Td1965.5183
																											Float:0.000000
																											Let xyz.5078
																												AppDir min_caml_create_float_array Ti1964.5182 Td1965.5183 )
																												Let Ti1966.5179
																													Int:0
																													Let Tu1967.5181
																														Unit
																														Let Td1968.5180
																															AppDir min_caml_read_float Tu1967.5181 )
																															Let Tu60.5079
																																Put xyz.5078 Ti1966.5179 Td1968.5180
																																Let Ti1969.5176
																																	Int:1
																																	Let Tu1970.5178
																																		Unit
																																		Let Td1971.5177
																																			AppDir min_caml_read_float Tu1970.5178 )
																																			Let Tu59.5080
																																				Put xyz.5078 Ti1969.5176 Td1971.5177
																																				Let Ti1972.5173
																																					Int:2
																																					Let Tu1973.5175
																																						Unit
																																						Let Td1974.5174
																																							AppDir min_caml_read_float Tu1973.5175 )
																																							Let Tu58.5081
																																								Put xyz.5078 Ti1972.5173 Td1974.5174
																																								Let Tu1975.5172
																																									Unit
																																									Let Td1976.5171
																																										AppDir min_caml_read_float Tu1975.5172 )
																																										Let m_invert.5082
																																											AppDir fisneg.2518 Td1976.5171 )
																																											Let Ti1977.5169
																																												Int:2
																																												Let Td1978.5170
																																													Float:0.000000
																																													Let reflparam.5083
																																														AppDir min_caml_create_float_array Ti1977.5169 Td1978.5170 )
																																														Let Ti1979.5166
																																															Int:0
																																															Let Tu1980.5168
																																																Unit
																																																Let Td1981.5167
																																																	AppDir min_caml_read_float Tu1980.5168 )
																																																	Let Tu57.5084
																																																		Put reflparam.5083 Ti1979.5166 Td1981.5167
																																																		Let Ti1982.5163
																																																			Int:1
																																																			Let Tu1983.5165
																																																				Unit
																																																				Let Td1984.5164
																																																					AppDir min_caml_read_float Tu1983.5165 )
																																																					Let Tu56.5085
																																																						Put reflparam.5083 Ti1982.5163 Td1984.5164
																																																						Let Ti1985.5161
																																																							Int:3
																																																							Let Td1986.5162
																																																								Float:0.000000
																																																								Let color.5086
																																																									AppDir min_caml_create_float_array Ti1985.5161 Td1986.5162 )
																																																									Let Ti1987.5158
																																																										Int:0
																																																										Let Tu1988.5160
																																																											Unit
																																																											Let Td1989.5159
																																																												AppDir min_caml_read_float Tu1988.5160 )
																																																												Let Tu55.5087
																																																													Put color.5086 Ti1987.5158 Td1989.5159
																																																													Let Ti1990.5155
																																																														Int:1
																																																														Let Tu1991.5157
																																																															Unit
																																																															Let Td1992.5156
																																																																AppDir min_caml_read_float Tu1991.5157 )
																																																																Let Tu54.5088
																																																																	Put color.5086 Ti1990.5155 Td1992.5156
																																																																	Let Ti1993.5152
																																																																		Int:2
																																																																		Let Tu1994.5154
																																																																			Unit
																																																																			Let Td1995.5153
																																																																				AppDir min_caml_read_float Tu1994.5154 )
																																																																				Let Tu53.5089
																																																																					Put color.5086 Ti1993.5152 Td1995.5153
																																																																					Let Ti1996.5150
																																																																						Int:3
																																																																						Let Td1997.5151
																																																																							Float:0.000000
																																																																							Let rotation.5090
																																																																								AppDir min_caml_create_float_array Ti1996.5150 Td1997.5151 )
																																																																								Let Ti1998.5135
																																																																									Int:0
																																																																									Let Tu52.5091
																																																																										IfEq isrot_p.5073 Ti1998.5135
																																																																											Unit
																																																																											Let Ti1999.5146
																																																																												Int:0
																																																																												Let Tu2000.5149
																																																																													Unit
																																																																													Let Td2001.5148
																																																																														AppDir min_caml_read_float Tu2000.5149 )
																																																																														Let Td2002.5147
																																																																															AppDir rad.2672 Td2001.5148 )
																																																																															Let Tu46.5136
																																																																																Put rotation.5090 Ti1999.5146 Td2002.5147
																																																																																Let Ti2003.5142
																																																																																	Int:1
																																																																																	Let Tu2004.5145
																																																																																		Unit
																																																																																		Let Td2005.5144
																																																																																			AppDir min_caml_read_float Tu2004.5145 )
																																																																																			Let Td2006.5143
																																																																																				AppDir rad.2672 Td2005.5144 )
																																																																																				Let Tu45.5137
																																																																																					Put rotation.5090 Ti2003.5142 Td2006.5143
																																																																																					Let Ti2007.5138
																																																																																						Int:2
																																																																																						Let Tu2008.5141
																																																																																							Unit
																																																																																							Let Td2009.5140
																																																																																								AppDir min_caml_read_float Tu2008.5141 )
																																																																																								Let Td2010.5139
																																																																																									AppDir rad.2672 Td2009.5140 )
																																																																																									Put rotation.5090 Ti2007.5138 Td2010.5139
																																																																										Let Ti2011.5134
																																																																											Int:2
																																																																											Let m_invert2.5092
																																																																												IfEq form.5071 Ti2011.5134
																																																																													Int:1
																																																																													Var m_invert.5082
																																																																												Let Ti2012.5132
																																																																													Int:4
																																																																													Let Td2013.5133
																																																																														Float:0.000000
																																																																														Let ctbl.5093
																																																																															AppDir min_caml_create_float_array Ti2012.5132 Td2013.5133 )
																																																																															Let obj.5094
																																																																																Tuple (texture.5069,form.5071,refltype.5072,isrot_p.5073,abc.5074,xyz.5078,m_invert2.5092,reflparam.5083,color.5086,rotation.5090,ctbl.5093,)
																																																																																Let Tu51.5095
																																																																																	Put objects.2485 n.2682 obj.5094
																																																																																	Let Ti2014.5099
																																																																																		Int:3
																																																																																		Let Tu50.5096
																																																																																			IfEq form.5071 Ti2014.5099
																																																																																				Let Ti2015.5131
																																																																																					Int:0
																																																																																					Let a.5103
																																																																																						Get abc.5074 Ti2015.5131
																																																																																						Let Ti2016.5124
																																																																																							Int:0
																																																																																							Let Tb2017.5126
																																																																																								AppDir fiszero.2520 a.5103 )
																																																																																								Let Ti2018.5127
																																																																																									Int:0
																																																																																									Let Td2022.5125
																																																																																										IfEq Tb2017.5126 Ti2018.5127
																																																																																											Let Td2019.5128
																																																																																												AppDir sgn.2547 a.5103 )
																																																																																												Let Td2020.5129
																																																																																													AppDir fsqr.2524 a.5103 )
																																																																																													Let Td2021.5130
																																																																																														FReciprocal Td2020.5129
																																																																																														FMul Td2019.5128 Td2021.5130
																																																																																											Float:0.000000
																																																																																										Let Tu48.5104
																																																																																											Put abc.5074 Ti2016.5124 Td2022.5125
																																																																																											Let Ti2023.5123
																																																																																												Int:1
																																																																																												Let b.5105
																																																																																													Get abc.5074 Ti2023.5123
																																																																																													Let Ti2024.5116
																																																																																														Int:1
																																																																																														Let Tb2025.5118
																																																																																															AppDir fiszero.2520 b.5105 )
																																																																																															Let Ti2026.5119
																																																																																																Int:0
																																																																																																Let Td2030.5117
																																																																																																	IfEq Tb2025.5118 Ti2026.5119
																																																																																																		Let Td2027.5120
																																																																																																			AppDir sgn.2547 b.5105 )
																																																																																																			Let Td2028.5121
																																																																																																				AppDir fsqr.2524 b.5105 )
																																																																																																				Let Td2029.5122
																																																																																																					FReciprocal Td2028.5121
																																																																																																					FMul Td2027.5120 Td2029.5122
																																																																																																		Float:0.000000
																																																																																																	Let Tu47.5106
																																																																																																		Put abc.5074 Ti2024.5116 Td2030.5117
																																																																																																		Let Ti2031.5115
																																																																																																			Int:2
																																																																																																			Let c.5107
																																																																																																				Get abc.5074 Ti2031.5115
																																																																																																				Let Ti2032.5108
																																																																																																					Int:2
																																																																																																					Let Tb2033.5110
																																																																																																						AppDir fiszero.2520 c.5107 )
																																																																																																						Let Ti2034.5111
																																																																																																							Int:0
																																																																																																							Let Td2038.5109
																																																																																																								IfEq Tb2033.5110 Ti2034.5111
																																																																																																									Let Td2035.5112
																																																																																																										AppDir sgn.2547 c.5107 )
																																																																																																										Let Td2036.5113
																																																																																																											AppDir fsqr.2524 c.5107 )
																																																																																																											Let Td2037.5114
																																																																																																												FReciprocal Td2036.5113
																																																																																																												FMul Td2035.5112 Td2037.5114
																																																																																																									Float:0.000000
																																																																																																								Put abc.5074 Ti2032.5108 Td2038.5109
																																																																																				Let Ti2039.5100
																																																																																					Int:2
																																																																																					IfEq form.5071 Ti2039.5100
																																																																																						Let Ti2040.5102
																																																																																							Int:0
																																																																																							Let Ti2041.5101
																																																																																								IfEq m_invert.5082 Ti2040.5102
																																																																																									Int:1
																																																																																									Int:0
																																																																																								AppDir vecunit_sgn.2573 abc.5074 Ti2041.5101 )
																																																																																						Unit
																																																																																			Let Ti2042.5098
																																																																																				Int:0
																																																																																				Let Tu49.5097
																																																																																					IfEq isrot_p.5073 Ti2042.5098
																																																																																						Unit
																																																																																						AppDir rotate_quadratic_matrix.2678 abc.5074 rotation.5090 )
																																																																																					Int:1
name : read_object.2683 args : n.2684  formal_fv : n_objects.2484 read_nth_object.2681  
Let Ti1941.5063
	Int:60
	IfLE Ti1941.5063 n.2684
		Unit
		Let Tb1942.5064
			AppCls read_nth_object.2681 n.2684 )
			Let Ti1943.5065
				Int:0
				IfEq Tb1942.5064 Ti1943.5065
					Let Ti1944.5068
						Int:0
						Put n_objects.2484 Ti1944.5068 n.2684
					Let Ti1945.5067
						Int:1
						Let Ti1946.5066
							Add n.2684 Ti1945.5067
							AppCls read_object.2683 Ti1946.5066 )
name : read_all_object.2685 args : Tu64.2686  formal_fv : read_object.2683  
Let Ti1940.5062
	Int:0
	AppCls read_object.2683 Ti1940.5062 )
name : read_net_item.2687 args : length.2688  formal_fv :  
Let Tu1931.5061
	Unit
	Let item.5050
		AppDir min_caml_read_int Tu1931.5061 )
		Let Ti1933.5051
			Int:-1
			IfEq item.5050 Ti1933.5051
				Let Ti1934.5059
					Int:1
					Let Ti1935.5056
						Add length.2688 Ti1934.5059
						Let Ti1937.5057
							Int:-1
							AppDir min_caml_create_array Ti1935.5056 Ti1937.5057 )
				Let Ti1938.5055
					Int:1
					Let Ti1939.5054
						Add length.2688 Ti1938.5055
						Let v.5052
							AppDir read_net_item.2687 Ti1939.5054 )
							Let Tu65.5053
								Put v.5052 length.2688 item.5050
								Var v.5052
name : read_or_network.2689 args : length.2690  formal_fv :  
Let Ti1922.5049
	Int:0
	Let net.5038
		AppDir read_net_item.2687 Ti1922.5049 )
		Let Ti1923.5048
			Int:0
			Let Ti1924.5039
				Get net.5038 Ti1923.5048
				Let Ti1926.5040
					Int:-1
					IfEq Ti1924.5039 Ti1926.5040
						Let Ti1927.5046
							Int:1
							Let Ti1928.5045
								Add length.2690 Ti1927.5046
								AppDir min_caml_create_array Ti1928.5045 net.5038 )
						Let Ti1929.5044
							Int:1
							Let Ti1930.5043
								Add length.2690 Ti1929.5044
								Let v.5041
									AppDir read_or_network.2689 Ti1930.5043 )
									Let Tu66.5042
										Put v.5041 length.2690 net.5038
										Var v.5041
name : read_and_network.2691 args : n.2692  formal_fv : and_net.2490  
Let Ti1915.5037
	Int:0
	Let net.5029
		AppDir read_net_item.2687 Ti1915.5037 )
		Let Ti1916.5036
			Int:0
			Let Ti1917.5030
				Get net.5029 Ti1916.5036
				Let Ti1919.5031
					Int:-1
					IfEq Ti1917.5030 Ti1919.5031
						Unit
						Let Tu67.5032
							Put and_net.2490 n.2692 net.5029
							Let Ti1920.5034
								Int:1
								Let Ti1921.5033
									Add n.2692 Ti1920.5034
									AppCls read_and_network.2691 Ti1921.5033 )
name : read_parameter.2693 args : Tu68.2694  formal_fv : or_net.2491 read_all_object.2685 read_and_network.2691 read_light.2676 read_screen_settings.2674  
Let Tu1908.5028
	Unit
	Let Tu72.5018
		AppCls read_screen_settings.2674 Tu1908.5028 )
		Let Tu1909.5027
			Unit
			Let Tu71.5019
				AppCls read_light.2676 Tu1909.5027 )
				Let Tu1910.5026
					Unit
					Let Tu70.5020
						AppCls read_all_object.2685 Tu1910.5026 )
						Let Ti1911.5025
							Int:0
							Let Tu69.5021
								AppCls read_and_network.2691 Ti1911.5025 )
								Let Ti1912.5022
									Int:0
									Let Ti1913.5024
										Int:0
										Let Ta1914.5023
											AppDir read_or_network.2689 Ti1913.5024 )
											Put or_net.2491 Ti1912.5022 Ta1914.5023
name : solver_rect_surface.2695 args : m.2696 dirvec.2697 b0.2698 b1.2699 b2.2700 i0.2701 i1.2702 i2.2703  formal_fv : solver_dist.2492  
Let Td1882.5017
	Get dirvec.2697 i0.2701
	Let Tb1883.4988
		AppDir fiszero.2520 Td1882.5017 )
		Let Ti1884.4989
			Int:0
			IfEq Tb1883.4988 Ti1884.4989
				Let abc.4990
					AppDir o_param_abc.2617 m.2696 )
					Let Tb1885.5014
						AppDir o_isinvert.2607 m.2696 )
						Let Td1886.5016
							Get dirvec.2697 i0.2701
							Let Tb1887.5015
								AppDir fisneg.2518 Td1886.5016 )
								Let Tb1888.5012
									AppDir xor.2544 Tb1885.5014 Tb1887.5015 )
									Let Td1889.5013
										Get abc.4990 i0.2701
										Let d.4991
											AppDir fneg_cond.2549 Tb1888.5012 Td1889.5013 )
											Let Td1890.5009
												FSub d.4991 b0.2698
												Let Td1891.5010
													Get dirvec.2697 i0.2701
													Let Td1892.5011
														FReciprocal Td1891.5010
														Let d2.4992
															FMul Td1890.5009 Td1892.5011
															Let Td1893.5008
																Get dirvec.2697 i1.2702
																Let Td1894.5007
																	FMul d2.4992 Td1893.5008
																	Let Td1895.5006
																		FAdd Td1894.5007 b1.2699
																		Let Td1896.5004
																			AppDir fabs.2526 Td1895.5006 )
																			Let Td1897.5005
																				Get abc.4990 i1.2702
																				Let Tb1898.4993
																					AppDir fless.2528 Td1896.5004 Td1897.5005 )
																					Let Ti1899.4994
																						Int:0
																						IfEq Tb1898.4993 Ti1899.4994
																							Int:0
																							Let Td1900.5003
																								Get dirvec.2697 i2.2703
																								Let Td1901.5002
																									FMul d2.4992 Td1900.5003
																									Let Td1902.5001
																										FAdd Td1901.5002 b2.2700
																										Let Td1903.4999
																											AppDir fabs.2526 Td1902.5001 )
																											Let Td1904.5000
																												Get abc.4990 i2.2703
																												Let Tb1905.4995
																													AppDir fless.2528 Td1903.4999 Td1904.5000 )
																													Let Ti1906.4996
																														Int:0
																														IfEq Tb1905.4995 Ti1906.4996
																															Int:0
																															Let Ti1907.4998
																																Int:0
																																Let Tu73.4997
																																	Put solver_dist.2492 Ti1907.4998 d2.4992
																																	Int:1
				Int:0
name : solver_rect.2704 args : m.2705 dirvec.2706 b0.2707 b1.2708 b2.2709  formal_fv : solver_rect_surface.2695  
Let Ti1867.4985
	Int:0
	Let Ti1868.4986
		Int:1
		Let Ti1869.4987
			Int:2
			Let Tb1870.4973
				AppCls solver_rect_surface.2695 m.2705 dirvec.2706 b0.2707 b1.2708 b2.2709 Ti1867.4985 Ti1868.4986 Ti1869.4987 )
				Let Ti1871.4974
					Int:0
					IfEq Tb1870.4973 Ti1871.4974
						Let Ti1872.4982
							Int:1
							Let Ti1873.4983
								Int:2
								Let Ti1874.4984
									Int:0
									Let Tb1875.4975
										AppCls solver_rect_surface.2695 m.2705 dirvec.2706 b1.2708 b2.2709 b0.2707 Ti1872.4982 Ti1873.4983 Ti1874.4984 )
										Let Ti1876.4976
											Int:0
											IfEq Tb1875.4975 Ti1876.4976
												Let Ti1877.4979
													Int:2
													Let Ti1878.4980
														Int:0
														Let Ti1879.4981
															Int:1
															Let Tb1880.4977
																AppCls solver_rect_surface.2695 m.2705 dirvec.2706 b2.2709 b0.2707 b1.2708 Ti1877.4979 Ti1878.4980 Ti1879.4981 )
																Let Ti1881.4978
																	Int:0
																	IfEq Tb1880.4977 Ti1881.4978
																		Int:0
																		Int:3
												Int:2
						Int:1
name : solver_surface.2710 args : m.2711 dirvec.2712 b0.2713 b1.2714 b2.2715  formal_fv : solver_dist.2492  
Let abc.4963
	AppDir o_param_abc.2617 m.2711 )
	Let d.4964
		AppDir veciprod.2576 dirvec.2712 abc.4963 )
		Let Tb1860.4965
			AppDir fispos.2516 d.4964 )
			Let Ti1861.4966
				Int:0
				IfEq Tb1860.4965 Ti1861.4966
					Int:0
					Let Ti1862.4968
						Int:0
						Let Td1863.4972
							AppDir veciprod2.2579 abc.4963 b0.2713 b1.2714 b2.2715 )
							Let Td1864.4970
								AppDir fneg.2514 Td1863.4972 )
								Let Td1865.4971
									FReciprocal d.4964
									Let Td1866.4969
										FMul Td1864.4970 Td1865.4971
										Let Tu74.4967
											Put solver_dist.2492 Ti1862.4968 Td1866.4969
											Int:1
name : quadratic.2716 args : m.2717 v0.2718 v1.2719 v2.2720  formal_fv :  
Let Td1837.4961
	AppDir fsqr.2524 v0.2718 )
	Let Td1838.4962
		AppDir o_param_a.2611 m.2717 )
		Let Td1839.4957
			FMul Td1837.4961 Td1838.4962
			Let Td1840.4959
				AppDir fsqr.2524 v1.2719 )
				Let Td1841.4960
					AppDir o_param_b.2613 m.2717 )
					Let Td1842.4958
						FMul Td1840.4959 Td1841.4960
						Let Td1843.4953
							FAdd Td1839.4957 Td1842.4958
							Let Td1844.4955
								AppDir fsqr.2524 v2.2720 )
								Let Td1845.4956
									AppDir o_param_c.2615 m.2717 )
									Let Td1846.4954
										FMul Td1844.4955 Td1845.4956
										Let diag_part.4939
											FAdd Td1843.4953 Td1846.4954
											Let Ti1847.4940
												AppDir o_isrot.2609 m.2717 )
												Let Ti1848.4941
													Int:0
													IfEq Ti1847.4940 Ti1848.4941
														Var diag_part.4939
														Let Td1849.4951
															FMul v1.2719 v2.2720
															Let Td1850.4952
																AppDir o_param_r1.2635 m.2717 )
																Let Td1851.4950
																	FMul Td1849.4951 Td1850.4952
																	Let Td1852.4946
																		FAdd diag_part.4939 Td1851.4950
																		Let Td1853.4948
																			FMul v2.2720 v0.2718
																			Let Td1854.4949
																				AppDir o_param_r2.2637 m.2717 )
																				Let Td1855.4947
																					FMul Td1853.4948 Td1854.4949
																					Let Td1856.4942
																						FAdd Td1852.4946 Td1855.4947
																						Let Td1857.4944
																							FMul v0.2718 v1.2719
																							Let Td1858.4945
																								AppDir o_param_r3.2639 m.2717 )
																								Let Td1859.4943
																									FMul Td1857.4944 Td1858.4945
																									FAdd Td1856.4942 Td1859.4943
name : bilinear.2721 args : m.2722 v0.2723 v1.2724 v2.2725 w0.2726 w1.2727 w2.2728  formal_fv :  
Let Td1807.4937
	FMul v0.2723 w0.2726
	Let Td1808.4938
		AppDir o_param_a.2611 m.2722 )
		Let Td1809.4933
			FMul Td1807.4937 Td1808.4938
			Let Td1810.4935
				FMul v1.2724 w1.2727
				Let Td1811.4936
					AppDir o_param_b.2613 m.2722 )
					Let Td1812.4934
						FMul Td1810.4935 Td1811.4936
						Let Td1813.4929
							FAdd Td1809.4933 Td1812.4934
							Let Td1814.4931
								FMul v2.2725 w2.2728
								Let Td1815.4932
									AppDir o_param_c.2615 m.2722 )
									Let Td1816.4930
										FMul Td1814.4931 Td1815.4932
										Let diag_part.4908
											FAdd Td1813.4929 Td1816.4930
											Let Ti1817.4909
												AppDir o_isrot.2609 m.2722 )
												Let Ti1818.4910
													Int:0
													IfEq Ti1817.4909 Ti1818.4910
														Var diag_part.4908
														Let Td1819.4927
															FMul v2.2725 w1.2727
															Let Td1820.4928
																FMul v1.2724 w2.2728
																Let Td1821.4925
																	FAdd Td1819.4927 Td1820.4928
																	Let Td1822.4926
																		AppDir o_param_r1.2635 m.2722 )
																		Let Td1823.4919
																			FMul Td1821.4925 Td1822.4926
																			Let Td1824.4923
																				FMul v0.2723 w2.2728
																				Let Td1825.4924
																					FMul v2.2725 w0.2726
																					Let Td1826.4921
																						FAdd Td1824.4923 Td1825.4924
																						Let Td1827.4922
																							AppDir o_param_r2.2637 m.2722 )
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
																													AppDir o_param_r3.2639 m.2722 )
																													Let Td1834.4914
																														FMul Td1832.4915 Td1833.4916
																														Let Td1835.4912
																															FAdd Td1829.4913 Td1834.4914
																															Let Td1836.4911
																																AppDir fhalf.2522 Td1835.4912 )
																																FAdd diag_part.4908 Td1836.4911
name : solver_second.2729 args : m.2730 dirvec.2731 b0.2732 b1.2733 b2.2734  formal_fv : solver_dist.2492  
Let Ti1780.4907
	Int:0
	Let Td1781.4902
		Get dirvec.2731 Ti1780.4907
		Let Ti1782.4906
			Int:1
			Let Td1783.4903
				Get dirvec.2731 Ti1782.4906
				Let Ti1784.4905
					Int:2
					Let Td1785.4904
						Get dirvec.2731 Ti1784.4905
						Let aa.4873
							AppDir quadratic.2716 m.2730 Td1781.4902 Td1783.4903 Td1785.4904 )
							Let Tb1786.4874
								AppDir fiszero.2520 aa.4873 )
								Let Ti1787.4875
									Int:0
									IfEq Tb1786.4874 Ti1787.4875
										Let Ti1788.4901
											Int:0
											Let Td1789.4896
												Get dirvec.2731 Ti1788.4901
												Let Ti1790.4900
													Int:1
													Let Td1791.4897
														Get dirvec.2731 Ti1790.4900
														Let Ti1792.4899
															Int:2
															Let Td1793.4898
																Get dirvec.2731 Ti1792.4899
																Let bb.4876
																	AppDir bilinear.2721 m.2730 Td1789.4896 Td1791.4897 Td1793.4898 b0.2732 b1.2733 b2.2734 )
																	Let cc0.4877
																		AppDir quadratic.2716 m.2730 b0.2732 b1.2733 b2.2734 )
																		Let Ti1794.4893
																			AppDir o_form.2603 m.2730 )
																			Let Ti1795.4894
																				Int:3
																				Let cc.4878
																					IfEq Ti1794.4893 Ti1795.4894
																						Let Td1796.4895
																							Float:1.000000
																							FSub cc0.4877 Td1796.4895
																						Var cc0.4877
																					Let Td1797.4891
																						AppDir fsqr.2524 bb.4876 )
																						Let Td1798.4892
																							FMul aa.4873 cc.4878
																							Let d.4879
																								FSub Td1797.4891 Td1798.4892
																								Let Tb1799.4880
																									AppDir fispos.2516 d.4879 )
																									Let Ti1800.4881
																										Int:0
																										IfEq Tb1799.4880 Ti1800.4881
																											Int:0
																											Let sd.4882
																												AppDir min_caml_sqrt d.4879 )
																												Let Tb1801.4889
																													AppDir o_isinvert.2607 m.2730 )
																													Let Ti1802.4890
																														Int:0
																														Let t1.4883
																															IfEq Tb1801.4889 Ti1802.4890
																																AppDir fneg.2514 sd.4882 )
																																Var sd.4882
																															Let Ti1803.4885
																																Int:0
																																Let Td1804.4887
																																	FSub t1.4883 bb.4876
																																	Let Td1805.4888
																																		FReciprocal aa.4873
																																		Let Td1806.4886
																																			FMul Td1804.4887 Td1805.4888
																																			Let Tu75.4884
																																				Put solver_dist.2492 Ti1803.4885 Td1806.4886
																																				Int:1
										Int:0
name : solver.2735 args : index.2736 dirvec.2737 org.2738  formal_fv : objects.2485 solver_rect.2704 solver_second.2729 solver_surface.2710  
Let m.4857
	Get objects.2485 index.2736
	Let Ti1769.4872
		Int:0
		Let Td1770.4870
			Get org.2738 Ti1769.4872
			Let Td1771.4871
				AppDir o_param_x.2619 m.4857 )
				Let b0.4858
					FSub Td1770.4870 Td1771.4871
					Let Ti1772.4869
						Int:1
						Let Td1773.4867
							Get org.2738 Ti1772.4869
							Let Td1774.4868
								AppDir o_param_y.2621 m.4857 )
								Let b1.4859
									FSub Td1773.4867 Td1774.4868
									Let Ti1775.4866
										Int:2
										Let Td1776.4864
											Get org.2738 Ti1775.4866
											Let Td1777.4865
												AppDir o_param_z.2623 m.4857 )
												Let b2.4860
													FSub Td1776.4864 Td1777.4865
													Let m_shape.4861
														AppDir o_form.2603 m.4857 )
														Let Ti1778.4862
															Int:1
															IfEq m_shape.4861 Ti1778.4862
																AppCls solver_rect.2704 m.4857 dirvec.2737 b0.4858 b1.4859 b2.4860 )
																Let Ti1779.4863
																	Int:2
																	IfEq m_shape.4861 Ti1779.4863
																		AppCls solver_surface.2710 m.4857 dirvec.2737 b0.4858 b1.4859 b2.4860 )
																		AppCls solver_second.2729 m.4857 dirvec.2737 b0.4858 b1.4859 b2.4860 )
name : solver_rect_fast.2739 args : m.2740 v.2741 dconst.2742 b0.2743 b1.2744 b2.2745  formal_fv : solver_dist.2492  
Let Ti1685.4856
	Int:0
	Let Td1686.4855
		Get dconst.2742 Ti1685.4856
		Let Td1687.4852
			FSub Td1686.4855 b0.2743
			Let Ti1688.4854
				Int:1
				Let Td1689.4853
					Get dconst.2742 Ti1688.4854
					Let d0.4767
						FMul Td1687.4852 Td1689.4853
						Let Ti1690.4851
							Int:1
							Let Td1691.4850
								Get v.2741 Ti1690.4851
								Let Td1692.4849
									FMul d0.4767 Td1691.4850
									Let Td1693.4848
										FAdd Td1692.4849 b1.2744
										Let Td1694.4846
											AppDir fabs.2526 Td1693.4848 )
											Let Td1695.4847
												AppDir o_param_b.2613 m.2740 )
												Let Tb1696.4832
													AppDir fless.2528 Td1694.4846 Td1695.4847 )
													Let Ti1697.4833
														Int:0
														Let Ti1710.4768
															IfEq Tb1696.4832 Ti1697.4833
																Int:0
																Let Ti1698.4845
																	Int:2
																	Let Td1699.4844
																		Get v.2741 Ti1698.4845
																		Let Td1700.4843
																			FMul d0.4767 Td1699.4844
																			Let Td1701.4842
																				FAdd Td1700.4843 b2.2745
																				Let Td1702.4840
																					AppDir fabs.2526 Td1701.4842 )
																					Let Td1703.4841
																						AppDir o_param_c.2615 m.2740 )
																						Let Tb1704.4834
																							AppDir fless.2528 Td1702.4840 Td1703.4841 )
																							Let Ti1705.4835
																								Int:0
																								IfEq Tb1704.4834 Ti1705.4835
																									Int:0
																									Let Ti1706.4839
																										Int:1
																										Let Td1707.4838
																											Get dconst.2742 Ti1706.4839
																											Let Tb1708.4836
																												AppDir fiszero.2520 Td1707.4838 )
																												Let Ti1709.4837
																													Int:0
																													IfEq Tb1708.4836 Ti1709.4837
																														Int:1
																														Int:0
															Let Ti1711.4769
																Int:0
																IfEq Ti1710.4768 Ti1711.4769
																	Let Ti1712.4831
																		Int:2
																		Let Td1713.4830
																			Get dconst.2742 Ti1712.4831
																			Let Td1714.4827
																				FSub Td1713.4830 b1.2744
																				Let Ti1715.4829
																					Int:3
																					Let Td1716.4828
																						Get dconst.2742 Ti1715.4829
																						Let d1.4772
																							FMul Td1714.4827 Td1716.4828
																							Let Ti1717.4826
																								Int:0
																								Let Td1718.4825
																									Get v.2741 Ti1717.4826
																									Let Td1719.4824
																										FMul d1.4772 Td1718.4825
																										Let Td1720.4823
																											FAdd Td1719.4824 b0.2743
																											Let Td1721.4821
																												AppDir fabs.2526 Td1720.4823 )
																												Let Td1722.4822
																													AppDir o_param_a.2611 m.2740 )
																													Let Tb1723.4807
																														AppDir fless.2528 Td1721.4821 Td1722.4822 )
																														Let Ti1724.4808
																															Int:0
																															Let Ti1737.4773
																																IfEq Tb1723.4807 Ti1724.4808
																																	Int:0
																																	Let Ti1725.4820
																																		Int:2
																																		Let Td1726.4819
																																			Get v.2741 Ti1725.4820
																																			Let Td1727.4818
																																				FMul d1.4772 Td1726.4819
																																				Let Td1728.4817
																																					FAdd Td1727.4818 b2.2745
																																					Let Td1729.4815
																																						AppDir fabs.2526 Td1728.4817 )
																																						Let Td1730.4816
																																							AppDir o_param_c.2615 m.2740 )
																																							Let Tb1731.4809
																																								AppDir fless.2528 Td1729.4815 Td1730.4816 )
																																								Let Ti1732.4810
																																									Int:0
																																									IfEq Tb1731.4809 Ti1732.4810
																																										Int:0
																																										Let Ti1733.4814
																																											Int:3
																																											Let Td1734.4813
																																												Get dconst.2742 Ti1733.4814
																																												Let Tb1735.4811
																																													AppDir fiszero.2520 Td1734.4813 )
																																													Let Ti1736.4812
																																														Int:0
																																														IfEq Tb1735.4811 Ti1736.4812
																																															Int:1
																																															Int:0
																																Let Ti1738.4774
																																	Int:0
																																	IfEq Ti1737.4773 Ti1738.4774
																																		Let Ti1739.4806
																																			Int:4
																																			Let Td1740.4805
																																				Get dconst.2742 Ti1739.4806
																																				Let Td1741.4802
																																					FSub Td1740.4805 b2.2745
																																					Let Ti1742.4804
																																						Int:5
																																						Let Td1743.4803
																																							Get dconst.2742 Ti1742.4804
																																							Let d2.4777
																																								FMul Td1741.4802 Td1743.4803
																																								Let Ti1744.4801
																																									Int:0
																																									Let Td1745.4800
																																										Get v.2741 Ti1744.4801
																																										Let Td1746.4799
																																											FMul d2.4777 Td1745.4800
																																											Let Td1747.4798
																																												FAdd Td1746.4799 b0.2743
																																												Let Td1748.4796
																																													AppDir fabs.2526 Td1747.4798 )
																																													Let Td1749.4797
																																														AppDir o_param_a.2611 m.2740 )
																																														Let Tb1750.4782
																																															AppDir fless.2528 Td1748.4796 Td1749.4797 )
																																															Let Ti1751.4783
																																																Int:0
																																																Let Ti1764.4778
																																																	IfEq Tb1750.4782 Ti1751.4783
																																																		Int:0
																																																		Let Ti1752.4795
																																																			Int:1
																																																			Let Td1753.4794
																																																				Get v.2741 Ti1752.4795
																																																				Let Td1754.4793
																																																					FMul d2.4777 Td1753.4794
																																																					Let Td1755.4792
																																																						FAdd Td1754.4793 b1.2744
																																																						Let Td1756.4790
																																																							AppDir fabs.2526 Td1755.4792 )
																																																							Let Td1757.4791
																																																								AppDir o_param_b.2613 m.2740 )
																																																								Let Tb1758.4784
																																																									AppDir fless.2528 Td1756.4790 Td1757.4791 )
																																																									Let Ti1759.4785
																																																										Int:0
																																																										IfEq Tb1758.4784 Ti1759.4785
																																																											Int:0
																																																											Let Ti1760.4789
																																																												Int:5
																																																												Let Td1761.4788
																																																													Get dconst.2742 Ti1760.4789
																																																													Let Tb1762.4786
																																																														AppDir fiszero.2520 Td1761.4788 )
																																																														Let Ti1763.4787
																																																															Int:0
																																																															IfEq Tb1762.4786 Ti1763.4787
																																																																Int:1
																																																																Int:0
																																																	Let Ti1765.4779
																																																		Int:0
																																																		IfEq Ti1764.4778 Ti1765.4779
																																																			Int:0
																																																			Let Ti1766.4781
																																																				Int:0
																																																				Let Tu78.4780
																																																					Put solver_dist.2492 Ti1766.4781 d2.4777
																																																					Int:3
																																		Let Ti1767.4776
																																			Int:0
																																			Let Tu77.4775
																																				Put solver_dist.2492 Ti1767.4776 d1.4772
																																				Int:2
																	Let Ti1768.4771
																		Int:0
																		Let Tu76.4770
																			Put solver_dist.2492 Ti1768.4771 d0.4767
																			Int:1
name : solver_surface_fast.2746 args : m.2747 dconst.2748 b0.2749 b1.2750 b2.2751  formal_fv : solver_dist.2492  
Let Ti1669.4766
	Int:0
	Let Td1670.4765
		Get dconst.2748 Ti1669.4766
		Let Tb1671.4750
			AppDir fisneg.2518 Td1670.4765 )
			Let Ti1672.4751
				Int:0
				IfEq Tb1671.4750 Ti1672.4751
					Int:0
					Let Ti1673.4753
						Int:0
						Let Ti1674.4764
							Int:1
							Let Td1675.4763
								Get dconst.2748 Ti1674.4764
								Let Td1676.4759
									FMul Td1675.4763 b0.2749
									Let Ti1677.4762
										Int:2
										Let Td1678.4761
											Get dconst.2748 Ti1677.4762
											Let Td1679.4760
												FMul Td1678.4761 b1.2750
												Let Td1680.4755
													FAdd Td1676.4759 Td1679.4760
													Let Ti1681.4758
														Int:3
														Let Td1682.4757
															Get dconst.2748 Ti1681.4758
															Let Td1683.4756
																FMul Td1682.4757 b2.2751
																Let Td1684.4754
																	FAdd Td1680.4755 Td1683.4756
																	Let Tu79.4752
																		Put solver_dist.2492 Ti1673.4753 Td1684.4754
																		Int:1
name : solver_second_fast.2752 args : m.2753 dconst.2754 b0.2755 b1.2756 b2.2757  formal_fv : solver_dist.2492  
Let Ti1635.4749
	Int:0
	Let aa.4710
		Get dconst.2754 Ti1635.4749
		Let Tb1636.4711
			AppDir fiszero.2520 aa.4710 )
			Let Ti1637.4712
				Int:0
				IfEq Tb1636.4711 Ti1637.4712
					Let Ti1638.4748
						Int:1
						Let Td1639.4747
							Get dconst.2754 Ti1638.4748
							Let Td1640.4743
								FMul Td1639.4747 b0.2755
								Let Ti1641.4746
									Int:2
									Let Td1642.4745
										Get dconst.2754 Ti1641.4746
										Let Td1643.4744
											FMul Td1642.4745 b1.2756
											Let Td1644.4739
												FAdd Td1640.4743 Td1643.4744
												Let Ti1645.4742
													Int:3
													Let Td1646.4741
														Get dconst.2754 Ti1645.4742
														Let Td1647.4740
															FMul Td1646.4741 b2.2757
															Let neg_bb.4713
																FAdd Td1644.4739 Td1647.4740
																Let cc0.4714
																	AppDir quadratic.2716 m.2753 b0.2755 b1.2756 b2.2757 )
																	Let Ti1648.4736
																		AppDir o_form.2603 m.2753 )
																		Let Ti1649.4737
																			Int:3
																			Let cc.4715
																				IfEq Ti1648.4736 Ti1649.4737
																					Let Td1650.4738
																						Float:1.000000
																						FSub cc0.4714 Td1650.4738
																					Var cc0.4714
																				Let Td1651.4734
																					AppDir fsqr.2524 neg_bb.4713 )
																					Let Td1652.4735
																						FMul aa.4710 cc.4715
																						Let d.4716
																							FSub Td1651.4734 Td1652.4735
																							Let Tb1653.4717
																								AppDir fispos.2516 d.4716 )
																								Let Ti1654.4718
																									Int:0
																									IfEq Tb1653.4717 Ti1654.4718
																										Int:0
																										Let Tb1655.4720
																											AppDir o_isinvert.2607 m.2753 )
																											Let Ti1656.4721
																												Int:0
																												Let Tu80.4719
																													IfEq Tb1655.4720 Ti1656.4721
																														Let Ti1657.4728
																															Int:0
																															Let Td1658.4733
																																AppDir min_caml_sqrt d.4716 )
																																Let Td1659.4730
																																	FSub neg_bb.4713 Td1658.4733
																																	Let Ti1660.4732
																																		Int:4
																																		Let Td1661.4731
																																			Get dconst.2754 Ti1660.4732
																																			Let Td1662.4729
																																				FMul Td1659.4730 Td1661.4731
																																				Put solver_dist.2492 Ti1657.4728 Td1662.4729
																														Let Ti1663.4722
																															Int:0
																															Let Td1664.4727
																																AppDir min_caml_sqrt d.4716 )
																																Let Td1665.4724
																																	FAdd neg_bb.4713 Td1664.4727
																																	Let Ti1666.4726
																																		Int:4
																																		Let Td1667.4725
																																			Get dconst.2754 Ti1666.4726
																																			Let Td1668.4723
																																				FMul Td1665.4724 Td1667.4725
																																				Put solver_dist.2492 Ti1663.4722 Td1668.4723
																													Int:1
					Int:0
name : solver_fast.2758 args : index.2759 dirvec.2760 org.2761  formal_fv : objects.2485 solver_rect_fast.2739 solver_second_fast.2752 solver_surface_fast.2746  
Let m.4691
	Get objects.2485 index.2759
	Let Ti1623.4709
		Int:0
		Let Td1624.4707
			Get org.2761 Ti1623.4709
			Let Td1625.4708
				AppDir o_param_x.2619 m.4691 )
				Let b0.4692
					FSub Td1624.4707 Td1625.4708
					Let Ti1626.4706
						Int:1
						Let Td1627.4704
							Get org.2761 Ti1626.4706
							Let Td1628.4705
								AppDir o_param_y.2621 m.4691 )
								Let b1.4693
									FSub Td1627.4704 Td1628.4705
									Let Ti1629.4703
										Int:2
										Let Td1630.4701
											Get org.2761 Ti1629.4703
											Let Td1631.4702
												AppDir o_param_z.2623 m.4691 )
												Let b2.4694
													FSub Td1630.4701 Td1631.4702
													Let dconsts.4695
														AppDir d_const.2664 dirvec.2760 )
														Let dconst.4696
															Get dconsts.4695 index.2759
															Let m_shape.4697
																AppDir o_form.2603 m.4691 )
																Let Ti1632.4698
																	Int:1
																	IfEq m_shape.4697 Ti1632.4698
																		Let Ta1633.4700
																			AppDir d_vec.2662 dirvec.2760 )
																			AppCls solver_rect_fast.2739 m.4691 Ta1633.4700 dconst.4696 b0.4692 b1.4693 b2.4694 )
																		Let Ti1634.4699
																			Int:2
																			IfEq m_shape.4697 Ti1634.4699
																				AppCls solver_surface_fast.2746 m.4691 dconst.4696 b0.4692 b1.4693 b2.4694 )
																				AppCls solver_second_fast.2752 m.4691 dconst.4696 b0.4692 b1.4693 b2.4694 )
name : solver_surface_fast2.2762 args : m.2763 dconst.2764 sconst.2765 b0.2766 b1.2767 b2.2768  formal_fv : solver_dist.2492  
Let Ti1613.4690
	Int:0
	Let Td1614.4689
		Get dconst.2764 Ti1613.4690
		Let Tb1615.4680
			AppDir fisneg.2518 Td1614.4689 )
			Let Ti1616.4681
				Int:0
				IfEq Tb1615.4680 Ti1616.4681
					Int:0
					Let Ti1617.4683
						Int:0
						Let Ti1618.4688
							Int:0
							Let Td1619.4685
								Get dconst.2764 Ti1618.4688
								Let Ti1620.4687
									Int:3
									Let Td1621.4686
										Get sconst.2765 Ti1620.4687
										Let Td1622.4684
											FMul Td1619.4685 Td1621.4686
											Let Tu81.4682
												Put solver_dist.2492 Ti1617.4683 Td1622.4684
												Int:1
name : solver_second_fast2.2769 args : m.2770 dconst.2771 sconst.2772 b0.2773 b1.2774 b2.2775  formal_fv : solver_dist.2492  
Let Ti1581.4679
	Int:0
	Let aa.4643
		Get dconst.2771 Ti1581.4679
		Let Tb1582.4644
			AppDir fiszero.2520 aa.4643 )
			Let Ti1583.4645
				Int:0
				IfEq Tb1582.4644 Ti1583.4645
					Let Ti1584.4678
						Int:1
						Let Td1585.4677
							Get dconst.2771 Ti1584.4678
							Let Td1586.4673
								FMul Td1585.4677 b0.2773
								Let Ti1587.4676
									Int:2
									Let Td1588.4675
										Get dconst.2771 Ti1587.4676
										Let Td1589.4674
											FMul Td1588.4675 b1.2774
											Let Td1590.4669
												FAdd Td1586.4673 Td1589.4674
												Let Ti1591.4672
													Int:3
													Let Td1592.4671
														Get dconst.2771 Ti1591.4672
														Let Td1593.4670
															FMul Td1592.4671 b2.2775
															Let neg_bb.4646
																FAdd Td1590.4669 Td1593.4670
																Let Ti1594.4668
																	Int:3
																	Let cc.4647
																		Get sconst.2772 Ti1594.4668
																		Let Td1595.4666
																			AppDir fsqr.2524 neg_bb.4646 )
																			Let Td1596.4667
																				FMul aa.4643 cc.4647
																				Let d.4648
																					FSub Td1595.4666 Td1596.4667
																					Let Tb1597.4649
																						AppDir fispos.2516 d.4648 )
																						Let Ti1598.4650
																							Int:0
																							IfEq Tb1597.4649 Ti1598.4650
																								Int:0
																								Let Tb1599.4652
																									AppDir o_isinvert.2607 m.2770 )
																									Let Ti1600.4653
																										Int:0
																										Let Tu82.4651
																											IfEq Tb1599.4652 Ti1600.4653
																												Let Ti1601.4660
																													Int:0
																													Let Td1602.4665
																														AppDir min_caml_sqrt d.4648 )
																														Let Td1603.4662
																															FSub neg_bb.4646 Td1602.4665
																															Let Ti1604.4664
																																Int:4
																																Let Td1605.4663
																																	Get dconst.2771 Ti1604.4664
																																	Let Td1606.4661
																																		FMul Td1603.4662 Td1605.4663
																																		Put solver_dist.2492 Ti1601.4660 Td1606.4661
																												Let Ti1607.4654
																													Int:0
																													Let Td1608.4659
																														AppDir min_caml_sqrt d.4648 )
																														Let Td1609.4656
																															FAdd neg_bb.4646 Td1608.4659
																															Let Ti1610.4658
																																Int:4
																																Let Td1611.4657
																																	Get dconst.2771 Ti1610.4658
																																	Let Td1612.4655
																																		FMul Td1609.4656 Td1611.4657
																																		Put solver_dist.2492 Ti1607.4654 Td1612.4655
																											Int:1
					Int:0
name : solver_fast2.2776 args : index.2777 dirvec.2778  formal_fv : objects.2485 solver_rect_fast.2739 solver_second_fast2.2769 solver_surface_fast2.2762  
Let m.4629
	Get objects.2485 index.2777
	Let sconst.4630
		AppDir o_param_ctbl.2641 m.4629 )
		Let Ti1575.4642
			Int:0
			Let b0.4631
				Get sconst.4630 Ti1575.4642
				Let Ti1576.4641
					Int:1
					Let b1.4632
						Get sconst.4630 Ti1576.4641
						Let Ti1577.4640
							Int:2
							Let b2.4633
								Get sconst.4630 Ti1577.4640
								Let dconsts.4634
									AppDir d_const.2664 dirvec.2778 )
									Let dconst.4635
										Get dconsts.4634 index.2777
										Let m_shape.4636
											AppDir o_form.2603 m.4629 )
											Let Ti1578.4637
												Int:1
												IfEq m_shape.4636 Ti1578.4637
													Let Ta1579.4639
														AppDir d_vec.2662 dirvec.2778 )
														AppCls solver_rect_fast.2739 m.4629 Ta1579.4639 dconst.4635 b0.4631 b1.4632 b2.4633 )
													Let Ti1580.4638
														Int:2
														IfEq m_shape.4636 Ti1580.4638
															AppCls solver_surface_fast2.2762 m.4629 dconst.4635 sconst.4630 b0.4631 b1.4632 b2.4633 )
															AppCls solver_second_fast2.2769 m.4629 dconst.4635 sconst.4630 b0.4631 b1.4632 b2.4633 )
name : setup_rect_table.2779 args : vec.2780 m.2781  formal_fv :  
Let Ti1513.4627
	Int:6
	Let Td1514.4628
		Float:0.000000
		Let const.4560
			AppDir min_caml_create_float_array Ti1513.4627 Td1514.4628 )
			Let Ti1515.4626
				Int:0
				Let Td1516.4625
					Get vec.2780 Ti1515.4626
					Let Tb1517.4606
						AppDir fiszero.2520 Td1516.4625 )
						Let Ti1518.4607
							Int:0
							Let Tu88.4561
								IfEq Tb1517.4606 Ti1518.4607
									Let Ti1519.4617
										Int:0
										Let Tb1520.4621
											AppDir o_isinvert.2607 m.2781 )
											Let Ti1521.4624
												Int:0
												Let Td1522.4623
													Get vec.2780 Ti1521.4624
													Let Tb1523.4622
														AppDir fisneg.2518 Td1522.4623 )
														Let Tb1524.4619
															AppDir xor.2544 Tb1520.4621 Tb1523.4622 )
															Let Td1525.4620
																AppDir o_param_a.2611 m.2781 )
																Let Td1526.4618
																	AppDir fneg_cond.2549 Tb1524.4619 Td1525.4620 )
																	Let Tu83.4610
																		Put const.4560 Ti1519.4617 Td1526.4618
																		Let Ti1527.4611
																			Int:1
																			Let Td1528.4613
																				Float:1.000000
																				Let Ti1529.4616
																					Int:0
																					Let Td1530.4614
																						Get vec.2780 Ti1529.4616
																						Let Td1531.4615
																							FReciprocal Td1530.4614
																							Let Td1532.4612
																								FMul Td1528.4613 Td1531.4615
																								Put const.4560 Ti1527.4611 Td1532.4612
									Let Ti1533.4608
										Int:1
										Let Td1534.4609
											Float:0.000000
											Put const.4560 Ti1533.4608 Td1534.4609
								Let Ti1535.4605
									Int:1
									Let Td1536.4604
										Get vec.2780 Ti1535.4605
										Let Tb1537.4585
											AppDir fiszero.2520 Td1536.4604 )
											Let Ti1538.4586
												Int:0
												Let Tu87.4562
													IfEq Tb1537.4585 Ti1538.4586
														Let Ti1539.4596
															Int:2
															Let Tb1540.4600
																AppDir o_isinvert.2607 m.2781 )
																Let Ti1541.4603
																	Int:1
																	Let Td1542.4602
																		Get vec.2780 Ti1541.4603
																		Let Tb1543.4601
																			AppDir fisneg.2518 Td1542.4602 )
																			Let Tb1544.4598
																				AppDir xor.2544 Tb1540.4600 Tb1543.4601 )
																				Let Td1545.4599
																					AppDir o_param_b.2613 m.2781 )
																					Let Td1546.4597
																						AppDir fneg_cond.2549 Tb1544.4598 Td1545.4599 )
																						Let Tu84.4589
																							Put const.4560 Ti1539.4596 Td1546.4597
																							Let Ti1547.4590
																								Int:3
																								Let Td1548.4592
																									Float:1.000000
																									Let Ti1549.4595
																										Int:1
																										Let Td1550.4593
																											Get vec.2780 Ti1549.4595
																											Let Td1551.4594
																												FReciprocal Td1550.4593
																												Let Td1552.4591
																													FMul Td1548.4592 Td1551.4594
																													Put const.4560 Ti1547.4590 Td1552.4591
														Let Ti1553.4587
															Int:3
															Let Td1554.4588
																Float:0.000000
																Put const.4560 Ti1553.4587 Td1554.4588
													Let Ti1555.4584
														Int:2
														Let Td1556.4583
															Get vec.2780 Ti1555.4584
															Let Tb1557.4564
																AppDir fiszero.2520 Td1556.4583 )
																Let Ti1558.4565
																	Int:0
																	Let Tu86.4563
																		IfEq Tb1557.4564 Ti1558.4565
																			Let Ti1559.4575
																				Int:4
																				Let Tb1560.4579
																					AppDir o_isinvert.2607 m.2781 )
																					Let Ti1561.4582
																						Int:2
																						Let Td1562.4581
																							Get vec.2780 Ti1561.4582
																							Let Tb1563.4580
																								AppDir fisneg.2518 Td1562.4581 )
																								Let Tb1564.4577
																									AppDir xor.2544 Tb1560.4579 Tb1563.4580 )
																									Let Td1565.4578
																										AppDir o_param_c.2615 m.2781 )
																										Let Td1566.4576
																											AppDir fneg_cond.2549 Tb1564.4577 Td1565.4578 )
																											Let Tu85.4568
																												Put const.4560 Ti1559.4575 Td1566.4576
																												Let Ti1567.4569
																													Int:5
																													Let Td1568.4571
																														Float:1.000000
																														Let Ti1569.4574
																															Int:2
																															Let Td1570.4572
																																Get vec.2780 Ti1569.4574
																																Let Td1571.4573
																																	FReciprocal Td1570.4572
																																	Let Td1572.4570
																																		FMul Td1568.4571 Td1571.4573
																																		Put const.4560 Ti1567.4569 Td1572.4570
																			Let Ti1573.4566
																				Int:5
																				Let Td1574.4567
																					Float:0.000000
																					Put const.4560 Ti1573.4566 Td1574.4567
																		Var const.4560
name : setup_surface_table.2782 args : vec.2783 m.2784  formal_fv :  
Let Ti1475.4558
	Int:4
	Let Td1476.4559
		Float:0.000000
		Let const.4516
			AppDir min_caml_create_float_array Ti1475.4558 Td1476.4559 )
			Let Ti1477.4557
				Int:0
				Let Td1478.4555
					Get vec.2783 Ti1477.4557
					Let Td1479.4556
						AppDir o_param_a.2611 m.2784 )
						Let Td1480.4550
							FMul Td1478.4555 Td1479.4556
							Let Ti1481.4554
								Int:1
								Let Td1482.4552
									Get vec.2783 Ti1481.4554
									Let Td1483.4553
										AppDir o_param_b.2613 m.2784 )
										Let Td1484.4551
											FMul Td1482.4552 Td1483.4553
											Let Td1485.4545
												FAdd Td1480.4550 Td1484.4551
												Let Ti1486.4549
													Int:2
													Let Td1487.4547
														Get vec.2783 Ti1486.4549
														Let Td1488.4548
															AppDir o_param_c.2615 m.2784 )
															Let Td1489.4546
																FMul Td1487.4547 Td1488.4548
																Let d.4517
																	FAdd Td1485.4545 Td1489.4546
																	Let Tb1490.4519
																		AppDir fispos.2516 d.4517 )
																		Let Ti1491.4520
																			Int:0
																			Let Tu92.4518
																				IfEq Tb1490.4519 Ti1491.4520
																					Let Ti1492.4543
																						Int:0
																						Let Td1493.4544
																							Float:0.000000
																							Put const.4516 Ti1492.4543 Td1493.4544
																					Let Ti1494.4539
																						Int:0
																						Let Td1495.4541
																							Float:-1.000000
																							Let Td1496.4542
																								FReciprocal d.4517
																								Let Td1497.4540
																									FMul Td1495.4541 Td1496.4542
																									Let Tu91.4521
																										Put const.4516 Ti1494.4539 Td1497.4540
																										Let Ti1498.4534
																											Int:1
																											Let Td1499.4537
																												AppDir o_param_a.2611 m.2784 )
																												Let Td1500.4538
																													FReciprocal d.4517
																													Let Td1501.4536
																														FMul Td1499.4537 Td1500.4538
																														Let Td1502.4535
																															AppDir fneg.2514 Td1501.4536 )
																															Let Tu90.4522
																																Put const.4516 Ti1498.4534 Td1502.4535
																																Let Ti1503.4529
																																	Int:2
																																	Let Td1504.4532
																																		AppDir o_param_b.2613 m.2784 )
																																		Let Td1505.4533
																																			FReciprocal d.4517
																																			Let Td1506.4531
																																				FMul Td1504.4532 Td1505.4533
																																				Let Td1507.4530
																																					AppDir fneg.2514 Td1506.4531 )
																																					Let Tu89.4523
																																						Put const.4516 Ti1503.4529 Td1507.4530
																																						Let Ti1508.4524
																																							Int:3
																																							Let Td1509.4527
																																								AppDir o_param_c.2615 m.2784 )
																																								Let Td1510.4528
																																									FReciprocal d.4517
																																									Let Td1511.4526
																																										FMul Td1509.4527 Td1510.4528
																																										Let Td1512.4525
																																											AppDir fneg.2514 Td1511.4526 )
																																											Put const.4516 Ti1508.4524 Td1512.4525
																				Var const.4516
name : setup_second_table.2785 args : v.2786 m.2787  formal_fv :  
Let Ti1407.4514
	Int:5
	Let Td1408.4515
		Float:0.000000
		Let const.4436
			AppDir min_caml_create_float_array Ti1407.4514 Td1408.4515 )
			Let Ti1409.4513
				Int:0
				Let Td1410.4508
					Get v.2786 Ti1409.4513
					Let Ti1411.4512
						Int:1
						Let Td1412.4509
							Get v.2786 Ti1411.4512
							Let Ti1413.4511
								Int:2
								Let Td1414.4510
									Get v.2786 Ti1413.4511
									Let aa.4437
										AppDir quadratic.2716 m.2787 Td1410.4508 Td1412.4509 Td1414.4510 )
										Let Ti1415.4507
											Int:0
											Let Td1416.4505
												Get v.2786 Ti1415.4507
												Let Td1417.4506
													AppDir o_param_a.2611 m.2787 )
													Let Td1418.4504
														FMul Td1416.4505 Td1417.4506
														Let c1.4438
															AppDir fneg.2514 Td1418.4504 )
															Let Ti1419.4503
																Int:1
																Let Td1420.4501
																	Get v.2786 Ti1419.4503
																	Let Td1421.4502
																		AppDir o_param_b.2613 m.2787 )
																		Let Td1422.4500
																			FMul Td1420.4501 Td1421.4502
																			Let c2.4439
																				AppDir fneg.2514 Td1422.4500 )
																				Let Ti1423.4499
																					Int:2
																					Let Td1424.4497
																						Get v.2786 Ti1423.4499
																						Let Td1425.4498
																							AppDir o_param_c.2615 m.2787 )
																							Let Td1426.4496
																								FMul Td1424.4497 Td1425.4498
																								Let c3.4440
																									AppDir fneg.2514 Td1426.4496 )
																									Let Ti1427.4495
																										Int:0
																										Let Tu99.4441
																											Put const.4436 Ti1427.4495 aa.4437
																											Let Ti1428.4450
																												AppDir o_isrot.2609 m.2787 )
																												Let Ti1429.4451
																													Int:0
																													Let Tu98.4442
																														IfEq Ti1428.4450 Ti1429.4451
																															Let Ti1430.4494
																																Int:1
																																Let Tu96.4490
																																	Put const.4436 Ti1430.4494 c1.4438
																																	Let Ti1431.4493
																																		Int:2
																																		Let Tu95.4491
																																			Put const.4436 Ti1431.4493 c2.4439
																																			Let Ti1432.4492
																																				Int:3
																																				Put const.4436 Ti1432.4492 c3.4440
																															Let Ti1433.4478
																																Int:1
																																Let Ti1434.4489
																																	Int:2
																																	Let Td1435.4487
																																		Get v.2786 Ti1434.4489
																																		Let Td1436.4488
																																			AppDir o_param_r2.2637 m.2787 )
																																			Let Td1437.4482
																																				FMul Td1435.4487 Td1436.4488
																																				Let Ti1438.4486
																																					Int:1
																																					Let Td1439.4484
																																						Get v.2786 Ti1438.4486
																																						Let Td1440.4485
																																							AppDir o_param_r3.2639 m.2787 )
																																							Let Td1441.4483
																																								FMul Td1439.4484 Td1440.4485
																																								Let Td1442.4481
																																									FAdd Td1437.4482 Td1441.4483
																																									Let Td1443.4480
																																										AppDir fhalf.2522 Td1442.4481 )
																																										Let Td1444.4479
																																											FSub c1.4438 Td1443.4480
																																											Let Tu94.4452
																																												Put const.4436 Ti1433.4478 Td1444.4479
																																												Let Ti1445.4466
																																													Int:2
																																													Let Ti1446.4477
																																														Int:2
																																														Let Td1447.4475
																																															Get v.2786 Ti1446.4477
																																															Let Td1448.4476
																																																AppDir o_param_r1.2635 m.2787 )
																																																Let Td1449.4470
																																																	FMul Td1447.4475 Td1448.4476
																																																	Let Ti1450.4474
																																																		Int:0
																																																		Let Td1451.4472
																																																			Get v.2786 Ti1450.4474
																																																			Let Td1452.4473
																																																				AppDir o_param_r3.2639 m.2787 )
																																																				Let Td1453.4471
																																																					FMul Td1451.4472 Td1452.4473
																																																					Let Td1454.4469
																																																						FAdd Td1449.4470 Td1453.4471
																																																						Let Td1455.4468
																																																							AppDir fhalf.2522 Td1454.4469 )
																																																							Let Td1456.4467
																																																								FSub c2.4439 Td1455.4468
																																																								Let Tu93.4453
																																																									Put const.4436 Ti1445.4466 Td1456.4467
																																																									Let Ti1457.4454
																																																										Int:3
																																																										Let Ti1458.4465
																																																											Int:1
																																																											Let Td1459.4463
																																																												Get v.2786 Ti1458.4465
																																																												Let Td1460.4464
																																																													AppDir o_param_r1.2635 m.2787 )
																																																													Let Td1461.4458
																																																														FMul Td1459.4463 Td1460.4464
																																																														Let Ti1462.4462
																																																															Int:0
																																																															Let Td1463.4460
																																																																Get v.2786 Ti1462.4462
																																																																Let Td1464.4461
																																																																	AppDir o_param_r2.2637 m.2787 )
																																																																	Let Td1465.4459
																																																																		FMul Td1463.4460 Td1464.4461
																																																																		Let Td1466.4457
																																																																			FAdd Td1461.4458 Td1465.4459
																																																																			Let Td1467.4456
																																																																				AppDir fhalf.2522 Td1466.4457 )
																																																																				Let Td1468.4455
																																																																					FSub c3.4440 Td1467.4456
																																																																					Put const.4436 Ti1457.4454 Td1468.4455
																														Let Tb1469.4444
																															AppDir fiszero.2520 aa.4437 )
																															Let Ti1470.4445
																																Int:0
																																Let Tu97.4443
																																	IfEq Tb1469.4444 Ti1470.4445
																																		Let Ti1471.4446
																																			Int:4
																																			Let Td1472.4448
																																				Float:1.000000
																																				Let Td1473.4449
																																					FReciprocal aa.4437
																																					Let Td1474.4447
																																						FMul Td1472.4448 Td1473.4449
																																						Put const.4436 Ti1471.4446 Td1474.4447
																																		Unit
																																	Var const.4436
name : iter_setup_dirvec_constants.2788 args : dirvec.2789 index.2790  formal_fv : objects.2485  
Let Ti1399.4423
	Int:0
	IfLE Ti1399.4423 index.2790
		Let m.4424
			Get objects.2485 index.2790
			Let dconst.4425
				AppDir d_const.2664 dirvec.2789 )
				Let v.4426
					AppDir d_vec.2662 dirvec.2789 )
					Let m_shape.4427
						AppDir o_form.2603 m.4424 )
						Let Ti1400.4431
							Int:1
							Let Tu100.4428
								IfEq m_shape.4427 Ti1400.4431
									Let Ta1401.4435
										AppDir setup_rect_table.2779 v.4426 m.4424 )
										Put dconst.4425 index.2790 Ta1401.4435
									Let Ti1402.4432
										Int:2
										IfEq m_shape.4427 Ti1402.4432
											Let Ta1403.4434
												AppDir setup_surface_table.2782 v.4426 m.4424 )
												Put dconst.4425 index.2790 Ta1403.4434
											Let Ta1404.4433
												AppDir setup_second_table.2785 v.4426 m.4424 )
												Put dconst.4425 index.2790 Ta1404.4433
								Let Ti1405.4430
									Int:1
									Let Ti1406.4429
										Sub index.2790 Ti1405.4430
										AppCls iter_setup_dirvec_constants.2788 dirvec.2789 Ti1406.4429 )
		Unit
name : setup_dirvec_constants.2791 args : dirvec.2792  formal_fv : iter_setup_dirvec_constants.2788 n_objects.2484  
Let Ti1395.4422
	Int:0
	Let Ti1396.4420
		Get n_objects.2484 Ti1395.4422
		Let Ti1397.4421
			Int:1
			Let Ti1398.4419
				Sub Ti1396.4420 Ti1397.4421
				AppCls iter_setup_dirvec_constants.2788 dirvec.2792 Ti1398.4419 )
name : setup_startp_constants.2793 args : p.2794 index.2795  formal_fv : objects.2485  
Let Ti1356.4372
	Int:0
	IfLE Ti1356.4372 index.2795
		Let obj.4373
			Get objects.2485 index.2795
			Let sconst.4374
				AppDir o_param_ctbl.2641 obj.4373 )
				Let m_shape.4375
					AppDir o_form.2603 obj.4373 )
					Let Ti1357.4414
						Int:0
						Let Ti1358.4418
							Int:0
							Let Td1359.4416
								Get p.2794 Ti1358.4418
								Let Td1360.4417
									AppDir o_param_x.2619 obj.4373 )
									Let Td1361.4415
										FSub Td1359.4416 Td1360.4417
										Let Tu104.4376
											Put sconst.4374 Ti1357.4414 Td1361.4415
											Let Ti1362.4409
												Int:1
												Let Ti1363.4413
													Int:1
													Let Td1364.4411
														Get p.2794 Ti1363.4413
														Let Td1365.4412
															AppDir o_param_y.2621 obj.4373 )
															Let Td1366.4410
																FSub Td1364.4411 Td1365.4412
																Let Tu103.4377
																	Put sconst.4374 Ti1362.4409 Td1366.4410
																	Let Ti1367.4404
																		Int:2
																		Let Ti1368.4408
																			Int:2
																			Let Td1369.4406
																				Get p.2794 Ti1368.4408
																				Let Td1370.4407
																					AppDir o_param_z.2623 obj.4373 )
																					Let Td1371.4405
																						FSub Td1369.4406 Td1370.4407
																						Let Tu102.4378
																							Put sconst.4374 Ti1367.4404 Td1371.4405
																							Let Ti1372.4382
																								Int:2
																								Let Tu101.4379
																									IfEq m_shape.4375 Ti1372.4382
																										Let Ti1373.4395
																											Int:3
																											Let Ta1374.4397
																												AppDir o_param_abc.2617 obj.4373 )
																												Let Ti1375.4403
																													Int:0
																													Let Td1376.4398
																														Get sconst.4374 Ti1375.4403
																														Let Ti1377.4402
																															Int:1
																															Let Td1378.4399
																																Get sconst.4374 Ti1377.4402
																																Let Ti1379.4401
																																	Int:2
																																	Let Td1380.4400
																																		Get sconst.4374 Ti1379.4401
																																		Let Td1381.4396
																																			AppDir veciprod2.2579 Ta1374.4397 Td1376.4398 Td1378.4399 Td1380.4400 )
																																			Put sconst.4374 Ti1373.4395 Td1381.4396
																										Let Ti1382.4383
																											Int:2
																											IfLE m_shape.4375 Ti1382.4383
																												Unit
																												Let Ti1383.4394
																													Int:0
																													Let Td1384.4389
																														Get sconst.4374 Ti1383.4394
																														Let Ti1385.4393
																															Int:1
																															Let Td1386.4390
																																Get sconst.4374 Ti1385.4393
																																Let Ti1387.4392
																																	Int:2
																																	Let Td1388.4391
																																		Get sconst.4374 Ti1387.4392
																																		Let cc0.4384
																																			AppDir quadratic.2716 obj.4373 Td1384.4389 Td1386.4390 Td1388.4391 )
																																			Let Ti1389.4385
																																				Int:3
																																				Let Ti1390.4387
																																					Int:3
																																					Let Td1392.4386
																																						IfEq m_shape.4375 Ti1390.4387
																																							Let Td1391.4388
																																								Float:1.000000
																																								FSub cc0.4384 Td1391.4388
																																							Var cc0.4384
																																						Put sconst.4374 Ti1389.4385 Td1392.4386
																									Let Ti1393.4381
																										Int:1
																										Let Ti1394.4380
																											Sub index.2795 Ti1393.4381
																											AppCls setup_startp_constants.2793 p.2794 Ti1394.4380 )
		Unit
name : setup_startp.2796 args : p.2797  formal_fv : n_objects.2484 setup_startp_constants.2793 startp_fast.2505  
Let Tu105.4367
	AppDir veccpy.2565 startp_fast.2505 p.2797 )
	Let Ti1352.4371
		Int:0
		Let Ti1353.4369
			Get n_objects.2484 Ti1352.4371
			Let Ti1354.4370
				Int:1
				Let Ti1355.4368
					Sub Ti1353.4369 Ti1354.4370
					AppCls setup_startp_constants.2793 p.2797 Ti1355.4368 )
name : is_rect_outside.2798 args : m.2799 p0.2800 p1.2801 p2.2802  formal_fv :  
Let Td1338.4365
	AppDir fabs.2526 p0.2800 )
	Let Td1339.4366
		AppDir o_param_a.2611 m.2799 )
		Let Tb1340.4357
			AppDir fless.2528 Td1338.4365 Td1339.4366 )
			Let Ti1341.4358
				Int:0
				Let Ti1348.4353
					IfEq Tb1340.4357 Ti1341.4358
						Int:0
						Let Td1342.4363
							AppDir fabs.2526 p1.2801 )
							Let Td1343.4364
								AppDir o_param_b.2613 m.2799 )
								Let Tb1344.4359
									AppDir fless.2528 Td1342.4363 Td1343.4364 )
									Let Ti1345.4360
										Int:0
										IfEq Tb1344.4359 Ti1345.4360
											Int:0
											Let Td1346.4361
												AppDir fabs.2526 p2.2802 )
												Let Td1347.4362
													AppDir o_param_c.2615 m.2799 )
													AppDir fless.2528 Td1346.4361 Td1347.4362 )
					Let Ti1349.4354
						Int:0
						IfEq Ti1348.4353 Ti1349.4354
							Let Tb1350.4355
								AppDir o_isinvert.2607 m.2799 )
								Let Ti1351.4356
									Int:0
									IfEq Tb1350.4355 Ti1351.4356
										Int:1
										Int:0
							AppDir o_isinvert.2607 m.2799 )
name : is_plane_outside.2803 args : m.2804 p0.2805 p1.2806 p2.2807  formal_fv :  
Let Ta1333.4352
	AppDir o_param_abc.2617 m.2804 )
	Let w.4347
		AppDir veciprod2.2579 Ta1333.4352 p0.2805 p1.2806 p2.2807 )
		Let Tb1334.4350
			AppDir o_isinvert.2607 m.2804 )
			Let Tb1335.4351
				AppDir fisneg.2518 w.4347 )
				Let Tb1336.4348
					AppDir xor.2544 Tb1334.4350 Tb1335.4351 )
					Let Ti1337.4349
						Int:0
						IfEq Tb1336.4348 Ti1337.4349
							Int:1
							Int:0
name : is_second_outside.2808 args : m.2809 p0.2810 p1.2811 p2.2812  formal_fv :  
Let w.4338
	AppDir quadratic.2716 m.2809 p0.2810 p1.2811 p2.2812 )
	Let Ti1326.4344
		AppDir o_form.2603 m.2809 )
		Let Ti1327.4345
			Int:3
			Let w2.4339
				IfEq Ti1326.4344 Ti1327.4345
					Let Td1328.4346
						Float:1.000000
						FSub w.4338 Td1328.4346
					Var w.4338
				Let Tb1329.4342
					AppDir o_isinvert.2607 m.2809 )
					Let Tb1330.4343
						AppDir fisneg.2518 w2.4339 )
						Let Tb1331.4340
							AppDir xor.2544 Tb1329.4342 Tb1330.4343 )
							Let Ti1332.4341
								Int:0
								IfEq Tb1331.4340 Ti1332.4341
									Int:1
									Int:0
name : is_outside.2813 args : m.2814 q0.2815 q1.2816 q2.2817  formal_fv :  
Let Td1321.4337
	AppDir o_param_x.2619 m.2814 )
	Let p0.4329
		FSub q0.2815 Td1321.4337
		Let Td1322.4336
			AppDir o_param_y.2621 m.2814 )
			Let p1.4330
				FSub q1.2816 Td1322.4336
				Let Td1323.4335
					AppDir o_param_z.2623 m.2814 )
					Let p2.4331
						FSub q2.2817 Td1323.4335
						Let m_shape.4332
							AppDir o_form.2603 m.2814 )
							Let Ti1324.4333
								Int:1
								IfEq m_shape.4332 Ti1324.4333
									AppDir is_rect_outside.2798 m.2814 p0.4329 p1.4330 p2.4331 )
									Let Ti1325.4334
										Int:2
										IfEq m_shape.4332 Ti1325.4334
											AppDir is_plane_outside.2803 m.2814 p0.4329 p1.4330 p2.4331 )
											AppDir is_second_outside.2808 m.2814 p0.4329 p1.4330 p2.4331 )
name : check_all_inside.2818 args : ofs.2819 iand.2820 q0.2821 q1.2822 q2.2823  formal_fv : objects.2485  
Let head.4321
	Get iand.2820 ofs.2819
	Let Ti1315.4322
		Int:-1
		IfEq head.4321 Ti1315.4322
			Int:1
			Let Tt1316.4327
				Get objects.2485 head.4321
				Let Tb1317.4323
					AppDir is_outside.2813 Tt1316.4327 q0.2821 q1.2822 q2.2823 )
					Let Ti1318.4324
						Int:0
						IfEq Tb1317.4323 Ti1318.4324
							Let Ti1319.4326
								Int:1
								Let Ti1320.4325
									Add ofs.2819 Ti1319.4326
									AppCls check_all_inside.2818 Ti1320.4325 iand.2820 q0.2821 q1.2822 q2.2823 )
							Int:0
name : shadow_check_and_group.2824 args : iand_ofs.2825 and_group.2826  formal_fv : check_all_inside.2818 intersection_point.2495 light.2488 light_dirvec.2511 objects.2485 solver_dist.2492 solver_fast.2758  
Let Ti1280.4280
	Get and_group.2826 iand_ofs.2825
	Let Ti1282.4281
		Int:-1
		IfEq Ti1280.4280 Ti1282.4281
			Int:0
			Let obj.4282
				Get and_group.2826 iand_ofs.2825
				Let t0.4283
					AppCls solver_fast.2758 obj.4282 light_dirvec.2511 intersection_point.2495 )
					Let Ti1283.4319
						Int:0
						Let t0p.4284
							Get solver_dist.2492 Ti1283.4319
							Let Ti1284.4317
								Int:0
								Let Ti1286.4285
									IfEq t0.4283 Ti1284.4317
										Int:0
										Let Td1285.4318
											Float:-0.200000
											AppDir fless.2528 t0p.4284 Td1285.4318 )
									Let Ti1287.4286
										Int:0
										IfEq Ti1286.4285 Ti1287.4286
											Let Tt1288.4316
												Get objects.2485 obj.4282
												Let Tb1289.4312
													AppDir o_isinvert.2607 Tt1288.4316 )
													Let Ti1290.4313
														Int:0
														IfEq Tb1289.4312 Ti1290.4313
															Int:0
															Let Ti1291.4315
																Int:1
																Let Ti1292.4314
																	Add iand_ofs.2825 Ti1291.4315
																	AppCls shadow_check_and_group.2824 Ti1292.4314 and_group.2826 )
											Let Td1293.4311
												Float:0.010000
												Let t.4287
													FAdd t0p.4284 Td1293.4311
													Let Ti1294.4310
														Int:0
														Let Td1295.4309
															Get light.2488 Ti1294.4310
															Let Td1296.4306
																FMul Td1295.4309 t.4287
																Let Ti1297.4308
																	Int:0
																	Let Td1298.4307
																		Get intersection_point.2495 Ti1297.4308
																		Let q0.4288
																			FAdd Td1296.4306 Td1298.4307
																			Let Ti1299.4305
																				Int:1
																				Let Td1300.4304
																					Get light.2488 Ti1299.4305
																					Let Td1301.4301
																						FMul Td1300.4304 t.4287
																						Let Ti1302.4303
																							Int:1
																							Let Td1303.4302
																								Get intersection_point.2495 Ti1302.4303
																								Let q1.4289
																									FAdd Td1301.4301 Td1303.4302
																									Let Ti1304.4300
																										Int:2
																										Let Td1305.4299
																											Get light.2488 Ti1304.4300
																											Let Td1306.4296
																												FMul Td1305.4299 t.4287
																												Let Ti1307.4298
																													Int:2
																													Let Td1308.4297
																														Get intersection_point.2495 Ti1307.4298
																														Let q2.4290
																															FAdd Td1306.4296 Td1308.4297
																															Let Ti1309.4295
																																Int:0
																																Let Tb1310.4291
																																	AppCls check_all_inside.2818 Ti1309.4295 and_group.2826 q0.4288 q1.4289 q2.4290 )
																																	Let Ti1311.4292
																																		Int:0
																																		IfEq Tb1310.4291 Ti1311.4292
																																			Let Ti1312.4294
																																				Int:1
																																				Let Ti1313.4293
																																					Add iand_ofs.2825 Ti1312.4294
																																					AppCls shadow_check_and_group.2824 Ti1313.4293 and_group.2826 )
																																			Int:1
name : shadow_check_one_or_group.2827 args : ofs.2828 or_group.2829  formal_fv : and_net.2490 shadow_check_and_group.2824  
Let head.4271
	Get or_group.2829 ofs.2828
	Let Ti1275.4272
		Int:-1
		IfEq head.4271 Ti1275.4272
			Int:0
			Let and_group.4273
				Get and_net.2490 head.4271
				Let Ti1276.4278
					Int:0
					Let shadow_p.4274
						AppCls shadow_check_and_group.2824 Ti1276.4278 and_group.4273 )
						Let Ti1277.4275
							Int:0
							IfEq shadow_p.4274 Ti1277.4275
								Let Ti1278.4277
									Int:1
									Let Ti1279.4276
										Add ofs.2828 Ti1278.4277
										AppCls shadow_check_one_or_group.2827 Ti1279.4276 or_group.2829 )
								Int:1
name : shadow_check_one_or_matrix.2830 args : ofs.2831 or_matrix.2832  formal_fv : intersection_point.2495 light_dirvec.2511 shadow_check_one_or_group.2827 solver_dist.2492 solver_fast.2758  
Let head.4246
	Get or_matrix.2832 ofs.2831
	Let Ti1252.4270
		Int:0
		Let range_primitive.4247
			Get head.4246 Ti1252.4270
			Let Ti1254.4248
				Int:-1
				IfEq range_primitive.4247 Ti1254.4248
					Int:0
					Let Ti1255.4258
						Int:99
						Let Ti1265.4249
							IfEq range_primitive.4247 Ti1255.4258
								Int:1
								Let t.4259
									AppCls solver_fast.2758 range_primitive.4247 light_dirvec.2511 intersection_point.2495 )
									Let Ti1256.4260
										Int:0
										IfEq t.4259 Ti1256.4260
											Int:0
											Let Ti1257.4268
												Int:0
												Let Td1258.4266
													Get solver_dist.2492 Ti1257.4268
													Let Td1259.4267
														Float:-0.100000
														Let Tb1260.4261
															AppDir fless.2528 Td1258.4266 Td1259.4267 )
															Let Ti1261.4262
																Int:0
																IfEq Tb1260.4261 Ti1261.4262
																	Int:0
																	Let Ti1262.4265
																		Int:1
																		Let Tb1263.4263
																			AppCls shadow_check_one_or_group.2827 Ti1262.4265 head.4246 )
																			Let Ti1264.4264
																				Int:0
																				IfEq Tb1263.4263 Ti1264.4264
																					Int:0
																					Int:1
							Let Ti1266.4250
								Int:0
								IfEq Ti1265.4249 Ti1266.4250
									Let Ti1267.4257
										Int:1
										Let Ti1268.4256
											Add ofs.2831 Ti1267.4257
											AppCls shadow_check_one_or_matrix.2830 Ti1268.4256 or_matrix.2832 )
									Let Ti1269.4255
										Int:1
										Let Tb1270.4251
											AppCls shadow_check_one_or_group.2827 Ti1269.4255 head.4246 )
											Let Ti1271.4252
												Int:0
												IfEq Tb1270.4251 Ti1271.4252
													Let Ti1272.4254
														Int:1
														Let Ti1273.4253
															Add ofs.2831 Ti1272.4254
															AppCls shadow_check_one_or_matrix.2830 Ti1273.4253 or_matrix.2832 )
													Int:1
name : solve_each_element.2833 args : iand_ofs.2834 and_group.2835 dirvec.2836  formal_fv : check_all_inside.2818 intersected_object_id.2496 intersection_point.2495 intsec_rectside.2493 objects.2485 solver.2735 solver_dist.2492 startp.2504 tmin.2494  
Let iobj.4195
	Get and_group.2835 iand_ofs.2834
	Let Ti1213.4196
		Int:-1
		IfEq iobj.4195 Ti1213.4196
			Unit
			Let t0.4197
				AppCls solver.2735 iobj.4195 dirvec.2836 startp.2504 )
				Let Ti1214.4198
					Int:0
					IfEq t0.4197 Ti1214.4198
						Let Tt1215.4244
							Get objects.2485 iobj.4195
							Let Tb1216.4240
								AppDir o_isinvert.2607 Tt1215.4244 )
								Let Ti1217.4241
									Int:0
									IfEq Tb1216.4240 Ti1217.4241
										Unit
										Let Ti1218.4243
											Int:1
											Let Ti1219.4242
												Add iand_ofs.2834 Ti1218.4243
												AppCls solve_each_element.2833 Ti1219.4242 and_group.2835 dirvec.2836 )
						Let Ti1220.4239
							Int:0
							Let t0p.4199
								Get solver_dist.2492 Ti1220.4239
								Let Td1221.4238
									Float:0.000000
									Let Tb1222.4203
										AppDir fless.2528 Td1221.4238 t0p.4199 )
										Let Ti1223.4204
											Int:0
											Let Tu109.4200
												IfEq Tb1222.4203 Ti1223.4204
													Unit
													Let Ti1224.4237
														Int:0
														Let Td1225.4236
															Get tmin.2494 Ti1224.4237
															Let Tb1226.4205
																AppDir fless.2528 t0p.4199 Td1225.4236 )
																Let Ti1227.4206
																	Int:0
																	IfEq Tb1226.4205 Ti1227.4206
																		Unit
																		Let Td1228.4235
																			Float:0.010000
																			Let t.4207
																				FAdd t0p.4199 Td1228.4235
																				Let Ti1229.4234
																					Int:0
																					Let Td1230.4233
																						Get dirvec.2836 Ti1229.4234
																						Let Td1231.4230
																							FMul Td1230.4233 t.4207
																							Let Ti1232.4232
																								Int:0
																								Let Td1233.4231
																									Get startp.2504 Ti1232.4232
																									Let q0.4208
																										FAdd Td1231.4230 Td1233.4231
																										Let Ti1234.4229
																											Int:1
																											Let Td1235.4228
																												Get dirvec.2836 Ti1234.4229
																												Let Td1236.4225
																													FMul Td1235.4228 t.4207
																													Let Ti1237.4227
																														Int:1
																														Let Td1238.4226
																															Get startp.2504 Ti1237.4227
																															Let q1.4209
																																FAdd Td1236.4225 Td1238.4226
																																Let Ti1239.4224
																																	Int:2
																																	Let Td1240.4223
																																		Get dirvec.2836 Ti1239.4224
																																		Let Td1241.4220
																																			FMul Td1240.4223 t.4207
																																			Let Ti1242.4222
																																				Int:2
																																				Let Td1243.4221
																																					Get startp.2504 Ti1242.4222
																																					Let q2.4210
																																						FAdd Td1241.4220 Td1243.4221
																																						Let Ti1244.4219
																																							Int:0
																																							Let Tb1245.4211
																																								AppCls check_all_inside.2818 Ti1244.4219 and_group.2835 q0.4208 q1.4209 q2.4210 )
																																								Let Ti1246.4212
																																									Int:0
																																									IfEq Tb1245.4211 Ti1246.4212
																																										Unit
																																										Let Ti1247.4218
																																											Int:0
																																											Let Tu108.4213
																																												Put tmin.2494 Ti1247.4218 t.4207
																																												Let Tu107.4214
																																													AppDir vecset.2555 intersection_point.2495 q0.4208 q1.4209 q2.4210 )
																																													Let Ti1248.4217
																																														Int:0
																																														Let Tu106.4215
																																															Put intersected_object_id.2496 Ti1248.4217 iobj.4195
																																															Let Ti1249.4216
																																																Int:0
																																																Put intsec_rectside.2493 Ti1249.4216 t0.4197
												Let Ti1250.4202
													Int:1
													Let Ti1251.4201
														Add iand_ofs.2834 Ti1250.4202
														AppCls solve_each_element.2833 Ti1251.4201 and_group.2835 dirvec.2836 )
name : solve_one_or_network.2837 args : ofs.2838 or_group.2839 dirvec.2840  formal_fv : and_net.2490 solve_each_element.2833  
Let head.4187
	Get or_group.2839 ofs.2838
	Let Ti1208.4188
		Int:-1
		IfEq head.4187 Ti1208.4188
			Unit
			Let and_group.4189
				Get and_net.2490 head.4187
				Let Ti1209.4193
					Int:0
					Let Tu110.4190
						AppCls solve_each_element.2833 Ti1209.4193 and_group.4189 dirvec.2840 )
						Let Ti1210.4192
							Int:1
							Let Ti1211.4191
								Add ofs.2838 Ti1210.4192
								AppCls solve_one_or_network.2837 Ti1211.4191 or_group.2839 dirvec.2840 )
name : trace_or_matrix.2841 args : ofs.2842 or_network.2843 dirvec.2844  formal_fv : solve_one_or_network.2837 solver.2735 solver_dist.2492 startp.2504 tmin.2494  
Let head.4168
	Get or_network.2843 ofs.2842
	Let Ti1193.4186
		Int:0
		Let range_primitive.4169
			Get head.4168 Ti1193.4186
			Let Ti1195.4170
				Int:-1
				IfEq range_primitive.4169 Ti1195.4170
					Unit
					Let Ti1196.4174
						Int:99
						Let Tu111.4171
							IfEq range_primitive.4169 Ti1196.4174
								Let Ti1197.4184
									Int:1
									AppCls solve_one_or_network.2837 Ti1197.4184 head.4168 dirvec.2844 )
								Let t.4175
									AppCls solver.2735 range_primitive.4169 dirvec.2844 startp.2504 )
									Let Ti1198.4176
										Int:0
										IfEq t.4175 Ti1198.4176
											Unit
											Let Ti1199.4183
												Int:0
												Let tp.4177
													Get solver_dist.2492 Ti1199.4183
													Let Ti1200.4182
														Int:0
														Let Td1201.4181
															Get tmin.2494 Ti1200.4182
															Let Tb1202.4178
																AppDir fless.2528 tp.4177 Td1201.4181 )
																Let Ti1203.4179
																	Int:0
																	IfEq Tb1202.4178 Ti1203.4179
																		Unit
																		Let Ti1204.4180
																			Int:1
																			AppCls solve_one_or_network.2837 Ti1204.4180 head.4168 dirvec.2844 )
							Let Ti1205.4173
								Int:1
								Let Ti1206.4172
									Add ofs.2842 Ti1205.4173
									AppCls trace_or_matrix.2841 Ti1206.4172 or_network.2843 dirvec.2844 )
name : judge_intersection.2845 args : dirvec.2846  formal_fv : or_net.2491 tmin.2494 trace_or_matrix.2841  
Let Ti1183.4166
	Int:0
	Let Td1184.4167
		Float:1000000000.000000
		Let Tu113.4155
			Put tmin.2494 Ti1183.4166 Td1184.4167
			Let Ti1185.4163
				Int:0
				Let Ti1186.4165
					Int:0
					Let Ta1187.4164
						Get or_net.2491 Ti1186.4165
						Let Tu112.4156
							AppCls trace_or_matrix.2841 Ti1185.4163 Ta1187.4164 dirvec.2846 )
							Let Ti1188.4162
								Int:0
								Let t.4157
									Get tmin.2494 Ti1188.4162
									Let Td1189.4161
										Float:-0.100000
										Let Tb1190.4158
											AppDir fless.2528 Td1189.4161 t.4157 )
											Let Ti1191.4159
												Int:0
												IfEq Tb1190.4158 Ti1191.4159
													Int:0
													Let Td1192.4160
														Float:100000000.000000
														AppDir fless.2528 t.4157 Td1192.4160 )
name : solve_each_element_fast.2847 args : iand_ofs.2848 and_group.2849 dirvec.2850  formal_fv : check_all_inside.2818 intersected_object_id.2496 intersection_point.2495 intsec_rectside.2493 objects.2485 solver_dist.2492 solver_fast2.2776 startp_fast.2505 tmin.2494  
Let vec.4103
	AppDir d_vec.2662 dirvec.2850 )
	Let iobj.4104
		Get and_group.2849 iand_ofs.2848
		Let Ti1144.4105
			Int:-1
			IfEq iobj.4104 Ti1144.4105
				Unit
				Let t0.4106
					AppCls solver_fast2.2776 iobj.4104 dirvec.2850 )
					Let Ti1145.4107
						Int:0
						IfEq t0.4106 Ti1145.4107
							Let Tt1146.4153
								Get objects.2485 iobj.4104
								Let Tb1147.4149
									AppDir o_isinvert.2607 Tt1146.4153 )
									Let Ti1148.4150
										Int:0
										IfEq Tb1147.4149 Ti1148.4150
											Unit
											Let Ti1149.4152
												Int:1
												Let Ti1150.4151
													Add iand_ofs.2848 Ti1149.4152
													AppCls solve_each_element_fast.2847 Ti1150.4151 and_group.2849 dirvec.2850 )
							Let Ti1151.4148
								Int:0
								Let t0p.4108
									Get solver_dist.2492 Ti1151.4148
									Let Td1152.4147
										Float:0.000000
										Let Tb1153.4112
											AppDir fless.2528 Td1152.4147 t0p.4108 )
											Let Ti1154.4113
												Int:0
												Let Tu117.4109
													IfEq Tb1153.4112 Ti1154.4113
														Unit
														Let Ti1155.4146
															Int:0
															Let Td1156.4145
																Get tmin.2494 Ti1155.4146
																Let Tb1157.4114
																	AppDir fless.2528 t0p.4108 Td1156.4145 )
																	Let Ti1158.4115
																		Int:0
																		IfEq Tb1157.4114 Ti1158.4115
																			Unit
																			Let Td1159.4144
																				Float:0.010000
																				Let t.4116
																					FAdd t0p.4108 Td1159.4144
																					Let Ti1160.4143
																						Int:0
																						Let Td1161.4142
																							Get vec.4103 Ti1160.4143
																							Let Td1162.4139
																								FMul Td1161.4142 t.4116
																								Let Ti1163.4141
																									Int:0
																									Let Td1164.4140
																										Get startp_fast.2505 Ti1163.4141
																										Let q0.4117
																											FAdd Td1162.4139 Td1164.4140
																											Let Ti1165.4138
																												Int:1
																												Let Td1166.4137
																													Get vec.4103 Ti1165.4138
																													Let Td1167.4134
																														FMul Td1166.4137 t.4116
																														Let Ti1168.4136
																															Int:1
																															Let Td1169.4135
																																Get startp_fast.2505 Ti1168.4136
																																Let q1.4118
																																	FAdd Td1167.4134 Td1169.4135
																																	Let Ti1170.4133
																																		Int:2
																																		Let Td1171.4132
																																			Get vec.4103 Ti1170.4133
																																			Let Td1172.4129
																																				FMul Td1171.4132 t.4116
																																				Let Ti1173.4131
																																					Int:2
																																					Let Td1174.4130
																																						Get startp_fast.2505 Ti1173.4131
																																						Let q2.4119
																																							FAdd Td1172.4129 Td1174.4130
																																							Let Ti1175.4128
																																								Int:0
																																								Let Tb1176.4120
																																									AppCls check_all_inside.2818 Ti1175.4128 and_group.2849 q0.4117 q1.4118 q2.4119 )
																																									Let Ti1177.4121
																																										Int:0
																																										IfEq Tb1176.4120 Ti1177.4121
																																											Unit
																																											Let Ti1178.4127
																																												Int:0
																																												Let Tu116.4122
																																													Put tmin.2494 Ti1178.4127 t.4116
																																													Let Tu115.4123
																																														AppDir vecset.2555 intersection_point.2495 q0.4117 q1.4118 q2.4119 )
																																														Let Ti1179.4126
																																															Int:0
																																															Let Tu114.4124
																																																Put intersected_object_id.2496 Ti1179.4126 iobj.4104
																																																Let Ti1180.4125
																																																	Int:0
																																																	Put intsec_rectside.2493 Ti1180.4125 t0.4106
													Let Ti1181.4111
														Int:1
														Let Ti1182.4110
															Add iand_ofs.2848 Ti1181.4111
															AppCls solve_each_element_fast.2847 Ti1182.4110 and_group.2849 dirvec.2850 )
name : solve_one_or_network_fast.2851 args : ofs.2852 or_group.2853 dirvec.2854  formal_fv : and_net.2490 solve_each_element_fast.2847  
Let head.4095
	Get or_group.2853 ofs.2852
	Let Ti1139.4096
		Int:-1
		IfEq head.4095 Ti1139.4096
			Unit
			Let and_group.4097
				Get and_net.2490 head.4095
				Let Ti1140.4101
					Int:0
					Let Tu118.4098
						AppCls solve_each_element_fast.2847 Ti1140.4101 and_group.4097 dirvec.2854 )
						Let Ti1141.4100
							Int:1
							Let Ti1142.4099
								Add ofs.2852 Ti1141.4100
								AppCls solve_one_or_network_fast.2851 Ti1142.4099 or_group.2853 dirvec.2854 )
name : trace_or_matrix_fast.2855 args : ofs.2856 or_network.2857 dirvec.2858  formal_fv : solve_one_or_network_fast.2851 solver_dist.2492 solver_fast2.2776 tmin.2494  
Let head.4076
	Get or_network.2857 ofs.2856
	Let Ti1124.4094
		Int:0
		Let range_primitive.4077
			Get head.4076 Ti1124.4094
			Let Ti1126.4078
				Int:-1
				IfEq range_primitive.4077 Ti1126.4078
					Unit
					Let Ti1127.4082
						Int:99
						Let Tu119.4079
							IfEq range_primitive.4077 Ti1127.4082
								Let Ti1128.4092
									Int:1
									AppCls solve_one_or_network_fast.2851 Ti1128.4092 head.4076 dirvec.2858 )
								Let t.4083
									AppCls solver_fast2.2776 range_primitive.4077 dirvec.2858 )
									Let Ti1129.4084
										Int:0
										IfEq t.4083 Ti1129.4084
											Unit
											Let Ti1130.4091
												Int:0
												Let tp.4085
													Get solver_dist.2492 Ti1130.4091
													Let Ti1131.4090
														Int:0
														Let Td1132.4089
															Get tmin.2494 Ti1131.4090
															Let Tb1133.4086
																AppDir fless.2528 tp.4085 Td1132.4089 )
																Let Ti1134.4087
																	Int:0
																	IfEq Tb1133.4086 Ti1134.4087
																		Unit
																		Let Ti1135.4088
																			Int:1
																			AppCls solve_one_or_network_fast.2851 Ti1135.4088 head.4076 dirvec.2858 )
							Let Ti1136.4081
								Int:1
								Let Ti1137.4080
									Add ofs.2856 Ti1136.4081
									AppCls trace_or_matrix_fast.2855 Ti1137.4080 or_network.2857 dirvec.2858 )
name : judge_intersection_fast.2859 args : dirvec.2860  formal_fv : or_net.2491 tmin.2494 trace_or_matrix_fast.2855  
Let Ti1114.4074
	Int:0
	Let Td1115.4075
		Float:1000000000.000000
		Let Tu121.4063
			Put tmin.2494 Ti1114.4074 Td1115.4075
			Let Ti1116.4071
				Int:0
				Let Ti1117.4073
					Int:0
					Let Ta1118.4072
						Get or_net.2491 Ti1117.4073
						Let Tu120.4064
							AppCls trace_or_matrix_fast.2855 Ti1116.4071 Ta1118.4072 dirvec.2860 )
							Let Ti1119.4070
								Int:0
								Let t.4065
									Get tmin.2494 Ti1119.4070
									Let Td1120.4069
										Float:-0.100000
										Let Tb1121.4066
											AppDir fless.2528 Td1120.4069 t.4065 )
											Let Ti1122.4067
												Int:0
												IfEq Tb1121.4066 Ti1122.4067
													Int:0
													Let Td1123.4068
														Float:100000000.000000
														AppDir fless.2528 t.4065 Td1123.4068 )
name : get_nvector_rect.2861 args : dirvec.2862  formal_fv : intsec_rectside.2493 nvector.2497  
Let Ti1106.4062
	Int:0
	Let rectside.4053
		Get intsec_rectside.2493 Ti1106.4062
		Let Tu122.4054
			AppDir vecbzero.2563 nvector.2497 )
			Let Ti1107.4061
				Int:1
				Let Ti1108.4055
					Sub rectside.4053 Ti1107.4061
					Let Ti1109.4060
						Int:1
						Let Ti1110.4059
							Sub rectside.4053 Ti1109.4060
							Let Td1111.4058
								Get dirvec.2862 Ti1110.4059
								Let Td1112.4057
									AppDir sgn.2547 Td1111.4058 )
									Let Td1113.4056
										AppDir fneg.2514 Td1112.4057 )
										Put nvector.2497 Ti1108.4055 Td1113.4056
name : get_nvector_plane.2863 args : m.2864  formal_fv : nvector.2497  
Let Ti1097.4050
	Int:0
	Let Td1098.4052
		AppDir o_param_a.2611 m.2864 )
		Let Td1099.4051
			AppDir fneg.2514 Td1098.4052 )
			Let Tu124.4042
				Put nvector.2497 Ti1097.4050 Td1099.4051
				Let Ti1100.4047
					Int:1
					Let Td1101.4049
						AppDir o_param_b.2613 m.2864 )
						Let Td1102.4048
							AppDir fneg.2514 Td1101.4049 )
							Let Tu123.4043
								Put nvector.2497 Ti1100.4047 Td1102.4048
								Let Ti1103.4044
									Int:2
									Let Td1104.4046
										AppDir o_param_c.2615 m.2864 )
										Let Td1105.4045
											AppDir fneg.2514 Td1104.4046 )
											Put nvector.2497 Ti1103.4044 Td1105.4045
name : get_nvector_second.2865 args : m.2866  formal_fv : intersection_point.2495 nvector.2497  
Let Ti1055.4041
	Int:0
	Let Td1056.4039
		Get intersection_point.2495 Ti1055.4041
		Let Td1057.4040
			AppDir o_param_x.2619 m.2866 )
			Let p0.3989
				FSub Td1056.4039 Td1057.4040
				Let Ti1058.4038
					Int:1
					Let Td1059.4036
						Get intersection_point.2495 Ti1058.4038
						Let Td1060.4037
							AppDir o_param_y.2621 m.2866 )
							Let p1.3990
								FSub Td1059.4036 Td1060.4037
								Let Ti1061.4035
									Int:2
									Let Td1062.4033
										Get intersection_point.2495 Ti1061.4035
										Let Td1063.4034
											AppDir o_param_z.2623 m.2866 )
											Let p2.3991
												FSub Td1062.4033 Td1063.4034
												Let Td1064.4032
													AppDir o_param_a.2611 m.2866 )
													Let d0.3992
														FMul p0.3989 Td1064.4032
														Let Td1065.4031
															AppDir o_param_b.2613 m.2866 )
															Let d1.3993
																FMul p1.3990 Td1065.4031
																Let Td1066.4030
																	AppDir o_param_c.2615 m.2866 )
																	Let d2.3994
																		FMul p2.3991 Td1066.4030
																		Let Ti1067.3997
																			AppDir o_isrot.2609 m.2866 )
																			Let Ti1068.3998
																				Int:0
																				Let Tu129.3995
																					IfEq Ti1067.3997 Ti1068.3998
																						Let Ti1069.4029
																							Int:0
																							Let Tu126.4025
																								Put nvector.2497 Ti1069.4029 d0.3992
																								Let Ti1070.4028
																									Int:1
																									Let Tu125.4026
																										Put nvector.2497 Ti1070.4028 d1.3993
																										Let Ti1071.4027
																											Int:2
																											Put nvector.2497 Ti1071.4027 d2.3994
																						Let Ti1072.4017
																							Int:0
																							Let Td1073.4024
																								AppDir o_param_r3.2639 m.2866 )
																								Let Td1074.4021
																									FMul p1.3990 Td1073.4024
																									Let Td1075.4023
																										AppDir o_param_r2.2637 m.2866 )
																										Let Td1076.4022
																											FMul p2.3991 Td1075.4023
																											Let Td1077.4020
																												FAdd Td1074.4021 Td1076.4022
																												Let Td1078.4019
																													AppDir fhalf.2522 Td1077.4020 )
																													Let Td1079.4018
																														FAdd d0.3992 Td1078.4019
																														Let Tu128.3999
																															Put nvector.2497 Ti1072.4017 Td1079.4018
																															Let Ti1080.4009
																																Int:1
																																Let Td1081.4016
																																	AppDir o_param_r3.2639 m.2866 )
																																	Let Td1082.4013
																																		FMul p0.3989 Td1081.4016
																																		Let Td1083.4015
																																			AppDir o_param_r1.2635 m.2866 )
																																			Let Td1084.4014
																																				FMul p2.3991 Td1083.4015
																																				Let Td1085.4012
																																					FAdd Td1082.4013 Td1084.4014
																																					Let Td1086.4011
																																						AppDir fhalf.2522 Td1085.4012 )
																																						Let Td1087.4010
																																							FAdd d1.3993 Td1086.4011
																																							Let Tu127.4000
																																								Put nvector.2497 Ti1080.4009 Td1087.4010
																																								Let Ti1088.4001
																																									Int:2
																																									Let Td1089.4008
																																										AppDir o_param_r2.2637 m.2866 )
																																										Let Td1090.4005
																																											FMul p0.3989 Td1089.4008
																																											Let Td1091.4007
																																												AppDir o_param_r1.2635 m.2866 )
																																												Let Td1092.4006
																																													FMul p1.3990 Td1091.4007
																																													Let Td1093.4004
																																														FAdd Td1090.4005 Td1092.4006
																																														Let Td1094.4003
																																															AppDir fhalf.2522 Td1093.4004 )
																																															Let Td1095.4002
																																																FAdd d2.3994 Td1094.4003
																																																Put nvector.2497 Ti1088.4001 Td1095.4002
																					Let Tb1096.3996
																						AppDir o_isinvert.2607 m.2866 )
																						AppDir vecunit_sgn.2573 nvector.2497 Tb1096.3996 )
name : get_nvector.2867 args : m.2868 dirvec.2869  formal_fv : get_nvector_plane.2863 get_nvector_rect.2861 get_nvector_second.2865  
Let m_shape.3986
	AppDir o_form.2603 m.2868 )
	Let Ti1053.3987
		Int:1
		IfEq m_shape.3986 Ti1053.3987
			AppCls get_nvector_rect.2861 dirvec.2869 )
			Let Ti1054.3988
				Int:2
				IfEq m_shape.3986 Ti1054.3988
					AppCls get_nvector_plane.2863 m.2868 )
					AppCls get_nvector_second.2865 m.2868 )
name : utexture.2870 args : m.2871 p.2872  formal_fv : texture_color.2498  
Let m_tex.3826
	AppDir o_texturetype.2601 m.2871 )
	Let Ti923.3984
		Int:0
		Let Td924.3985
			AppDir o_color_red.2629 m.2871 )
			Let Tu134.3827
				Put texture_color.2498 Ti923.3984 Td924.3985
				Let Ti925.3982
					Int:1
					Let Td926.3983
						AppDir o_color_green.2631 m.2871 )
						Let Tu133.3828
							Put texture_color.2498 Ti925.3982 Td926.3983
							Let Ti927.3980
								Int:2
								Let Td928.3981
									AppDir o_color_blue.2633 m.2871 )
									Let Tu132.3829
										Put texture_color.2498 Ti927.3980 Td928.3981
										Let Ti929.3830
											Int:1
											IfEq m_tex.3826 Ti929.3830
												Let Ti930.3979
													Int:0
													Let Td931.3977
														Get p.2872 Ti930.3979
														Let Td932.3978
															AppDir o_param_x.2619 m.2871 )
															Let w1.3951
																FSub Td931.3977 Td932.3978
																Let Td933.3976
																	Float:0.050000
																	Let Td934.3975
																		FMul w1.3951 Td933.3976
																		Let Td935.3973
																			AppDir floor.2535 Td934.3975 )
																			Let Td936.3974
																				Float:20.000000
																				Let d1.3970
																					FMul Td935.3973 Td936.3974
																					Let Td937.3971
																						FSub w1.3951 d1.3970
																						Let Td938.3972
																							Float:10.000000
																							Let flag1.3952
																								AppDir fless.2528 Td937.3971 Td938.3972 )
																								Let Ti939.3969
																									Int:2
																									Let Td940.3967
																										Get p.2872 Ti939.3969
																										Let Td941.3968
																											AppDir o_param_z.2623 m.2871 )
																											Let w3.3953
																												FSub Td940.3967 Td941.3968
																												Let Td942.3966
																													Float:0.050000
																													Let Td943.3965
																														FMul w3.3953 Td942.3966
																														Let Td944.3963
																															AppDir floor.2535 Td943.3965 )
																															Let Td945.3964
																																Float:20.000000
																																Let d2.3960
																																	FMul Td944.3963 Td945.3964
																																	Let Td946.3961
																																		FSub w3.3953 d2.3960
																																		Let Td947.3962
																																			Float:10.000000
																																			Let flag2.3954
																																				AppDir fless.2528 Td946.3961 Td947.3962 )
																																				Let Ti948.3955
																																					Int:1
																																					Let Ti949.3957
																																						Int:0
																																						Let Td952.3956
																																							IfEq flag1.3952 Ti949.3957
																																								Let Ti950.3959
																																									Int:0
																																									IfEq flag2.3954 Ti950.3959
																																										Float:255.000000
																																										Float:0.000000
																																								Let Ti951.3958
																																									Int:0
																																									IfEq flag2.3954 Ti951.3958
																																										Float:0.000000
																																										Float:255.000000
																																							Put texture_color.2498 Ti948.3955 Td952.3956
												Let Ti953.3831
													Int:2
													IfEq m_tex.3826 Ti953.3831
														Let Ti954.3950
															Int:1
															Let Td955.3948
																Get p.2872 Ti954.3950
																Let Td956.3949
																	Float:0.250000
																	Let Td957.3947
																		FMul Td955.3948 Td956.3949
																		Let Td958.3946
																			AppDir min_caml_sin Td957.3947 )
																			Let w2.3936
																				AppDir fsqr.2524 Td958.3946 )
																				Let Ti959.3943
																					Int:0
																					Let Td960.3945
																						Float:255.000000
																						Let Td961.3944
																							FMul Td960.3945 w2.3936
																							Let Tu130.3937
																								Put texture_color.2498 Ti959.3943 Td961.3944
																								Let Ti962.3938
																									Int:1
																									Let Td963.3940
																										Float:255.000000
																										Let Td964.3942
																											Float:1.000000
																											Let Td965.3941
																												FSub Td964.3942 w2.3936
																												Let Td966.3939
																													FMul Td963.3940 Td965.3941
																													Put texture_color.2498 Ti962.3938 Td966.3939
														Let Ti967.3832
															Int:3
															IfEq m_tex.3826 Ti967.3832
																Let Ti968.3935
																	Int:0
																	Let Td969.3933
																		Get p.2872 Ti968.3935
																		Let Td970.3934
																			AppDir o_param_x.2619 m.2871 )
																			Let w1.3906
																				FSub Td969.3933 Td970.3934
																				Let Ti971.3932
																					Int:2
																					Let Td972.3930
																						Get p.2872 Ti971.3932
																						Let Td973.3931
																							AppDir o_param_z.2623 m.2871 )
																							Let w3.3907
																								FSub Td972.3930 Td973.3931
																								Let Td974.3928
																									AppDir fsqr.2524 w1.3906 )
																									Let Td975.3929
																										AppDir fsqr.2524 w3.3907 )
																										Let Td976.3927
																											FAdd Td974.3928 Td975.3929
																											Let Td977.3924
																												AppDir min_caml_sqrt Td976.3927 )
																												Let Td978.3925
																													Float:10.000000
																													Let Td979.3926
																														FReciprocal Td978.3925
																														Let w2.3908
																															FMul Td977.3924 Td979.3926
																															Let Td980.3923
																																AppDir floor.2535 w2.3908 )
																																Let Td981.3921
																																	FSub w2.3908 Td980.3923
																																	Let Td982.3922
																																		Float:3.141593
																																		Let w4.3909
																																			FMul Td981.3921 Td982.3922
																																			Let Td983.3920
																																				AppDir min_caml_cos w4.3909 )
																																				Let cws.3910
																																					AppDir fsqr.2524 Td983.3920 )
																																					Let Ti984.3917
																																						Int:1
																																						Let Td985.3919
																																							Float:255.000000
																																							Let Td986.3918
																																								FMul cws.3910 Td985.3919
																																								Let Tu131.3911
																																									Put texture_color.2498 Ti984.3917 Td986.3918
																																									Let Ti987.3912
																																										Int:2
																																										Let Td988.3916
																																											Float:1.000000
																																											Let Td989.3914
																																												FSub Td988.3916 cws.3910
																																												Let Td990.3915
																																													Float:255.000000
																																													Let Td991.3913
																																														FMul Td989.3914 Td990.3915
																																														Put texture_color.2498 Ti987.3912 Td991.3913
																Let Ti992.3833
																	Int:4
																	IfEq m_tex.3826 Ti992.3833
																		Let Ti993.3905
																			Int:0
																			Let Td994.3903
																				Get p.2872 Ti993.3905
																				Let Td995.3904
																					AppDir o_param_x.2619 m.2871 )
																					Let Td996.3900
																						FSub Td994.3903 Td995.3904
																						Let Td997.3902
																							AppDir o_param_a.2611 m.2871 )
																							Let Td998.3901
																								AppDir min_caml_sqrt Td997.3902 )
																								Let w1.3834
																									FMul Td996.3900 Td998.3901
																									Let Ti999.3899
																										Int:2
																										Let Td1000.3897
																											Get p.2872 Ti999.3899
																											Let Td1001.3898
																												AppDir o_param_z.2623 m.2871 )
																												Let Td1002.3894
																													FSub Td1000.3897 Td1001.3898
																													Let Td1003.3896
																														AppDir o_param_c.2615 m.2871 )
																														Let Td1004.3895
																															AppDir min_caml_sqrt Td1003.3896 )
																															Let w3.3835
																																FMul Td1002.3894 Td1004.3895
																																Let Td1005.3892
																																	AppDir fsqr.2524 w1.3834 )
																																	Let Td1006.3893
																																		AppDir fsqr.2524 w3.3835 )
																																		Let w4.3836
																																			FAdd Td1005.3892 Td1006.3893
																																			Let Td1007.3890
																																				AppDir fabs.2526 w1.3834 )
																																				Let Td1008.3891
																																					Float:0.000100
																																					Let Tb1009.3880
																																						AppDir fless.2528 Td1007.3890 Td1008.3891 )
																																						Let Ti1010.3881
																																							Int:0
																																							Let w7.3837
																																								IfEq Tb1009.3880 Ti1010.3881
																																									Let Td1011.3889
																																										FReciprocal w1.3834
																																										Let Td1012.3888
																																											FMul w3.3835 Td1011.3889
																																											Let w5.3882
																																												AppDir fabs.2526 Td1012.3888 )
																																												Let Td1013.3886
																																													AppDir min_caml_atan w5.3882 )
																																													Let Td1014.3887
																																														Float:30.000000
																																														Let Td1015.3883
																																															FMul Td1013.3886 Td1014.3887
																																															Let Td1016.3884
																																																Float:3.141593
																																																Let Td1017.3885
																																																	FReciprocal Td1016.3884
																																																	FMul Td1015.3883 Td1017.3885
																																									Float:15.000000
																																								Let Td1018.3879
																																									AppDir floor.2535 w7.3837 )
																																									Let w9.3838
																																										FSub w7.3837 Td1018.3879
																																										Let Ti1019.3878
																																											Int:1
																																											Let Td1020.3876
																																												Get p.2872 Ti1019.3878
																																												Let Td1021.3877
																																													AppDir o_param_y.2621 m.2871 )
																																													Let Td1022.3873
																																														FSub Td1020.3876 Td1021.3877
																																														Let Td1023.3875
																																															AppDir o_param_b.2613 m.2871 )
																																															Let Td1024.3874
																																																AppDir min_caml_sqrt Td1023.3875 )
																																																Let w2.3839
																																																	FMul Td1022.3873 Td1024.3874
																																																	Let Td1025.3871
																																																		AppDir fabs.2526 w4.3836 )
																																																		Let Td1026.3872
																																																			Float:0.000100
																																																			Let Tb1027.3861
																																																				AppDir fless.2528 Td1025.3871 Td1026.3872 )
																																																				Let Ti1028.3862
																																																					Int:0
																																																					Let w8.3840
																																																						IfEq Tb1027.3861 Ti1028.3862
																																																							Let Td1029.3870
																																																								FReciprocal w4.3836
																																																								Let Td1030.3869
																																																									FMul w2.3839 Td1029.3870
																																																									Let w6.3863
																																																										AppDir fabs.2526 Td1030.3869 )
																																																										Let Td1031.3867
																																																											AppDir min_caml_atan w6.3863 )
																																																											Let Td1032.3868
																																																												Float:30.000000
																																																												Let Td1033.3864
																																																													FMul Td1031.3867 Td1032.3868
																																																													Let Td1034.3865
																																																														Float:3.141593
																																																														Let Td1035.3866
																																																															FReciprocal Td1034.3865
																																																															FMul Td1033.3864 Td1035.3866
																																																							Float:15.000000
																																																						Let Td1036.3860
																																																							AppDir floor.2535 w8.3840 )
																																																							Let w10.3841
																																																								FSub w8.3840 Td1036.3860
																																																								Let Td1037.3856
																																																									Float:0.150000
																																																									Let Td1038.3859
																																																										Float:0.500000
																																																										Let Td1039.3858
																																																											FSub Td1038.3859 w9.3838
																																																											Let Td1040.3857
																																																												AppDir fsqr.2524 Td1039.3858 )
																																																												Let Td1041.3852
																																																													FSub Td1037.3856 Td1040.3857
																																																													Let Td1042.3855
																																																														Float:0.500000
																																																														Let Td1043.3854
																																																															FSub Td1042.3855 w10.3841
																																																															Let Td1044.3853
																																																																AppDir fsqr.2524 Td1043.3854 )
																																																																Let w11.3842
																																																																	FSub Td1041.3852 Td1044.3853
																																																																	Let Tb1045.3850
																																																																		AppDir fisneg.2518 w11.3842 )
																																																																		Let Ti1046.3851
																																																																			Int:0
																																																																			Let w12.3843
																																																																				IfEq Tb1045.3850 Ti1046.3851
																																																																					Var w11.3842
																																																																					Float:0.000000
																																																																				Let Ti1047.3844
																																																																					Int:2
																																																																					Let Td1048.3849
																																																																						Float:255.000000
																																																																						Let Td1049.3846
																																																																							FMul Td1048.3849 w12.3843
																																																																							Let Td1050.3847
																																																																								Float:0.300000
																																																																								Let Td1051.3848
																																																																									FReciprocal Td1050.3847
																																																																									Let Td1052.3845
																																																																										FMul Td1049.3846 Td1051.3848
																																																																										Put texture_color.2498 Ti1047.3844 Td1052.3845
																		Unit
name : add_light.2873 args : bright.2874 hilight.2875 hilight_scale.2876  formal_fv : rgb.2500 texture_color.2498  
Let Tb905.3824
	AppDir fispos.2516 bright.2874 )
	Let Ti906.3825
		Int:0
		Let Tu137.3804
			IfEq Tb905.3824 Ti906.3825
				Unit
				AppDir vecaccum.2584 rgb.2500 bright.2874 texture_color.2498 )
			Let Tb907.3805
				AppDir fispos.2516 hilight.2875 )
				Let Ti908.3806
					Int:0
					IfEq Tb907.3805 Ti908.3806
						Unit
						Let Td909.3823
							AppDir fsqr.2524 hilight.2875 )
							Let Td910.3822
								AppDir fsqr.2524 Td909.3823 )
								Let ihl.3807
									FMul Td910.3822 hilight_scale.2876
									Let Ti911.3818
										Int:0
										Let Ti912.3821
											Int:0
											Let Td913.3820
												Get rgb.2500 Ti912.3821
												Let Td914.3819
													FAdd Td913.3820 ihl.3807
													Let Tu136.3808
														Put rgb.2500 Ti911.3818 Td914.3819
														Let Ti915.3814
															Int:1
															Let Ti916.3817
																Int:1
																Let Td917.3816
																	Get rgb.2500 Ti916.3817
																	Let Td918.3815
																		FAdd Td917.3816 ihl.3807
																		Let Tu135.3809
																			Put rgb.2500 Ti915.3814 Td918.3815
																			Let Ti919.3810
																				Int:2
																				Let Ti920.3813
																					Int:2
																					Let Td921.3812
																						Get rgb.2500 Ti920.3813
																						Let Td922.3811
																							FAdd Td921.3812 ihl.3807
																							Put rgb.2500 Ti919.3810 Td922.3811
name : trace_reflections.2877 args : index.2878 diffuse.2879 hilight_scale.2880 dirvec.2881  formal_fv : add_light.2873 intersected_object_id.2496 intsec_rectside.2493 judge_intersection_fast.2859 nvector.2497 or_net.2491 reflections.2512 shadow_check_one_or_matrix.2830  
Let Ti885.3776
	Int:0
	IfLE Ti885.3776 index.2878
		Let rinfo.3777
			Get reflections.2512 index.2878
			Let dvec.3778
				AppDir r_dvec.2668 rinfo.3777 )
				Let Tb886.3782
					AppCls judge_intersection_fast.2859 dvec.3778 )
					Let Ti887.3783
						Int:0
						Let Tu138.3779
							IfEq Tb886.3782 Ti887.3783
								Unit
								Let Ti888.3803
									Int:0
									Let Ti889.3802
										Get intersected_object_id.2496 Ti888.3803
										Let Ti890.3799
											ShiftL2 Ti889.3802
											Let Ti891.3801
												Int:0
												Let Ti892.3800
													Get intsec_rectside.2493 Ti891.3801
													Let surface_id.3784
														Add Ti890.3799 Ti892.3800
														Let Ti893.3785
															AppDir r_surface_id.2666 rinfo.3777 )
															IfEq surface_id.3784 Ti893.3785
																Let Ti894.3796
																	Int:0
																	Let Ti895.3798
																		Int:0
																		Let Ta896.3797
																			Get or_net.2491 Ti895.3798
																			Let Tb897.3786
																				AppCls shadow_check_one_or_matrix.2830 Ti894.3796 Ta896.3797 )
																				Let Ti898.3787
																					Int:0
																					IfEq Tb897.3786 Ti898.3787
																						Let Ta899.3795
																							AppDir d_vec.2662 dvec.3778 )
																							Let p.3788
																								AppDir veciprod.2576 nvector.2497 Ta899.3795 )
																								Let scale.3789
																									AppDir r_bright.2670 rinfo.3777 )
																									Let Td900.3794
																										FMul scale.3789 diffuse.2879
																										Let bright.3790
																											FMul Td900.3794 p.3788
																											Let Ta901.3793
																												AppDir d_vec.2662 dvec.3778 )
																												Let Td902.3792
																													AppDir veciprod.2576 dirvec.2881 Ta901.3793 )
																													Let hilight.3791
																														FMul scale.3789 Td902.3792
																														AppCls add_light.2873 bright.3790 hilight.3791 hilight_scale.2880 )
																						Unit
																Unit
							Let Ti903.3781
								Int:1
								Let Ti904.3780
									Sub index.2878 Ti903.3781
									AppCls trace_reflections.2877 Ti904.3780 diffuse.2879 hilight_scale.2880 dirvec.2881 )
		Unit
name : trace_ray.2882 args : nref.2883 energy.2884 dirvec.2885 pixel.2886 dist.2887  formal_fv : add_light.2873 beam.2489 get_nvector.2867 intersected_object_id.2496 intersection_point.2495 intsec_rectside.2493 judge_intersection.2845 light.2488 n_reflections.2513 nvector.2497 objects.2485 or_net.2491 rgb.2500 setup_startp.2796 shadow_check_one_or_matrix.2830 startp.2504 texture_color.2498 tmin.2494 trace_reflections.2877 utexture.2870  
Let Ti806.3664
	Int:4
	IfLE nref.2883 Ti806.3664
		Let surface_ids.3665
			AppDir p_surface_ids.2647 pixel.2886 )
			Let Tb807.3666
				AppCls judge_intersection.2845 dirvec.2885 )
				Let Ti808.3667
					Int:0
					IfEq Tb807.3666 Ti808.3667
						Let Ti810.3774
							Int:-1
							Let Tu155.3748
								Put surface_ids.3665 nref.2883 Ti810.3774
								Let Ti811.3749
									Int:0
									IfEq nref.2883 Ti811.3749
										Unit
										Let Td812.3773
											AppDir veciprod.2576 dirvec.2885 light.2488 )
											Let hl.3750
												AppDir fneg.2514 Td812.3773 )
												Let Tb813.3751
													AppDir fispos.2516 hl.3750 )
													Let Ti814.3752
														Int:0
														IfEq Tb813.3751 Ti814.3752
															Unit
															Let Td815.3772
																AppDir fsqr.2524 hl.3750 )
																Let Td816.3771
																	FMul Td815.3772 hl.3750
																	Let Td817.3768
																		FMul Td816.3771 energy.2884
																		Let Ti818.3770
																			Int:0
																			Let Td819.3769
																				Get beam.2489 Ti818.3770
																				Let ihl.3753
																					FMul Td817.3768 Td819.3769
																					Let Ti820.3764
																						Int:0
																						Let Ti821.3767
																							Int:0
																							Let Td822.3766
																								Get rgb.2500 Ti821.3767
																								Let Td823.3765
																									FAdd Td822.3766 ihl.3753
																									Let Tu154.3754
																										Put rgb.2500 Ti820.3764 Td823.3765
																										Let Ti824.3760
																											Int:1
																											Let Ti825.3763
																												Int:1
																												Let Td826.3762
																													Get rgb.2500 Ti825.3763
																													Let Td827.3761
																														FAdd Td826.3762 ihl.3753
																														Let Tu153.3755
																															Put rgb.2500 Ti824.3760 Td827.3761
																															Let Ti828.3756
																																Int:2
																																Let Ti829.3759
																																	Int:2
																																	Let Td830.3758
																																		Get rgb.2500 Ti829.3759
																																		Let Td831.3757
																																			FAdd Td830.3758 ihl.3753
																																			Put rgb.2500 Ti828.3756 Td831.3757
						Let Ti832.3747
							Int:0
							Let obj_id.3668
								Get intersected_object_id.2496 Ti832.3747
								Let obj.3669
									Get objects.2485 obj_id.3668
									Let m_surface.3670
										AppDir o_reflectiontype.2605 obj.3669 )
										Let Td833.3746
											AppDir o_diffuse.2625 obj.3669 )
											Let diffuse.3671
												FMul Td833.3746 energy.2884
												Let Tu152.3672
													AppCls get_nvector.2867 obj.3669 dirvec.2885 )
													Let Tu151.3673
														AppDir veccpy.2565 startp.2504 intersection_point.2495 )
														Let Tu150.3674
															AppCls utexture.2870 obj.3669 intersection_point.2495 )
															Let Ti834.3743
																ShiftL2 obj_id.3668
																Let Ti835.3745
																	Int:0
																	Let Ti836.3744
																		Get intsec_rectside.2493 Ti835.3745
																		Let Ti837.3742
																			Add Ti834.3743 Ti836.3744
																			Let Tu149.3675
																				Put surface_ids.3665 nref.2883 Ti837.3742
																				Let intersection_points.3676
																					AppDir p_intersection_points.2645 pixel.2886 )
																					Let Ta838.3741
																						Get intersection_points.3676 nref.2883
																						Let Tu148.3677
																							AppDir veccpy.2565 Ta838.3741 intersection_point.2495 )
																							Let calc_diffuse.3678
																								AppDir p_calc_diffuse.2649 pixel.2886 )
																								Let Td839.3739
																									AppDir o_diffuse.2625 obj.3669 )
																									Let Td840.3740
																										Float:0.500000
																										Let Tb841.3722
																											AppDir fless.2528 Td839.3739 Td840.3740 )
																											Let Ti842.3723
																												Int:0
																												Let Tu147.3679
																													IfEq Tb841.3722 Ti842.3723
																														Let Ti843.3738
																															Int:1
																															Let Tu141.3725
																																Put calc_diffuse.3678 nref.2883 Ti843.3738
																																Let energya.3726
																																	AppDir p_energy.2651 pixel.2886 )
																																	Let Ta844.3737
																																		Get energya.3726 nref.2883
																																		Let Tu140.3727
																																			AppDir veccpy.2565 Ta844.3737 texture_color.2498 )
																																			Let Ta845.3731
																																				Get energya.3726 nref.2883
																																				Let Td846.3734
																																					Float:1.000000
																																					Let Td847.3735
																																						Float:256.000000
																																						Let Td848.3736
																																							FReciprocal Td847.3735
																																							Let Td849.3733
																																								FMul Td846.3734 Td848.3736
																																								Let Td850.3732
																																									FMul Td849.3733 diffuse.3671
																																									Let Tu139.3728
																																										AppDir vecscale.2594 Ta845.3731 Td850.3732 )
																																										Let nvectors.3729
																																											AppDir p_nvectors.2660 pixel.2886 )
																																											Let Ta851.3730
																																												Get nvectors.3729 nref.2883
																																												AppDir veccpy.2565 Ta851.3730 nvector.2497 )
																														Let Ti852.3724
																															Int:0
																															Put calc_diffuse.3678 nref.2883 Ti852.3724
																													Let Td853.3720
																														Float:-2.000000
																														Let Td854.3721
																															AppDir veciprod.2576 dirvec.2885 nvector.2497 )
																															Let w.3680
																																FMul Td853.3720 Td854.3721
																																Let Tu146.3681
																																	AppDir vecaccum.2584 dirvec.2885 w.3680 nvector.2497 )
																																	Let Td855.3719
																																		AppDir o_hilight.2627 obj.3669 )
																																		Let hilight_scale.3682
																																			FMul energy.2884 Td855.3719
																																			Let Ti856.3716
																																				Int:0
																																				Let Ti857.3718
																																					Int:0
																																					Let Ta858.3717
																																						Get or_net.2491 Ti857.3718
																																						Let Tb859.3709
																																							AppCls shadow_check_one_or_matrix.2830 Ti856.3716 Ta858.3717 )
																																							Let Ti860.3710
																																								Int:0
																																								Let Tu145.3683
																																									IfEq Tb859.3709 Ti860.3710
																																										Let Td861.3715
																																											AppDir veciprod.2576 nvector.2497 light.2488 )
																																											Let Td862.3714
																																												AppDir fneg.2514 Td861.3715 )
																																												Let bright.3711
																																													FMul Td862.3714 diffuse.3671
																																													Let Td863.3713
																																														AppDir veciprod.2576 dirvec.2885 light.2488 )
																																														Let hilight.3712
																																															AppDir fneg.2514 Td863.3713 )
																																															AppCls add_light.2873 bright.3711 hilight.3712 hilight_scale.3682 )
																																										Unit
																																									Let Tu144.3684
																																										AppCls setup_startp.2796 intersection_point.2495 )
																																										Let Ti864.3708
																																											Int:0
																																											Let Ti865.3706
																																												Get n_reflections.2513 Ti864.3708
																																												Let Ti866.3707
																																													Int:1
																																													Let Ti867.3705
																																														Sub Ti865.3706 Ti866.3707
																																														Let Tu143.3685
																																															AppCls trace_reflections.2877 Ti867.3705 diffuse.3671 hilight_scale.3682 dirvec.2885 )
																																															Let Td868.3704
																																																Float:0.100000
																																																Let Tb869.3686
																																																	AppDir fless.2528 Td868.3704 energy.2884 )
																																																	Let Ti870.3687
																																																		Int:0
																																																		IfEq Tb869.3686 Ti870.3687
																																																			Unit
																																																			Let Ti871.3699
																																																				Int:4
																																																				Let Tu142.3688
																																																					IfLE Ti871.3699 nref.2883
																																																						Unit
																																																						Let Ti872.3703
																																																							Int:1
																																																							Let Ti873.3700
																																																								Add nref.2883 Ti872.3703
																																																								Let Ti875.3701
																																																									Int:-1
																																																									Put surface_ids.3665 Ti873.3700 Ti875.3701
																																																					Let Ti876.3689
																																																						Int:2
																																																						IfEq m_surface.3670 Ti876.3689
																																																							Let Td877.3697
																																																								Float:1.000000
																																																								Let Td878.3698
																																																									AppDir o_diffuse.2625 obj.3669 )
																																																									Let Td879.3696
																																																										FSub Td877.3697 Td878.3698
																																																										Let energy2.3690
																																																											FMul energy.2884 Td879.3696
																																																											Let Ti880.3695
																																																												Int:1
																																																												Let Ti881.3691
																																																													Add nref.2883 Ti880.3695
																																																													Let Ti882.3694
																																																														Int:0
																																																														Let Td883.3693
																																																															Get tmin.2494 Ti882.3694
																																																															Let Td884.3692
																																																																FAdd dist.2887 Td883.3693
																																																																AppCls trace_ray.2882 Ti881.3691 energy2.3690 dirvec.2885 pixel.2886 Td884.3692 )
																																																							Unit
		Unit
name : trace_diffuse_ray.2888 args : dirvec.2889 energy.2890  formal_fv : diffuse_ray.2499 get_nvector.2867 intersected_object_id.2496 intersection_point.2495 judge_intersection_fast.2859 light.2488 nvector.2497 objects.2485 or_net.2491 shadow_check_one_or_matrix.2830 texture_color.2498 utexture.2870  
Let Tb790.3643
	AppCls judge_intersection_fast.2859 dirvec.2889 )
	Let Ti791.3644
		Int:0
		IfEq Tb790.3643 Ti791.3644
			Unit
			Let Ti792.3663
				Int:0
				Let Ti793.3662
					Get intersected_object_id.2496 Ti792.3663
					Let obj.3645
						Get objects.2485 Ti793.3662
						Let Ta794.3661
							AppDir d_vec.2662 dirvec.2889 )
							Let Tu157.3646
								AppCls get_nvector.2867 obj.3645 Ta794.3661 )
								Let Tu156.3647
									AppCls utexture.2870 obj.3645 intersection_point.2495 )
									Let Ti795.3658
										Int:0
										Let Ti796.3660
											Int:0
											Let Ta797.3659
												Get or_net.2491 Ti796.3660
												Let Tb798.3648
													AppCls shadow_check_one_or_matrix.2830 Ti795.3658 Ta797.3659 )
													Let Ti799.3649
														Int:0
														IfEq Tb798.3648 Ti799.3649
															Let Td800.3657
																AppDir veciprod.2576 nvector.2497 light.2488 )
																Let br.3650
																	AppDir fneg.2514 Td800.3657 )
																	Let Tb801.3655
																		AppDir fispos.2516 br.3650 )
																		Let Ti802.3656
																			Int:0
																			Let bright.3651
																				IfEq Tb801.3655 Ti802.3656
																					Float:0.000000
																					Var br.3650
																				Let Td803.3653
																					FMul energy.2890 bright.3651
																					Let Td804.3654
																						AppDir o_diffuse.2625 obj.3645 )
																						Let Td805.3652
																							FMul Td803.3653 Td804.3654
																							AppDir vecaccum.2584 diffuse_ray.2499 Td805.3652 texture_color.2498 )
															Unit
name : iter_trace_diffuse_rays.2891 args : dirvec_group.2892 nvector.2893 org.2894 index.2895  formal_fv : trace_diffuse_ray.2888  
Let Ti773.3624
	Int:0
	IfLE Ti773.3624 index.2895
		Let Tt774.3642
			Get dirvec_group.2892 index.2895
			Let Ta775.3641
				AppDir d_vec.2662 Tt774.3642 )
				Let p.3625
					AppDir veciprod.2576 Ta775.3641 nvector.2893 )
					Let Tb776.3629
						AppDir fisneg.2518 p.3625 )
						Let Ti777.3630
							Int:0
							Let Tu158.3626
								IfEq Tb776.3629 Ti777.3630
									Let Tt778.3637
										Get dirvec_group.2892 index.2895
										Let Td779.3639
											Float:150.000000
											Let Td780.3640
												FReciprocal Td779.3639
												Let Td781.3638
													FMul p.3625 Td780.3640
													AppCls trace_diffuse_ray.2888 Tt778.3637 Td781.3638 )
									Let Ti782.3636
										Int:1
										Let Ti783.3635
											Add index.2895 Ti782.3636
											Let Tt784.3631
												Get dirvec_group.2892 Ti783.3635
												Let Td785.3633
													Float:-150.000000
													Let Td786.3634
														FReciprocal Td785.3633
														Let Td787.3632
															FMul p.3625 Td786.3634
															AppCls trace_diffuse_ray.2888 Tt784.3631 Td787.3632 )
								Let Ti788.3628
									Int:2
									Let Ti789.3627
										Sub index.2895 Ti788.3628
										AppCls iter_trace_diffuse_rays.2891 dirvec_group.2892 nvector.2893 org.2894 Ti789.3627 )
		Unit
name : trace_diffuse_rays.2896 args : dirvec_group.2897 nvector.2898 org.2899  formal_fv : iter_trace_diffuse_rays.2891 setup_startp.2796  
Let Tu159.3622
	AppCls setup_startp.2796 org.2899 )
	Let Ti772.3623
		Int:118
		AppCls iter_trace_diffuse_rays.2891 dirvec_group.2897 nvector.2898 org.2899 Ti772.3623 )
name : trace_diffuse_ray_80percent.2900 args : group_id.2901 nvector.2902 org.2903  formal_fv : dirvecs.2510 trace_diffuse_rays.2896  
Let Ti757.3619
	Int:0
	Let Tu163.3603
		IfEq group_id.2901 Ti757.3619
			Unit
			Let Ti758.3621
				Int:0
				Let Ta759.3620
					Get dirvecs.2510 Ti758.3621
					AppCls trace_diffuse_rays.2896 Ta759.3620 nvector.2902 org.2903 )
		Let Ti760.3616
			Int:1
			Let Tu162.3604
				IfEq group_id.2901 Ti760.3616
					Unit
					Let Ti761.3618
						Int:1
						Let Ta762.3617
							Get dirvecs.2510 Ti761.3618
							AppCls trace_diffuse_rays.2896 Ta762.3617 nvector.2902 org.2903 )
				Let Ti763.3613
					Int:2
					Let Tu161.3605
						IfEq group_id.2901 Ti763.3613
							Unit
							Let Ti764.3615
								Int:2
								Let Ta765.3614
									Get dirvecs.2510 Ti764.3615
									AppCls trace_diffuse_rays.2896 Ta765.3614 nvector.2902 org.2903 )
						Let Ti766.3610
							Int:3
							Let Tu160.3606
								IfEq group_id.2901 Ti766.3610
									Unit
									Let Ti767.3612
										Int:3
										Let Ta768.3611
											Get dirvecs.2510 Ti767.3612
											AppCls trace_diffuse_rays.2896 Ta768.3611 nvector.2902 org.2903 )
								Let Ti769.3607
									Int:4
									IfEq group_id.2901 Ti769.3607
										Unit
										Let Ti770.3609
											Int:4
											Let Ta771.3608
												Get dirvecs.2510 Ti770.3609
												AppCls trace_diffuse_rays.2896 Ta771.3608 nvector.2902 org.2903 )
name : calc_diffuse_using_1point.2904 args : pixel.2905 nref.2906  formal_fv : diffuse_ray.2499 rgb.2500 trace_diffuse_ray_80percent.2900  
Let ray20p.3592
	AppDir p_received_ray_20percent.2653 pixel.2905 )
	Let nvectors.3593
		AppDir p_nvectors.2660 pixel.2905 )
		Let intersection_points.3594
			AppDir p_intersection_points.2645 pixel.2905 )
			Let energya.3595
				AppDir p_energy.2651 pixel.2905 )
				Let Ta752.3602
					Get ray20p.3592 nref.2906
					Let Tu165.3596
						AppDir veccpy.2565 diffuse_ray.2499 Ta752.3602 )
						Let Ti753.3599
							AppDir p_group_id.2655 pixel.2905 )
							Let Ta754.3600
								Get nvectors.3593 nref.2906
								Let Ta755.3601
									Get intersection_points.3594 nref.2906
									Let Tu164.3597
										AppCls trace_diffuse_ray_80percent.2900 Ti753.3599 Ta754.3600 Ta755.3601 )
										Let Ta756.3598
											Get energya.3595 nref.2906
											AppDir vecaccumv.2597 rgb.2500 Ta756.3598 diffuse_ray.2499 )
name : calc_diffuse_using_5points.2907 args : x.2908 prev.2909 cur.2910 next.2911 nref.2912  formal_fv : diffuse_ray.2499 rgb.2500  
Let Tt736.3591
	Get prev.2909 x.2908
	Let r_up.3565
		AppDir p_received_ray_20percent.2653 Tt736.3591 )
		Let Ti737.3590
			Int:1
			Let Ti738.3589
				Sub x.2908 Ti737.3590
				Let Tt739.3588
					Get cur.2910 Ti738.3589
					Let r_left.3566
						AppDir p_received_ray_20percent.2653 Tt739.3588 )
						Let Tt740.3587
							Get cur.2910 x.2908
							Let r_center.3567
								AppDir p_received_ray_20percent.2653 Tt740.3587 )
								Let Ti741.3586
									Int:1
									Let Ti742.3585
										Add x.2908 Ti741.3586
										Let Tt743.3584
											Get cur.2910 Ti742.3585
											Let r_right.3568
												AppDir p_received_ray_20percent.2653 Tt743.3584 )
												Let Tt744.3583
													Get next.2911 x.2908
													Let r_down.3569
														AppDir p_received_ray_20percent.2653 Tt744.3583 )
														Let Ta745.3582
															Get r_up.3565 nref.2912
															Let Tu170.3570
																AppDir veccpy.2565 diffuse_ray.2499 Ta745.3582 )
																Let Ta746.3581
																	Get r_left.3566 nref.2912
																	Let Tu169.3571
																		AppDir vecadd.2588 diffuse_ray.2499 Ta746.3581 )
																		Let Ta747.3580
																			Get r_center.3567 nref.2912
																			Let Tu168.3572
																				AppDir vecadd.2588 diffuse_ray.2499 Ta747.3580 )
																				Let Ta748.3579
																					Get r_right.3568 nref.2912
																					Let Tu167.3573
																						AppDir vecadd.2588 diffuse_ray.2499 Ta748.3579 )
																						Let Ta749.3578
																							Get r_down.3569 nref.2912
																							Let Tu166.3574
																								AppDir vecadd.2588 diffuse_ray.2499 Ta749.3578 )
																								Let Tt750.3577
																									Get cur.2910 x.2908
																									Let energya.3575
																										AppDir p_energy.2651 Tt750.3577 )
																										Let Ta751.3576
																											Get energya.3575 nref.2912
																											AppDir vecaccumv.2597 rgb.2500 Ta751.3576 diffuse_ray.2499 )
name : do_without_neighbors.2913 args : pixel.2914 nref.2915  formal_fv : calc_diffuse_using_1point.2904  
Let Ti729.3555
	Int:4
	IfLE nref.2915 Ti729.3555
		Let surface_ids.3556
			AppDir p_surface_ids.2647 pixel.2914 )
			Let Ti730.3557
				Int:0
				Let Ti731.3558
					Get surface_ids.3556 nref.2915
					IfLE Ti730.3557 Ti731.3558
						Let calc_diffuse.3559
							AppDir p_calc_diffuse.2649 pixel.2914 )
							Let Tb732.3563
								Get calc_diffuse.3559 nref.2915
								Let Ti733.3564
									Int:0
									Let Tu171.3560
										IfEq Tb732.3563 Ti733.3564
											Unit
											AppCls calc_diffuse_using_1point.2904 pixel.2914 nref.2915 )
										Let Ti734.3562
											Int:1
											Let Ti735.3561
												Add nref.2915 Ti734.3562
												AppCls do_without_neighbors.2913 pixel.2914 Ti735.3561 )
						Unit
		Unit
name : neighbors_exist.2916 args : x.2917 y.2918 next.2919  formal_fv : image_size.2501  
Let Ti719.3554
	Int:1
	Let Ti720.3545
		Get image_size.2501 Ti719.3554
		Let Ti721.3553
			Int:1
			Let Ti722.3546
				Add y.2918 Ti721.3553
				IfLE Ti720.3545 Ti722.3546
					Int:0
					Let Ti723.3547
						Int:0
						IfLE y.2918 Ti723.3547
							Int:0
							Let Ti724.3552
								Int:0
								Let Ti725.3548
									Get image_size.2501 Ti724.3552
									Let Ti726.3551
										Int:1
										Let Ti727.3549
											Add x.2917 Ti726.3551
											IfLE Ti725.3548 Ti727.3549
												Int:0
												Let Ti728.3550
													Int:0
													IfLE x.2917 Ti728.3550
														Int:0
														Int:1
name : get_surface_id.2920 args : pixel.2921 index.2922  formal_fv :  
Let surface_ids.3544
	AppDir p_surface_ids.2647 pixel.2921 )
	Get surface_ids.3544 index.2922
name : neighbors_are_available.2923 args : x.2924 prev.2925 cur.2926 next.2927 nref.2928  formal_fv :  
Let Tt706.3543
	Get cur.2926 x.2924
	Let sid_center.3530
		AppDir get_surface_id.2920 Tt706.3543 nref.2928 )
		Let Tt707.3542
			Get prev.2925 x.2924
			Let Ti708.3531
				AppDir get_surface_id.2920 Tt707.3542 nref.2928 )
				IfEq Ti708.3531 sid_center.3530
					Let Tt709.3541
						Get next.2927 x.2924
						Let Ti710.3532
							AppDir get_surface_id.2920 Tt709.3541 nref.2928 )
							IfEq Ti710.3532 sid_center.3530
								Let Ti711.3540
									Int:1
									Let Ti712.3539
										Sub x.2924 Ti711.3540
										Let Tt713.3538
											Get cur.2926 Ti712.3539
											Let Ti714.3533
												AppDir get_surface_id.2920 Tt713.3538 nref.2928 )
												IfEq Ti714.3533 sid_center.3530
													Let Ti715.3537
														Int:1
														Let Ti716.3536
															Add x.2924 Ti715.3537
															Let Tt717.3535
																Get cur.2926 Ti716.3536
																Let Ti718.3534
																	AppDir get_surface_id.2920 Tt717.3535 nref.2928 )
																	IfEq Ti718.3534 sid_center.3530
																		Int:1
																		Int:0
													Int:0
								Int:0
					Int:0
name : try_exploit_neighbors.2929 args : x.2930 y.2931 prev.2932 cur.2933 next.2934 nref.2935  formal_fv : calc_diffuse_using_5points.2907 do_without_neighbors.2913  
Let pixel.3517
	Get cur.2933 x.2930
	Let Ti696.3518
		Int:4
		IfLE nref.2935 Ti696.3518
			Let Ti697.3519
				Int:0
				Let Ti698.3520
					AppDir get_surface_id.2920 pixel.3517 nref.2935 )
					IfLE Ti697.3519 Ti698.3520
						Let Tb699.3521
							AppDir neighbors_are_available.2923 x.2930 prev.2932 cur.2933 next.2934 nref.2935 )
							Let Ti700.3522
								Int:0
								IfEq Tb699.3521 Ti700.3522
									Let Tt701.3529
										Get cur.2933 x.2930
										AppCls do_without_neighbors.2913 Tt701.3529 nref.2935 )
									Let calc_diffuse.3523
										AppDir p_calc_diffuse.2649 pixel.3517 )
										Let Tb702.3527
											Get calc_diffuse.3523 nref.2935
											Let Ti703.3528
												Int:0
												Let Tu172.3524
													IfEq Tb702.3527 Ti703.3528
														Unit
														AppCls calc_diffuse_using_5points.2907 x.2930 prev.2932 cur.2933 next.2934 nref.2935 )
													Let Ti704.3526
														Int:1
														Let Ti705.3525
															Add nref.2935 Ti704.3526
															AppCls try_exploit_neighbors.2929 x.2930 y.2931 prev.2932 cur.2933 next.2934 Ti705.3525 )
						Unit
			Unit
name : write_ppm_header.2936 args : Tu173.2937  formal_fv : image_size.2501  
Let Ti691.3516
	Int:0
	Let Ti692.3515
		Get image_size.2501 Ti691.3516
		Let Tu175.3510
			AppDir min_caml_print_int Ti692.3515 )
			Let Ti693.3514
				Int:1
				Let Ti694.3513
					Get image_size.2501 Ti693.3514
					Let Tu174.3511
						AppDir min_caml_print_int Ti694.3513 )
						Let Ti695.3512
							Int:255
							AppDir min_caml_print_int Ti695.3512 )
name : write_rgb_element.2938 args : x.2939  formal_fv :  
Let ix.3506
	AppDir min_caml_int_of_float x.2939 )
	Let Ti689.3508
		Int:255
		Let elem.3507
			IfLE ix.3506 Ti689.3508
				Let Ti690.3509
					Int:0
					IfLE Ti690.3509 ix.3506
						Var ix.3506
						Int:0
				Int:255
			AppDir min_caml_print_int elem.3507 )
name : write_rgb.2940 args : Tu176.2941  formal_fv : rgb.2500  
Let Ti683.3505
	Int:0
	Let Td684.3504
		Get rgb.2500 Ti683.3505
		Let Tu178.3498
			AppDir write_rgb_element.2938 Td684.3504 )
			Let Ti685.3503
				Int:1
				Let Td686.3502
					Get rgb.2500 Ti685.3503
					Let Tu177.3499
						AppDir write_rgb_element.2938 Td686.3502 )
						Let Ti687.3501
							Int:2
							Let Td688.3500
								Get rgb.2500 Ti687.3501
								AppDir write_rgb_element.2938 Td688.3500 )
name : pretrace_diffuse_rays.2942 args : pixel.2943 nref.2944  formal_fv : diffuse_ray.2499 dirvecs.2510 trace_diffuse_rays.2896  
Let Ti673.3479
	Int:4
	IfLE nref.2944 Ti673.3479
		Let sid.3480
			AppDir get_surface_id.2920 pixel.2943 nref.2944 )
			Let Ti674.3481
				Int:0
				IfLE Ti674.3481 sid.3480
					Let calc_diffuse.3482
						AppDir p_calc_diffuse.2649 pixel.2943 )
						Let Tb675.3486
							Get calc_diffuse.3482 nref.2944
							Let Ti676.3487
								Int:0
								Let Tu181.3483
									IfEq Tb675.3486 Ti676.3487
										Unit
										Let group_id.3488
											AppDir p_group_id.2655 pixel.2943 )
											Let Tu180.3489
												AppDir vecbzero.2563 diffuse_ray.2499 )
												Let nvectors.3490
													AppDir p_nvectors.2660 pixel.2943 )
													Let intersection_points.3491
														AppDir p_intersection_points.2645 pixel.2943 )
														Let Ta677.3495
															Get dirvecs.2510 group_id.3488
															Let Ta678.3496
																Get nvectors.3490 nref.2944
																Let Ta679.3497
																	Get intersection_points.3491 nref.2944
																	Let Tu179.3492
																		AppCls trace_diffuse_rays.2896 Ta677.3495 Ta678.3496 Ta679.3497 )
																		Let ray20p.3493
																			AppDir p_received_ray_20percent.2653 pixel.2943 )
																			Let Ta680.3494
																				Get ray20p.3493 nref.2944
																				AppDir veccpy.2565 Ta680.3494 diffuse_ray.2499 )
									Let Ti681.3485
										Int:1
										Let Ti682.3484
											Add nref.2944 Ti681.3485
											AppCls pretrace_diffuse_rays.2942 pixel.2943 Ti682.3484 )
					Unit
		Unit
name : pretrace_pixels.2945 args : line.2946 x.2947 group_id.2948 lc0.2949 lc1.2950 lc2.2951  formal_fv : image_center.2502 pretrace_diffuse_rays.2942 ptrace_dirvec.2509 rgb.2500 scan_pitch.2503 screenx_dir.2506 startp.2504 trace_ray.2882 viewpoint.2487  
Let Ti637.3432
	Int:0
	IfLE Ti637.3432 x.2947
		Let Ti638.3478
			Int:0
			Let Td639.3473
				Get scan_pitch.2503 Ti638.3478
				Let Ti640.3477
					Int:0
					Let Ti641.3476
						Get image_center.2502 Ti640.3477
						Let Ti642.3475
							Sub x.2947 Ti641.3476
							Let Td643.3474
								AppDir float_of_int.2533 Ti642.3475 )
								Let xdisp.3433
									FMul Td639.3473 Td643.3474
									Let Ti644.3468
										Int:0
										Let Ti645.3472
											Int:0
											Let Td646.3471
												Get screenx_dir.2506 Ti645.3472
												Let Td647.3470
													FMul xdisp.3433 Td646.3471
													Let Td648.3469
														FAdd Td647.3470 lc0.2949
														Let Tu191.3434
															Put ptrace_dirvec.2509 Ti644.3468 Td648.3469
															Let Ti649.3463
																Int:1
																Let Ti650.3467
																	Int:1
																	Let Td651.3466
																		Get screenx_dir.2506 Ti650.3467
																		Let Td652.3465
																			FMul xdisp.3433 Td651.3466
																			Let Td653.3464
																				FAdd Td652.3465 lc1.2950
																				Let Tu190.3435
																					Put ptrace_dirvec.2509 Ti649.3463 Td653.3464
																					Let Ti654.3458
																						Int:2
																						Let Ti655.3462
																							Int:2
																							Let Td656.3461
																								Get screenx_dir.2506 Ti655.3462
																								Let Td657.3460
																									FMul xdisp.3433 Td656.3461
																									Let Td658.3459
																										FAdd Td657.3460 lc2.2951
																										Let Tu189.3436
																											Put ptrace_dirvec.2509 Ti654.3458 Td658.3459
																											Let Ti659.3457
																												Int:0
																												Let Tu188.3437
																													AppDir vecunit_sgn.2573 ptrace_dirvec.2509 Ti659.3457 )
																													Let Tu187.3438
																														AppDir vecbzero.2563 rgb.2500 )
																														Let Tu186.3439
																															AppDir veccpy.2565 startp.2504 viewpoint.2487 )
																															Let Ti660.3453
																																Int:0
																																Let Td661.3454
																																	Float:1.000000
																																	Let Tt662.3455
																																		Get line.2946 x.2947
																																		Let Td663.3456
																																			Float:0.000000
																																			Let Tu185.3440
																																				AppCls trace_ray.2882 Ti660.3453 Td661.3454 ptrace_dirvec.2509 Tt662.3455 Td663.3456 )
																																				Let Tt664.3452
																																					Get line.2946 x.2947
																																					Let Ta665.3451
																																						AppDir p_rgb.2643 Tt664.3452 )
																																						Let Tu184.3441
																																							AppDir veccpy.2565 Ta665.3451 rgb.2500 )
																																							Let Tt666.3450
																																								Get line.2946 x.2947
																																								Let Tu183.3442
																																									AppDir p_set_group_id.2657 Tt666.3450 group_id.2948 )
																																									Let Tt667.3448
																																										Get line.2946 x.2947
																																										Let Ti668.3449
																																											Int:0
																																											Let Tu182.3443
																																												AppCls pretrace_diffuse_rays.2942 Tt667.3448 Ti668.3449 )
																																												Let Ti669.3447
																																													Int:1
																																													Let Ti670.3444
																																														Sub x.2947 Ti669.3447
																																														Let Ti671.3446
																																															Int:1
																																															Let Ti672.3445
																																																AppDir add_mod5.2552 group_id.2948 Ti671.3446 )
																																																AppCls pretrace_pixels.2945 line.2946 Ti670.3444 Ti672.3445 lc0.2949 lc1.2950 lc2.2951 )
		Unit
name : pretrace_line.2952 args : line.2953 y.2954 group_id.2955  formal_fv : image_center.2502 image_size.2501 pretrace_pixels.2945 scan_pitch.2503 screeny_dir.2507 screenz_dir.2508  
Let Ti612.3431
	Int:0
	Let Td613.3426
		Get scan_pitch.2503 Ti612.3431
		Let Ti614.3430
			Int:1
			Let Ti615.3429
				Get image_center.2502 Ti614.3430
				Let Ti616.3428
					Sub y.2954 Ti615.3429
					Let Td617.3427
						AppDir float_of_int.2533 Ti616.3428 )
						Let ydisp.3403
							FMul Td613.3426 Td617.3427
							Let Ti618.3425
								Int:0
								Let Td619.3424
									Get screeny_dir.2507 Ti618.3425
									Let Td620.3421
										FMul ydisp.3403 Td619.3424
										Let Ti621.3423
											Int:0
											Let Td622.3422
												Get screenz_dir.2508 Ti621.3423
												Let lc0.3404
													FAdd Td620.3421 Td622.3422
													Let Ti623.3420
														Int:1
														Let Td624.3419
															Get screeny_dir.2507 Ti623.3420
															Let Td625.3416
																FMul ydisp.3403 Td624.3419
																Let Ti626.3418
																	Int:1
																	Let Td627.3417
																		Get screenz_dir.2508 Ti626.3418
																		Let lc1.3405
																			FAdd Td625.3416 Td627.3417
																			Let Ti628.3415
																				Int:2
																				Let Td629.3414
																					Get screeny_dir.2507 Ti628.3415
																					Let Td630.3411
																						FMul ydisp.3403 Td629.3414
																						Let Ti631.3413
																							Int:2
																							Let Td632.3412
																								Get screenz_dir.2508 Ti631.3413
																								Let lc2.3406
																									FAdd Td630.3411 Td632.3412
																									Let Ti633.3410
																										Int:0
																										Let Ti634.3408
																											Get image_size.2501 Ti633.3410
																											Let Ti635.3409
																												Int:1
																												Let Ti636.3407
																													Sub Ti634.3408 Ti635.3409
																													AppCls pretrace_pixels.2945 line.2953 Ti636.3407 group_id.2955 lc0.3404 lc1.3405 lc2.3406 )
name : scan_pixel.2956 args : x.2957 y.2958 prev.2959 cur.2960 next.2961  formal_fv : do_without_neighbors.2913 image_size.2501 neighbors_exist.2916 rgb.2500 try_exploit_neighbors.2929 write_rgb.2940  
Let Ti600.3402
	Int:0
	Let Ti601.3388
		Get image_size.2501 Ti600.3402
		IfLE Ti601.3388 x.2957
			Unit
			Let Tt602.3401
				Get cur.2960 x.2957
				Let Ta603.3400
					AppDir p_rgb.2643 Tt602.3401 )
					Let Tu194.3389
						AppDir veccpy.2565 rgb.2500 Ta603.3400 )
						Let Tb604.3395
							AppCls neighbors_exist.2916 x.2957 y.2958 next.2961 )
							Let Ti605.3396
								Int:0
								Let Tu193.3390
									IfEq Tb604.3395 Ti605.3396
										Let Tt606.3398
											Get cur.2960 x.2957
											Let Ti607.3399
												Int:0
												AppCls do_without_neighbors.2913 Tt606.3398 Ti607.3399 )
										Let Ti608.3397
											Int:0
											AppCls try_exploit_neighbors.2929 x.2957 y.2958 prev.2959 cur.2960 next.2961 Ti608.3397 )
									Let Tu609.3394
										Unit
										Let Tu192.3391
											AppCls write_rgb.2940 Tu609.3394 )
											Let Ti610.3393
												Int:1
												Let Ti611.3392
													Add x.2957 Ti610.3393
													AppCls scan_pixel.2956 Ti611.3392 y.2958 prev.2959 cur.2960 next.2961 )
name : scan_line.2962 args : y.2963 prev.2964 cur.2965 next.2966 group_id.2967  formal_fv : image_size.2501 pretrace_line.2952 scan_pixel.2956  
Let Ti587.3387
	Int:1
	Let Ti588.3373
		Get image_size.2501 Ti587.3387
		IfLE Ti588.3373 y.2963
			Unit
			Let Ti589.3386
				Int:1
				Let Ti590.3384
					Get image_size.2501 Ti589.3386
					Let Ti591.3385
						Int:1
						Let Ti592.3381
							Sub Ti590.3384 Ti591.3385
							Let Tu196.3374
								IfLE Ti592.3381 y.2963
									Unit
									Let Ti593.3383
										Int:1
										Let Ti594.3382
											Add y.2963 Ti593.3383
											AppCls pretrace_line.2952 next.2966 Ti594.3382 group_id.2967 )
								Let Ti595.3380
									Int:0
									Let Tu195.3375
										AppCls scan_pixel.2956 Ti595.3380 y.2963 prev.2964 cur.2965 next.2966 )
										Let Ti596.3379
											Int:1
											Let Ti597.3376
												Add y.2963 Ti596.3379
												Let Ti598.3378
													Int:2
													Let Ti599.3377
														AppDir add_mod5.2552 group_id.2967 Ti598.3378 )
														AppCls scan_line.2962 Ti597.3376 cur.2965 next.2966 prev.2964 Ti599.3377 )
name : create_float5x3array.2968 args : Tu197.2969  formal_fv :  
Let Ti568.3371
	Int:3
	Let Td569.3372
		Float:0.000000
		Let vec.3348
			AppDir min_caml_create_float_array Ti568.3371 Td569.3372 )
			Let Ti570.3370
				Int:5
				Let array.3349
					AppDir min_caml_create_array Ti570.3370 vec.3348 )
					Let Ti571.3366
						Int:1
						Let Ti572.3368
							Int:3
							Let Td573.3369
								Float:0.000000
								Let Ta574.3367
									AppDir min_caml_create_float_array Ti572.3368 Td573.3369 )
									Let Tu201.3350
										Put array.3349 Ti571.3366 Ta574.3367
										Let Ti575.3362
											Int:2
											Let Ti576.3364
												Int:3
												Let Td577.3365
													Float:0.000000
													Let Ta578.3363
														AppDir min_caml_create_float_array Ti576.3364 Td577.3365 )
														Let Tu200.3351
															Put array.3349 Ti575.3362 Ta578.3363
															Let Ti579.3358
																Int:3
																Let Ti580.3360
																	Int:3
																	Let Td581.3361
																		Float:0.000000
																		Let Ta582.3359
																			AppDir min_caml_create_float_array Ti580.3360 Td581.3361 )
																			Let Tu199.3352
																				Put array.3349 Ti579.3358 Ta582.3359
																				Let Ti583.3354
																					Int:4
																					Let Ti584.3356
																						Int:3
																						Let Td585.3357
																							Float:0.000000
																							Let Ta586.3355
																								AppDir min_caml_create_float_array Ti584.3356 Td585.3357 )
																								Let Tu198.3353
																									Put array.3349 Ti583.3354 Ta586.3355
																									Var array.3349
name : create_pixel.2970 args : Tu202.2971  formal_fv :  
Let Ti556.3346
	Int:3
	Let Td557.3347
		Float:0.000000
		Let m_rgb.3328
			AppDir min_caml_create_float_array Ti556.3346 Td557.3347 )
			Let Tu558.3345
				Unit
				Let m_isect_ps.3329
					AppDir create_float5x3array.2968 Tu558.3345 )
					Let Ti559.3343
						Int:5
						Let Ti560.3344
							Int:0
							Let m_sids.3330
								AppDir min_caml_create_array Ti559.3343 Ti560.3344 )
								Let Ti561.3341
									Int:5
									Let Ti562.3342
										Int:0
										Let m_cdif.3331
											AppDir min_caml_create_array Ti561.3341 Ti562.3342 )
											Let Tu563.3340
												Unit
												Let m_engy.3332
													AppDir create_float5x3array.2968 Tu563.3340 )
													Let Tu564.3339
														Unit
														Let m_r20p.3333
															AppDir create_float5x3array.2968 Tu564.3339 )
															Let Ti565.3337
																Int:1
																Let Ti566.3338
																	Int:0
																	Let m_gid.3334
																		AppDir min_caml_create_array Ti565.3337 Ti566.3338 )
																		Let Tu567.3336
																			Unit
																			Let m_nvectors.3335
																				AppDir create_float5x3array.2968 Tu567.3336 )
																				Tuple (m_rgb.3328,m_isect_ps.3329,m_sids.3330,m_cdif.3331,m_engy.3332,m_r20p.3333,m_gid.3334,m_nvectors.3335,)
name : init_line_elements.2972 args : line.2973 n.2974  formal_fv :  
Let Ti551.3322
	Int:0
	IfLE Ti551.3322 n.2974
		Let Tu552.3327
			Unit
			Let Tt553.3326
				AppDir create_pixel.2970 Tu552.3327 )
				Let Tu203.3323
					Put line.2973 n.2974 Tt553.3326
					Let Ti554.3325
						Int:1
						Let Ti555.3324
							Sub n.2974 Ti554.3325
							AppDir init_line_elements.2972 line.2973 Ti555.3324 )
		Var line.2973
name : create_pixelline.2975 args : Tu204.2976  formal_fv : image_size.2501  
Let Ti543.3321
	Int:0
	Let Ti544.3318
		Get image_size.2501 Ti543.3321
		Let Tu545.3320
			Unit
			Let Tt546.3319
				AppDir create_pixel.2970 Tu545.3320 )
				Let line.3313
					AppDir min_caml_create_array Ti544.3318 Tt546.3319 )
					Let Ti547.3317
						Int:0
						Let Ti548.3315
							Get image_size.2501 Ti547.3317
							Let Ti549.3316
								Int:2
								Let Ti550.3314
									Sub Ti548.3315 Ti549.3316
									AppDir init_line_elements.2972 line.3313 Ti550.3314 )
name : tan.2977 args : x.2978  formal_fv :  
Let Td540.3310
	AppDir min_caml_sin x.2978 )
	Let Td541.3311
		AppDir min_caml_cos x.2978 )
		Let Td542.3312
			FReciprocal Td541.3311
			FMul Td540.3310 Td542.3312
name : adjust_position.2979 args : h.2980 ratio.2981  formal_fv :  
Let Td534.3308
	FMul h.2980 h.2980
	Let Td535.3309
		Float:0.100000
		Let Td536.3307
			FAdd Td534.3308 Td535.3309
			Let l.3300
				AppDir min_caml_sqrt Td536.3307 )
				Let Td537.3305
					Float:1.000000
					Let Td538.3306
						FReciprocal l.3300
						Let tan_h.3301
							FMul Td537.3305 Td538.3306
							Let theta_h.3302
								AppDir min_caml_atan tan_h.3301 )
								Let Td539.3304
									FMul theta_h.3302 ratio.2981
									Let tan_m.3303
										AppDir tan.2977 Td539.3304 )
										FMul tan_m.3303 l.3300
name : calc_dirvec.2982 args : icount.2983 x.2984 y.2985 rx.2986 ry.2987 group_id.2988 index.2989  formal_fv : dirvecs.2510  
Let Ti490.3245
	Int:5
	IfLE Ti490.3245 icount.2983
		Let Td491.3298
			AppDir fsqr.2524 x.2984 )
			Let Td492.3299
				AppDir fsqr.2524 y.2985 )
				Let Td493.3296
					FAdd Td491.3298 Td492.3299
					Let Td494.3297
						Float:1.000000
						Let Td495.3295
							FAdd Td493.3296 Td494.3297
							Let l.3250
								AppDir min_caml_sqrt Td495.3295 )
								Let Td496.3294
									FReciprocal l.3250
									Let vx.3251
										FMul x.2984 Td496.3294
										Let Td497.3293
											FReciprocal l.3250
											Let vy.3252
												FMul y.2985 Td497.3293
												Let Td498.3291
													Float:1.000000
													Let Td499.3292
														FReciprocal l.3250
														Let vz.3253
															FMul Td498.3291 Td499.3292
															Let dgroup.3254
																Get dirvecs.2510 group_id.2988
																Let Tt500.3290
																	Get dgroup.3254 index.2989
																	Let Ta501.3289
																		AppDir d_vec.2662 Tt500.3290 )
																		Let Tu209.3255
																			AppDir vecset.2555 Ta501.3289 vx.3251 vy.3252 vz.3253 )
																			Let Ti502.3288
																				Int:40
																				Let Ti503.3287
																					Add index.2989 Ti502.3288
																					Let Tt504.3286
																						Get dgroup.3254 Ti503.3287
																						Let Ta505.3284
																							AppDir d_vec.2662 Tt504.3286 )
																							Let Td506.3285
																								AppDir fneg.2514 vy.3252 )
																								Let Tu208.3256
																									AppDir vecset.2555 Ta505.3284 vx.3251 vz.3253 Td506.3285 )
																									Let Ti507.3283
																										Int:80
																										Let Ti508.3282
																											Add index.2989 Ti507.3283
																											Let Tt509.3281
																												Get dgroup.3254 Ti508.3282
																												Let Ta510.3278
																													AppDir d_vec.2662 Tt509.3281 )
																													Let Td511.3279
																														AppDir fneg.2514 vx.3251 )
																														Let Td512.3280
																															AppDir fneg.2514 vy.3252 )
																															Let Tu207.3257
																																AppDir vecset.2555 Ta510.3278 vz.3253 Td511.3279 Td512.3280 )
																																Let Ti513.3277
																																	Int:1
																																	Let Ti514.3276
																																		Add index.2989 Ti513.3277
																																		Let Tt515.3275
																																			Get dgroup.3254 Ti514.3276
																																			Let Ta516.3271
																																				AppDir d_vec.2662 Tt515.3275 )
																																				Let Td517.3272
																																					AppDir fneg.2514 vx.3251 )
																																					Let Td518.3273
																																						AppDir fneg.2514 vy.3252 )
																																						Let Td519.3274
																																							AppDir fneg.2514 vz.3253 )
																																							Let Tu206.3258
																																								AppDir vecset.2555 Ta516.3271 Td517.3272 Td518.3273 Td519.3274 )
																																								Let Ti520.3270
																																									Int:41
																																									Let Ti521.3269
																																										Add index.2989 Ti520.3270
																																										Let Tt522.3268
																																											Get dgroup.3254 Ti521.3269
																																											Let Ta523.3265
																																												AppDir d_vec.2662 Tt522.3268 )
																																												Let Td524.3266
																																													AppDir fneg.2514 vx.3251 )
																																													Let Td525.3267
																																														AppDir fneg.2514 vz.3253 )
																																														Let Tu205.3259
																																															AppDir vecset.2555 Ta523.3265 Td524.3266 Td525.3267 vy.3252 )
																																															Let Ti526.3264
																																																Int:81
																																																Let Ti527.3263
																																																	Add index.2989 Ti526.3264
																																																	Let Tt528.3262
																																																		Get dgroup.3254 Ti527.3263
																																																		Let Ta529.3260
																																																			AppDir d_vec.2662 Tt528.3262 )
																																																			Let Td530.3261
																																																				AppDir fneg.2514 vz.3253 )
																																																				AppDir vecset.2555 Ta529.3260 Td530.3261 vx.3251 vy.3252 )
		Let x2.3246
			AppDir adjust_position.2979 y.2985 rx.2986 )
			Let Ti531.3249
				Int:1
				Let Ti532.3247
					Add icount.2983 Ti531.3249
					Let Td533.3248
						AppDir adjust_position.2979 x2.3246 ry.2987 )
						AppCls calc_dirvec.2982 Ti532.3247 x2.3246 Td533.3248 rx.2986 ry.2987 group_id.2988 index.2989 )
name : calc_dirvecs.2990 args : col.2991 ry.2992 group_id.2993 index.2994  formal_fv : calc_dirvec.2982  
Let Ti469.3220
	Int:0
	IfLE Ti469.3220 col.2991
		Let Td470.3243
			AppDir float_of_int.2533 col.2991 )
			Let Td471.3244
				Float:0.200000
				Let Td472.3241
					FMul Td470.3243 Td471.3244
					Let Td473.3242
						Float:0.900000
						Let rx.3221
							FSub Td472.3241 Td473.3242
							Let Ti474.3238
								Int:0
								Let Td475.3239
									Float:0.000000
									Let Td476.3240
										Float:0.000000
										Let Tu211.3222
											AppCls calc_dirvec.2982 Ti474.3238 Td475.3239 Td476.3240 rx.3221 ry.2992 group_id.2993 index.2994 )
											Let Td477.3236
												AppDir float_of_int.2533 col.2991 )
												Let Td478.3237
													Float:0.200000
													Let Td479.3234
														FMul Td477.3236 Td478.3237
														Let Td480.3235
															Float:0.100000
															Let rx2.3223
																FAdd Td479.3234 Td480.3235
																Let Ti481.3229
																	Int:0
																	Let Td482.3230
																		Float:0.000000
																		Let Td483.3231
																			Float:0.000000
																			Let Ti484.3233
																				Int:2
																				Let Ti485.3232
																					Add index.2994 Ti484.3233
																					Let Tu210.3224
																						AppCls calc_dirvec.2982 Ti481.3229 Td482.3230 Td483.3231 rx2.3223 ry.2992 group_id.2993 Ti485.3232 )
																						Let Ti486.3228
																							Int:1
																							Let Ti487.3225
																								Sub col.2991 Ti486.3228
																								Let Ti488.3227
																									Int:1
																									Let Ti489.3226
																										AppDir add_mod5.2552 group_id.2993 Ti488.3227 )
																										AppCls calc_dirvecs.2990 Ti487.3225 ry.2992 Ti489.3226 index.2994 )
		Unit
name : calc_dirvec_rows.2995 args : row.2996 group_id.2997 index.2998  formal_fv : calc_dirvecs.2990  
Let Ti457.3206
	Int:0
	IfLE Ti457.3206 row.2996
		Let Td458.3218
			AppDir float_of_int.2533 row.2996 )
			Let Td459.3219
				Float:0.200000
				Let Td460.3216
					FMul Td458.3218 Td459.3219
					Let Td461.3217
						Float:0.900000
						Let ry.3207
							FSub Td460.3216 Td461.3217
							Let Ti462.3215
								Int:4
								Let Tu212.3208
									AppCls calc_dirvecs.2990 Ti462.3215 ry.3207 group_id.2997 index.2998 )
									Let Ti463.3214
										Int:1
										Let Ti464.3209
											Sub row.2996 Ti463.3214
											Let Ti465.3213
												Int:2
												Let Ti466.3210
													AppDir add_mod5.2552 group_id.2997 Ti465.3213 )
													Let Ti467.3212
														Int:4
														Let Ti468.3211
															Add index.2998 Ti467.3212
															AppCls calc_dirvec_rows.2995 Ti464.3209 Ti466.3210 Ti468.3211 )
		Unit
name : create_dirvec.2999 args : Tu213.3000  formal_fv : n_objects.2484  
Let Ti453.3204
	Int:3
	Let Td454.3205
		Float:0.000000
		Let v3.3200
			AppDir min_caml_create_float_array Ti453.3204 Td454.3205 )
			Let Ti455.3203
				Int:0
				Let Ti456.3202
					Get n_objects.2484 Ti455.3203
					Let consts.3201
						AppDir min_caml_create_array Ti456.3202 v3.3200 )
						Tuple (v3.3200,consts.3201,)
name : create_dirvec_elements.3001 args : d.3002 index.3003  formal_fv : create_dirvec.2999  
Let Ti448.3194
	Int:0
	IfLE Ti448.3194 index.3003
		Let Tu449.3199
			Unit
			Let Tt450.3198
				AppCls create_dirvec.2999 Tu449.3199 )
				Let Tu214.3195
					Put d.3002 index.3003 Tt450.3198
					Let Ti451.3197
						Int:1
						Let Ti452.3196
							Sub index.3003 Ti451.3197
							AppCls create_dirvec_elements.3001 d.3002 Ti452.3196 )
		Unit
name : create_dirvecs.3004 args : index.3005  formal_fv : create_dirvec.2999 create_dirvec_elements.3001 dirvecs.2510  
Let Ti439.3183
	Int:0
	IfLE Ti439.3183 index.3005
		Let Ti440.3191
			Int:120
			Let Tu441.3193
				Unit
				Let Tt442.3192
					AppCls create_dirvec.2999 Tu441.3193 )
					Let Ta443.3190
						AppDir min_caml_create_array Ti440.3191 Tt442.3192 )
						Let Tu216.3184
							Put dirvecs.2510 index.3005 Ta443.3190
							Let Ta444.3188
								Get dirvecs.2510 index.3005
								Let Ti445.3189
									Int:118
									Let Tu215.3185
										AppCls create_dirvec_elements.3001 Ta444.3188 Ti445.3189 )
										Let Ti446.3187
											Int:1
											Let Ti447.3186
												Sub index.3005 Ti446.3187
												AppCls create_dirvecs.3004 Ti447.3186 )
		Unit
name : init_dirvec_constants.3006 args : vecset.3007 index.3008  formal_fv : setup_dirvec_constants.2791  
Let Ti435.3178
	Int:0
	IfLE Ti435.3178 index.3008
		Let Tt436.3182
			Get vecset.3007 index.3008
			Let Tu217.3179
				AppCls setup_dirvec_constants.2791 Tt436.3182 )
				Let Ti437.3181
					Int:1
					Let Ti438.3180
						Sub index.3008 Ti437.3181
						AppCls init_dirvec_constants.3006 vecset.3007 Ti438.3180 )
		Unit
name : init_vecset_constants.3009 args : index.3010  formal_fv : dirvecs.2510 init_dirvec_constants.3006  
Let Ti430.3172
	Int:0
	IfLE Ti430.3172 index.3010
		Let Ta431.3176
			Get dirvecs.2510 index.3010
			Let Ti432.3177
				Int:119
				Let Tu218.3173
					AppCls init_dirvec_constants.3006 Ta431.3176 Ti432.3177 )
					Let Ti433.3175
						Int:1
						Let Ti434.3174
							Sub index.3010 Ti433.3175
							AppCls init_vecset_constants.3009 Ti434.3174 )
		Unit
name : init_dirvecs.3011 args : Tu219.3012  formal_fv : calc_dirvec_rows.2995 create_dirvecs.3004 init_vecset_constants.3009  
Let Ti425.3171
	Int:4
	Let Tu221.3165
		AppCls create_dirvecs.3004 Ti425.3171 )
		Let Ti426.3168
			Int:9
			Let Ti427.3169
				Int:0
				Let Ti428.3170
					Int:0
					Let Tu220.3166
						AppCls calc_dirvec_rows.2995 Ti426.3168 Ti427.3169 Ti428.3170 )
						Let Ti429.3167
							Int:4
							AppCls init_vecset_constants.3009 Ti429.3167 )
name : add_reflection.3013 args : index.3014 surface_id.3015 bright.3016 v0.3017 v1.3018 v2.3019  formal_fv : create_dirvec.2999 reflections.2512 setup_dirvec_constants.2791  
Let Tu422.3164
	Unit
	Let dvec.3159
		AppCls create_dirvec.2999 Tu422.3164 )
		Let Ta423.3163
			AppDir d_vec.2662 dvec.3159 )
			Let Tu223.3160
				AppDir vecset.2555 Ta423.3163 v0.3017 v1.3018 v2.3019 )
				Let Tu222.3161
					AppCls setup_dirvec_constants.2791 dvec.3159 )
					Let Tt424.3162
						Tuple (surface_id.3015,dvec.3159,bright.3016,)
						Put reflections.2512 index.3014 Tt424.3162
name : setup_rect_reflection.3020 args : obj_id.3021 obj.3022  formal_fv : add_reflection.3013 light.2488 n_reflections.2513  
Let sid.3122
	ShiftL2 obj_id.3021
	Let Ti394.3158
		Int:0
		Let nr.3123
			Get n_reflections.2513 Ti394.3158
			Let Td395.3156
				Float:1.000000
				Let Td396.3157
					AppDir o_diffuse.2625 obj.3022 )
					Let br.3124
						FSub Td395.3156 Td396.3157
						Let Ti397.3155
							Int:0
							Let Td398.3154
								Get light.2488 Ti397.3155
								Let n0.3125
									AppDir fneg.2514 Td398.3154 )
									Let Ti399.3153
										Int:1
										Let Td400.3152
											Get light.2488 Ti399.3153
											Let n1.3126
												AppDir fneg.2514 Td400.3152 )
												Let Ti401.3151
													Int:2
													Let Td402.3150
														Get light.2488 Ti401.3151
														Let n2.3127
															AppDir fneg.2514 Td402.3150 )
															Let Ti403.3149
																Int:1
																Let Ti404.3146
																	Add sid.3122 Ti403.3149
																	Let Ti405.3148
																		Int:0
																		Let Td406.3147
																			Get light.2488 Ti405.3148
																			Let Tu226.3128
																				AppCls add_reflection.3013 nr.3123 Ti404.3146 br.3124 Td406.3147 n1.3126 n2.3127 )
																				Let Ti407.3145
																					Int:1
																					Let Ti408.3140
																						Add nr.3123 Ti407.3145
																						Let Ti409.3144
																							Int:2
																							Let Ti410.3141
																								Add sid.3122 Ti409.3144
																								Let Ti411.3143
																									Int:1
																									Let Td412.3142
																										Get light.2488 Ti411.3143
																										Let Tu225.3129
																											AppCls add_reflection.3013 Ti408.3140 Ti410.3141 br.3124 n0.3125 Td412.3142 n2.3127 )
																											Let Ti413.3139
																												Int:2
																												Let Ti414.3134
																													Add nr.3123 Ti413.3139
																													Let Ti415.3138
																														Int:3
																														Let Ti416.3135
																															Add sid.3122 Ti415.3138
																															Let Ti417.3137
																																Int:2
																																Let Td418.3136
																																	Get light.2488 Ti417.3137
																																	Let Tu224.3130
																																		AppCls add_reflection.3013 Ti414.3134 Ti416.3135 br.3124 n0.3125 n1.3126 Td418.3136 )
																																		Let Ti419.3131
																																			Int:0
																																			Let Ti420.3133
																																				Int:3
																																				Let Ti421.3132
																																					Add nr.3123 Ti420.3133
																																					Put n_reflections.2513 Ti419.3131 Ti421.3132
name : setup_surface_reflection.3023 args : obj_id.3024 obj.3025  formal_fv : add_reflection.3013 light.2488 n_reflections.2513  
Let Ti364.3120
	ShiftL2 obj_id.3024
	Let Ti365.3121
		Int:1
		Let sid.3087
			Add Ti364.3120 Ti365.3121
			Let Ti366.3119
				Int:0
				Let nr.3088
					Get n_reflections.2513 Ti366.3119
					Let Td367.3117
						Float:1.000000
						Let Td368.3118
							AppDir o_diffuse.2625 obj.3025 )
							Let br.3089
								FSub Td367.3117 Td368.3118
								Let Ta369.3116
									AppDir o_param_abc.2617 obj.3025 )
									Let p.3090
										AppDir veciprod.2576 light.2488 Ta369.3116 )
										Let Td370.3114
											Float:2.000000
											Let Td371.3115
												AppDir o_param_a.2611 obj.3025 )
												Let Td372.3113
													FMul Td370.3114 Td371.3115
													Let Td373.3110
														FMul Td372.3113 p.3090
														Let Ti374.3112
															Int:0
															Let Td375.3111
																Get light.2488 Ti374.3112
																Let Td376.3095
																	FSub Td373.3110 Td375.3111
																	Let Td377.3108
																		Float:2.000000
																		Let Td378.3109
																			AppDir o_param_b.2613 obj.3025 )
																			Let Td379.3107
																				FMul Td377.3108 Td378.3109
																				Let Td380.3104
																					FMul Td379.3107 p.3090
																					Let Ti381.3106
																						Int:1
																						Let Td382.3105
																							Get light.2488 Ti381.3106
																							Let Td383.3096
																								FSub Td380.3104 Td382.3105
																								Let Td384.3102
																									Float:2.000000
																									Let Td385.3103
																										AppDir o_param_c.2615 obj.3025 )
																										Let Td386.3101
																											FMul Td384.3102 Td385.3103
																											Let Td387.3098
																												FMul Td386.3101 p.3090
																												Let Ti388.3100
																													Int:2
																													Let Td389.3099
																														Get light.2488 Ti388.3100
																														Let Td390.3097
																															FSub Td387.3098 Td389.3099
																															Let Tu227.3091
																																AppCls add_reflection.3013 nr.3088 sid.3087 br.3089 Td376.3095 Td383.3096 Td390.3097 )
																																Let Ti391.3092
																																	Int:0
																																	Let Ti392.3094
																																		Int:1
																																		Let Ti393.3093
																																			Add nr.3088 Ti392.3094
																																			Put n_reflections.2513 Ti391.3092 Ti393.3093
name : setup_reflections.3026 args : obj_id.3027  formal_fv : objects.2485 setup_rect_reflection.3020 setup_surface_reflection.3023  
Let Ti355.3076
	Int:0
	IfLE Ti355.3076 obj_id.3027
		Let obj.3077
			Get objects.2485 obj_id.3027
			Let Ti356.3078
				AppDir o_reflectiontype.2605 obj.3077 )
				Let Ti357.3079
					Int:2
					IfEq Ti356.3078 Ti357.3079
						Let Td358.3085
							AppDir o_diffuse.2625 obj.3077 )
							Let Td359.3086
								Float:1.000000
								Let Tb360.3080
									AppDir fless.2528 Td358.3085 Td359.3086 )
									Let Ti361.3081
										Int:0
										IfEq Tb360.3080 Ti361.3081
											Unit
											Let m_shape.3082
												AppDir o_form.2603 obj.3077 )
												Let Ti362.3083
													Int:1
													IfEq m_shape.3082 Ti362.3083
														AppCls setup_rect_reflection.3020 obj_id.3027 obj.3077 )
														Let Ti363.3084
															Int:2
															IfEq m_shape.3082 Ti363.3084
																AppCls setup_surface_reflection.3023 obj_id.3027 obj.3077 )
																Unit
						Unit
		Unit
name : rt.3028 args : size_x.3029 size_y.3030  formal_fv : create_pixelline.2975 image_center.2502 image_size.2501 init_dirvecs.3011 light.2488 light_dirvec.2511 n_objects.2484 pretrace_line.2952 read_parameter.2693 scan_line.2962 scan_pitch.2503 setup_dirvec_constants.2791 setup_reflections.3026 write_ppm_header.2936  
Let Ti329.3075
	Int:0
	Let Tu239.3035
		Put image_size.2501 Ti329.3075 size_x.3029
		Let Ti330.3074
			Int:1
			Let Tu238.3036
				Put image_size.2501 Ti330.3074 size_y.3030
				Let Ti331.3072
					Int:0
					Let Ti332.3073
						ShiftR1 size_x.3029
						Let Tu237.3037
							Put image_center.2502 Ti331.3072 Ti332.3073
							Let Ti333.3070
								Int:1
								Let Ti334.3071
									ShiftR1 size_y.3030
									Let Tu236.3038
										Put image_center.2502 Ti333.3070 Ti334.3071
										Let Ti335.3065
											Int:0
											Let Td336.3067
												Float:128.000000
												Let Td337.3068
													AppDir float_of_int.2533 size_x.3029 )
													Let Td338.3069
														FReciprocal Td337.3068
														Let Td339.3066
															FMul Td336.3067 Td338.3069
															Let Tu235.3039
																Put scan_pitch.2503 Ti335.3065 Td339.3066
																Let Tu340.3064
																	Unit
																	Let prev.3040
																		AppCls create_pixelline.2975 Tu340.3064 )
																		Let Tu341.3063
																			Unit
																			Let cur.3041
																				AppCls create_pixelline.2975 Tu341.3063 )
																				Let Tu342.3062
																					Unit
																					Let next.3042
																						AppCls create_pixelline.2975 Tu342.3062 )
																						Let Tu343.3061
																							Unit
																							Let Tu234.3043
																								AppCls read_parameter.2693 Tu343.3061 )
																								Let Tu344.3060
																									Unit
																									Let Tu233.3044
																										AppCls write_ppm_header.2936 Tu344.3060 )
																										Let Tu345.3059
																											Unit
																											Let Tu232.3045
																												AppCls init_dirvecs.3011 Tu345.3059 )
																												Let Ta346.3058
																													AppDir d_vec.2662 light_dirvec.2511 )
																													Let Tu231.3046
																														AppDir veccpy.2565 Ta346.3058 light.2488 )
																														Let Tu230.3047
																															AppCls setup_dirvec_constants.2791 light_dirvec.2511 )
																															Let Ti347.3057
																																Int:0
																																Let Ti348.3055
																																	Get n_objects.2484 Ti347.3057
																																	Let Ti349.3056
																																		Int:1
																																		Let Ti350.3054
																																			Sub Ti348.3055 Ti349.3056
																																			Let Tu229.3048
																																				AppCls setup_reflections.3026 Ti350.3054 )
																																				Let Ti351.3052
																																					Int:0
																																					Let Ti352.3053
																																						Int:0
																																						Let Tu228.3049
																																							AppCls pretrace_line.2952 cur.3041 Ti351.3052 Ti352.3053 )
																																							Let Ti353.3050
																																								Int:0
																																								Let Ti354.3051
																																									Int:2
																																									AppCls scan_line.2962 Ti353.3050 prev.3040 cur.3041 next.3042 Ti354.3051 )

Let Ti241.6147
	Int:1
	Let Ti242.6148
		Int:0
		Let n_objects.2484
			AppDir min_caml_create_array Ti241.6147 Ti242.6148 )
			Let Ti243.6145
				Int:0
				Let Td244.6146
					Float:0.000000
					Let dummy.6137
						AppDir min_caml_create_float_array Ti243.6145 Td244.6146 )
						Let Ti245.6138
							Int:60
							Let Ti246.6140
								Int:0
								Let Ti247.6141
									Int:0
									Let Ti248.6142
										Int:0
										Let Ti249.6143
											Int:0
											Let Ti250.6144
												Int:0
												Let Tt251.6139
													Tuple (Ti246.6140,Ti247.6141,Ti248.6142,Ti249.6143,dummy.6137,dummy.6137,Ti250.6144,dummy.6137,dummy.6137,dummy.6137,dummy.6137,)
													Let objects.2485
														AppDir min_caml_create_array Ti245.6138 Tt251.6139 )
														Let Ti252.6135
															Int:3
															Let Td253.6136
																Float:0.000000
																Let screen.2486
																	AppDir min_caml_create_float_array Ti252.6135 Td253.6136 )
																	Let Ti254.6133
																		Int:3
																		Let Td255.6134
																			Float:0.000000
																			Let viewpoint.2487
																				AppDir min_caml_create_float_array Ti254.6133 Td255.6134 )
																				Let Ti256.6131
																					Int:3
																					Let Td257.6132
																						Float:0.000000
																						Let light.2488
																							AppDir min_caml_create_float_array Ti256.6131 Td257.6132 )
																							Let Ti258.6129
																								Int:1
																								Let Td259.6130
																									Float:255.000000
																									Let beam.2489
																										AppDir min_caml_create_float_array Ti258.6129 Td259.6130 )
																										Let Ti260.6124
																											Int:50
																											Let Ti261.6126
																												Int:1
																												Let Ti263.6127
																													Int:-1
																													Let Ta264.6125
																														AppDir min_caml_create_array Ti261.6126 Ti263.6127 )
																														Let and_net.2490
																															AppDir min_caml_create_array Ti260.6124 Ta264.6125 )
																															Let Ti265.6119
																																Int:1
																																Let Ti266.6121
																																	Int:1
																																	Let Ti267.6123
																																		Int:0
																																		Let Ta268.6122
																																			Get and_net.2490 Ti267.6123
																																			Let Ta269.6120
																																				AppDir min_caml_create_array Ti266.6121 Ta268.6122 )
																																				Let or_net.2491
																																					AppDir min_caml_create_array Ti265.6119 Ta269.6120 )
																																					Let Ti270.6117
																																						Int:1
																																						Let Td271.6118
																																							Float:0.000000
																																							Let solver_dist.2492
																																								AppDir min_caml_create_float_array Ti270.6117 Td271.6118 )
																																								Let Ti272.6115
																																									Int:1
																																									Let Ti273.6116
																																										Int:0
																																										Let intsec_rectside.2493
																																											AppDir min_caml_create_array Ti272.6115 Ti273.6116 )
																																											Let Ti274.6113
																																												Int:1
																																												Let Td275.6114
																																													Float:1000000000.000000
																																													Let tmin.2494
																																														AppDir min_caml_create_float_array Ti274.6113 Td275.6114 )
																																														Let Ti276.6111
																																															Int:3
																																															Let Td277.6112
																																																Float:0.000000
																																																Let intersection_point.2495
																																																	AppDir min_caml_create_float_array Ti276.6111 Td277.6112 )
																																																	Let Ti278.6109
																																																		Int:1
																																																		Let Ti279.6110
																																																			Int:0
																																																			Let intersected_object_id.2496
																																																				AppDir min_caml_create_array Ti278.6109 Ti279.6110 )
																																																				Let Ti280.6107
																																																					Int:3
																																																					Let Td281.6108
																																																						Float:0.000000
																																																						Let nvector.2497
																																																							AppDir min_caml_create_float_array Ti280.6107 Td281.6108 )
																																																							Let Ti282.6105
																																																								Int:3
																																																								Let Td283.6106
																																																									Float:0.000000
																																																									Let texture_color.2498
																																																										AppDir min_caml_create_float_array Ti282.6105 Td283.6106 )
																																																										Let Ti284.6103
																																																											Int:3
																																																											Let Td285.6104
																																																												Float:0.000000
																																																												Let diffuse_ray.2499
																																																													AppDir min_caml_create_float_array Ti284.6103 Td285.6104 )
																																																													Let Ti286.6101
																																																														Int:3
																																																														Let Td287.6102
																																																															Float:0.000000
																																																															Let rgb.2500
																																																																AppDir min_caml_create_float_array Ti286.6101 Td287.6102 )
																																																																Let Ti288.6099
																																																																	Int:2
																																																																	Let Ti289.6100
																																																																		Int:0
																																																																		Let image_size.2501
																																																																			AppDir min_caml_create_array Ti288.6099 Ti289.6100 )
																																																																			Let Ti290.6097
																																																																				Int:2
																																																																				Let Ti291.6098
																																																																					Int:0
																																																																					Let image_center.2502
																																																																						AppDir min_caml_create_array Ti290.6097 Ti291.6098 )
																																																																						Let Ti292.6095
																																																																							Int:1
																																																																							Let Td293.6096
																																																																								Float:0.000000
																																																																								Let scan_pitch.2503
																																																																									AppDir min_caml_create_float_array Ti292.6095 Td293.6096 )
																																																																									Let Ti294.6093
																																																																										Int:3
																																																																										Let Td295.6094
																																																																											Float:0.000000
																																																																											Let startp.2504
																																																																												AppDir min_caml_create_float_array Ti294.6093 Td295.6094 )
																																																																												Let Ti296.6091
																																																																													Int:3
																																																																													Let Td297.6092
																																																																														Float:0.000000
																																																																														Let startp_fast.2505
																																																																															AppDir min_caml_create_float_array Ti296.6091 Td297.6092 )
																																																																															Let Ti298.6089
																																																																																Int:3
																																																																																Let Td299.6090
																																																																																	Float:0.000000
																																																																																	Let screenx_dir.2506
																																																																																		AppDir min_caml_create_float_array Ti298.6089 Td299.6090 )
																																																																																		Let Ti300.6087
																																																																																			Int:3
																																																																																			Let Td301.6088
																																																																																				Float:0.000000
																																																																																				Let screeny_dir.2507
																																																																																					AppDir min_caml_create_float_array Ti300.6087 Td301.6088 )
																																																																																					Let Ti302.6085
																																																																																						Int:3
																																																																																						Let Td303.6086
																																																																																							Float:0.000000
																																																																																							Let screenz_dir.2508
																																																																																								AppDir min_caml_create_float_array Ti302.6085 Td303.6086 )
																																																																																								Let Ti304.6083
																																																																																									Int:3
																																																																																									Let Td305.6084
																																																																																										Float:0.000000
																																																																																										Let ptrace_dirvec.2509
																																																																																											AppDir min_caml_create_float_array Ti304.6083 Td305.6084 )
																																																																																											Let Ti306.6081
																																																																																												Int:0
																																																																																												Let Td307.6082
																																																																																													Float:0.000000
																																																																																													Let dummyf.6074
																																																																																														AppDir min_caml_create_float_array Ti306.6081 Td307.6082 )
																																																																																														Let Ti308.6080
																																																																																															Int:0
																																																																																															Let dummyff.6075
																																																																																																AppDir min_caml_create_array Ti308.6080 dummyf.6074 )
																																																																																																Let Ti309.6078
																																																																																																	Int:0
																																																																																																	Let Tt310.6079
																																																																																																		Tuple (dummyf.6074,dummyff.6075,)
																																																																																																		Let dummy_vs.6076
																																																																																																			AppDir min_caml_create_array Ti309.6078 Tt310.6079 )
																																																																																																			Let Ti311.6077
																																																																																																				Int:5
																																																																																																				Let dirvecs.2510
																																																																																																					AppDir min_caml_create_array Ti311.6077 dummy_vs.6076 )
																																																																																																					Let Ti312.6072
																																																																																																						Int:0
																																																																																																						Let Td313.6073
																																																																																																							Float:0.000000
																																																																																																							Let dummyf2.6066
																																																																																																								AppDir min_caml_create_float_array Ti312.6072 Td313.6073 )
																																																																																																								Let Ti314.6070
																																																																																																									Int:3
																																																																																																									Let Td315.6071
																																																																																																										Float:0.000000
																																																																																																										Let v3.6067
																																																																																																											AppDir min_caml_create_float_array Ti314.6070 Td315.6071 )
																																																																																																											Let Ti316.6069
																																																																																																												Int:60
																																																																																																												Let consts.6068
																																																																																																													AppDir min_caml_create_array Ti316.6069 dummyf2.6066 )
																																																																																																													Let light_dirvec.2511
																																																																																																														Tuple (v3.6067,consts.6068,)
																																																																																																														Let Ti317.6064
																																																																																																															Int:0
																																																																																																															Let Td318.6065
																																																																																																																Float:0.000000
																																																																																																																Let dummyf3.6056
																																																																																																																	AppDir min_caml_create_float_array Ti317.6064 Td318.6065 )
																																																																																																																	Let Ti319.6063
																																																																																																																		Int:0
																																																																																																																		Let dummyff3.6057
																																																																																																																			AppDir min_caml_create_array Ti319.6063 dummyf3.6056 )
																																																																																																																			Let dummydv.6058
																																																																																																																				Tuple (dummyf3.6056,dummyff3.6057,)
																																																																																																																				Let Ti320.6059
																																																																																																																					Int:180
																																																																																																																					Let Ti321.6061
																																																																																																																						Int:0
																																																																																																																						Let Td322.6062
																																																																																																																							Float:0.000000
																																																																																																																							Let Tt323.6060
																																																																																																																								Tuple (Ti321.6061,dummydv.6058,Td322.6062,)
																																																																																																																								Let reflections.2512
																																																																																																																									AppDir min_caml_create_array Ti320.6059 Tt323.6060 )
																																																																																																																									Let Ti324.6054
																																																																																																																										Int:1
																																																																																																																										Let Ti325.6055
																																																																																																																											Int:0
																																																																																																																											Let n_reflections.2513
																																																																																																																												AppDir min_caml_create_array Ti324.6054 Ti325.6055 )
																																																																																																																												MakeCls read_screen_settings.2674 (entry = read_screen_settings.2674, actual_fc = screen.2486 screenx_dir.2506 screeny_dir.2507 screenz_dir.2508 viewpoint.2487 )
																																																																																																																													MakeCls read_light.2676 (entry = read_light.2676, actual_fc = beam.2489 light.2488 )
																																																																																																																														MakeCls read_nth_object.2681 (entry = read_nth_object.2681, actual_fc = objects.2485 )
																																																																																																																															MakeCls read_object.2683 (entry = read_object.2683, actual_fc = n_objects.2484 read_nth_object.2681 )
																																																																																																																																MakeCls read_all_object.2685 (entry = read_all_object.2685, actual_fc = read_object.2683 )
																																																																																																																																	MakeCls read_and_network.2691 (entry = read_and_network.2691, actual_fc = and_net.2490 )
																																																																																																																																		MakeCls read_parameter.2693 (entry = read_parameter.2693, actual_fc = or_net.2491 read_all_object.2685 read_and_network.2691 read_light.2676 read_screen_settings.2674 )
																																																																																																																																			MakeCls solver_rect_surface.2695 (entry = solver_rect_surface.2695, actual_fc = solver_dist.2492 )
																																																																																																																																				MakeCls solver_rect.2704 (entry = solver_rect.2704, actual_fc = solver_rect_surface.2695 )
																																																																																																																																					MakeCls solver_surface.2710 (entry = solver_surface.2710, actual_fc = solver_dist.2492 )
																																																																																																																																						MakeCls solver_second.2729 (entry = solver_second.2729, actual_fc = solver_dist.2492 )
																																																																																																																																							MakeCls solver.2735 (entry = solver.2735, actual_fc = objects.2485 solver_rect.2704 solver_second.2729 solver_surface.2710 )
																																																																																																																																								MakeCls solver_rect_fast.2739 (entry = solver_rect_fast.2739, actual_fc = solver_dist.2492 )
																																																																																																																																									MakeCls solver_surface_fast.2746 (entry = solver_surface_fast.2746, actual_fc = solver_dist.2492 )
																																																																																																																																										MakeCls solver_second_fast.2752 (entry = solver_second_fast.2752, actual_fc = solver_dist.2492 )
																																																																																																																																											MakeCls solver_fast.2758 (entry = solver_fast.2758, actual_fc = objects.2485 solver_rect_fast.2739 solver_second_fast.2752 solver_surface_fast.2746 )
																																																																																																																																												MakeCls solver_surface_fast2.2762 (entry = solver_surface_fast2.2762, actual_fc = solver_dist.2492 )
																																																																																																																																													MakeCls solver_second_fast2.2769 (entry = solver_second_fast2.2769, actual_fc = solver_dist.2492 )
																																																																																																																																														MakeCls solver_fast2.2776 (entry = solver_fast2.2776, actual_fc = objects.2485 solver_rect_fast.2739 solver_second_fast2.2769 solver_surface_fast2.2762 )
																																																																																																																																															MakeCls iter_setup_dirvec_constants.2788 (entry = iter_setup_dirvec_constants.2788, actual_fc = objects.2485 )
																																																																																																																																																MakeCls setup_dirvec_constants.2791 (entry = setup_dirvec_constants.2791, actual_fc = iter_setup_dirvec_constants.2788 n_objects.2484 )
																																																																																																																																																	MakeCls setup_startp_constants.2793 (entry = setup_startp_constants.2793, actual_fc = objects.2485 )
																																																																																																																																																		MakeCls setup_startp.2796 (entry = setup_startp.2796, actual_fc = n_objects.2484 setup_startp_constants.2793 startp_fast.2505 )
																																																																																																																																																			MakeCls check_all_inside.2818 (entry = check_all_inside.2818, actual_fc = objects.2485 )
																																																																																																																																																				MakeCls shadow_check_and_group.2824 (entry = shadow_check_and_group.2824, actual_fc = check_all_inside.2818 intersection_point.2495 light.2488 light_dirvec.2511 objects.2485 solver_dist.2492 solver_fast.2758 )
																																																																																																																																																					MakeCls shadow_check_one_or_group.2827 (entry = shadow_check_one_or_group.2827, actual_fc = and_net.2490 shadow_check_and_group.2824 )
																																																																																																																																																						MakeCls shadow_check_one_or_matrix.2830 (entry = shadow_check_one_or_matrix.2830, actual_fc = intersection_point.2495 light_dirvec.2511 shadow_check_one_or_group.2827 solver_dist.2492 solver_fast.2758 )
																																																																																																																																																							MakeCls solve_each_element.2833 (entry = solve_each_element.2833, actual_fc = check_all_inside.2818 intersected_object_id.2496 intersection_point.2495 intsec_rectside.2493 objects.2485 solver.2735 solver_dist.2492 startp.2504 tmin.2494 )
																																																																																																																																																								MakeCls solve_one_or_network.2837 (entry = solve_one_or_network.2837, actual_fc = and_net.2490 solve_each_element.2833 )
																																																																																																																																																									MakeCls trace_or_matrix.2841 (entry = trace_or_matrix.2841, actual_fc = solve_one_or_network.2837 solver.2735 solver_dist.2492 startp.2504 tmin.2494 )
																																																																																																																																																										MakeCls judge_intersection.2845 (entry = judge_intersection.2845, actual_fc = or_net.2491 tmin.2494 trace_or_matrix.2841 )
																																																																																																																																																											MakeCls solve_each_element_fast.2847 (entry = solve_each_element_fast.2847, actual_fc = check_all_inside.2818 intersected_object_id.2496 intersection_point.2495 intsec_rectside.2493 objects.2485 solver_dist.2492 solver_fast2.2776 startp_fast.2505 tmin.2494 )
																																																																																																																																																												MakeCls solve_one_or_network_fast.2851 (entry = solve_one_or_network_fast.2851, actual_fc = and_net.2490 solve_each_element_fast.2847 )
																																																																																																																																																													MakeCls trace_or_matrix_fast.2855 (entry = trace_or_matrix_fast.2855, actual_fc = solve_one_or_network_fast.2851 solver_dist.2492 solver_fast2.2776 tmin.2494 )
																																																																																																																																																														MakeCls judge_intersection_fast.2859 (entry = judge_intersection_fast.2859, actual_fc = or_net.2491 tmin.2494 trace_or_matrix_fast.2855 )
																																																																																																																																																															MakeCls get_nvector_rect.2861 (entry = get_nvector_rect.2861, actual_fc = intsec_rectside.2493 nvector.2497 )
																																																																																																																																																																MakeCls get_nvector_plane.2863 (entry = get_nvector_plane.2863, actual_fc = nvector.2497 )
																																																																																																																																																																	MakeCls get_nvector_second.2865 (entry = get_nvector_second.2865, actual_fc = intersection_point.2495 nvector.2497 )
																																																																																																																																																																		MakeCls get_nvector.2867 (entry = get_nvector.2867, actual_fc = get_nvector_plane.2863 get_nvector_rect.2861 get_nvector_second.2865 )
																																																																																																																																																																			MakeCls utexture.2870 (entry = utexture.2870, actual_fc = texture_color.2498 )
																																																																																																																																																																				MakeCls add_light.2873 (entry = add_light.2873, actual_fc = rgb.2500 texture_color.2498 )
																																																																																																																																																																					MakeCls trace_reflections.2877 (entry = trace_reflections.2877, actual_fc = add_light.2873 intersected_object_id.2496 intsec_rectside.2493 judge_intersection_fast.2859 nvector.2497 or_net.2491 reflections.2512 shadow_check_one_or_matrix.2830 )
																																																																																																																																																																						MakeCls trace_ray.2882 (entry = trace_ray.2882, actual_fc = add_light.2873 beam.2489 get_nvector.2867 intersected_object_id.2496 intersection_point.2495 intsec_rectside.2493 judge_intersection.2845 light.2488 n_reflections.2513 nvector.2497 objects.2485 or_net.2491 rgb.2500 setup_startp.2796 shadow_check_one_or_matrix.2830 startp.2504 texture_color.2498 tmin.2494 trace_reflections.2877 utexture.2870 )
																																																																																																																																																																							MakeCls trace_diffuse_ray.2888 (entry = trace_diffuse_ray.2888, actual_fc = diffuse_ray.2499 get_nvector.2867 intersected_object_id.2496 intersection_point.2495 judge_intersection_fast.2859 light.2488 nvector.2497 objects.2485 or_net.2491 shadow_check_one_or_matrix.2830 texture_color.2498 utexture.2870 )
																																																																																																																																																																								MakeCls iter_trace_diffuse_rays.2891 (entry = iter_trace_diffuse_rays.2891, actual_fc = trace_diffuse_ray.2888 )
																																																																																																																																																																									MakeCls trace_diffuse_rays.2896 (entry = trace_diffuse_rays.2896, actual_fc = iter_trace_diffuse_rays.2891 setup_startp.2796 )
																																																																																																																																																																										MakeCls trace_diffuse_ray_80percent.2900 (entry = trace_diffuse_ray_80percent.2900, actual_fc = dirvecs.2510 trace_diffuse_rays.2896 )
																																																																																																																																																																											MakeCls calc_diffuse_using_1point.2904 (entry = calc_diffuse_using_1point.2904, actual_fc = diffuse_ray.2499 rgb.2500 trace_diffuse_ray_80percent.2900 )
																																																																																																																																																																												MakeCls calc_diffuse_using_5points.2907 (entry = calc_diffuse_using_5points.2907, actual_fc = diffuse_ray.2499 rgb.2500 )
																																																																																																																																																																													MakeCls do_without_neighbors.2913 (entry = do_without_neighbors.2913, actual_fc = calc_diffuse_using_1point.2904 )
																																																																																																																																																																														MakeCls neighbors_exist.2916 (entry = neighbors_exist.2916, actual_fc = image_size.2501 )
																																																																																																																																																																															MakeCls try_exploit_neighbors.2929 (entry = try_exploit_neighbors.2929, actual_fc = calc_diffuse_using_5points.2907 do_without_neighbors.2913 )
																																																																																																																																																																																MakeCls write_ppm_header.2936 (entry = write_ppm_header.2936, actual_fc = image_size.2501 )
																																																																																																																																																																																	MakeCls write_rgb.2940 (entry = write_rgb.2940, actual_fc = rgb.2500 )
																																																																																																																																																																																		MakeCls pretrace_diffuse_rays.2942 (entry = pretrace_diffuse_rays.2942, actual_fc = diffuse_ray.2499 dirvecs.2510 trace_diffuse_rays.2896 )
																																																																																																																																																																																			MakeCls pretrace_pixels.2945 (entry = pretrace_pixels.2945, actual_fc = image_center.2502 pretrace_diffuse_rays.2942 ptrace_dirvec.2509 rgb.2500 scan_pitch.2503 screenx_dir.2506 startp.2504 trace_ray.2882 viewpoint.2487 )
																																																																																																																																																																																				MakeCls pretrace_line.2952 (entry = pretrace_line.2952, actual_fc = image_center.2502 image_size.2501 pretrace_pixels.2945 scan_pitch.2503 screeny_dir.2507 screenz_dir.2508 )
																																																																																																																																																																																					MakeCls scan_pixel.2956 (entry = scan_pixel.2956, actual_fc = do_without_neighbors.2913 image_size.2501 neighbors_exist.2916 rgb.2500 try_exploit_neighbors.2929 write_rgb.2940 )
																																																																																																																																																																																						MakeCls scan_line.2962 (entry = scan_line.2962, actual_fc = image_size.2501 pretrace_line.2952 scan_pixel.2956 )
																																																																																																																																																																																							MakeCls create_pixelline.2975 (entry = create_pixelline.2975, actual_fc = image_size.2501 )
																																																																																																																																																																																								MakeCls calc_dirvec.2982 (entry = calc_dirvec.2982, actual_fc = dirvecs.2510 )
																																																																																																																																																																																									MakeCls calc_dirvecs.2990 (entry = calc_dirvecs.2990, actual_fc = calc_dirvec.2982 )
																																																																																																																																																																																										MakeCls calc_dirvec_rows.2995 (entry = calc_dirvec_rows.2995, actual_fc = calc_dirvecs.2990 )
																																																																																																																																																																																											MakeCls create_dirvec.2999 (entry = create_dirvec.2999, actual_fc = n_objects.2484 )
																																																																																																																																																																																												MakeCls create_dirvec_elements.3001 (entry = create_dirvec_elements.3001, actual_fc = create_dirvec.2999 )
																																																																																																																																																																																													MakeCls create_dirvecs.3004 (entry = create_dirvecs.3004, actual_fc = create_dirvec.2999 create_dirvec_elements.3001 dirvecs.2510 )
																																																																																																																																																																																														MakeCls init_dirvec_constants.3006 (entry = init_dirvec_constants.3006, actual_fc = setup_dirvec_constants.2791 )
																																																																																																																																																																																															MakeCls init_vecset_constants.3009 (entry = init_vecset_constants.3009, actual_fc = dirvecs.2510 init_dirvec_constants.3006 )
																																																																																																																																																																																																MakeCls init_dirvecs.3011 (entry = init_dirvecs.3011, actual_fc = calc_dirvec_rows.2995 create_dirvecs.3004 init_vecset_constants.3009 )
																																																																																																																																																																																																	MakeCls add_reflection.3013 (entry = add_reflection.3013, actual_fc = create_dirvec.2999 reflections.2512 setup_dirvec_constants.2791 )
																																																																																																																																																																																																		MakeCls setup_rect_reflection.3020 (entry = setup_rect_reflection.3020, actual_fc = add_reflection.3013 light.2488 n_reflections.2513 )
																																																																																																																																																																																																			MakeCls setup_surface_reflection.3023 (entry = setup_surface_reflection.3023, actual_fc = add_reflection.3013 light.2488 n_reflections.2513 )
																																																																																																																																																																																																				MakeCls setup_reflections.3026 (entry = setup_reflections.3026, actual_fc = objects.2485 setup_rect_reflection.3020 setup_surface_reflection.3023 )
																																																																																																																																																																																																					MakeCls rt.3028 (entry = rt.3028, actual_fc = create_pixelline.2975 image_center.2502 image_size.2501 init_dirvecs.3011 light.2488 light_dirvec.2511 n_objects.2484 pretrace_line.2952 read_parameter.2693 scan_line.2962 scan_pitch.2503 setup_dirvec_constants.2791 setup_reflections.3026 write_ppm_header.2936 )
																																																																																																																																																																																																						Let Ti326.3033
																																																																																																																																																																																																							Int:128
																																																																																																																																																																																																							Let Ti327.3034
																																																																																																																																																																																																								Int:128
																																																																																																																																																																																																								Let Tu240.3031
																																																																																																																																																																																																									AppCls rt.3028 Ti326.3033 Ti327.3034 )
																																																																																																																																																																																																									Let Ti328.3032
																																																																																																																																																																																																										Int:0
																																																																																																																																																																																																										AppDir min_caml_print_int Ti328.3032 )
