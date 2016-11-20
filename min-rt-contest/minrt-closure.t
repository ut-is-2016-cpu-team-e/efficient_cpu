toplevel
name : fneg.2473 args : x.2474  formal_fv :  
FNeg x.2474
name : fispos.2475 args : x.2476  formal_fv :  
Let Td2442.5939
	Float:0.000000
	IfLE x.2476 Td2442.5939
		Int:0
		Int:1
name : fisneg.2477 args : x.2478  formal_fv :  
Let Td2441.5938
	Float:0.000000
	IfLE Td2441.5938 x.2478
		Int:0
		Int:1
name : fiszero.2479 args : x.2480  formal_fv :  
Let Td2440.5937
	Float:0.000000
	IfEq x.2480 Td2440.5937
		Int:1
		Int:0
name : fhalf.2481 args : x.2482  formal_fv :  
Let Td2439.5936
	Float:0.500000
	FMul x.2482 Td2439.5936
name : fsqr.2483 args : x.2484  formal_fv :  
FMul x.2484 x.2484
name : fabs.2485 args : x.2486  formal_fv :  
Let Td2438.5935
	Float:0.000000
	IfLE x.2486 Td2438.5935
		AppDir fneg.2473 x.2486 )
		Var x.2486
name : fless.2487 args : x.2488 y.2489  formal_fv :  
Let z.5934
	FSub x.2488 y.2489
	AppDir fisneg.2477 z.5934 )
name : xor.2490 args : x.2491 y.2492  formal_fv :  
Let Ti2436.5932
	Int:0
	IfEq x.2491 Ti2436.5932
		Var y.2492
		Let Ti2437.5933
			Int:0
			IfEq y.2492 Ti2437.5933
				Int:1
				Int:0
name : sgn.2493 args : x.2494  formal_fv :  
Let Tb2432.5928
	AppDir fiszero.2479 x.2494 )
	Let Ti2433.5929
		Int:0
		IfEq Tb2432.5928 Ti2433.5929
			Let Tb2434.5930
				AppDir fispos.2475 x.2494 )
				Let Ti2435.5931
					Int:0
					IfEq Tb2434.5930 Ti2435.5931
						Float:-1.000000
						Float:1.000000
			Float:0.000000
name : fneg_cond.2495 args : cond.2496 x.2497  formal_fv :  
Let Ti2431.5927
	Int:0
	IfEq cond.2496 Ti2431.5927
		AppDir fneg.2473 x.2497 )
		Var x.2497
name : add_mod5.2498 args : x.2499 y.2500  formal_fv :  
Let sum.5924
	Add x.2499 y.2500
	Let Ti2429.5925
		Int:5
		IfLE Ti2429.5925 sum.5924
			Let Ti2430.5926
				Int:5
				Sub sum.5924 Ti2430.5926
			Var sum.5924
name : vecset.2501 args : v.2502 x.2503 y.2504 z.2505  formal_fv :  
Let Ti2426.5923
	Int:0
	Let Tu2.5919
		Put v.2502 Ti2426.5923 x.2503
		Let Ti2427.5922
			Int:1
			Let Tu1.5920
				Put v.2502 Ti2427.5922 y.2504
				Let Ti2428.5921
					Int:2
					Put v.2502 Ti2428.5921 z.2505
name : vecfill.2506 args : v.2507 elem.2508  formal_fv :  
Let Ti2423.5918
	Int:0
	Let Tu4.5914
		Put v.2507 Ti2423.5918 elem.2508
		Let Ti2424.5917
			Int:1
			Let Tu3.5915
				Put v.2507 Ti2424.5917 elem.2508
				Let Ti2425.5916
					Int:2
					Put v.2507 Ti2425.5916 elem.2508
name : vecbzero.2509 args : v.2510  formal_fv :  
Let Td2422.5913
	Float:0.000000
	AppDir vecfill.2506 v.2510 Td2422.5913 )
name : veccpy.2511 args : dest.2512 src.2513  formal_fv :  
Let Ti2413.5910
	Int:0
	Let Ti2414.5912
		Int:0
		Let Td2415.5911
			Get src.2513 Ti2414.5912
			Let Tu6.5902
				Put dest.2512 Ti2413.5910 Td2415.5911
				Let Ti2416.5907
					Int:1
					Let Ti2417.5909
						Int:1
						Let Td2418.5908
							Get src.2513 Ti2417.5909
							Let Tu5.5903
								Put dest.2512 Ti2416.5907 Td2418.5908
								Let Ti2419.5904
									Int:2
									Let Ti2420.5906
										Int:2
										Let Td2421.5905
											Get src.2513 Ti2420.5906
											Put dest.2512 Ti2419.5904 Td2421.5905
name : vecunit_sgn.2519 args : v.2520 inv.2521  formal_fv :  
Let Ti2338.5853
	Int:0
	Let Td2339.5852
		Get v.2520 Ti2338.5853
		Let Td2340.5848
			AppDir fsqr.2483 Td2339.5852 )
			Let Ti2341.5851
				Int:1
				Let Td2342.5850
					Get v.2520 Ti2341.5851
					Let Td2343.5849
						AppDir fsqr.2483 Td2342.5850 )
						Let Td2344.5844
							FAdd Td2340.5848 Td2343.5849
							Let Ti2345.5847
								Int:2
								Let Td2346.5846
									Get v.2520 Ti2345.5847
									Let Td2347.5845
										AppDir fsqr.2483 Td2346.5846 )
										Let Td2348.5843
											FAdd Td2344.5844 Td2347.5845
											Let l.5820
												AppDir min_caml_sqrt Td2348.5843 )
												Let Tb2349.5836
													AppDir fiszero.2479 l.5820 )
													Let Ti2350.5837
														Int:0
														Let il.5821
															IfEq Tb2349.5836 Ti2350.5837
																Let Ti2351.5838
																	Int:0
																	IfEq inv.2521 Ti2351.5838
																		Let Td2352.5841
																			Float:1.000000
																			Let Td2353.5842
																				FReciprocal l.5820
																				FMul Td2352.5841 Td2353.5842
																		Let Td2354.5839
																			Float:-1.000000
																			Let Td2355.5840
																				FReciprocal l.5820
																				FMul Td2354.5839 Td2355.5840
																Float:1.000000
															Let Ti2356.5832
																Int:0
																Let Ti2357.5835
																	Int:0
																	Let Td2358.5834
																		Get v.2520 Ti2357.5835
																		Let Td2359.5833
																			FMul Td2358.5834 il.5821
																			Let Tu10.5822
																				Put v.2520 Ti2356.5832 Td2359.5833
																				Let Ti2360.5828
																					Int:1
																					Let Ti2361.5831
																						Int:1
																						Let Td2362.5830
																							Get v.2520 Ti2361.5831
																							Let Td2363.5829
																								FMul Td2362.5830 il.5821
																								Let Tu9.5823
																									Put v.2520 Ti2360.5828 Td2363.5829
																									Let Ti2364.5824
																										Int:2
																										Let Ti2365.5827
																											Int:2
																											Let Td2366.5826
																												Get v.2520 Ti2365.5827
																												Let Td2367.5825
																													FMul Td2366.5826 il.5821
																													Put v.2520 Ti2364.5824 Td2367.5825
name : veciprod.2522 args : v.2523 w.2524  formal_fv :  
Let Ti2322.5819
	Int:0
	Let Td2323.5816
		Get v.2523 Ti2322.5819
		Let Ti2324.5818
			Int:0
			Let Td2325.5817
				Get w.2524 Ti2324.5818
				Let Td2326.5810
					FMul Td2323.5816 Td2325.5817
					Let Ti2327.5815
						Int:1
						Let Td2328.5812
							Get v.2523 Ti2327.5815
							Let Ti2329.5814
								Int:1
								Let Td2330.5813
									Get w.2524 Ti2329.5814
									Let Td2331.5811
										FMul Td2328.5812 Td2330.5813
										Let Td2332.5804
											FAdd Td2326.5810 Td2331.5811
											Let Ti2333.5809
												Int:2
												Let Td2334.5806
													Get v.2523 Ti2333.5809
													Let Ti2335.5808
														Int:2
														Let Td2336.5807
															Get w.2524 Ti2335.5808
															Let Td2337.5805
																FMul Td2334.5806 Td2336.5807
																FAdd Td2332.5804 Td2337.5805
name : veciprod2.2525 args : v.2526 w0.2527 w1.2528 w2.2529  formal_fv :  
Let Ti2312.5803
	Int:0
	Let Td2313.5802
		Get v.2526 Ti2312.5803
		Let Td2314.5798
			FMul Td2313.5802 w0.2527
			Let Ti2315.5801
				Int:1
				Let Td2316.5800
					Get v.2526 Ti2315.5801
					Let Td2317.5799
						FMul Td2316.5800 w1.2528
						Let Td2318.5794
							FAdd Td2314.5798 Td2317.5799
							Let Ti2319.5797
								Int:2
								Let Td2320.5796
									Get v.2526 Ti2319.5797
									Let Td2321.5795
										FMul Td2320.5796 w2.2529
										FAdd Td2318.5794 Td2321.5795
name : vecaccum.2530 args : dest.2531 scale.2532 v.2533  formal_fv :  
Let Ti2291.5787
	Int:0
	Let Ti2292.5793
		Int:0
		Let Td2293.5789
			Get dest.2531 Ti2292.5793
			Let Ti2294.5792
				Int:0
				Let Td2295.5791
					Get v.2533 Ti2294.5792
					Let Td2296.5790
						FMul scale.2532 Td2295.5791
						Let Td2297.5788
							FAdd Td2293.5789 Td2296.5790
							Let Tu12.5771
								Put dest.2531 Ti2291.5787 Td2297.5788
								Let Ti2298.5780
									Int:1
									Let Ti2299.5786
										Int:1
										Let Td2300.5782
											Get dest.2531 Ti2299.5786
											Let Ti2301.5785
												Int:1
												Let Td2302.5784
													Get v.2533 Ti2301.5785
													Let Td2303.5783
														FMul scale.2532 Td2302.5784
														Let Td2304.5781
															FAdd Td2300.5782 Td2303.5783
															Let Tu11.5772
																Put dest.2531 Ti2298.5780 Td2304.5781
																Let Ti2305.5773
																	Int:2
																	Let Ti2306.5779
																		Int:2
																		Let Td2307.5775
																			Get dest.2531 Ti2306.5779
																			Let Ti2308.5778
																				Int:2
																				Let Td2309.5777
																					Get v.2533 Ti2308.5778
																					Let Td2310.5776
																						FMul scale.2532 Td2309.5777
																						Let Td2311.5774
																							FAdd Td2307.5775 Td2310.5776
																							Put dest.2531 Ti2305.5773 Td2311.5774
name : vecadd.2534 args : dest.2535 v.2536  formal_fv :  
Let Ti2273.5765
	Int:0
	Let Ti2274.5770
		Int:0
		Let Td2275.5767
			Get dest.2535 Ti2274.5770
			Let Ti2276.5769
				Int:0
				Let Td2277.5768
					Get v.2536 Ti2276.5769
					Let Td2278.5766
						FAdd Td2275.5767 Td2277.5768
						Let Tu14.5751
							Put dest.2535 Ti2273.5765 Td2278.5766
							Let Ti2279.5759
								Int:1
								Let Ti2280.5764
									Int:1
									Let Td2281.5761
										Get dest.2535 Ti2280.5764
										Let Ti2282.5763
											Int:1
											Let Td2283.5762
												Get v.2536 Ti2282.5763
												Let Td2284.5760
													FAdd Td2281.5761 Td2283.5762
													Let Tu13.5752
														Put dest.2535 Ti2279.5759 Td2284.5760
														Let Ti2285.5753
															Int:2
															Let Ti2286.5758
																Int:2
																Let Td2287.5755
																	Get dest.2535 Ti2286.5758
																	Let Ti2288.5757
																		Int:2
																		Let Td2289.5756
																			Get v.2536 Ti2288.5757
																			Let Td2290.5754
																				FAdd Td2287.5755 Td2289.5756
																				Put dest.2535 Ti2285.5753 Td2290.5754
name : vecscale.2540 args : dest.2541 scale.2542  formal_fv :  
Let Ti2243.5727
	Int:0
	Let Ti2244.5730
		Int:0
		Let Td2245.5729
			Get dest.2541 Ti2244.5730
			Let Td2246.5728
				FMul Td2245.5729 scale.2542
				Let Tu18.5717
					Put dest.2541 Ti2243.5727 Td2246.5728
					Let Ti2247.5723
						Int:1
						Let Ti2248.5726
							Int:1
							Let Td2249.5725
								Get dest.2541 Ti2248.5726
								Let Td2250.5724
									FMul Td2249.5725 scale.2542
									Let Tu17.5718
										Put dest.2541 Ti2247.5723 Td2250.5724
										Let Ti2251.5719
											Int:2
											Let Ti2252.5722
												Int:2
												Let Td2253.5721
													Get dest.2541 Ti2252.5722
													Let Td2254.5720
														FMul Td2253.5721 scale.2542
														Put dest.2541 Ti2251.5719 Td2254.5720
name : vecaccumv.2543 args : dest.2544 v.2545 w.2546  formal_fv :  
Let Ti2216.5708
	Int:0
	Let Ti2217.5716
		Int:0
		Let Td2218.5710
			Get dest.2544 Ti2217.5716
			Let Ti2219.5715
				Int:0
				Let Td2220.5712
					Get v.2545 Ti2219.5715
					Let Ti2221.5714
						Int:0
						Let Td2222.5713
							Get w.2546 Ti2221.5714
							Let Td2223.5711
								FMul Td2220.5712 Td2222.5713
								Let Td2224.5709
									FAdd Td2218.5710 Td2223.5711
									Let Tu20.5688
										Put dest.2544 Ti2216.5708 Td2224.5709
										Let Ti2225.5699
											Int:1
											Let Ti2226.5707
												Int:1
												Let Td2227.5701
													Get dest.2544 Ti2226.5707
													Let Ti2228.5706
														Int:1
														Let Td2229.5703
															Get v.2545 Ti2228.5706
															Let Ti2230.5705
																Int:1
																Let Td2231.5704
																	Get w.2546 Ti2230.5705
																	Let Td2232.5702
																		FMul Td2229.5703 Td2231.5704
																		Let Td2233.5700
																			FAdd Td2227.5701 Td2232.5702
																			Let Tu19.5689
																				Put dest.2544 Ti2225.5699 Td2233.5700
																				Let Ti2234.5690
																					Int:2
																					Let Ti2235.5698
																						Int:2
																						Let Td2236.5692
																							Get dest.2544 Ti2235.5698
																							Let Ti2237.5697
																								Int:2
																								Let Td2238.5694
																									Get v.2545 Ti2237.5697
																									Let Ti2239.5696
																										Int:2
																										Let Td2240.5695
																											Get w.2546 Ti2239.5696
																											Let Td2241.5693
																												FMul Td2238.5694 Td2240.5695
																												Let Td2242.5691
																													FAdd Td2236.5692 Td2241.5693
																													Put dest.2544 Ti2234.5690 Td2242.5691
name : o_texturetype.2547 args : m.2548  formal_fv :  
LetTuple (m_tex.5677,xm_shape.5678,xm_surface.5679,xm_isrot.5680,xm_abc.5681,xm_xyz.5682,xm_invert.5683,xm_surfparams.5684,xm_color.5685,xm_rot123.5686,xm_ctbl.5687,)
 m.2548
	Var m_tex.5677
name : o_form.2549 args : m.2550  formal_fv :  
LetTuple (xm_tex.5666,m_shape.5667,xm_surface.5668,xm_isrot.5669,xm_abc.5670,xm_xyz.5671,xm_invert.5672,xm_surfparams.5673,xm_color.5674,xm_rot123.5675,xm_ctbl.5676,)
 m.2550
	Var m_shape.5667
name : o_reflectiontype.2551 args : m.2552  formal_fv :  
LetTuple (xm_tex.5655,xm_shape.5656,m_surface.5657,xm_isrot.5658,xm_abc.5659,xm_xyz.5660,xm_invert.5661,xm_surfparams.5662,xm_color.5663,xm_rot123.5664,xm_ctbl.5665,)
 m.2552
	Var m_surface.5657
name : o_isinvert.2553 args : m.2554  formal_fv :  
LetTuple (xm_tex.5644,xm_shape.5645,xm_surface.5646,xm_isrot.5647,xm_abc.5648,xm_xyz.5649,m_invert.5650,xm_surfparams.5651,xm_color.5652,xm_rot123.5653,xm_ctbl.5654,)
 m.2554
	Var m_invert.5650
name : o_isrot.2555 args : m.2556  formal_fv :  
LetTuple (xm_tex.5633,xm_shape.5634,xm_surface.5635,m_isrot.5636,xm_abc.5637,xm_xyz.5638,xm_invert.5639,xm_surfparams.5640,xm_color.5641,xm_rot123.5642,xm_ctbl.5643,)
 m.2556
	Var m_isrot.5636
name : o_param_a.2557 args : m.2558  formal_fv :  
LetTuple (xm_tex.5621,xm_shape.5622,xm_surface.5623,xm_isrot.5624,m_abc.5625,xm_xyz.5626,xm_invert.5627,xm_surfparams.5628,xm_color.5629,xm_rot123.5630,xm_ctbl.5631,)
 m.2558
	Let Ti2215.5632
		Int:0
		Get m_abc.5625 Ti2215.5632
name : o_param_b.2559 args : m.2560  formal_fv :  
LetTuple (xm_tex.5609,xm_shape.5610,xm_surface.5611,xm_isrot.5612,m_abc.5613,xm_xyz.5614,xm_invert.5615,xm_surfparams.5616,xm_color.5617,xm_rot123.5618,xm_ctbl.5619,)
 m.2560
	Let Ti2214.5620
		Int:1
		Get m_abc.5613 Ti2214.5620
name : o_param_c.2561 args : m.2562  formal_fv :  
LetTuple (xm_tex.5597,xm_shape.5598,xm_surface.5599,xm_isrot.5600,m_abc.5601,xm_xyz.5602,xm_invert.5603,xm_surfparams.5604,xm_color.5605,xm_rot123.5606,xm_ctbl.5607,)
 m.2562
	Let Ti2213.5608
		Int:2
		Get m_abc.5601 Ti2213.5608
name : o_param_abc.2563 args : m.2564  formal_fv :  
LetTuple (xm_tex.5586,xm_shape.5587,xm_surface.5588,xm_isrot.5589,m_abc.5590,xm_xyz.5591,xm_invert.5592,xm_surfparams.5593,xm_color.5594,xm_rot123.5595,xm_ctbl.5596,)
 m.2564
	Var m_abc.5590
name : o_param_x.2565 args : m.2566  formal_fv :  
LetTuple (xm_tex.5574,xm_shape.5575,xm_surface.5576,xm_isrot.5577,xm_abc.5578,m_xyz.5579,xm_invert.5580,xm_surfparams.5581,xm_color.5582,xm_rot123.5583,xm_ctbl.5584,)
 m.2566
	Let Ti2212.5585
		Int:0
		Get m_xyz.5579 Ti2212.5585
name : o_param_y.2567 args : m.2568  formal_fv :  
LetTuple (xm_tex.5562,xm_shape.5563,xm_surface.5564,xm_isrot.5565,xm_abc.5566,m_xyz.5567,xm_invert.5568,xm_surfparams.5569,xm_color.5570,xm_rot123.5571,xm_ctbl.5572,)
 m.2568
	Let Ti2211.5573
		Int:1
		Get m_xyz.5567 Ti2211.5573
name : o_param_z.2569 args : m.2570  formal_fv :  
LetTuple (xm_tex.5550,xm_shape.5551,xm_surface.5552,xm_isrot.5553,xm_abc.5554,m_xyz.5555,xm_invert.5556,xm_surfparams.5557,xm_color.5558,xm_rot123.5559,xm_ctbl.5560,)
 m.2570
	Let Ti2210.5561
		Int:2
		Get m_xyz.5555 Ti2210.5561
name : o_diffuse.2571 args : m.2572  formal_fv :  
LetTuple (xm_tex.5538,xm_shape.5539,xm_surface.5540,xm_isrot.5541,xm_abc.5542,xm_xyz.5543,xm_invert.5544,m_surfparams.5545,xm_color.5546,xm_rot123.5547,xm_ctbl.5548,)
 m.2572
	Let Ti2209.5549
		Int:0
		Get m_surfparams.5545 Ti2209.5549
name : o_hilight.2573 args : m.2574  formal_fv :  
LetTuple (xm_tex.5526,xm_shape.5527,xm_surface.5528,xm_isrot.5529,xm_abc.5530,xm_xyz.5531,xm_invert.5532,m_surfparams.5533,xm_color.5534,xm_rot123.5535,xm_ctbl.5536,)
 m.2574
	Let Ti2208.5537
		Int:1
		Get m_surfparams.5533 Ti2208.5537
name : o_color_red.2575 args : m.2576  formal_fv :  
LetTuple (xm_tex.5514,xm_shape.5515,m_surface.5516,xm_isrot.5517,xm_abc.5518,xm_xyz.5519,xm_invert.5520,xm_surfparams.5521,m_color.5522,xm_rot123.5523,xm_ctbl.5524,)
 m.2576
	Let Ti2207.5525
		Int:0
		Get m_color.5522 Ti2207.5525
name : o_color_green.2577 args : m.2578  formal_fv :  
LetTuple (xm_tex.5502,xm_shape.5503,m_surface.5504,xm_isrot.5505,xm_abc.5506,xm_xyz.5507,xm_invert.5508,xm_surfparams.5509,m_color.5510,xm_rot123.5511,xm_ctbl.5512,)
 m.2578
	Let Ti2206.5513
		Int:1
		Get m_color.5510 Ti2206.5513
name : o_color_blue.2579 args : m.2580  formal_fv :  
LetTuple (xm_tex.5490,xm_shape.5491,m_surface.5492,xm_isrot.5493,xm_abc.5494,xm_xyz.5495,xm_invert.5496,xm_surfparams.5497,m_color.5498,xm_rot123.5499,xm_ctbl.5500,)
 m.2580
	Let Ti2205.5501
		Int:2
		Get m_color.5498 Ti2205.5501
name : o_param_r1.2581 args : m.2582  formal_fv :  
LetTuple (xm_tex.5478,xm_shape.5479,xm_surface.5480,xm_isrot.5481,xm_abc.5482,xm_xyz.5483,xm_invert.5484,xm_surfparams.5485,xm_color.5486,m_rot123.5487,xm_ctbl.5488,)
 m.2582
	Let Ti2204.5489
		Int:0
		Get m_rot123.5487 Ti2204.5489
name : o_param_r2.2583 args : m.2584  formal_fv :  
LetTuple (xm_tex.5466,xm_shape.5467,xm_surface.5468,xm_isrot.5469,xm_abc.5470,xm_xyz.5471,xm_invert.5472,xm_surfparams.5473,xm_color.5474,m_rot123.5475,xm_ctbl.5476,)
 m.2584
	Let Ti2203.5477
		Int:1
		Get m_rot123.5475 Ti2203.5477
name : o_param_r3.2585 args : m.2586  formal_fv :  
LetTuple (xm_tex.5454,xm_shape.5455,xm_surface.5456,xm_isrot.5457,xm_abc.5458,xm_xyz.5459,xm_invert.5460,xm_surfparams.5461,xm_color.5462,m_rot123.5463,xm_ctbl.5464,)
 m.2586
	Let Ti2202.5465
		Int:2
		Get m_rot123.5463 Ti2202.5465
name : o_param_ctbl.2587 args : m.2588  formal_fv :  
LetTuple (xm_tex.5443,xm_shape.5444,xm_surface.5445,xm_isrot.5446,xm_abc.5447,xm_xyz.5448,xm_invert.5449,xm_surfparams.5450,xm_color.5451,xm_rot123.5452,m_ctbl.5453,)
 m.2588
	Var m_ctbl.5453
name : p_rgb.2589 args : pixel.2590  formal_fv :  
LetTuple (m_rgb.5435,xm_isect_ps.5436,xm_sids.5437,xm_cdif.5438,xm_engy.5439,xm_r20p.5440,xm_gid.5441,xm_nvectors.5442,)
 pixel.2590
	Var m_rgb.5435
name : p_intersection_points.2591 args : pixel.2592  formal_fv :  
LetTuple (xm_rgb.5427,m_isect_ps.5428,xm_sids.5429,xm_cdif.5430,xm_engy.5431,xm_r20p.5432,xm_gid.5433,xm_nvectors.5434,)
 pixel.2592
	Var m_isect_ps.5428
name : p_surface_ids.2593 args : pixel.2594  formal_fv :  
LetTuple (xm_rgb.5419,xm_isect_ps.5420,m_sids.5421,xm_cdif.5422,xm_engy.5423,xm_r20p.5424,xm_gid.5425,xm_nvectors.5426,)
 pixel.2594
	Var m_sids.5421
name : p_calc_diffuse.2595 args : pixel.2596  formal_fv :  
LetTuple (xm_rgb.5411,xm_isect_ps.5412,xm_sids.5413,m_cdif.5414,xm_engy.5415,xm_r20p.5416,xm_gid.5417,xm_nvectors.5418,)
 pixel.2596
	Var m_cdif.5414
name : p_energy.2597 args : pixel.2598  formal_fv :  
LetTuple (xm_rgb.5403,xm_isect_ps.5404,xm_sids.5405,xm_cdif.5406,m_engy.5407,xm_r20p.5408,xm_gid.5409,xm_nvectors.5410,)
 pixel.2598
	Var m_engy.5407
name : p_received_ray_20percent.2599 args : pixel.2600  formal_fv :  
LetTuple (xm_rgb.5395,xm_isect_ps.5396,xm_sids.5397,xm_cdif.5398,xm_engy.5399,m_r20p.5400,xm_gid.5401,xm_nvectors.5402,)
 pixel.2600
	Var m_r20p.5400
name : p_group_id.2601 args : pixel.2602  formal_fv :  
LetTuple (xm_rgb.5386,xm_isect_ps.5387,xm_sids.5388,xm_cdif.5389,xm_engy.5390,xm_r20p.5391,m_gid.5392,xm_nvectors.5393,)
 pixel.2602
	Let Ti2201.5394
		Int:0
		Get m_gid.5392 Ti2201.5394
name : p_set_group_id.2603 args : pixel.2604 id.2605  formal_fv :  
LetTuple (xm_rgb.5377,xm_isect_ps.5378,xm_sids.5379,xm_cdif.5380,xm_engy.5381,xm_r20p.5382,m_gid.5383,xm_nvectors.5384,)
 pixel.2604
	Let Ti2200.5385
		Int:0
		Put m_gid.5383 Ti2200.5385 id.2605
name : p_nvectors.2606 args : pixel.2607  formal_fv :  
LetTuple (xm_rgb.5369,xm_isect_ps.5370,xm_sids.5371,xm_cdif.5372,xm_engy.5373,xm_r20p.5374,xm_gid.5375,m_nvectors.5376,)
 pixel.2607
	Var m_nvectors.5376
name : d_vec.2608 args : d.2609  formal_fv :  
LetTuple (m_vec.5367,xm_const.5368,)
 d.2609
	Var m_vec.5367
name : d_const.2610 args : d.2611  formal_fv :  
LetTuple (dm_vec.5365,m_const.5366,)
 d.2611
	Var m_const.5366
name : r_surface_id.2612 args : r.2613  formal_fv :  
LetTuple (m_sid.5362,xm_dvec.5363,xm_br.5364,)
 r.2613
	Var m_sid.5362
name : r_dvec.2614 args : r.2615  formal_fv :  
LetTuple (xm_sid.5359,m_dvec.5360,xm_br.5361,)
 r.2615
	Var m_dvec.5360
name : r_bright.2616 args : r.2617  formal_fv :  
LetTuple (xm_sid.5356,xm_dvec.5357,m_br.5358,)
 r.2617
	Var m_br.5358
name : rad.2618 args : x.2619  formal_fv :  
Let Td2199.5355
	Float:0.017453
	FMul x.2619 Td2199.5355
name : read_screen_settings.2620 args : Tu21.2621  formal_fv : screen.2445 screenx_dir.2465 screeny_dir.2466 screenz_dir.2467 viewpoint.2446  
Let Ti2144.5352
	Int:0
	Let Tu2145.5354
		Unit
		Let Td2146.5353
			AppDir min_caml_read_float Tu2145.5354 )
			Let Tu35.5280
				Put screen.2445 Ti2144.5352 Td2146.5353
				Let Ti2147.5349
					Int:1
					Let Tu2148.5351
						Unit
						Let Td2149.5350
							AppDir min_caml_read_float Tu2148.5351 )
							Let Tu34.5281
								Put screen.2445 Ti2147.5349 Td2149.5350
								Let Ti2150.5346
									Int:2
									Let Tu2151.5348
										Unit
										Let Td2152.5347
											AppDir min_caml_read_float Tu2151.5348 )
											Let Tu33.5282
												Put screen.2445 Ti2150.5346 Td2152.5347
												Let Tu2153.5345
													Unit
													Let Td2154.5344
														AppDir min_caml_read_float Tu2153.5345 )
														Let v1.5283
															AppDir rad.2618 Td2154.5344 )
															Let cos_v1.5284
																AppDir min_caml_cos v1.5283 )
																Let sin_v1.5285
																	AppDir min_caml_sin v1.5283 )
																	Let Tu2155.5343
																		Unit
																		Let Td2156.5342
																			AppDir min_caml_read_float Tu2155.5343 )
																			Let v2.5286
																				AppDir rad.2618 Td2156.5342 )
																				Let cos_v2.5287
																					AppDir min_caml_cos v2.5286 )
																					Let sin_v2.5288
																						AppDir min_caml_sin v2.5286 )
																						Let Ti2157.5338
																							Int:0
																							Let Td2158.5340
																								FMul cos_v1.5284 sin_v2.5288
																								Let Td2159.5341
																									Float:200.000000
																									Let Td2160.5339
																										FMul Td2158.5340 Td2159.5341
																										Let Tu32.5289
																											Put screenz_dir.2467 Ti2157.5338 Td2160.5339
																											Let Ti2161.5335
																												Int:1
																												Let Td2162.5337
																													Float:-200.000000
																													Let Td2163.5336
																														FMul sin_v1.5285 Td2162.5337
																														Let Tu31.5290
																															Put screenz_dir.2467 Ti2161.5335 Td2163.5336
																															Let Ti2164.5331
																																Int:2
																																Let Td2165.5333
																																	FMul cos_v1.5284 cos_v2.5287
																																	Let Td2166.5334
																																		Float:200.000000
																																		Let Td2167.5332
																																			FMul Td2165.5333 Td2166.5334
																																			Let Tu30.5291
																																				Put screenz_dir.2467 Ti2164.5331 Td2167.5332
																																				Let Ti2168.5330
																																					Int:0
																																					Let Tu29.5292
																																						Put screenx_dir.2465 Ti2168.5330 cos_v2.5287
																																						Let Ti2169.5328
																																							Int:1
																																							Let Td2170.5329
																																								Float:0.000000
																																								Let Tu28.5293
																																									Put screenx_dir.2465 Ti2169.5328 Td2170.5329
																																									Let Ti2171.5326
																																										Int:2
																																										Let Td2172.5327
																																											AppDir fneg.2473 sin_v2.5288 )
																																											Let Tu27.5294
																																												Put screenx_dir.2465 Ti2171.5326 Td2172.5327
																																												Let Ti2173.5323
																																													Int:0
																																													Let Td2174.5325
																																														AppDir fneg.2473 sin_v1.5285 )
																																														Let Td2175.5324
																																															FMul Td2174.5325 sin_v2.5288
																																															Let Tu26.5295
																																																Put screeny_dir.2466 Ti2173.5323 Td2175.5324
																																																Let Ti2176.5321
																																																	Int:1
																																																	Let Td2177.5322
																																																		AppDir fneg.2473 cos_v1.5284 )
																																																		Let Tu25.5296
																																																			Put screeny_dir.2466 Ti2176.5321 Td2177.5322
																																																			Let Ti2178.5318
																																																				Int:2
																																																				Let Td2179.5320
																																																					AppDir fneg.2473 sin_v1.5285 )
																																																					Let Td2180.5319
																																																						FMul Td2179.5320 cos_v2.5287
																																																						Let Tu24.5297
																																																							Put screeny_dir.2466 Ti2178.5318 Td2180.5319
																																																							Let Ti2181.5312
																																																								Int:0
																																																								Let Ti2182.5317
																																																									Int:0
																																																									Let Td2183.5314
																																																										Get screen.2445 Ti2182.5317
																																																										Let Ti2184.5316
																																																											Int:0
																																																											Let Td2185.5315
																																																												Get screenz_dir.2467 Ti2184.5316
																																																												Let Td2186.5313
																																																													FSub Td2183.5314 Td2185.5315
																																																													Let Tu23.5298
																																																														Put viewpoint.2446 Ti2181.5312 Td2186.5313
																																																														Let Ti2187.5306
																																																															Int:1
																																																															Let Ti2188.5311
																																																																Int:1
																																																																Let Td2189.5308
																																																																	Get screen.2445 Ti2188.5311
																																																																	Let Ti2190.5310
																																																																		Int:1
																																																																		Let Td2191.5309
																																																																			Get screenz_dir.2467 Ti2190.5310
																																																																			Let Td2192.5307
																																																																				FSub Td2189.5308 Td2191.5309
																																																																				Let Tu22.5299
																																																																					Put viewpoint.2446 Ti2187.5306 Td2192.5307
																																																																					Let Ti2193.5300
																																																																						Int:2
																																																																						Let Ti2194.5305
																																																																							Int:2
																																																																							Let Td2195.5302
																																																																								Get screen.2445 Ti2194.5305
																																																																								Let Ti2196.5304
																																																																									Int:2
																																																																									Let Td2197.5303
																																																																										Get screenz_dir.2467 Ti2196.5304
																																																																										Let Td2198.5301
																																																																											FSub Td2195.5302 Td2197.5303
																																																																											Put viewpoint.2446 Ti2193.5300 Td2198.5301
name : read_light.2622 args : Tu36.2623  formal_fv : beam.2448 light.2447  
Let Tu2130.5279
	Unit
	Let nl.5256
		AppDir min_caml_read_int Tu2130.5279 )
		Let Tu2131.5278
			Unit
			Let Td2132.5277
				AppDir min_caml_read_float Tu2131.5278 )
				Let l1.5257
					AppDir rad.2618 Td2132.5277 )
					Let sl1.5258
						AppDir min_caml_sin l1.5257 )
						Let Ti2133.5275
							Int:1
							Let Td2134.5276
								AppDir fneg.2473 sl1.5258 )
								Let Tu39.5259
									Put light.2447 Ti2133.5275 Td2134.5276
									Let Tu2135.5274
										Unit
										Let Td2136.5273
											AppDir min_caml_read_float Tu2135.5274 )
											Let l2.5260
												AppDir rad.2618 Td2136.5273 )
												Let cl1.5261
													AppDir min_caml_cos l1.5257 )
													Let sl2.5262
														AppDir min_caml_sin l2.5260 )
														Let Ti2137.5271
															Int:0
															Let Td2138.5272
																FMul cl1.5261 sl2.5262
																Let Tu38.5263
																	Put light.2447 Ti2137.5271 Td2138.5272
																	Let cl2.5264
																		AppDir min_caml_cos l2.5260 )
																		Let Ti2139.5269
																			Int:2
																			Let Td2140.5270
																				FMul cl1.5261 cl2.5264
																				Let Tu37.5265
																					Put light.2447 Ti2139.5269 Td2140.5270
																					Let Ti2141.5266
																						Int:0
																						Let Tu2142.5268
																							Unit
																							Let Td2143.5267
																								AppDir min_caml_read_float Tu2142.5268 )
																								Put beam.2448 Ti2141.5266 Td2143.5267
name : rotate_quadratic_matrix.2624 args : abc.2625 rot.2626  formal_fv :  
Let Ti2043.5255
	Int:0
	Let Td2044.5254
		Get rot.2626 Ti2043.5255
		Let cos_x.5146
			AppDir min_caml_cos Td2044.5254 )
			Let Ti2045.5253
				Int:0
				Let Td2046.5252
					Get rot.2626 Ti2045.5253
					Let sin_x.5147
						AppDir min_caml_sin Td2046.5252 )
						Let Ti2047.5251
							Int:1
							Let Td2048.5250
								Get rot.2626 Ti2047.5251
								Let cos_y.5148
									AppDir min_caml_cos Td2048.5250 )
									Let Ti2049.5249
										Int:1
										Let Td2050.5248
											Get rot.2626 Ti2049.5249
											Let sin_y.5149
												AppDir min_caml_sin Td2050.5248 )
												Let Ti2051.5247
													Int:2
													Let Td2052.5246
														Get rot.2626 Ti2051.5247
														Let cos_z.5150
															AppDir min_caml_cos Td2052.5246 )
															Let Ti2053.5245
																Int:2
																Let Td2054.5244
																	Get rot.2626 Ti2053.5245
																	Let sin_z.5151
																		AppDir min_caml_sin Td2054.5244 )
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
																																					AppDir fneg.2473 sin_y.5149 )
																																					Let m21.5159
																																						FMul sin_x.5147 cos_y.5148
																																						Let m22.5160
																																							FMul cos_x.5146 cos_y.5148
																																							Let Ti2067.5231
																																								Int:0
																																								Let ao.5161
																																									Get abc.2625 Ti2067.5231
																																									Let Ti2068.5230
																																										Int:1
																																										Let bo.5162
																																											Get abc.2625 Ti2068.5230
																																											Let Ti2069.5229
																																												Int:2
																																												Let co.5163
																																													Get abc.2625 Ti2069.5229
																																													Let Ti2070.5220
																																														Int:0
																																														Let Td2071.5228
																																															AppDir fsqr.2483 m00.5152 )
																																															Let Td2072.5225
																																																FMul ao.5161 Td2071.5228
																																																Let Td2073.5227
																																																	AppDir fsqr.2483 m10.5155 )
																																																	Let Td2074.5226
																																																		FMul bo.5162 Td2073.5227
																																																		Let Td2075.5222
																																																			FAdd Td2072.5225 Td2074.5226
																																																			Let Td2076.5224
																																																				AppDir fsqr.2483 m20.5158 )
																																																				Let Td2077.5223
																																																					FMul co.5163 Td2076.5224
																																																					Let Td2078.5221
																																																						FAdd Td2075.5222 Td2077.5223
																																																						Let Tu44.5164
																																																							Put abc.2625 Ti2070.5220 Td2078.5221
																																																							Let Ti2079.5211
																																																								Int:1
																																																								Let Td2080.5219
																																																									AppDir fsqr.2483 m01.5153 )
																																																									Let Td2081.5216
																																																										FMul ao.5161 Td2080.5219
																																																										Let Td2082.5218
																																																											AppDir fsqr.2483 m11.5156 )
																																																											Let Td2083.5217
																																																												FMul bo.5162 Td2082.5218
																																																												Let Td2084.5213
																																																													FAdd Td2081.5216 Td2083.5217
																																																													Let Td2085.5215
																																																														AppDir fsqr.2483 m21.5159 )
																																																														Let Td2086.5214
																																																															FMul co.5163 Td2085.5215
																																																															Let Td2087.5212
																																																																FAdd Td2084.5213 Td2086.5214
																																																																Let Tu43.5165
																																																																	Put abc.2625 Ti2079.5211 Td2087.5212
																																																																	Let Ti2088.5202
																																																																		Int:2
																																																																		Let Td2089.5210
																																																																			AppDir fsqr.2483 m02.5154 )
																																																																			Let Td2090.5207
																																																																				FMul ao.5161 Td2089.5210
																																																																				Let Td2091.5209
																																																																					AppDir fsqr.2483 m12.5157 )
																																																																					Let Td2092.5208
																																																																						FMul bo.5162 Td2091.5209
																																																																						Let Td2093.5204
																																																																							FAdd Td2090.5207 Td2092.5208
																																																																							Let Td2094.5206
																																																																								AppDir fsqr.2483 m22.5160 )
																																																																								Let Td2095.5205
																																																																									FMul co.5163 Td2094.5206
																																																																									Let Td2096.5203
																																																																										FAdd Td2093.5204 Td2095.5205
																																																																										Let Tu42.5166
																																																																											Put abc.2625 Ti2088.5202 Td2096.5203
																																																																											Let Ti2097.5191
																																																																												Int:0
																																																																												Let Td2098.5193
																																																																													Float:2.000000
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
																																																																																							Put rot.2626 Ti2097.5191 Td2107.5192
																																																																																							Let Ti2108.5180
																																																																																								Int:1
																																																																																								Let Td2109.5182
																																																																																									Float:2.000000
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
																																																																																																			Put rot.2626 Ti2108.5180 Td2118.5181
																																																																																																			Let Ti2119.5169
																																																																																																				Int:2
																																																																																																				Let Td2120.5171
																																																																																																					Float:2.000000
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
																																																																																																														Put rot.2626 Ti2119.5169 Td2129.5170
name : read_nth_object.2627 args : n.2628  formal_fv : objects.2444  
Let Tu1947.5145
	Unit
	Let texture.5015
		AppDir min_caml_read_int Tu1947.5145 )
		Let Ti1949.5016
			Int:-1
			IfEq texture.5015 Ti1949.5016
				Int:0
				Let Tu1950.5143
					Unit
					Let form.5017
						AppDir min_caml_read_int Tu1950.5143 )
						Let Tu1951.5142
							Unit
							Let refltype.5018
								AppDir min_caml_read_int Tu1951.5142 )
								Let Tu1952.5141
									Unit
									Let isrot_p.5019
										AppDir min_caml_read_int Tu1952.5141 )
										Let Ti1953.5139
											Int:3
											Let Td1954.5140
												Float:0.000000
												Let abc.5020
													AppDir min_caml_create_float_array Ti1953.5139 Td1954.5140 )
													Let Ti1955.5136
														Int:0
														Let Tu1956.5138
															Unit
															Let Td1957.5137
																AppDir min_caml_read_float Tu1956.5138 )
																Let Tu63.5021
																	Put abc.5020 Ti1955.5136 Td1957.5137
																	Let Ti1958.5133
																		Int:1
																		Let Tu1959.5135
																			Unit
																			Let Td1960.5134
																				AppDir min_caml_read_float Tu1959.5135 )
																				Let Tu62.5022
																					Put abc.5020 Ti1958.5133 Td1960.5134
																					Let Ti1961.5130
																						Int:2
																						Let Tu1962.5132
																							Unit
																							Let Td1963.5131
																								AppDir min_caml_read_float Tu1962.5132 )
																								Let Tu61.5023
																									Put abc.5020 Ti1961.5130 Td1963.5131
																									Let Ti1964.5128
																										Int:3
																										Let Td1965.5129
																											Float:0.000000
																											Let xyz.5024
																												AppDir min_caml_create_float_array Ti1964.5128 Td1965.5129 )
																												Let Ti1966.5125
																													Int:0
																													Let Tu1967.5127
																														Unit
																														Let Td1968.5126
																															AppDir min_caml_read_float Tu1967.5127 )
																															Let Tu60.5025
																																Put xyz.5024 Ti1966.5125 Td1968.5126
																																Let Ti1969.5122
																																	Int:1
																																	Let Tu1970.5124
																																		Unit
																																		Let Td1971.5123
																																			AppDir min_caml_read_float Tu1970.5124 )
																																			Let Tu59.5026
																																				Put xyz.5024 Ti1969.5122 Td1971.5123
																																				Let Ti1972.5119
																																					Int:2
																																					Let Tu1973.5121
																																						Unit
																																						Let Td1974.5120
																																							AppDir min_caml_read_float Tu1973.5121 )
																																							Let Tu58.5027
																																								Put xyz.5024 Ti1972.5119 Td1974.5120
																																								Let Tu1975.5118
																																									Unit
																																									Let Td1976.5117
																																										AppDir min_caml_read_float Tu1975.5118 )
																																										Let m_invert.5028
																																											AppDir fisneg.2477 Td1976.5117 )
																																											Let Ti1977.5115
																																												Int:2
																																												Let Td1978.5116
																																													Float:0.000000
																																													Let reflparam.5029
																																														AppDir min_caml_create_float_array Ti1977.5115 Td1978.5116 )
																																														Let Ti1979.5112
																																															Int:0
																																															Let Tu1980.5114
																																																Unit
																																																Let Td1981.5113
																																																	AppDir min_caml_read_float Tu1980.5114 )
																																																	Let Tu57.5030
																																																		Put reflparam.5029 Ti1979.5112 Td1981.5113
																																																		Let Ti1982.5109
																																																			Int:1
																																																			Let Tu1983.5111
																																																				Unit
																																																				Let Td1984.5110
																																																					AppDir min_caml_read_float Tu1983.5111 )
																																																					Let Tu56.5031
																																																						Put reflparam.5029 Ti1982.5109 Td1984.5110
																																																						Let Ti1985.5107
																																																							Int:3
																																																							Let Td1986.5108
																																																								Float:0.000000
																																																								Let color.5032
																																																									AppDir min_caml_create_float_array Ti1985.5107 Td1986.5108 )
																																																									Let Ti1987.5104
																																																										Int:0
																																																										Let Tu1988.5106
																																																											Unit
																																																											Let Td1989.5105
																																																												AppDir min_caml_read_float Tu1988.5106 )
																																																												Let Tu55.5033
																																																													Put color.5032 Ti1987.5104 Td1989.5105
																																																													Let Ti1990.5101
																																																														Int:1
																																																														Let Tu1991.5103
																																																															Unit
																																																															Let Td1992.5102
																																																																AppDir min_caml_read_float Tu1991.5103 )
																																																																Let Tu54.5034
																																																																	Put color.5032 Ti1990.5101 Td1992.5102
																																																																	Let Ti1993.5098
																																																																		Int:2
																																																																		Let Tu1994.5100
																																																																			Unit
																																																																			Let Td1995.5099
																																																																				AppDir min_caml_read_float Tu1994.5100 )
																																																																				Let Tu53.5035
																																																																					Put color.5032 Ti1993.5098 Td1995.5099
																																																																					Let Ti1996.5096
																																																																						Int:3
																																																																						Let Td1997.5097
																																																																							Float:0.000000
																																																																							Let rotation.5036
																																																																								AppDir min_caml_create_float_array Ti1996.5096 Td1997.5097 )
																																																																								Let Ti1998.5081
																																																																									Int:0
																																																																									Let Tu52.5037
																																																																										IfEq isrot_p.5019 Ti1998.5081
																																																																											Unit
																																																																											Let Ti1999.5092
																																																																												Int:0
																																																																												Let Tu2000.5095
																																																																													Unit
																																																																													Let Td2001.5094
																																																																														AppDir min_caml_read_float Tu2000.5095 )
																																																																														Let Td2002.5093
																																																																															AppDir rad.2618 Td2001.5094 )
																																																																															Let Tu46.5082
																																																																																Put rotation.5036 Ti1999.5092 Td2002.5093
																																																																																Let Ti2003.5088
																																																																																	Int:1
																																																																																	Let Tu2004.5091
																																																																																		Unit
																																																																																		Let Td2005.5090
																																																																																			AppDir min_caml_read_float Tu2004.5091 )
																																																																																			Let Td2006.5089
																																																																																				AppDir rad.2618 Td2005.5090 )
																																																																																				Let Tu45.5083
																																																																																					Put rotation.5036 Ti2003.5088 Td2006.5089
																																																																																					Let Ti2007.5084
																																																																																						Int:2
																																																																																						Let Tu2008.5087
																																																																																							Unit
																																																																																							Let Td2009.5086
																																																																																								AppDir min_caml_read_float Tu2008.5087 )
																																																																																								Let Td2010.5085
																																																																																									AppDir rad.2618 Td2009.5086 )
																																																																																									Put rotation.5036 Ti2007.5084 Td2010.5085
																																																																										Let Ti2011.5080
																																																																											Int:2
																																																																											Let m_invert2.5038
																																																																												IfEq form.5017 Ti2011.5080
																																																																													Int:1
																																																																													Var m_invert.5028
																																																																												Let Ti2012.5078
																																																																													Int:4
																																																																													Let Td2013.5079
																																																																														Float:0.000000
																																																																														Let ctbl.5039
																																																																															AppDir min_caml_create_float_array Ti2012.5078 Td2013.5079 )
																																																																															Let obj.5040
																																																																																Tuple (texture.5015,form.5017,refltype.5018,isrot_p.5019,abc.5020,xyz.5024,m_invert2.5038,reflparam.5029,color.5032,rotation.5036,ctbl.5039,)
																																																																																Let Tu51.5041
																																																																																	Put objects.2444 n.2628 obj.5040
																																																																																	Let Ti2014.5045
																																																																																		Int:3
																																																																																		Let Tu50.5042
																																																																																			IfEq form.5017 Ti2014.5045
																																																																																				Let Ti2015.5077
																																																																																					Int:0
																																																																																					Let a.5049
																																																																																						Get abc.5020 Ti2015.5077
																																																																																						Let Ti2016.5070
																																																																																							Int:0
																																																																																							Let Tb2017.5072
																																																																																								AppDir fiszero.2479 a.5049 )
																																																																																								Let Ti2018.5073
																																																																																									Int:0
																																																																																									Let Td2022.5071
																																																																																										IfEq Tb2017.5072 Ti2018.5073
																																																																																											Let Td2019.5074
																																																																																												AppDir sgn.2493 a.5049 )
																																																																																												Let Td2020.5075
																																																																																													AppDir fsqr.2483 a.5049 )
																																																																																													Let Td2021.5076
																																																																																														FReciprocal Td2020.5075
																																																																																														FMul Td2019.5074 Td2021.5076
																																																																																											Float:0.000000
																																																																																										Let Tu48.5050
																																																																																											Put abc.5020 Ti2016.5070 Td2022.5071
																																																																																											Let Ti2023.5069
																																																																																												Int:1
																																																																																												Let b.5051
																																																																																													Get abc.5020 Ti2023.5069
																																																																																													Let Ti2024.5062
																																																																																														Int:1
																																																																																														Let Tb2025.5064
																																																																																															AppDir fiszero.2479 b.5051 )
																																																																																															Let Ti2026.5065
																																																																																																Int:0
																																																																																																Let Td2030.5063
																																																																																																	IfEq Tb2025.5064 Ti2026.5065
																																																																																																		Let Td2027.5066
																																																																																																			AppDir sgn.2493 b.5051 )
																																																																																																			Let Td2028.5067
																																																																																																				AppDir fsqr.2483 b.5051 )
																																																																																																				Let Td2029.5068
																																																																																																					FReciprocal Td2028.5067
																																																																																																					FMul Td2027.5066 Td2029.5068
																																																																																																		Float:0.000000
																																																																																																	Let Tu47.5052
																																																																																																		Put abc.5020 Ti2024.5062 Td2030.5063
																																																																																																		Let Ti2031.5061
																																																																																																			Int:2
																																																																																																			Let c.5053
																																																																																																				Get abc.5020 Ti2031.5061
																																																																																																				Let Ti2032.5054
																																																																																																					Int:2
																																																																																																					Let Tb2033.5056
																																																																																																						AppDir fiszero.2479 c.5053 )
																																																																																																						Let Ti2034.5057
																																																																																																							Int:0
																																																																																																							Let Td2038.5055
																																																																																																								IfEq Tb2033.5056 Ti2034.5057
																																																																																																									Let Td2035.5058
																																																																																																										AppDir sgn.2493 c.5053 )
																																																																																																										Let Td2036.5059
																																																																																																											AppDir fsqr.2483 c.5053 )
																																																																																																											Let Td2037.5060
																																																																																																												FReciprocal Td2036.5059
																																																																																																												FMul Td2035.5058 Td2037.5060
																																																																																																									Float:0.000000
																																																																																																								Put abc.5020 Ti2032.5054 Td2038.5055
																																																																																				Let Ti2039.5046
																																																																																					Int:2
																																																																																					IfEq form.5017 Ti2039.5046
																																																																																						Let Ti2040.5048
																																																																																							Int:0
																																																																																							Let Ti2041.5047
																																																																																								IfEq m_invert.5028 Ti2040.5048
																																																																																									Int:1
																																																																																									Int:0
																																																																																								AppDir vecunit_sgn.2519 abc.5020 Ti2041.5047 )
																																																																																						Unit
																																																																																			Let Ti2042.5044
																																																																																				Int:0
																																																																																				Let Tu49.5043
																																																																																					IfEq isrot_p.5019 Ti2042.5044
																																																																																						Unit
																																																																																						AppDir rotate_quadratic_matrix.2624 abc.5020 rotation.5036 )
																																																																																					Int:1
name : read_object.2629 args : n.2630  formal_fv : n_objects.2443 read_nth_object.2627  
Let Ti1941.5009
	Int:60
	IfLE Ti1941.5009 n.2630
		Unit
		Let Tb1942.5010
			AppCls read_nth_object.2627 n.2630 )
			Let Ti1943.5011
				Int:0
				IfEq Tb1942.5010 Ti1943.5011
					Let Ti1944.5014
						Int:0
						Put n_objects.2443 Ti1944.5014 n.2630
					Let Ti1945.5013
						Int:1
						Let Ti1946.5012
							Add n.2630 Ti1945.5013
							AppCls read_object.2629 Ti1946.5012 )
name : read_all_object.2631 args : Tu64.2632  formal_fv : read_object.2629  
Let Ti1940.5008
	Int:0
	AppCls read_object.2629 Ti1940.5008 )
name : read_net_item.2633 args : length.2634  formal_fv :  
Let Tu1931.5007
	Unit
	Let item.4996
		AppDir min_caml_read_int Tu1931.5007 )
		Let Ti1933.4997
			Int:-1
			IfEq item.4996 Ti1933.4997
				Let Ti1934.5005
					Int:1
					Let Ti1935.5002
						Add length.2634 Ti1934.5005
						Let Ti1937.5003
							Int:-1
							AppDir min_caml_create_array Ti1935.5002 Ti1937.5003 )
				Let Ti1938.5001
					Int:1
					Let Ti1939.5000
						Add length.2634 Ti1938.5001
						Let v.4998
							AppDir read_net_item.2633 Ti1939.5000 )
							Let Tu65.4999
								Put v.4998 length.2634 item.4996
								Var v.4998
name : read_or_network.2635 args : length.2636  formal_fv :  
Let Ti1922.4995
	Int:0
	Let net.4984
		AppDir read_net_item.2633 Ti1922.4995 )
		Let Ti1923.4994
			Int:0
			Let Ti1924.4985
				Get net.4984 Ti1923.4994
				Let Ti1926.4986
					Int:-1
					IfEq Ti1924.4985 Ti1926.4986
						Let Ti1927.4992
							Int:1
							Let Ti1928.4991
								Add length.2636 Ti1927.4992
								AppDir min_caml_create_array Ti1928.4991 net.4984 )
						Let Ti1929.4990
							Int:1
							Let Ti1930.4989
								Add length.2636 Ti1929.4990
								Let v.4987
									AppDir read_or_network.2635 Ti1930.4989 )
									Let Tu66.4988
										Put v.4987 length.2636 net.4984
										Var v.4987
name : read_and_network.2637 args : n.2638  formal_fv : and_net.2449  
Let Ti1915.4983
	Int:0
	Let net.4975
		AppDir read_net_item.2633 Ti1915.4983 )
		Let Ti1916.4982
			Int:0
			Let Ti1917.4976
				Get net.4975 Ti1916.4982
				Let Ti1919.4977
					Int:-1
					IfEq Ti1917.4976 Ti1919.4977
						Unit
						Let Tu67.4978
							Put and_net.2449 n.2638 net.4975
							Let Ti1920.4980
								Int:1
								Let Ti1921.4979
									Add n.2638 Ti1920.4980
									AppCls read_and_network.2637 Ti1921.4979 )
name : read_parameter.2639 args : Tu68.2640  formal_fv : or_net.2450 read_all_object.2631 read_and_network.2637 read_light.2622 read_screen_settings.2620  
Let Tu1908.4974
	Unit
	Let Tu72.4964
		AppCls read_screen_settings.2620 Tu1908.4974 )
		Let Tu1909.4973
			Unit
			Let Tu71.4965
				AppCls read_light.2622 Tu1909.4973 )
				Let Tu1910.4972
					Unit
					Let Tu70.4966
						AppCls read_all_object.2631 Tu1910.4972 )
						Let Ti1911.4971
							Int:0
							Let Tu69.4967
								AppCls read_and_network.2637 Ti1911.4971 )
								Let Ti1912.4968
									Int:0
									Let Ti1913.4970
										Int:0
										Let Ta1914.4969
											AppDir read_or_network.2635 Ti1913.4970 )
											Put or_net.2450 Ti1912.4968 Ta1914.4969
name : solver_rect_surface.2641 args : m.2642 dirvec.2643 b0.2644 b1.2645 b2.2646 i0.2647 i1.2648 i2.2649  formal_fv : solver_dist.2451  
Let Td1882.4963
	Get dirvec.2643 i0.2647
	Let Tb1883.4934
		AppDir fiszero.2479 Td1882.4963 )
		Let Ti1884.4935
			Int:0
			IfEq Tb1883.4934 Ti1884.4935
				Let abc.4936
					AppDir o_param_abc.2563 m.2642 )
					Let Tb1885.4960
						AppDir o_isinvert.2553 m.2642 )
						Let Td1886.4962
							Get dirvec.2643 i0.2647
							Let Tb1887.4961
								AppDir fisneg.2477 Td1886.4962 )
								Let Tb1888.4958
									AppDir xor.2490 Tb1885.4960 Tb1887.4961 )
									Let Td1889.4959
										Get abc.4936 i0.2647
										Let d.4937
											AppDir fneg_cond.2495 Tb1888.4958 Td1889.4959 )
											Let Td1890.4955
												FSub d.4937 b0.2644
												Let Td1891.4956
													Get dirvec.2643 i0.2647
													Let Td1892.4957
														FReciprocal Td1891.4956
														Let d2.4938
															FMul Td1890.4955 Td1892.4957
															Let Td1893.4954
																Get dirvec.2643 i1.2648
																Let Td1894.4953
																	FMul d2.4938 Td1893.4954
																	Let Td1895.4952
																		FAdd Td1894.4953 b1.2645
																		Let Td1896.4950
																			AppDir fabs.2485 Td1895.4952 )
																			Let Td1897.4951
																				Get abc.4936 i1.2648
																				Let Tb1898.4939
																					AppDir fless.2487 Td1896.4950 Td1897.4951 )
																					Let Ti1899.4940
																						Int:0
																						IfEq Tb1898.4939 Ti1899.4940
																							Int:0
																							Let Td1900.4949
																								Get dirvec.2643 i2.2649
																								Let Td1901.4948
																									FMul d2.4938 Td1900.4949
																									Let Td1902.4947
																										FAdd Td1901.4948 b2.2646
																										Let Td1903.4945
																											AppDir fabs.2485 Td1902.4947 )
																											Let Td1904.4946
																												Get abc.4936 i2.2649
																												Let Tb1905.4941
																													AppDir fless.2487 Td1903.4945 Td1904.4946 )
																													Let Ti1906.4942
																														Int:0
																														IfEq Tb1905.4941 Ti1906.4942
																															Int:0
																															Let Ti1907.4944
																																Int:0
																																Let Tu73.4943
																																	Put solver_dist.2451 Ti1907.4944 d2.4938
																																	Int:1
				Int:0
name : solver_rect.2650 args : m.2651 dirvec.2652 b0.2653 b1.2654 b2.2655  formal_fv : solver_rect_surface.2641  
Let Ti1867.4931
	Int:0
	Let Ti1868.4932
		Int:1
		Let Ti1869.4933
			Int:2
			Let Tb1870.4919
				AppCls solver_rect_surface.2641 m.2651 dirvec.2652 b0.2653 b1.2654 b2.2655 Ti1867.4931 Ti1868.4932 Ti1869.4933 )
				Let Ti1871.4920
					Int:0
					IfEq Tb1870.4919 Ti1871.4920
						Let Ti1872.4928
							Int:1
							Let Ti1873.4929
								Int:2
								Let Ti1874.4930
									Int:0
									Let Tb1875.4921
										AppCls solver_rect_surface.2641 m.2651 dirvec.2652 b1.2654 b2.2655 b0.2653 Ti1872.4928 Ti1873.4929 Ti1874.4930 )
										Let Ti1876.4922
											Int:0
											IfEq Tb1875.4921 Ti1876.4922
												Let Ti1877.4925
													Int:2
													Let Ti1878.4926
														Int:0
														Let Ti1879.4927
															Int:1
															Let Tb1880.4923
																AppCls solver_rect_surface.2641 m.2651 dirvec.2652 b2.2655 b0.2653 b1.2654 Ti1877.4925 Ti1878.4926 Ti1879.4927 )
																Let Ti1881.4924
																	Int:0
																	IfEq Tb1880.4923 Ti1881.4924
																		Int:0
																		Int:3
												Int:2
						Int:1
name : solver_surface.2656 args : m.2657 dirvec.2658 b0.2659 b1.2660 b2.2661  formal_fv : solver_dist.2451  
Let abc.4909
	AppDir o_param_abc.2563 m.2657 )
	Let d.4910
		AppDir veciprod.2522 dirvec.2658 abc.4909 )
		Let Tb1860.4911
			AppDir fispos.2475 d.4910 )
			Let Ti1861.4912
				Int:0
				IfEq Tb1860.4911 Ti1861.4912
					Int:0
					Let Ti1862.4914
						Int:0
						Let Td1863.4918
							AppDir veciprod2.2525 abc.4909 b0.2659 b1.2660 b2.2661 )
							Let Td1864.4916
								AppDir fneg.2473 Td1863.4918 )
								Let Td1865.4917
									FReciprocal d.4910
									Let Td1866.4915
										FMul Td1864.4916 Td1865.4917
										Let Tu74.4913
											Put solver_dist.2451 Ti1862.4914 Td1866.4915
											Int:1
name : quadratic.2662 args : m.2663 v0.2664 v1.2665 v2.2666  formal_fv :  
Let Td1837.4907
	AppDir fsqr.2483 v0.2664 )
	Let Td1838.4908
		AppDir o_param_a.2557 m.2663 )
		Let Td1839.4903
			FMul Td1837.4907 Td1838.4908
			Let Td1840.4905
				AppDir fsqr.2483 v1.2665 )
				Let Td1841.4906
					AppDir o_param_b.2559 m.2663 )
					Let Td1842.4904
						FMul Td1840.4905 Td1841.4906
						Let Td1843.4899
							FAdd Td1839.4903 Td1842.4904
							Let Td1844.4901
								AppDir fsqr.2483 v2.2666 )
								Let Td1845.4902
									AppDir o_param_c.2561 m.2663 )
									Let Td1846.4900
										FMul Td1844.4901 Td1845.4902
										Let diag_part.4885
											FAdd Td1843.4899 Td1846.4900
											Let Ti1847.4886
												AppDir o_isrot.2555 m.2663 )
												Let Ti1848.4887
													Int:0
													IfEq Ti1847.4886 Ti1848.4887
														Var diag_part.4885
														Let Td1849.4897
															FMul v1.2665 v2.2666
															Let Td1850.4898
																AppDir o_param_r1.2581 m.2663 )
																Let Td1851.4896
																	FMul Td1849.4897 Td1850.4898
																	Let Td1852.4892
																		FAdd diag_part.4885 Td1851.4896
																		Let Td1853.4894
																			FMul v2.2666 v0.2664
																			Let Td1854.4895
																				AppDir o_param_r2.2583 m.2663 )
																				Let Td1855.4893
																					FMul Td1853.4894 Td1854.4895
																					Let Td1856.4888
																						FAdd Td1852.4892 Td1855.4893
																						Let Td1857.4890
																							FMul v0.2664 v1.2665
																							Let Td1858.4891
																								AppDir o_param_r3.2585 m.2663 )
																								Let Td1859.4889
																									FMul Td1857.4890 Td1858.4891
																									FAdd Td1856.4888 Td1859.4889
name : bilinear.2667 args : m.2668 v0.2669 v1.2670 v2.2671 w0.2672 w1.2673 w2.2674  formal_fv :  
Let Td1807.4883
	FMul v0.2669 w0.2672
	Let Td1808.4884
		AppDir o_param_a.2557 m.2668 )
		Let Td1809.4879
			FMul Td1807.4883 Td1808.4884
			Let Td1810.4881
				FMul v1.2670 w1.2673
				Let Td1811.4882
					AppDir o_param_b.2559 m.2668 )
					Let Td1812.4880
						FMul Td1810.4881 Td1811.4882
						Let Td1813.4875
							FAdd Td1809.4879 Td1812.4880
							Let Td1814.4877
								FMul v2.2671 w2.2674
								Let Td1815.4878
									AppDir o_param_c.2561 m.2668 )
									Let Td1816.4876
										FMul Td1814.4877 Td1815.4878
										Let diag_part.4854
											FAdd Td1813.4875 Td1816.4876
											Let Ti1817.4855
												AppDir o_isrot.2555 m.2668 )
												Let Ti1818.4856
													Int:0
													IfEq Ti1817.4855 Ti1818.4856
														Var diag_part.4854
														Let Td1819.4873
															FMul v2.2671 w1.2673
															Let Td1820.4874
																FMul v1.2670 w2.2674
																Let Td1821.4871
																	FAdd Td1819.4873 Td1820.4874
																	Let Td1822.4872
																		AppDir o_param_r1.2581 m.2668 )
																		Let Td1823.4865
																			FMul Td1821.4871 Td1822.4872
																			Let Td1824.4869
																				FMul v0.2669 w2.2674
																				Let Td1825.4870
																					FMul v2.2671 w0.2672
																					Let Td1826.4867
																						FAdd Td1824.4869 Td1825.4870
																						Let Td1827.4868
																							AppDir o_param_r2.2583 m.2668 )
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
																													AppDir o_param_r3.2585 m.2668 )
																													Let Td1834.4860
																														FMul Td1832.4861 Td1833.4862
																														Let Td1835.4858
																															FAdd Td1829.4859 Td1834.4860
																															Let Td1836.4857
																																AppDir fhalf.2481 Td1835.4858 )
																																FAdd diag_part.4854 Td1836.4857
name : solver_second.2675 args : m.2676 dirvec.2677 b0.2678 b1.2679 b2.2680  formal_fv : solver_dist.2451  
Let Ti1780.4853
	Int:0
	Let Td1781.4848
		Get dirvec.2677 Ti1780.4853
		Let Ti1782.4852
			Int:1
			Let Td1783.4849
				Get dirvec.2677 Ti1782.4852
				Let Ti1784.4851
					Int:2
					Let Td1785.4850
						Get dirvec.2677 Ti1784.4851
						Let aa.4819
							AppDir quadratic.2662 m.2676 Td1781.4848 Td1783.4849 Td1785.4850 )
							Let Tb1786.4820
								AppDir fiszero.2479 aa.4819 )
								Let Ti1787.4821
									Int:0
									IfEq Tb1786.4820 Ti1787.4821
										Let Ti1788.4847
											Int:0
											Let Td1789.4842
												Get dirvec.2677 Ti1788.4847
												Let Ti1790.4846
													Int:1
													Let Td1791.4843
														Get dirvec.2677 Ti1790.4846
														Let Ti1792.4845
															Int:2
															Let Td1793.4844
																Get dirvec.2677 Ti1792.4845
																Let bb.4822
																	AppDir bilinear.2667 m.2676 Td1789.4842 Td1791.4843 Td1793.4844 b0.2678 b1.2679 b2.2680 )
																	Let cc0.4823
																		AppDir quadratic.2662 m.2676 b0.2678 b1.2679 b2.2680 )
																		Let Ti1794.4839
																			AppDir o_form.2549 m.2676 )
																			Let Ti1795.4840
																				Int:3
																				Let cc.4824
																					IfEq Ti1794.4839 Ti1795.4840
																						Let Td1796.4841
																							Float:1.000000
																							FSub cc0.4823 Td1796.4841
																						Var cc0.4823
																					Let Td1797.4837
																						AppDir fsqr.2483 bb.4822 )
																						Let Td1798.4838
																							FMul aa.4819 cc.4824
																							Let d.4825
																								FSub Td1797.4837 Td1798.4838
																								Let Tb1799.4826
																									AppDir fispos.2475 d.4825 )
																									Let Ti1800.4827
																										Int:0
																										IfEq Tb1799.4826 Ti1800.4827
																											Int:0
																											Let sd.4828
																												AppDir min_caml_sqrt d.4825 )
																												Let Tb1801.4835
																													AppDir o_isinvert.2553 m.2676 )
																													Let Ti1802.4836
																														Int:0
																														Let t1.4829
																															IfEq Tb1801.4835 Ti1802.4836
																																AppDir fneg.2473 sd.4828 )
																																Var sd.4828
																															Let Ti1803.4831
																																Int:0
																																Let Td1804.4833
																																	FSub t1.4829 bb.4822
																																	Let Td1805.4834
																																		FReciprocal aa.4819
																																		Let Td1806.4832
																																			FMul Td1804.4833 Td1805.4834
																																			Let Tu75.4830
																																				Put solver_dist.2451 Ti1803.4831 Td1806.4832
																																				Int:1
										Int:0
name : solver.2681 args : index.2682 dirvec.2683 org.2684  formal_fv : objects.2444 solver_rect.2650 solver_second.2675 solver_surface.2656  
Let m.4803
	Get objects.2444 index.2682
	Let Ti1769.4818
		Int:0
		Let Td1770.4816
			Get org.2684 Ti1769.4818
			Let Td1771.4817
				AppDir o_param_x.2565 m.4803 )
				Let b0.4804
					FSub Td1770.4816 Td1771.4817
					Let Ti1772.4815
						Int:1
						Let Td1773.4813
							Get org.2684 Ti1772.4815
							Let Td1774.4814
								AppDir o_param_y.2567 m.4803 )
								Let b1.4805
									FSub Td1773.4813 Td1774.4814
									Let Ti1775.4812
										Int:2
										Let Td1776.4810
											Get org.2684 Ti1775.4812
											Let Td1777.4811
												AppDir o_param_z.2569 m.4803 )
												Let b2.4806
													FSub Td1776.4810 Td1777.4811
													Let m_shape.4807
														AppDir o_form.2549 m.4803 )
														Let Ti1778.4808
															Int:1
															IfEq m_shape.4807 Ti1778.4808
																AppCls solver_rect.2650 m.4803 dirvec.2683 b0.4804 b1.4805 b2.4806 )
																Let Ti1779.4809
																	Int:2
																	IfEq m_shape.4807 Ti1779.4809
																		AppCls solver_surface.2656 m.4803 dirvec.2683 b0.4804 b1.4805 b2.4806 )
																		AppCls solver_second.2675 m.4803 dirvec.2683 b0.4804 b1.4805 b2.4806 )
name : solver_rect_fast.2685 args : m.2686 v.2687 dconst.2688 b0.2689 b1.2690 b2.2691  formal_fv : solver_dist.2451  
Let Ti1685.4802
	Int:0
	Let Td1686.4801
		Get dconst.2688 Ti1685.4802
		Let Td1687.4798
			FSub Td1686.4801 b0.2689
			Let Ti1688.4800
				Int:1
				Let Td1689.4799
					Get dconst.2688 Ti1688.4800
					Let d0.4713
						FMul Td1687.4798 Td1689.4799
						Let Ti1690.4797
							Int:1
							Let Td1691.4796
								Get v.2687 Ti1690.4797
								Let Td1692.4795
									FMul d0.4713 Td1691.4796
									Let Td1693.4794
										FAdd Td1692.4795 b1.2690
										Let Td1694.4792
											AppDir fabs.2485 Td1693.4794 )
											Let Td1695.4793
												AppDir o_param_b.2559 m.2686 )
												Let Tb1696.4778
													AppDir fless.2487 Td1694.4792 Td1695.4793 )
													Let Ti1697.4779
														Int:0
														Let Ti1710.4714
															IfEq Tb1696.4778 Ti1697.4779
																Int:0
																Let Ti1698.4791
																	Int:2
																	Let Td1699.4790
																		Get v.2687 Ti1698.4791
																		Let Td1700.4789
																			FMul d0.4713 Td1699.4790
																			Let Td1701.4788
																				FAdd Td1700.4789 b2.2691
																				Let Td1702.4786
																					AppDir fabs.2485 Td1701.4788 )
																					Let Td1703.4787
																						AppDir o_param_c.2561 m.2686 )
																						Let Tb1704.4780
																							AppDir fless.2487 Td1702.4786 Td1703.4787 )
																							Let Ti1705.4781
																								Int:0
																								IfEq Tb1704.4780 Ti1705.4781
																									Int:0
																									Let Ti1706.4785
																										Int:1
																										Let Td1707.4784
																											Get dconst.2688 Ti1706.4785
																											Let Tb1708.4782
																												AppDir fiszero.2479 Td1707.4784 )
																												Let Ti1709.4783
																													Int:0
																													IfEq Tb1708.4782 Ti1709.4783
																														Int:1
																														Int:0
															Let Ti1711.4715
																Int:0
																IfEq Ti1710.4714 Ti1711.4715
																	Let Ti1712.4777
																		Int:2
																		Let Td1713.4776
																			Get dconst.2688 Ti1712.4777
																			Let Td1714.4773
																				FSub Td1713.4776 b1.2690
																				Let Ti1715.4775
																					Int:3
																					Let Td1716.4774
																						Get dconst.2688 Ti1715.4775
																						Let d1.4718
																							FMul Td1714.4773 Td1716.4774
																							Let Ti1717.4772
																								Int:0
																								Let Td1718.4771
																									Get v.2687 Ti1717.4772
																									Let Td1719.4770
																										FMul d1.4718 Td1718.4771
																										Let Td1720.4769
																											FAdd Td1719.4770 b0.2689
																											Let Td1721.4767
																												AppDir fabs.2485 Td1720.4769 )
																												Let Td1722.4768
																													AppDir o_param_a.2557 m.2686 )
																													Let Tb1723.4753
																														AppDir fless.2487 Td1721.4767 Td1722.4768 )
																														Let Ti1724.4754
																															Int:0
																															Let Ti1737.4719
																																IfEq Tb1723.4753 Ti1724.4754
																																	Int:0
																																	Let Ti1725.4766
																																		Int:2
																																		Let Td1726.4765
																																			Get v.2687 Ti1725.4766
																																			Let Td1727.4764
																																				FMul d1.4718 Td1726.4765
																																				Let Td1728.4763
																																					FAdd Td1727.4764 b2.2691
																																					Let Td1729.4761
																																						AppDir fabs.2485 Td1728.4763 )
																																						Let Td1730.4762
																																							AppDir o_param_c.2561 m.2686 )
																																							Let Tb1731.4755
																																								AppDir fless.2487 Td1729.4761 Td1730.4762 )
																																								Let Ti1732.4756
																																									Int:0
																																									IfEq Tb1731.4755 Ti1732.4756
																																										Int:0
																																										Let Ti1733.4760
																																											Int:3
																																											Let Td1734.4759
																																												Get dconst.2688 Ti1733.4760
																																												Let Tb1735.4757
																																													AppDir fiszero.2479 Td1734.4759 )
																																													Let Ti1736.4758
																																														Int:0
																																														IfEq Tb1735.4757 Ti1736.4758
																																															Int:1
																																															Int:0
																																Let Ti1738.4720
																																	Int:0
																																	IfEq Ti1737.4719 Ti1738.4720
																																		Let Ti1739.4752
																																			Int:4
																																			Let Td1740.4751
																																				Get dconst.2688 Ti1739.4752
																																				Let Td1741.4748
																																					FSub Td1740.4751 b2.2691
																																					Let Ti1742.4750
																																						Int:5
																																						Let Td1743.4749
																																							Get dconst.2688 Ti1742.4750
																																							Let d2.4723
																																								FMul Td1741.4748 Td1743.4749
																																								Let Ti1744.4747
																																									Int:0
																																									Let Td1745.4746
																																										Get v.2687 Ti1744.4747
																																										Let Td1746.4745
																																											FMul d2.4723 Td1745.4746
																																											Let Td1747.4744
																																												FAdd Td1746.4745 b0.2689
																																												Let Td1748.4742
																																													AppDir fabs.2485 Td1747.4744 )
																																													Let Td1749.4743
																																														AppDir o_param_a.2557 m.2686 )
																																														Let Tb1750.4728
																																															AppDir fless.2487 Td1748.4742 Td1749.4743 )
																																															Let Ti1751.4729
																																																Int:0
																																																Let Ti1764.4724
																																																	IfEq Tb1750.4728 Ti1751.4729
																																																		Int:0
																																																		Let Ti1752.4741
																																																			Int:1
																																																			Let Td1753.4740
																																																				Get v.2687 Ti1752.4741
																																																				Let Td1754.4739
																																																					FMul d2.4723 Td1753.4740
																																																					Let Td1755.4738
																																																						FAdd Td1754.4739 b1.2690
																																																						Let Td1756.4736
																																																							AppDir fabs.2485 Td1755.4738 )
																																																							Let Td1757.4737
																																																								AppDir o_param_b.2559 m.2686 )
																																																								Let Tb1758.4730
																																																									AppDir fless.2487 Td1756.4736 Td1757.4737 )
																																																									Let Ti1759.4731
																																																										Int:0
																																																										IfEq Tb1758.4730 Ti1759.4731
																																																											Int:0
																																																											Let Ti1760.4735
																																																												Int:5
																																																												Let Td1761.4734
																																																													Get dconst.2688 Ti1760.4735
																																																													Let Tb1762.4732
																																																														AppDir fiszero.2479 Td1761.4734 )
																																																														Let Ti1763.4733
																																																															Int:0
																																																															IfEq Tb1762.4732 Ti1763.4733
																																																																Int:1
																																																																Int:0
																																																	Let Ti1765.4725
																																																		Int:0
																																																		IfEq Ti1764.4724 Ti1765.4725
																																																			Int:0
																																																			Let Ti1766.4727
																																																				Int:0
																																																				Let Tu78.4726
																																																					Put solver_dist.2451 Ti1766.4727 d2.4723
																																																					Int:3
																																		Let Ti1767.4722
																																			Int:0
																																			Let Tu77.4721
																																				Put solver_dist.2451 Ti1767.4722 d1.4718
																																				Int:2
																	Let Ti1768.4717
																		Int:0
																		Let Tu76.4716
																			Put solver_dist.2451 Ti1768.4717 d0.4713
																			Int:1
name : solver_surface_fast.2692 args : m.2693 dconst.2694 b0.2695 b1.2696 b2.2697  formal_fv : solver_dist.2451  
Let Ti1669.4712
	Int:0
	Let Td1670.4711
		Get dconst.2694 Ti1669.4712
		Let Tb1671.4696
			AppDir fisneg.2477 Td1670.4711 )
			Let Ti1672.4697
				Int:0
				IfEq Tb1671.4696 Ti1672.4697
					Int:0
					Let Ti1673.4699
						Int:0
						Let Ti1674.4710
							Int:1
							Let Td1675.4709
								Get dconst.2694 Ti1674.4710
								Let Td1676.4705
									FMul Td1675.4709 b0.2695
									Let Ti1677.4708
										Int:2
										Let Td1678.4707
											Get dconst.2694 Ti1677.4708
											Let Td1679.4706
												FMul Td1678.4707 b1.2696
												Let Td1680.4701
													FAdd Td1676.4705 Td1679.4706
													Let Ti1681.4704
														Int:3
														Let Td1682.4703
															Get dconst.2694 Ti1681.4704
															Let Td1683.4702
																FMul Td1682.4703 b2.2697
																Let Td1684.4700
																	FAdd Td1680.4701 Td1683.4702
																	Let Tu79.4698
																		Put solver_dist.2451 Ti1673.4699 Td1684.4700
																		Int:1
name : solver_second_fast.2698 args : m.2699 dconst.2700 b0.2701 b1.2702 b2.2703  formal_fv : solver_dist.2451  
Let Ti1635.4695
	Int:0
	Let aa.4656
		Get dconst.2700 Ti1635.4695
		Let Tb1636.4657
			AppDir fiszero.2479 aa.4656 )
			Let Ti1637.4658
				Int:0
				IfEq Tb1636.4657 Ti1637.4658
					Let Ti1638.4694
						Int:1
						Let Td1639.4693
							Get dconst.2700 Ti1638.4694
							Let Td1640.4689
								FMul Td1639.4693 b0.2701
								Let Ti1641.4692
									Int:2
									Let Td1642.4691
										Get dconst.2700 Ti1641.4692
										Let Td1643.4690
											FMul Td1642.4691 b1.2702
											Let Td1644.4685
												FAdd Td1640.4689 Td1643.4690
												Let Ti1645.4688
													Int:3
													Let Td1646.4687
														Get dconst.2700 Ti1645.4688
														Let Td1647.4686
															FMul Td1646.4687 b2.2703
															Let neg_bb.4659
																FAdd Td1644.4685 Td1647.4686
																Let cc0.4660
																	AppDir quadratic.2662 m.2699 b0.2701 b1.2702 b2.2703 )
																	Let Ti1648.4682
																		AppDir o_form.2549 m.2699 )
																		Let Ti1649.4683
																			Int:3
																			Let cc.4661
																				IfEq Ti1648.4682 Ti1649.4683
																					Let Td1650.4684
																						Float:1.000000
																						FSub cc0.4660 Td1650.4684
																					Var cc0.4660
																				Let Td1651.4680
																					AppDir fsqr.2483 neg_bb.4659 )
																					Let Td1652.4681
																						FMul aa.4656 cc.4661
																						Let d.4662
																							FSub Td1651.4680 Td1652.4681
																							Let Tb1653.4663
																								AppDir fispos.2475 d.4662 )
																								Let Ti1654.4664
																									Int:0
																									IfEq Tb1653.4663 Ti1654.4664
																										Int:0
																										Let Tb1655.4666
																											AppDir o_isinvert.2553 m.2699 )
																											Let Ti1656.4667
																												Int:0
																												Let Tu80.4665
																													IfEq Tb1655.4666 Ti1656.4667
																														Let Ti1657.4674
																															Int:0
																															Let Td1658.4679
																																AppDir min_caml_sqrt d.4662 )
																																Let Td1659.4676
																																	FSub neg_bb.4659 Td1658.4679
																																	Let Ti1660.4678
																																		Int:4
																																		Let Td1661.4677
																																			Get dconst.2700 Ti1660.4678
																																			Let Td1662.4675
																																				FMul Td1659.4676 Td1661.4677
																																				Put solver_dist.2451 Ti1657.4674 Td1662.4675
																														Let Ti1663.4668
																															Int:0
																															Let Td1664.4673
																																AppDir min_caml_sqrt d.4662 )
																																Let Td1665.4670
																																	FAdd neg_bb.4659 Td1664.4673
																																	Let Ti1666.4672
																																		Int:4
																																		Let Td1667.4671
																																			Get dconst.2700 Ti1666.4672
																																			Let Td1668.4669
																																				FMul Td1665.4670 Td1667.4671
																																				Put solver_dist.2451 Ti1663.4668 Td1668.4669
																													Int:1
					Int:0
name : solver_fast.2704 args : index.2705 dirvec.2706 org.2707  formal_fv : objects.2444 solver_rect_fast.2685 solver_second_fast.2698 solver_surface_fast.2692  
Let m.4637
	Get objects.2444 index.2705
	Let Ti1623.4655
		Int:0
		Let Td1624.4653
			Get org.2707 Ti1623.4655
			Let Td1625.4654
				AppDir o_param_x.2565 m.4637 )
				Let b0.4638
					FSub Td1624.4653 Td1625.4654
					Let Ti1626.4652
						Int:1
						Let Td1627.4650
							Get org.2707 Ti1626.4652
							Let Td1628.4651
								AppDir o_param_y.2567 m.4637 )
								Let b1.4639
									FSub Td1627.4650 Td1628.4651
									Let Ti1629.4649
										Int:2
										Let Td1630.4647
											Get org.2707 Ti1629.4649
											Let Td1631.4648
												AppDir o_param_z.2569 m.4637 )
												Let b2.4640
													FSub Td1630.4647 Td1631.4648
													Let dconsts.4641
														AppDir d_const.2610 dirvec.2706 )
														Let dconst.4642
															Get dconsts.4641 index.2705
															Let m_shape.4643
																AppDir o_form.2549 m.4637 )
																Let Ti1632.4644
																	Int:1
																	IfEq m_shape.4643 Ti1632.4644
																		Let Ta1633.4646
																			AppDir d_vec.2608 dirvec.2706 )
																			AppCls solver_rect_fast.2685 m.4637 Ta1633.4646 dconst.4642 b0.4638 b1.4639 b2.4640 )
																		Let Ti1634.4645
																			Int:2
																			IfEq m_shape.4643 Ti1634.4645
																				AppCls solver_surface_fast.2692 m.4637 dconst.4642 b0.4638 b1.4639 b2.4640 )
																				AppCls solver_second_fast.2698 m.4637 dconst.4642 b0.4638 b1.4639 b2.4640 )
name : solver_surface_fast2.2708 args : m.2709 dconst.2710 sconst.2711 b0.2712 b1.2713 b2.2714  formal_fv : solver_dist.2451  
Let Ti1613.4636
	Int:0
	Let Td1614.4635
		Get dconst.2710 Ti1613.4636
		Let Tb1615.4626
			AppDir fisneg.2477 Td1614.4635 )
			Let Ti1616.4627
				Int:0
				IfEq Tb1615.4626 Ti1616.4627
					Int:0
					Let Ti1617.4629
						Int:0
						Let Ti1618.4634
							Int:0
							Let Td1619.4631
								Get dconst.2710 Ti1618.4634
								Let Ti1620.4633
									Int:3
									Let Td1621.4632
										Get sconst.2711 Ti1620.4633
										Let Td1622.4630
											FMul Td1619.4631 Td1621.4632
											Let Tu81.4628
												Put solver_dist.2451 Ti1617.4629 Td1622.4630
												Int:1
name : solver_second_fast2.2715 args : m.2716 dconst.2717 sconst.2718 b0.2719 b1.2720 b2.2721  formal_fv : solver_dist.2451  
Let Ti1581.4625
	Int:0
	Let aa.4589
		Get dconst.2717 Ti1581.4625
		Let Tb1582.4590
			AppDir fiszero.2479 aa.4589 )
			Let Ti1583.4591
				Int:0
				IfEq Tb1582.4590 Ti1583.4591
					Let Ti1584.4624
						Int:1
						Let Td1585.4623
							Get dconst.2717 Ti1584.4624
							Let Td1586.4619
								FMul Td1585.4623 b0.2719
								Let Ti1587.4622
									Int:2
									Let Td1588.4621
										Get dconst.2717 Ti1587.4622
										Let Td1589.4620
											FMul Td1588.4621 b1.2720
											Let Td1590.4615
												FAdd Td1586.4619 Td1589.4620
												Let Ti1591.4618
													Int:3
													Let Td1592.4617
														Get dconst.2717 Ti1591.4618
														Let Td1593.4616
															FMul Td1592.4617 b2.2721
															Let neg_bb.4592
																FAdd Td1590.4615 Td1593.4616
																Let Ti1594.4614
																	Int:3
																	Let cc.4593
																		Get sconst.2718 Ti1594.4614
																		Let Td1595.4612
																			AppDir fsqr.2483 neg_bb.4592 )
																			Let Td1596.4613
																				FMul aa.4589 cc.4593
																				Let d.4594
																					FSub Td1595.4612 Td1596.4613
																					Let Tb1597.4595
																						AppDir fispos.2475 d.4594 )
																						Let Ti1598.4596
																							Int:0
																							IfEq Tb1597.4595 Ti1598.4596
																								Int:0
																								Let Tb1599.4598
																									AppDir o_isinvert.2553 m.2716 )
																									Let Ti1600.4599
																										Int:0
																										Let Tu82.4597
																											IfEq Tb1599.4598 Ti1600.4599
																												Let Ti1601.4606
																													Int:0
																													Let Td1602.4611
																														AppDir min_caml_sqrt d.4594 )
																														Let Td1603.4608
																															FSub neg_bb.4592 Td1602.4611
																															Let Ti1604.4610
																																Int:4
																																Let Td1605.4609
																																	Get dconst.2717 Ti1604.4610
																																	Let Td1606.4607
																																		FMul Td1603.4608 Td1605.4609
																																		Put solver_dist.2451 Ti1601.4606 Td1606.4607
																												Let Ti1607.4600
																													Int:0
																													Let Td1608.4605
																														AppDir min_caml_sqrt d.4594 )
																														Let Td1609.4602
																															FAdd neg_bb.4592 Td1608.4605
																															Let Ti1610.4604
																																Int:4
																																Let Td1611.4603
																																	Get dconst.2717 Ti1610.4604
																																	Let Td1612.4601
																																		FMul Td1609.4602 Td1611.4603
																																		Put solver_dist.2451 Ti1607.4600 Td1612.4601
																											Int:1
					Int:0
name : solver_fast2.2722 args : index.2723 dirvec.2724  formal_fv : objects.2444 solver_rect_fast.2685 solver_second_fast2.2715 solver_surface_fast2.2708  
Let m.4575
	Get objects.2444 index.2723
	Let sconst.4576
		AppDir o_param_ctbl.2587 m.4575 )
		Let Ti1575.4588
			Int:0
			Let b0.4577
				Get sconst.4576 Ti1575.4588
				Let Ti1576.4587
					Int:1
					Let b1.4578
						Get sconst.4576 Ti1576.4587
						Let Ti1577.4586
							Int:2
							Let b2.4579
								Get sconst.4576 Ti1577.4586
								Let dconsts.4580
									AppDir d_const.2610 dirvec.2724 )
									Let dconst.4581
										Get dconsts.4580 index.2723
										Let m_shape.4582
											AppDir o_form.2549 m.4575 )
											Let Ti1578.4583
												Int:1
												IfEq m_shape.4582 Ti1578.4583
													Let Ta1579.4585
														AppDir d_vec.2608 dirvec.2724 )
														AppCls solver_rect_fast.2685 m.4575 Ta1579.4585 dconst.4581 b0.4577 b1.4578 b2.4579 )
													Let Ti1580.4584
														Int:2
														IfEq m_shape.4582 Ti1580.4584
															AppCls solver_surface_fast2.2708 m.4575 dconst.4581 sconst.4576 b0.4577 b1.4578 b2.4579 )
															AppCls solver_second_fast2.2715 m.4575 dconst.4581 sconst.4576 b0.4577 b1.4578 b2.4579 )
name : setup_rect_table.2725 args : vec.2726 m.2727  formal_fv :  
Let Ti1513.4573
	Int:6
	Let Td1514.4574
		Float:0.000000
		Let const.4506
			AppDir min_caml_create_float_array Ti1513.4573 Td1514.4574 )
			Let Ti1515.4572
				Int:0
				Let Td1516.4571
					Get vec.2726 Ti1515.4572
					Let Tb1517.4552
						AppDir fiszero.2479 Td1516.4571 )
						Let Ti1518.4553
							Int:0
							Let Tu88.4507
								IfEq Tb1517.4552 Ti1518.4553
									Let Ti1519.4563
										Int:0
										Let Tb1520.4567
											AppDir o_isinvert.2553 m.2727 )
											Let Ti1521.4570
												Int:0
												Let Td1522.4569
													Get vec.2726 Ti1521.4570
													Let Tb1523.4568
														AppDir fisneg.2477 Td1522.4569 )
														Let Tb1524.4565
															AppDir xor.2490 Tb1520.4567 Tb1523.4568 )
															Let Td1525.4566
																AppDir o_param_a.2557 m.2727 )
																Let Td1526.4564
																	AppDir fneg_cond.2495 Tb1524.4565 Td1525.4566 )
																	Let Tu83.4556
																		Put const.4506 Ti1519.4563 Td1526.4564
																		Let Ti1527.4557
																			Int:1
																			Let Td1528.4559
																				Float:1.000000
																				Let Ti1529.4562
																					Int:0
																					Let Td1530.4560
																						Get vec.2726 Ti1529.4562
																						Let Td1531.4561
																							FReciprocal Td1530.4560
																							Let Td1532.4558
																								FMul Td1528.4559 Td1531.4561
																								Put const.4506 Ti1527.4557 Td1532.4558
									Let Ti1533.4554
										Int:1
										Let Td1534.4555
											Float:0.000000
											Put const.4506 Ti1533.4554 Td1534.4555
								Let Ti1535.4551
									Int:1
									Let Td1536.4550
										Get vec.2726 Ti1535.4551
										Let Tb1537.4531
											AppDir fiszero.2479 Td1536.4550 )
											Let Ti1538.4532
												Int:0
												Let Tu87.4508
													IfEq Tb1537.4531 Ti1538.4532
														Let Ti1539.4542
															Int:2
															Let Tb1540.4546
																AppDir o_isinvert.2553 m.2727 )
																Let Ti1541.4549
																	Int:1
																	Let Td1542.4548
																		Get vec.2726 Ti1541.4549
																		Let Tb1543.4547
																			AppDir fisneg.2477 Td1542.4548 )
																			Let Tb1544.4544
																				AppDir xor.2490 Tb1540.4546 Tb1543.4547 )
																				Let Td1545.4545
																					AppDir o_param_b.2559 m.2727 )
																					Let Td1546.4543
																						AppDir fneg_cond.2495 Tb1544.4544 Td1545.4545 )
																						Let Tu84.4535
																							Put const.4506 Ti1539.4542 Td1546.4543
																							Let Ti1547.4536
																								Int:3
																								Let Td1548.4538
																									Float:1.000000
																									Let Ti1549.4541
																										Int:1
																										Let Td1550.4539
																											Get vec.2726 Ti1549.4541
																											Let Td1551.4540
																												FReciprocal Td1550.4539
																												Let Td1552.4537
																													FMul Td1548.4538 Td1551.4540
																													Put const.4506 Ti1547.4536 Td1552.4537
														Let Ti1553.4533
															Int:3
															Let Td1554.4534
																Float:0.000000
																Put const.4506 Ti1553.4533 Td1554.4534
													Let Ti1555.4530
														Int:2
														Let Td1556.4529
															Get vec.2726 Ti1555.4530
															Let Tb1557.4510
																AppDir fiszero.2479 Td1556.4529 )
																Let Ti1558.4511
																	Int:0
																	Let Tu86.4509
																		IfEq Tb1557.4510 Ti1558.4511
																			Let Ti1559.4521
																				Int:4
																				Let Tb1560.4525
																					AppDir o_isinvert.2553 m.2727 )
																					Let Ti1561.4528
																						Int:2
																						Let Td1562.4527
																							Get vec.2726 Ti1561.4528
																							Let Tb1563.4526
																								AppDir fisneg.2477 Td1562.4527 )
																								Let Tb1564.4523
																									AppDir xor.2490 Tb1560.4525 Tb1563.4526 )
																									Let Td1565.4524
																										AppDir o_param_c.2561 m.2727 )
																										Let Td1566.4522
																											AppDir fneg_cond.2495 Tb1564.4523 Td1565.4524 )
																											Let Tu85.4514
																												Put const.4506 Ti1559.4521 Td1566.4522
																												Let Ti1567.4515
																													Int:5
																													Let Td1568.4517
																														Float:1.000000
																														Let Ti1569.4520
																															Int:2
																															Let Td1570.4518
																																Get vec.2726 Ti1569.4520
																																Let Td1571.4519
																																	FReciprocal Td1570.4518
																																	Let Td1572.4516
																																		FMul Td1568.4517 Td1571.4519
																																		Put const.4506 Ti1567.4515 Td1572.4516
																			Let Ti1573.4512
																				Int:5
																				Let Td1574.4513
																					Float:0.000000
																					Put const.4506 Ti1573.4512 Td1574.4513
																		Var const.4506
name : setup_surface_table.2728 args : vec.2729 m.2730  formal_fv :  
Let Ti1475.4504
	Int:4
	Let Td1476.4505
		Float:0.000000
		Let const.4462
			AppDir min_caml_create_float_array Ti1475.4504 Td1476.4505 )
			Let Ti1477.4503
				Int:0
				Let Td1478.4501
					Get vec.2729 Ti1477.4503
					Let Td1479.4502
						AppDir o_param_a.2557 m.2730 )
						Let Td1480.4496
							FMul Td1478.4501 Td1479.4502
							Let Ti1481.4500
								Int:1
								Let Td1482.4498
									Get vec.2729 Ti1481.4500
									Let Td1483.4499
										AppDir o_param_b.2559 m.2730 )
										Let Td1484.4497
											FMul Td1482.4498 Td1483.4499
											Let Td1485.4491
												FAdd Td1480.4496 Td1484.4497
												Let Ti1486.4495
													Int:2
													Let Td1487.4493
														Get vec.2729 Ti1486.4495
														Let Td1488.4494
															AppDir o_param_c.2561 m.2730 )
															Let Td1489.4492
																FMul Td1487.4493 Td1488.4494
																Let d.4463
																	FAdd Td1485.4491 Td1489.4492
																	Let Tb1490.4465
																		AppDir fispos.2475 d.4463 )
																		Let Ti1491.4466
																			Int:0
																			Let Tu92.4464
																				IfEq Tb1490.4465 Ti1491.4466
																					Let Ti1492.4489
																						Int:0
																						Let Td1493.4490
																							Float:0.000000
																							Put const.4462 Ti1492.4489 Td1493.4490
																					Let Ti1494.4485
																						Int:0
																						Let Td1495.4487
																							Float:-1.000000
																							Let Td1496.4488
																								FReciprocal d.4463
																								Let Td1497.4486
																									FMul Td1495.4487 Td1496.4488
																									Let Tu91.4467
																										Put const.4462 Ti1494.4485 Td1497.4486
																										Let Ti1498.4480
																											Int:1
																											Let Td1499.4483
																												AppDir o_param_a.2557 m.2730 )
																												Let Td1500.4484
																													FReciprocal d.4463
																													Let Td1501.4482
																														FMul Td1499.4483 Td1500.4484
																														Let Td1502.4481
																															AppDir fneg.2473 Td1501.4482 )
																															Let Tu90.4468
																																Put const.4462 Ti1498.4480 Td1502.4481
																																Let Ti1503.4475
																																	Int:2
																																	Let Td1504.4478
																																		AppDir o_param_b.2559 m.2730 )
																																		Let Td1505.4479
																																			FReciprocal d.4463
																																			Let Td1506.4477
																																				FMul Td1504.4478 Td1505.4479
																																				Let Td1507.4476
																																					AppDir fneg.2473 Td1506.4477 )
																																					Let Tu89.4469
																																						Put const.4462 Ti1503.4475 Td1507.4476
																																						Let Ti1508.4470
																																							Int:3
																																							Let Td1509.4473
																																								AppDir o_param_c.2561 m.2730 )
																																								Let Td1510.4474
																																									FReciprocal d.4463
																																									Let Td1511.4472
																																										FMul Td1509.4473 Td1510.4474
																																										Let Td1512.4471
																																											AppDir fneg.2473 Td1511.4472 )
																																											Put const.4462 Ti1508.4470 Td1512.4471
																				Var const.4462
name : setup_second_table.2731 args : v.2732 m.2733  formal_fv :  
Let Ti1407.4460
	Int:5
	Let Td1408.4461
		Float:0.000000
		Let const.4382
			AppDir min_caml_create_float_array Ti1407.4460 Td1408.4461 )
			Let Ti1409.4459
				Int:0
				Let Td1410.4454
					Get v.2732 Ti1409.4459
					Let Ti1411.4458
						Int:1
						Let Td1412.4455
							Get v.2732 Ti1411.4458
							Let Ti1413.4457
								Int:2
								Let Td1414.4456
									Get v.2732 Ti1413.4457
									Let aa.4383
										AppDir quadratic.2662 m.2733 Td1410.4454 Td1412.4455 Td1414.4456 )
										Let Ti1415.4453
											Int:0
											Let Td1416.4451
												Get v.2732 Ti1415.4453
												Let Td1417.4452
													AppDir o_param_a.2557 m.2733 )
													Let Td1418.4450
														FMul Td1416.4451 Td1417.4452
														Let c1.4384
															AppDir fneg.2473 Td1418.4450 )
															Let Ti1419.4449
																Int:1
																Let Td1420.4447
																	Get v.2732 Ti1419.4449
																	Let Td1421.4448
																		AppDir o_param_b.2559 m.2733 )
																		Let Td1422.4446
																			FMul Td1420.4447 Td1421.4448
																			Let c2.4385
																				AppDir fneg.2473 Td1422.4446 )
																				Let Ti1423.4445
																					Int:2
																					Let Td1424.4443
																						Get v.2732 Ti1423.4445
																						Let Td1425.4444
																							AppDir o_param_c.2561 m.2733 )
																							Let Td1426.4442
																								FMul Td1424.4443 Td1425.4444
																								Let c3.4386
																									AppDir fneg.2473 Td1426.4442 )
																									Let Ti1427.4441
																										Int:0
																										Let Tu99.4387
																											Put const.4382 Ti1427.4441 aa.4383
																											Let Ti1428.4396
																												AppDir o_isrot.2555 m.2733 )
																												Let Ti1429.4397
																													Int:0
																													Let Tu98.4388
																														IfEq Ti1428.4396 Ti1429.4397
																															Let Ti1430.4440
																																Int:1
																																Let Tu96.4436
																																	Put const.4382 Ti1430.4440 c1.4384
																																	Let Ti1431.4439
																																		Int:2
																																		Let Tu95.4437
																																			Put const.4382 Ti1431.4439 c2.4385
																																			Let Ti1432.4438
																																				Int:3
																																				Put const.4382 Ti1432.4438 c3.4386
																															Let Ti1433.4424
																																Int:1
																																Let Ti1434.4435
																																	Int:2
																																	Let Td1435.4433
																																		Get v.2732 Ti1434.4435
																																		Let Td1436.4434
																																			AppDir o_param_r2.2583 m.2733 )
																																			Let Td1437.4428
																																				FMul Td1435.4433 Td1436.4434
																																				Let Ti1438.4432
																																					Int:1
																																					Let Td1439.4430
																																						Get v.2732 Ti1438.4432
																																						Let Td1440.4431
																																							AppDir o_param_r3.2585 m.2733 )
																																							Let Td1441.4429
																																								FMul Td1439.4430 Td1440.4431
																																								Let Td1442.4427
																																									FAdd Td1437.4428 Td1441.4429
																																									Let Td1443.4426
																																										AppDir fhalf.2481 Td1442.4427 )
																																										Let Td1444.4425
																																											FSub c1.4384 Td1443.4426
																																											Let Tu94.4398
																																												Put const.4382 Ti1433.4424 Td1444.4425
																																												Let Ti1445.4412
																																													Int:2
																																													Let Ti1446.4423
																																														Int:2
																																														Let Td1447.4421
																																															Get v.2732 Ti1446.4423
																																															Let Td1448.4422
																																																AppDir o_param_r1.2581 m.2733 )
																																																Let Td1449.4416
																																																	FMul Td1447.4421 Td1448.4422
																																																	Let Ti1450.4420
																																																		Int:0
																																																		Let Td1451.4418
																																																			Get v.2732 Ti1450.4420
																																																			Let Td1452.4419
																																																				AppDir o_param_r3.2585 m.2733 )
																																																				Let Td1453.4417
																																																					FMul Td1451.4418 Td1452.4419
																																																					Let Td1454.4415
																																																						FAdd Td1449.4416 Td1453.4417
																																																						Let Td1455.4414
																																																							AppDir fhalf.2481 Td1454.4415 )
																																																							Let Td1456.4413
																																																								FSub c2.4385 Td1455.4414
																																																								Let Tu93.4399
																																																									Put const.4382 Ti1445.4412 Td1456.4413
																																																									Let Ti1457.4400
																																																										Int:3
																																																										Let Ti1458.4411
																																																											Int:1
																																																											Let Td1459.4409
																																																												Get v.2732 Ti1458.4411
																																																												Let Td1460.4410
																																																													AppDir o_param_r1.2581 m.2733 )
																																																													Let Td1461.4404
																																																														FMul Td1459.4409 Td1460.4410
																																																														Let Ti1462.4408
																																																															Int:0
																																																															Let Td1463.4406
																																																																Get v.2732 Ti1462.4408
																																																																Let Td1464.4407
																																																																	AppDir o_param_r2.2583 m.2733 )
																																																																	Let Td1465.4405
																																																																		FMul Td1463.4406 Td1464.4407
																																																																		Let Td1466.4403
																																																																			FAdd Td1461.4404 Td1465.4405
																																																																			Let Td1467.4402
																																																																				AppDir fhalf.2481 Td1466.4403 )
																																																																				Let Td1468.4401
																																																																					FSub c3.4386 Td1467.4402
																																																																					Put const.4382 Ti1457.4400 Td1468.4401
																														Let Tb1469.4390
																															AppDir fiszero.2479 aa.4383 )
																															Let Ti1470.4391
																																Int:0
																																Let Tu97.4389
																																	IfEq Tb1469.4390 Ti1470.4391
																																		Let Ti1471.4392
																																			Int:4
																																			Let Td1472.4394
																																				Float:1.000000
																																				Let Td1473.4395
																																					FReciprocal aa.4383
																																					Let Td1474.4393
																																						FMul Td1472.4394 Td1473.4395
																																						Put const.4382 Ti1471.4392 Td1474.4393
																																		Unit
																																	Var const.4382
name : iter_setup_dirvec_constants.2734 args : dirvec.2735 index.2736  formal_fv : objects.2444  
Let Ti1399.4369
	Int:0
	IfLE Ti1399.4369 index.2736
		Let m.4370
			Get objects.2444 index.2736
			Let dconst.4371
				AppDir d_const.2610 dirvec.2735 )
				Let v.4372
					AppDir d_vec.2608 dirvec.2735 )
					Let m_shape.4373
						AppDir o_form.2549 m.4370 )
						Let Ti1400.4377
							Int:1
							Let Tu100.4374
								IfEq m_shape.4373 Ti1400.4377
									Let Ta1401.4381
										AppDir setup_rect_table.2725 v.4372 m.4370 )
										Put dconst.4371 index.2736 Ta1401.4381
									Let Ti1402.4378
										Int:2
										IfEq m_shape.4373 Ti1402.4378
											Let Ta1403.4380
												AppDir setup_surface_table.2728 v.4372 m.4370 )
												Put dconst.4371 index.2736 Ta1403.4380
											Let Ta1404.4379
												AppDir setup_second_table.2731 v.4372 m.4370 )
												Put dconst.4371 index.2736 Ta1404.4379
								Let Ti1405.4376
									Int:1
									Let Ti1406.4375
										Sub index.2736 Ti1405.4376
										AppCls iter_setup_dirvec_constants.2734 dirvec.2735 Ti1406.4375 )
		Unit
name : setup_dirvec_constants.2737 args : dirvec.2738  formal_fv : iter_setup_dirvec_constants.2734 n_objects.2443  
Let Ti1395.4368
	Int:0
	Let Ti1396.4366
		Get n_objects.2443 Ti1395.4368
		Let Ti1397.4367
			Int:1
			Let Ti1398.4365
				Sub Ti1396.4366 Ti1397.4367
				AppCls iter_setup_dirvec_constants.2734 dirvec.2738 Ti1398.4365 )
name : setup_startp_constants.2739 args : p.2740 index.2741  formal_fv : objects.2444  
Let Ti1356.4318
	Int:0
	IfLE Ti1356.4318 index.2741
		Let obj.4319
			Get objects.2444 index.2741
			Let sconst.4320
				AppDir o_param_ctbl.2587 obj.4319 )
				Let m_shape.4321
					AppDir o_form.2549 obj.4319 )
					Let Ti1357.4360
						Int:0
						Let Ti1358.4364
							Int:0
							Let Td1359.4362
								Get p.2740 Ti1358.4364
								Let Td1360.4363
									AppDir o_param_x.2565 obj.4319 )
									Let Td1361.4361
										FSub Td1359.4362 Td1360.4363
										Let Tu104.4322
											Put sconst.4320 Ti1357.4360 Td1361.4361
											Let Ti1362.4355
												Int:1
												Let Ti1363.4359
													Int:1
													Let Td1364.4357
														Get p.2740 Ti1363.4359
														Let Td1365.4358
															AppDir o_param_y.2567 obj.4319 )
															Let Td1366.4356
																FSub Td1364.4357 Td1365.4358
																Let Tu103.4323
																	Put sconst.4320 Ti1362.4355 Td1366.4356
																	Let Ti1367.4350
																		Int:2
																		Let Ti1368.4354
																			Int:2
																			Let Td1369.4352
																				Get p.2740 Ti1368.4354
																				Let Td1370.4353
																					AppDir o_param_z.2569 obj.4319 )
																					Let Td1371.4351
																						FSub Td1369.4352 Td1370.4353
																						Let Tu102.4324
																							Put sconst.4320 Ti1367.4350 Td1371.4351
																							Let Ti1372.4328
																								Int:2
																								Let Tu101.4325
																									IfEq m_shape.4321 Ti1372.4328
																										Let Ti1373.4341
																											Int:3
																											Let Ta1374.4343
																												AppDir o_param_abc.2563 obj.4319 )
																												Let Ti1375.4349
																													Int:0
																													Let Td1376.4344
																														Get sconst.4320 Ti1375.4349
																														Let Ti1377.4348
																															Int:1
																															Let Td1378.4345
																																Get sconst.4320 Ti1377.4348
																																Let Ti1379.4347
																																	Int:2
																																	Let Td1380.4346
																																		Get sconst.4320 Ti1379.4347
																																		Let Td1381.4342
																																			AppDir veciprod2.2525 Ta1374.4343 Td1376.4344 Td1378.4345 Td1380.4346 )
																																			Put sconst.4320 Ti1373.4341 Td1381.4342
																										Let Ti1382.4329
																											Int:2
																											IfLE m_shape.4321 Ti1382.4329
																												Unit
																												Let Ti1383.4340
																													Int:0
																													Let Td1384.4335
																														Get sconst.4320 Ti1383.4340
																														Let Ti1385.4339
																															Int:1
																															Let Td1386.4336
																																Get sconst.4320 Ti1385.4339
																																Let Ti1387.4338
																																	Int:2
																																	Let Td1388.4337
																																		Get sconst.4320 Ti1387.4338
																																		Let cc0.4330
																																			AppDir quadratic.2662 obj.4319 Td1384.4335 Td1386.4336 Td1388.4337 )
																																			Let Ti1389.4331
																																				Int:3
																																				Let Ti1390.4333
																																					Int:3
																																					Let Td1392.4332
																																						IfEq m_shape.4321 Ti1390.4333
																																							Let Td1391.4334
																																								Float:1.000000
																																								FSub cc0.4330 Td1391.4334
																																							Var cc0.4330
																																						Put sconst.4320 Ti1389.4331 Td1392.4332
																									Let Ti1393.4327
																										Int:1
																										Let Ti1394.4326
																											Sub index.2741 Ti1393.4327
																											AppCls setup_startp_constants.2739 p.2740 Ti1394.4326 )
		Unit
name : setup_startp.2742 args : p.2743  formal_fv : n_objects.2443 setup_startp_constants.2739 startp_fast.2464  
Let Tu105.4313
	AppDir veccpy.2511 startp_fast.2464 p.2743 )
	Let Ti1352.4317
		Int:0
		Let Ti1353.4315
			Get n_objects.2443 Ti1352.4317
			Let Ti1354.4316
				Int:1
				Let Ti1355.4314
					Sub Ti1353.4315 Ti1354.4316
					AppCls setup_startp_constants.2739 p.2743 Ti1355.4314 )
name : is_rect_outside.2744 args : m.2745 p0.2746 p1.2747 p2.2748  formal_fv :  
Let Td1338.4311
	AppDir fabs.2485 p0.2746 )
	Let Td1339.4312
		AppDir o_param_a.2557 m.2745 )
		Let Tb1340.4303
			AppDir fless.2487 Td1338.4311 Td1339.4312 )
			Let Ti1341.4304
				Int:0
				Let Ti1348.4299
					IfEq Tb1340.4303 Ti1341.4304
						Int:0
						Let Td1342.4309
							AppDir fabs.2485 p1.2747 )
							Let Td1343.4310
								AppDir o_param_b.2559 m.2745 )
								Let Tb1344.4305
									AppDir fless.2487 Td1342.4309 Td1343.4310 )
									Let Ti1345.4306
										Int:0
										IfEq Tb1344.4305 Ti1345.4306
											Int:0
											Let Td1346.4307
												AppDir fabs.2485 p2.2748 )
												Let Td1347.4308
													AppDir o_param_c.2561 m.2745 )
													AppDir fless.2487 Td1346.4307 Td1347.4308 )
					Let Ti1349.4300
						Int:0
						IfEq Ti1348.4299 Ti1349.4300
							Let Tb1350.4301
								AppDir o_isinvert.2553 m.2745 )
								Let Ti1351.4302
									Int:0
									IfEq Tb1350.4301 Ti1351.4302
										Int:1
										Int:0
							AppDir o_isinvert.2553 m.2745 )
name : is_plane_outside.2749 args : m.2750 p0.2751 p1.2752 p2.2753  formal_fv :  
Let Ta1333.4298
	AppDir o_param_abc.2563 m.2750 )
	Let w.4293
		AppDir veciprod2.2525 Ta1333.4298 p0.2751 p1.2752 p2.2753 )
		Let Tb1334.4296
			AppDir o_isinvert.2553 m.2750 )
			Let Tb1335.4297
				AppDir fisneg.2477 w.4293 )
				Let Tb1336.4294
					AppDir xor.2490 Tb1334.4296 Tb1335.4297 )
					Let Ti1337.4295
						Int:0
						IfEq Tb1336.4294 Ti1337.4295
							Int:1
							Int:0
name : is_second_outside.2754 args : m.2755 p0.2756 p1.2757 p2.2758  formal_fv :  
Let w.4284
	AppDir quadratic.2662 m.2755 p0.2756 p1.2757 p2.2758 )
	Let Ti1326.4290
		AppDir o_form.2549 m.2755 )
		Let Ti1327.4291
			Int:3
			Let w2.4285
				IfEq Ti1326.4290 Ti1327.4291
					Let Td1328.4292
						Float:1.000000
						FSub w.4284 Td1328.4292
					Var w.4284
				Let Tb1329.4288
					AppDir o_isinvert.2553 m.2755 )
					Let Tb1330.4289
						AppDir fisneg.2477 w2.4285 )
						Let Tb1331.4286
							AppDir xor.2490 Tb1329.4288 Tb1330.4289 )
							Let Ti1332.4287
								Int:0
								IfEq Tb1331.4286 Ti1332.4287
									Int:1
									Int:0
name : is_outside.2759 args : m.2760 q0.2761 q1.2762 q2.2763  formal_fv :  
Let Td1321.4283
	AppDir o_param_x.2565 m.2760 )
	Let p0.4275
		FSub q0.2761 Td1321.4283
		Let Td1322.4282
			AppDir o_param_y.2567 m.2760 )
			Let p1.4276
				FSub q1.2762 Td1322.4282
				Let Td1323.4281
					AppDir o_param_z.2569 m.2760 )
					Let p2.4277
						FSub q2.2763 Td1323.4281
						Let m_shape.4278
							AppDir o_form.2549 m.2760 )
							Let Ti1324.4279
								Int:1
								IfEq m_shape.4278 Ti1324.4279
									AppDir is_rect_outside.2744 m.2760 p0.4275 p1.4276 p2.4277 )
									Let Ti1325.4280
										Int:2
										IfEq m_shape.4278 Ti1325.4280
											AppDir is_plane_outside.2749 m.2760 p0.4275 p1.4276 p2.4277 )
											AppDir is_second_outside.2754 m.2760 p0.4275 p1.4276 p2.4277 )
name : check_all_inside.2764 args : ofs.2765 iand.2766 q0.2767 q1.2768 q2.2769  formal_fv : objects.2444  
Let head.4267
	Get iand.2766 ofs.2765
	Let Ti1315.4268
		Int:-1
		IfEq head.4267 Ti1315.4268
			Int:1
			Let Tt1316.4273
				Get objects.2444 head.4267
				Let Tb1317.4269
					AppDir is_outside.2759 Tt1316.4273 q0.2767 q1.2768 q2.2769 )
					Let Ti1318.4270
						Int:0
						IfEq Tb1317.4269 Ti1318.4270
							Let Ti1319.4272
								Int:1
								Let Ti1320.4271
									Add ofs.2765 Ti1319.4272
									AppCls check_all_inside.2764 Ti1320.4271 iand.2766 q0.2767 q1.2768 q2.2769 )
							Int:0
name : shadow_check_and_group.2770 args : iand_ofs.2771 and_group.2772  formal_fv : check_all_inside.2764 intersection_point.2454 light.2447 light_dirvec.2470 objects.2444 solver_dist.2451 solver_fast.2704  
Let Ti1280.4226
	Get and_group.2772 iand_ofs.2771
	Let Ti1282.4227
		Int:-1
		IfEq Ti1280.4226 Ti1282.4227
			Int:0
			Let obj.4228
				Get and_group.2772 iand_ofs.2771
				Let t0.4229
					AppCls solver_fast.2704 obj.4228 light_dirvec.2470 intersection_point.2454 )
					Let Ti1283.4265
						Int:0
						Let t0p.4230
							Get solver_dist.2451 Ti1283.4265
							Let Ti1284.4263
								Int:0
								Let Ti1286.4231
									IfEq t0.4229 Ti1284.4263
										Int:0
										Let Td1285.4264
											Float:-0.200000
											AppDir fless.2487 t0p.4230 Td1285.4264 )
									Let Ti1287.4232
										Int:0
										IfEq Ti1286.4231 Ti1287.4232
											Let Tt1288.4262
												Get objects.2444 obj.4228
												Let Tb1289.4258
													AppDir o_isinvert.2553 Tt1288.4262 )
													Let Ti1290.4259
														Int:0
														IfEq Tb1289.4258 Ti1290.4259
															Int:0
															Let Ti1291.4261
																Int:1
																Let Ti1292.4260
																	Add iand_ofs.2771 Ti1291.4261
																	AppCls shadow_check_and_group.2770 Ti1292.4260 and_group.2772 )
											Let Td1293.4257
												Float:0.010000
												Let t.4233
													FAdd t0p.4230 Td1293.4257
													Let Ti1294.4256
														Int:0
														Let Td1295.4255
															Get light.2447 Ti1294.4256
															Let Td1296.4252
																FMul Td1295.4255 t.4233
																Let Ti1297.4254
																	Int:0
																	Let Td1298.4253
																		Get intersection_point.2454 Ti1297.4254
																		Let q0.4234
																			FAdd Td1296.4252 Td1298.4253
																			Let Ti1299.4251
																				Int:1
																				Let Td1300.4250
																					Get light.2447 Ti1299.4251
																					Let Td1301.4247
																						FMul Td1300.4250 t.4233
																						Let Ti1302.4249
																							Int:1
																							Let Td1303.4248
																								Get intersection_point.2454 Ti1302.4249
																								Let q1.4235
																									FAdd Td1301.4247 Td1303.4248
																									Let Ti1304.4246
																										Int:2
																										Let Td1305.4245
																											Get light.2447 Ti1304.4246
																											Let Td1306.4242
																												FMul Td1305.4245 t.4233
																												Let Ti1307.4244
																													Int:2
																													Let Td1308.4243
																														Get intersection_point.2454 Ti1307.4244
																														Let q2.4236
																															FAdd Td1306.4242 Td1308.4243
																															Let Ti1309.4241
																																Int:0
																																Let Tb1310.4237
																																	AppCls check_all_inside.2764 Ti1309.4241 and_group.2772 q0.4234 q1.4235 q2.4236 )
																																	Let Ti1311.4238
																																		Int:0
																																		IfEq Tb1310.4237 Ti1311.4238
																																			Let Ti1312.4240
																																				Int:1
																																				Let Ti1313.4239
																																					Add iand_ofs.2771 Ti1312.4240
																																					AppCls shadow_check_and_group.2770 Ti1313.4239 and_group.2772 )
																																			Int:1
name : shadow_check_one_or_group.2773 args : ofs.2774 or_group.2775  formal_fv : and_net.2449 shadow_check_and_group.2770  
Let head.4217
	Get or_group.2775 ofs.2774
	Let Ti1275.4218
		Int:-1
		IfEq head.4217 Ti1275.4218
			Int:0
			Let and_group.4219
				Get and_net.2449 head.4217
				Let Ti1276.4224
					Int:0
					Let shadow_p.4220
						AppCls shadow_check_and_group.2770 Ti1276.4224 and_group.4219 )
						Let Ti1277.4221
							Int:0
							IfEq shadow_p.4220 Ti1277.4221
								Let Ti1278.4223
									Int:1
									Let Ti1279.4222
										Add ofs.2774 Ti1278.4223
										AppCls shadow_check_one_or_group.2773 Ti1279.4222 or_group.2775 )
								Int:1
name : shadow_check_one_or_matrix.2776 args : ofs.2777 or_matrix.2778  formal_fv : intersection_point.2454 light_dirvec.2470 shadow_check_one_or_group.2773 solver_dist.2451 solver_fast.2704  
Let head.4192
	Get or_matrix.2778 ofs.2777
	Let Ti1252.4216
		Int:0
		Let range_primitive.4193
			Get head.4192 Ti1252.4216
			Let Ti1254.4194
				Int:-1
				IfEq range_primitive.4193 Ti1254.4194
					Int:0
					Let Ti1255.4204
						Int:99
						Let Ti1265.4195
							IfEq range_primitive.4193 Ti1255.4204
								Int:1
								Let t.4205
									AppCls solver_fast.2704 range_primitive.4193 light_dirvec.2470 intersection_point.2454 )
									Let Ti1256.4206
										Int:0
										IfEq t.4205 Ti1256.4206
											Int:0
											Let Ti1257.4214
												Int:0
												Let Td1258.4212
													Get solver_dist.2451 Ti1257.4214
													Let Td1259.4213
														Float:-0.100000
														Let Tb1260.4207
															AppDir fless.2487 Td1258.4212 Td1259.4213 )
															Let Ti1261.4208
																Int:0
																IfEq Tb1260.4207 Ti1261.4208
																	Int:0
																	Let Ti1262.4211
																		Int:1
																		Let Tb1263.4209
																			AppCls shadow_check_one_or_group.2773 Ti1262.4211 head.4192 )
																			Let Ti1264.4210
																				Int:0
																				IfEq Tb1263.4209 Ti1264.4210
																					Int:0
																					Int:1
							Let Ti1266.4196
								Int:0
								IfEq Ti1265.4195 Ti1266.4196
									Let Ti1267.4203
										Int:1
										Let Ti1268.4202
											Add ofs.2777 Ti1267.4203
											AppCls shadow_check_one_or_matrix.2776 Ti1268.4202 or_matrix.2778 )
									Let Ti1269.4201
										Int:1
										Let Tb1270.4197
											AppCls shadow_check_one_or_group.2773 Ti1269.4201 head.4192 )
											Let Ti1271.4198
												Int:0
												IfEq Tb1270.4197 Ti1271.4198
													Let Ti1272.4200
														Int:1
														Let Ti1273.4199
															Add ofs.2777 Ti1272.4200
															AppCls shadow_check_one_or_matrix.2776 Ti1273.4199 or_matrix.2778 )
													Int:1
name : solve_each_element.2779 args : iand_ofs.2780 and_group.2781 dirvec.2782  formal_fv : check_all_inside.2764 intersected_object_id.2455 intersection_point.2454 intsec_rectside.2452 objects.2444 solver.2681 solver_dist.2451 startp.2463 tmin.2453  
Let iobj.4141
	Get and_group.2781 iand_ofs.2780
	Let Ti1213.4142
		Int:-1
		IfEq iobj.4141 Ti1213.4142
			Unit
			Let t0.4143
				AppCls solver.2681 iobj.4141 dirvec.2782 startp.2463 )
				Let Ti1214.4144
					Int:0
					IfEq t0.4143 Ti1214.4144
						Let Tt1215.4190
							Get objects.2444 iobj.4141
							Let Tb1216.4186
								AppDir o_isinvert.2553 Tt1215.4190 )
								Let Ti1217.4187
									Int:0
									IfEq Tb1216.4186 Ti1217.4187
										Unit
										Let Ti1218.4189
											Int:1
											Let Ti1219.4188
												Add iand_ofs.2780 Ti1218.4189
												AppCls solve_each_element.2779 Ti1219.4188 and_group.2781 dirvec.2782 )
						Let Ti1220.4185
							Int:0
							Let t0p.4145
								Get solver_dist.2451 Ti1220.4185
								Let Td1221.4184
									Float:0.000000
									Let Tb1222.4149
										AppDir fless.2487 Td1221.4184 t0p.4145 )
										Let Ti1223.4150
											Int:0
											Let Tu109.4146
												IfEq Tb1222.4149 Ti1223.4150
													Unit
													Let Ti1224.4183
														Int:0
														Let Td1225.4182
															Get tmin.2453 Ti1224.4183
															Let Tb1226.4151
																AppDir fless.2487 t0p.4145 Td1225.4182 )
																Let Ti1227.4152
																	Int:0
																	IfEq Tb1226.4151 Ti1227.4152
																		Unit
																		Let Td1228.4181
																			Float:0.010000
																			Let t.4153
																				FAdd t0p.4145 Td1228.4181
																				Let Ti1229.4180
																					Int:0
																					Let Td1230.4179
																						Get dirvec.2782 Ti1229.4180
																						Let Td1231.4176
																							FMul Td1230.4179 t.4153
																							Let Ti1232.4178
																								Int:0
																								Let Td1233.4177
																									Get startp.2463 Ti1232.4178
																									Let q0.4154
																										FAdd Td1231.4176 Td1233.4177
																										Let Ti1234.4175
																											Int:1
																											Let Td1235.4174
																												Get dirvec.2782 Ti1234.4175
																												Let Td1236.4171
																													FMul Td1235.4174 t.4153
																													Let Ti1237.4173
																														Int:1
																														Let Td1238.4172
																															Get startp.2463 Ti1237.4173
																															Let q1.4155
																																FAdd Td1236.4171 Td1238.4172
																																Let Ti1239.4170
																																	Int:2
																																	Let Td1240.4169
																																		Get dirvec.2782 Ti1239.4170
																																		Let Td1241.4166
																																			FMul Td1240.4169 t.4153
																																			Let Ti1242.4168
																																				Int:2
																																				Let Td1243.4167
																																					Get startp.2463 Ti1242.4168
																																					Let q2.4156
																																						FAdd Td1241.4166 Td1243.4167
																																						Let Ti1244.4165
																																							Int:0
																																							Let Tb1245.4157
																																								AppCls check_all_inside.2764 Ti1244.4165 and_group.2781 q0.4154 q1.4155 q2.4156 )
																																								Let Ti1246.4158
																																									Int:0
																																									IfEq Tb1245.4157 Ti1246.4158
																																										Unit
																																										Let Ti1247.4164
																																											Int:0
																																											Let Tu108.4159
																																												Put tmin.2453 Ti1247.4164 t.4153
																																												Let Tu107.4160
																																													AppDir vecset.2501 intersection_point.2454 q0.4154 q1.4155 q2.4156 )
																																													Let Ti1248.4163
																																														Int:0
																																														Let Tu106.4161
																																															Put intersected_object_id.2455 Ti1248.4163 iobj.4141
																																															Let Ti1249.4162
																																																Int:0
																																																Put intsec_rectside.2452 Ti1249.4162 t0.4143
												Let Ti1250.4148
													Int:1
													Let Ti1251.4147
														Add iand_ofs.2780 Ti1250.4148
														AppCls solve_each_element.2779 Ti1251.4147 and_group.2781 dirvec.2782 )
name : solve_one_or_network.2783 args : ofs.2784 or_group.2785 dirvec.2786  formal_fv : and_net.2449 solve_each_element.2779  
Let head.4133
	Get or_group.2785 ofs.2784
	Let Ti1208.4134
		Int:-1
		IfEq head.4133 Ti1208.4134
			Unit
			Let and_group.4135
				Get and_net.2449 head.4133
				Let Ti1209.4139
					Int:0
					Let Tu110.4136
						AppCls solve_each_element.2779 Ti1209.4139 and_group.4135 dirvec.2786 )
						Let Ti1210.4138
							Int:1
							Let Ti1211.4137
								Add ofs.2784 Ti1210.4138
								AppCls solve_one_or_network.2783 Ti1211.4137 or_group.2785 dirvec.2786 )
name : trace_or_matrix.2787 args : ofs.2788 or_network.2789 dirvec.2790  formal_fv : solve_one_or_network.2783 solver.2681 solver_dist.2451 startp.2463 tmin.2453  
Let head.4114
	Get or_network.2789 ofs.2788
	Let Ti1193.4132
		Int:0
		Let range_primitive.4115
			Get head.4114 Ti1193.4132
			Let Ti1195.4116
				Int:-1
				IfEq range_primitive.4115 Ti1195.4116
					Unit
					Let Ti1196.4120
						Int:99
						Let Tu111.4117
							IfEq range_primitive.4115 Ti1196.4120
								Let Ti1197.4130
									Int:1
									AppCls solve_one_or_network.2783 Ti1197.4130 head.4114 dirvec.2790 )
								Let t.4121
									AppCls solver.2681 range_primitive.4115 dirvec.2790 startp.2463 )
									Let Ti1198.4122
										Int:0
										IfEq t.4121 Ti1198.4122
											Unit
											Let Ti1199.4129
												Int:0
												Let tp.4123
													Get solver_dist.2451 Ti1199.4129
													Let Ti1200.4128
														Int:0
														Let Td1201.4127
															Get tmin.2453 Ti1200.4128
															Let Tb1202.4124
																AppDir fless.2487 tp.4123 Td1201.4127 )
																Let Ti1203.4125
																	Int:0
																	IfEq Tb1202.4124 Ti1203.4125
																		Unit
																		Let Ti1204.4126
																			Int:1
																			AppCls solve_one_or_network.2783 Ti1204.4126 head.4114 dirvec.2790 )
							Let Ti1205.4119
								Int:1
								Let Ti1206.4118
									Add ofs.2788 Ti1205.4119
									AppCls trace_or_matrix.2787 Ti1206.4118 or_network.2789 dirvec.2790 )
name : judge_intersection.2791 args : dirvec.2792  formal_fv : or_net.2450 tmin.2453 trace_or_matrix.2787  
Let Ti1183.4112
	Int:0
	Let Td1184.4113
		Float:1000000000.000000
		Let Tu113.4101
			Put tmin.2453 Ti1183.4112 Td1184.4113
			Let Ti1185.4109
				Int:0
				Let Ti1186.4111
					Int:0
					Let Ta1187.4110
						Get or_net.2450 Ti1186.4111
						Let Tu112.4102
							AppCls trace_or_matrix.2787 Ti1185.4109 Ta1187.4110 dirvec.2792 )
							Let Ti1188.4108
								Int:0
								Let t.4103
									Get tmin.2453 Ti1188.4108
									Let Td1189.4107
										Float:-0.100000
										Let Tb1190.4104
											AppDir fless.2487 Td1189.4107 t.4103 )
											Let Ti1191.4105
												Int:0
												IfEq Tb1190.4104 Ti1191.4105
													Int:0
													Let Td1192.4106
														Float:100000000.000000
														AppDir fless.2487 t.4103 Td1192.4106 )
name : solve_each_element_fast.2793 args : iand_ofs.2794 and_group.2795 dirvec.2796  formal_fv : check_all_inside.2764 intersected_object_id.2455 intersection_point.2454 intsec_rectside.2452 objects.2444 solver_dist.2451 solver_fast2.2722 startp_fast.2464 tmin.2453  
Let vec.4049
	AppDir d_vec.2608 dirvec.2796 )
	Let iobj.4050
		Get and_group.2795 iand_ofs.2794
		Let Ti1144.4051
			Int:-1
			IfEq iobj.4050 Ti1144.4051
				Unit
				Let t0.4052
					AppCls solver_fast2.2722 iobj.4050 dirvec.2796 )
					Let Ti1145.4053
						Int:0
						IfEq t0.4052 Ti1145.4053
							Let Tt1146.4099
								Get objects.2444 iobj.4050
								Let Tb1147.4095
									AppDir o_isinvert.2553 Tt1146.4099 )
									Let Ti1148.4096
										Int:0
										IfEq Tb1147.4095 Ti1148.4096
											Unit
											Let Ti1149.4098
												Int:1
												Let Ti1150.4097
													Add iand_ofs.2794 Ti1149.4098
													AppCls solve_each_element_fast.2793 Ti1150.4097 and_group.2795 dirvec.2796 )
							Let Ti1151.4094
								Int:0
								Let t0p.4054
									Get solver_dist.2451 Ti1151.4094
									Let Td1152.4093
										Float:0.000000
										Let Tb1153.4058
											AppDir fless.2487 Td1152.4093 t0p.4054 )
											Let Ti1154.4059
												Int:0
												Let Tu117.4055
													IfEq Tb1153.4058 Ti1154.4059
														Unit
														Let Ti1155.4092
															Int:0
															Let Td1156.4091
																Get tmin.2453 Ti1155.4092
																Let Tb1157.4060
																	AppDir fless.2487 t0p.4054 Td1156.4091 )
																	Let Ti1158.4061
																		Int:0
																		IfEq Tb1157.4060 Ti1158.4061
																			Unit
																			Let Td1159.4090
																				Float:0.010000
																				Let t.4062
																					FAdd t0p.4054 Td1159.4090
																					Let Ti1160.4089
																						Int:0
																						Let Td1161.4088
																							Get vec.4049 Ti1160.4089
																							Let Td1162.4085
																								FMul Td1161.4088 t.4062
																								Let Ti1163.4087
																									Int:0
																									Let Td1164.4086
																										Get startp_fast.2464 Ti1163.4087
																										Let q0.4063
																											FAdd Td1162.4085 Td1164.4086
																											Let Ti1165.4084
																												Int:1
																												Let Td1166.4083
																													Get vec.4049 Ti1165.4084
																													Let Td1167.4080
																														FMul Td1166.4083 t.4062
																														Let Ti1168.4082
																															Int:1
																															Let Td1169.4081
																																Get startp_fast.2464 Ti1168.4082
																																Let q1.4064
																																	FAdd Td1167.4080 Td1169.4081
																																	Let Ti1170.4079
																																		Int:2
																																		Let Td1171.4078
																																			Get vec.4049 Ti1170.4079
																																			Let Td1172.4075
																																				FMul Td1171.4078 t.4062
																																				Let Ti1173.4077
																																					Int:2
																																					Let Td1174.4076
																																						Get startp_fast.2464 Ti1173.4077
																																						Let q2.4065
																																							FAdd Td1172.4075 Td1174.4076
																																							Let Ti1175.4074
																																								Int:0
																																								Let Tb1176.4066
																																									AppCls check_all_inside.2764 Ti1175.4074 and_group.2795 q0.4063 q1.4064 q2.4065 )
																																									Let Ti1177.4067
																																										Int:0
																																										IfEq Tb1176.4066 Ti1177.4067
																																											Unit
																																											Let Ti1178.4073
																																												Int:0
																																												Let Tu116.4068
																																													Put tmin.2453 Ti1178.4073 t.4062
																																													Let Tu115.4069
																																														AppDir vecset.2501 intersection_point.2454 q0.4063 q1.4064 q2.4065 )
																																														Let Ti1179.4072
																																															Int:0
																																															Let Tu114.4070
																																																Put intersected_object_id.2455 Ti1179.4072 iobj.4050
																																																Let Ti1180.4071
																																																	Int:0
																																																	Put intsec_rectside.2452 Ti1180.4071 t0.4052
													Let Ti1181.4057
														Int:1
														Let Ti1182.4056
															Add iand_ofs.2794 Ti1181.4057
															AppCls solve_each_element_fast.2793 Ti1182.4056 and_group.2795 dirvec.2796 )
name : solve_one_or_network_fast.2797 args : ofs.2798 or_group.2799 dirvec.2800  formal_fv : and_net.2449 solve_each_element_fast.2793  
Let head.4041
	Get or_group.2799 ofs.2798
	Let Ti1139.4042
		Int:-1
		IfEq head.4041 Ti1139.4042
			Unit
			Let and_group.4043
				Get and_net.2449 head.4041
				Let Ti1140.4047
					Int:0
					Let Tu118.4044
						AppCls solve_each_element_fast.2793 Ti1140.4047 and_group.4043 dirvec.2800 )
						Let Ti1141.4046
							Int:1
							Let Ti1142.4045
								Add ofs.2798 Ti1141.4046
								AppCls solve_one_or_network_fast.2797 Ti1142.4045 or_group.2799 dirvec.2800 )
name : trace_or_matrix_fast.2801 args : ofs.2802 or_network.2803 dirvec.2804  formal_fv : solve_one_or_network_fast.2797 solver_dist.2451 solver_fast2.2722 tmin.2453  
Let head.4022
	Get or_network.2803 ofs.2802
	Let Ti1124.4040
		Int:0
		Let range_primitive.4023
			Get head.4022 Ti1124.4040
			Let Ti1126.4024
				Int:-1
				IfEq range_primitive.4023 Ti1126.4024
					Unit
					Let Ti1127.4028
						Int:99
						Let Tu119.4025
							IfEq range_primitive.4023 Ti1127.4028
								Let Ti1128.4038
									Int:1
									AppCls solve_one_or_network_fast.2797 Ti1128.4038 head.4022 dirvec.2804 )
								Let t.4029
									AppCls solver_fast2.2722 range_primitive.4023 dirvec.2804 )
									Let Ti1129.4030
										Int:0
										IfEq t.4029 Ti1129.4030
											Unit
											Let Ti1130.4037
												Int:0
												Let tp.4031
													Get solver_dist.2451 Ti1130.4037
													Let Ti1131.4036
														Int:0
														Let Td1132.4035
															Get tmin.2453 Ti1131.4036
															Let Tb1133.4032
																AppDir fless.2487 tp.4031 Td1132.4035 )
																Let Ti1134.4033
																	Int:0
																	IfEq Tb1133.4032 Ti1134.4033
																		Unit
																		Let Ti1135.4034
																			Int:1
																			AppCls solve_one_or_network_fast.2797 Ti1135.4034 head.4022 dirvec.2804 )
							Let Ti1136.4027
								Int:1
								Let Ti1137.4026
									Add ofs.2802 Ti1136.4027
									AppCls trace_or_matrix_fast.2801 Ti1137.4026 or_network.2803 dirvec.2804 )
name : judge_intersection_fast.2805 args : dirvec.2806  formal_fv : or_net.2450 tmin.2453 trace_or_matrix_fast.2801  
Let Ti1114.4020
	Int:0
	Let Td1115.4021
		Float:1000000000.000000
		Let Tu121.4009
			Put tmin.2453 Ti1114.4020 Td1115.4021
			Let Ti1116.4017
				Int:0
				Let Ti1117.4019
					Int:0
					Let Ta1118.4018
						Get or_net.2450 Ti1117.4019
						Let Tu120.4010
							AppCls trace_or_matrix_fast.2801 Ti1116.4017 Ta1118.4018 dirvec.2806 )
							Let Ti1119.4016
								Int:0
								Let t.4011
									Get tmin.2453 Ti1119.4016
									Let Td1120.4015
										Float:-0.100000
										Let Tb1121.4012
											AppDir fless.2487 Td1120.4015 t.4011 )
											Let Ti1122.4013
												Int:0
												IfEq Tb1121.4012 Ti1122.4013
													Int:0
													Let Td1123.4014
														Float:100000000.000000
														AppDir fless.2487 t.4011 Td1123.4014 )
name : get_nvector_rect.2807 args : dirvec.2808  formal_fv : intsec_rectside.2452 nvector.2456  
Let Ti1106.4008
	Int:0
	Let rectside.3999
		Get intsec_rectside.2452 Ti1106.4008
		Let Tu122.4000
			AppDir vecbzero.2509 nvector.2456 )
			Let Ti1107.4007
				Int:1
				Let Ti1108.4001
					Sub rectside.3999 Ti1107.4007
					Let Ti1109.4006
						Int:1
						Let Ti1110.4005
							Sub rectside.3999 Ti1109.4006
							Let Td1111.4004
								Get dirvec.2808 Ti1110.4005
								Let Td1112.4003
									AppDir sgn.2493 Td1111.4004 )
									Let Td1113.4002
										AppDir fneg.2473 Td1112.4003 )
										Put nvector.2456 Ti1108.4001 Td1113.4002
name : get_nvector_plane.2809 args : m.2810  formal_fv : nvector.2456  
Let Ti1097.3996
	Int:0
	Let Td1098.3998
		AppDir o_param_a.2557 m.2810 )
		Let Td1099.3997
			AppDir fneg.2473 Td1098.3998 )
			Let Tu124.3988
				Put nvector.2456 Ti1097.3996 Td1099.3997
				Let Ti1100.3993
					Int:1
					Let Td1101.3995
						AppDir o_param_b.2559 m.2810 )
						Let Td1102.3994
							AppDir fneg.2473 Td1101.3995 )
							Let Tu123.3989
								Put nvector.2456 Ti1100.3993 Td1102.3994
								Let Ti1103.3990
									Int:2
									Let Td1104.3992
										AppDir o_param_c.2561 m.2810 )
										Let Td1105.3991
											AppDir fneg.2473 Td1104.3992 )
											Put nvector.2456 Ti1103.3990 Td1105.3991
name : get_nvector_second.2811 args : m.2812  formal_fv : intersection_point.2454 nvector.2456  
Let Ti1055.3987
	Int:0
	Let Td1056.3985
		Get intersection_point.2454 Ti1055.3987
		Let Td1057.3986
			AppDir o_param_x.2565 m.2812 )
			Let p0.3935
				FSub Td1056.3985 Td1057.3986
				Let Ti1058.3984
					Int:1
					Let Td1059.3982
						Get intersection_point.2454 Ti1058.3984
						Let Td1060.3983
							AppDir o_param_y.2567 m.2812 )
							Let p1.3936
								FSub Td1059.3982 Td1060.3983
								Let Ti1061.3981
									Int:2
									Let Td1062.3979
										Get intersection_point.2454 Ti1061.3981
										Let Td1063.3980
											AppDir o_param_z.2569 m.2812 )
											Let p2.3937
												FSub Td1062.3979 Td1063.3980
												Let Td1064.3978
													AppDir o_param_a.2557 m.2812 )
													Let d0.3938
														FMul p0.3935 Td1064.3978
														Let Td1065.3977
															AppDir o_param_b.2559 m.2812 )
															Let d1.3939
																FMul p1.3936 Td1065.3977
																Let Td1066.3976
																	AppDir o_param_c.2561 m.2812 )
																	Let d2.3940
																		FMul p2.3937 Td1066.3976
																		Let Ti1067.3943
																			AppDir o_isrot.2555 m.2812 )
																			Let Ti1068.3944
																				Int:0
																				Let Tu129.3941
																					IfEq Ti1067.3943 Ti1068.3944
																						Let Ti1069.3975
																							Int:0
																							Let Tu126.3971
																								Put nvector.2456 Ti1069.3975 d0.3938
																								Let Ti1070.3974
																									Int:1
																									Let Tu125.3972
																										Put nvector.2456 Ti1070.3974 d1.3939
																										Let Ti1071.3973
																											Int:2
																											Put nvector.2456 Ti1071.3973 d2.3940
																						Let Ti1072.3963
																							Int:0
																							Let Td1073.3970
																								AppDir o_param_r3.2585 m.2812 )
																								Let Td1074.3967
																									FMul p1.3936 Td1073.3970
																									Let Td1075.3969
																										AppDir o_param_r2.2583 m.2812 )
																										Let Td1076.3968
																											FMul p2.3937 Td1075.3969
																											Let Td1077.3966
																												FAdd Td1074.3967 Td1076.3968
																												Let Td1078.3965
																													AppDir fhalf.2481 Td1077.3966 )
																													Let Td1079.3964
																														FAdd d0.3938 Td1078.3965
																														Let Tu128.3945
																															Put nvector.2456 Ti1072.3963 Td1079.3964
																															Let Ti1080.3955
																																Int:1
																																Let Td1081.3962
																																	AppDir o_param_r3.2585 m.2812 )
																																	Let Td1082.3959
																																		FMul p0.3935 Td1081.3962
																																		Let Td1083.3961
																																			AppDir o_param_r1.2581 m.2812 )
																																			Let Td1084.3960
																																				FMul p2.3937 Td1083.3961
																																				Let Td1085.3958
																																					FAdd Td1082.3959 Td1084.3960
																																					Let Td1086.3957
																																						AppDir fhalf.2481 Td1085.3958 )
																																						Let Td1087.3956
																																							FAdd d1.3939 Td1086.3957
																																							Let Tu127.3946
																																								Put nvector.2456 Ti1080.3955 Td1087.3956
																																								Let Ti1088.3947
																																									Int:2
																																									Let Td1089.3954
																																										AppDir o_param_r2.2583 m.2812 )
																																										Let Td1090.3951
																																											FMul p0.3935 Td1089.3954
																																											Let Td1091.3953
																																												AppDir o_param_r1.2581 m.2812 )
																																												Let Td1092.3952
																																													FMul p1.3936 Td1091.3953
																																													Let Td1093.3950
																																														FAdd Td1090.3951 Td1092.3952
																																														Let Td1094.3949
																																															AppDir fhalf.2481 Td1093.3950 )
																																															Let Td1095.3948
																																																FAdd d2.3940 Td1094.3949
																																																Put nvector.2456 Ti1088.3947 Td1095.3948
																					Let Tb1096.3942
																						AppDir o_isinvert.2553 m.2812 )
																						AppDir vecunit_sgn.2519 nvector.2456 Tb1096.3942 )
name : get_nvector.2813 args : m.2814 dirvec.2815  formal_fv : get_nvector_plane.2809 get_nvector_rect.2807 get_nvector_second.2811  
Let m_shape.3932
	AppDir o_form.2549 m.2814 )
	Let Ti1053.3933
		Int:1
		IfEq m_shape.3932 Ti1053.3933
			AppCls get_nvector_rect.2807 dirvec.2815 )
			Let Ti1054.3934
				Int:2
				IfEq m_shape.3932 Ti1054.3934
					AppCls get_nvector_plane.2809 m.2814 )
					AppCls get_nvector_second.2811 m.2814 )
name : utexture.2816 args : m.2817 p.2818  formal_fv : texture_color.2457  
Let m_tex.3772
	AppDir o_texturetype.2547 m.2817 )
	Let Ti923.3930
		Int:0
		Let Td924.3931
			AppDir o_color_red.2575 m.2817 )
			Let Tu134.3773
				Put texture_color.2457 Ti923.3930 Td924.3931
				Let Ti925.3928
					Int:1
					Let Td926.3929
						AppDir o_color_green.2577 m.2817 )
						Let Tu133.3774
							Put texture_color.2457 Ti925.3928 Td926.3929
							Let Ti927.3926
								Int:2
								Let Td928.3927
									AppDir o_color_blue.2579 m.2817 )
									Let Tu132.3775
										Put texture_color.2457 Ti927.3926 Td928.3927
										Let Ti929.3776
											Int:1
											IfEq m_tex.3772 Ti929.3776
												Let Ti930.3925
													Int:0
													Let Td931.3923
														Get p.2818 Ti930.3925
														Let Td932.3924
															AppDir o_param_x.2565 m.2817 )
															Let w1.3897
																FSub Td931.3923 Td932.3924
																Let Td933.3922
																	Float:0.050000
																	Let Td934.3921
																		FMul w1.3897 Td933.3922
																		Let Td935.3919
																			AppDir min_caml_floor Td934.3921 )
																			Let Td936.3920
																				Float:20.000000
																				Let d1.3916
																					FMul Td935.3919 Td936.3920
																					Let Td937.3917
																						FSub w1.3897 d1.3916
																						Let Td938.3918
																							Float:10.000000
																							Let flag1.3898
																								AppDir fless.2487 Td937.3917 Td938.3918 )
																								Let Ti939.3915
																									Int:2
																									Let Td940.3913
																										Get p.2818 Ti939.3915
																										Let Td941.3914
																											AppDir o_param_z.2569 m.2817 )
																											Let w3.3899
																												FSub Td940.3913 Td941.3914
																												Let Td942.3912
																													Float:0.050000
																													Let Td943.3911
																														FMul w3.3899 Td942.3912
																														Let Td944.3909
																															AppDir min_caml_floor Td943.3911 )
																															Let Td945.3910
																																Float:20.000000
																																Let d2.3906
																																	FMul Td944.3909 Td945.3910
																																	Let Td946.3907
																																		FSub w3.3899 d2.3906
																																		Let Td947.3908
																																			Float:10.000000
																																			Let flag2.3900
																																				AppDir fless.2487 Td946.3907 Td947.3908 )
																																				Let Ti948.3901
																																					Int:1
																																					Let Ti949.3903
																																						Int:0
																																						Let Td952.3902
																																							IfEq flag1.3898 Ti949.3903
																																								Let Ti950.3905
																																									Int:0
																																									IfEq flag2.3900 Ti950.3905
																																										Float:255.000000
																																										Float:0.000000
																																								Let Ti951.3904
																																									Int:0
																																									IfEq flag2.3900 Ti951.3904
																																										Float:0.000000
																																										Float:255.000000
																																							Put texture_color.2457 Ti948.3901 Td952.3902
												Let Ti953.3777
													Int:2
													IfEq m_tex.3772 Ti953.3777
														Let Ti954.3896
															Int:1
															Let Td955.3894
																Get p.2818 Ti954.3896
																Let Td956.3895
																	Float:0.250000
																	Let Td957.3893
																		FMul Td955.3894 Td956.3895
																		Let Td958.3892
																			AppDir min_caml_sin Td957.3893 )
																			Let w2.3882
																				AppDir fsqr.2483 Td958.3892 )
																				Let Ti959.3889
																					Int:0
																					Let Td960.3891
																						Float:255.000000
																						Let Td961.3890
																							FMul Td960.3891 w2.3882
																							Let Tu130.3883
																								Put texture_color.2457 Ti959.3889 Td961.3890
																								Let Ti962.3884
																									Int:1
																									Let Td963.3886
																										Float:255.000000
																										Let Td964.3888
																											Float:1.000000
																											Let Td965.3887
																												FSub Td964.3888 w2.3882
																												Let Td966.3885
																													FMul Td963.3886 Td965.3887
																													Put texture_color.2457 Ti962.3884 Td966.3885
														Let Ti967.3778
															Int:3
															IfEq m_tex.3772 Ti967.3778
																Let Ti968.3881
																	Int:0
																	Let Td969.3879
																		Get p.2818 Ti968.3881
																		Let Td970.3880
																			AppDir o_param_x.2565 m.2817 )
																			Let w1.3852
																				FSub Td969.3879 Td970.3880
																				Let Ti971.3878
																					Int:2
																					Let Td972.3876
																						Get p.2818 Ti971.3878
																						Let Td973.3877
																							AppDir o_param_z.2569 m.2817 )
																							Let w3.3853
																								FSub Td972.3876 Td973.3877
																								Let Td974.3874
																									AppDir fsqr.2483 w1.3852 )
																									Let Td975.3875
																										AppDir fsqr.2483 w3.3853 )
																										Let Td976.3873
																											FAdd Td974.3874 Td975.3875
																											Let Td977.3870
																												AppDir min_caml_sqrt Td976.3873 )
																												Let Td978.3871
																													Float:10.000000
																													Let Td979.3872
																														FReciprocal Td978.3871
																														Let w2.3854
																															FMul Td977.3870 Td979.3872
																															Let Td980.3869
																																AppDir min_caml_floor w2.3854 )
																																Let Td981.3867
																																	FSub w2.3854 Td980.3869
																																	Let Td982.3868
																																		Float:3.141593
																																		Let w4.3855
																																			FMul Td981.3867 Td982.3868
																																			Let Td983.3866
																																				AppDir min_caml_cos w4.3855 )
																																				Let cws.3856
																																					AppDir fsqr.2483 Td983.3866 )
																																					Let Ti984.3863
																																						Int:1
																																						Let Td985.3865
																																							Float:255.000000
																																							Let Td986.3864
																																								FMul cws.3856 Td985.3865
																																								Let Tu131.3857
																																									Put texture_color.2457 Ti984.3863 Td986.3864
																																									Let Ti987.3858
																																										Int:2
																																										Let Td988.3862
																																											Float:1.000000
																																											Let Td989.3860
																																												FSub Td988.3862 cws.3856
																																												Let Td990.3861
																																													Float:255.000000
																																													Let Td991.3859
																																														FMul Td989.3860 Td990.3861
																																														Put texture_color.2457 Ti987.3858 Td991.3859
																Let Ti992.3779
																	Int:4
																	IfEq m_tex.3772 Ti992.3779
																		Let Ti993.3851
																			Int:0
																			Let Td994.3849
																				Get p.2818 Ti993.3851
																				Let Td995.3850
																					AppDir o_param_x.2565 m.2817 )
																					Let Td996.3846
																						FSub Td994.3849 Td995.3850
																						Let Td997.3848
																							AppDir o_param_a.2557 m.2817 )
																							Let Td998.3847
																								AppDir min_caml_sqrt Td997.3848 )
																								Let w1.3780
																									FMul Td996.3846 Td998.3847
																									Let Ti999.3845
																										Int:2
																										Let Td1000.3843
																											Get p.2818 Ti999.3845
																											Let Td1001.3844
																												AppDir o_param_z.2569 m.2817 )
																												Let Td1002.3840
																													FSub Td1000.3843 Td1001.3844
																													Let Td1003.3842
																														AppDir o_param_c.2561 m.2817 )
																														Let Td1004.3841
																															AppDir min_caml_sqrt Td1003.3842 )
																															Let w3.3781
																																FMul Td1002.3840 Td1004.3841
																																Let Td1005.3838
																																	AppDir fsqr.2483 w1.3780 )
																																	Let Td1006.3839
																																		AppDir fsqr.2483 w3.3781 )
																																		Let w4.3782
																																			FAdd Td1005.3838 Td1006.3839
																																			Let Td1007.3836
																																				AppDir fabs.2485 w1.3780 )
																																				Let Td1008.3837
																																					Float:0.000100
																																					Let Tb1009.3826
																																						AppDir fless.2487 Td1007.3836 Td1008.3837 )
																																						Let Ti1010.3827
																																							Int:0
																																							Let w7.3783
																																								IfEq Tb1009.3826 Ti1010.3827
																																									Let Td1011.3835
																																										FReciprocal w1.3780
																																										Let Td1012.3834
																																											FMul w3.3781 Td1011.3835
																																											Let w5.3828
																																												AppDir fabs.2485 Td1012.3834 )
																																												Let Td1013.3832
																																													AppDir min_caml_atan w5.3828 )
																																													Let Td1014.3833
																																														Float:30.000000
																																														Let Td1015.3829
																																															FMul Td1013.3832 Td1014.3833
																																															Let Td1016.3830
																																																Float:3.141593
																																																Let Td1017.3831
																																																	FReciprocal Td1016.3830
																																																	FMul Td1015.3829 Td1017.3831
																																									Float:15.000000
																																								Let Td1018.3825
																																									AppDir min_caml_floor w7.3783 )
																																									Let w9.3784
																																										FSub w7.3783 Td1018.3825
																																										Let Ti1019.3824
																																											Int:1
																																											Let Td1020.3822
																																												Get p.2818 Ti1019.3824
																																												Let Td1021.3823
																																													AppDir o_param_y.2567 m.2817 )
																																													Let Td1022.3819
																																														FSub Td1020.3822 Td1021.3823
																																														Let Td1023.3821
																																															AppDir o_param_b.2559 m.2817 )
																																															Let Td1024.3820
																																																AppDir min_caml_sqrt Td1023.3821 )
																																																Let w2.3785
																																																	FMul Td1022.3819 Td1024.3820
																																																	Let Td1025.3817
																																																		AppDir fabs.2485 w4.3782 )
																																																		Let Td1026.3818
																																																			Float:0.000100
																																																			Let Tb1027.3807
																																																				AppDir fless.2487 Td1025.3817 Td1026.3818 )
																																																				Let Ti1028.3808
																																																					Int:0
																																																					Let w8.3786
																																																						IfEq Tb1027.3807 Ti1028.3808
																																																							Let Td1029.3816
																																																								FReciprocal w4.3782
																																																								Let Td1030.3815
																																																									FMul w2.3785 Td1029.3816
																																																									Let w6.3809
																																																										AppDir fabs.2485 Td1030.3815 )
																																																										Let Td1031.3813
																																																											AppDir min_caml_atan w6.3809 )
																																																											Let Td1032.3814
																																																												Float:30.000000
																																																												Let Td1033.3810
																																																													FMul Td1031.3813 Td1032.3814
																																																													Let Td1034.3811
																																																														Float:3.141593
																																																														Let Td1035.3812
																																																															FReciprocal Td1034.3811
																																																															FMul Td1033.3810 Td1035.3812
																																																							Float:15.000000
																																																						Let Td1036.3806
																																																							AppDir min_caml_floor w8.3786 )
																																																							Let w10.3787
																																																								FSub w8.3786 Td1036.3806
																																																								Let Td1037.3802
																																																									Float:0.150000
																																																									Let Td1038.3805
																																																										Float:0.500000
																																																										Let Td1039.3804
																																																											FSub Td1038.3805 w9.3784
																																																											Let Td1040.3803
																																																												AppDir fsqr.2483 Td1039.3804 )
																																																												Let Td1041.3798
																																																													FSub Td1037.3802 Td1040.3803
																																																													Let Td1042.3801
																																																														Float:0.500000
																																																														Let Td1043.3800
																																																															FSub Td1042.3801 w10.3787
																																																															Let Td1044.3799
																																																																AppDir fsqr.2483 Td1043.3800 )
																																																																Let w11.3788
																																																																	FSub Td1041.3798 Td1044.3799
																																																																	Let Tb1045.3796
																																																																		AppDir fisneg.2477 w11.3788 )
																																																																		Let Ti1046.3797
																																																																			Int:0
																																																																			Let w12.3789
																																																																				IfEq Tb1045.3796 Ti1046.3797
																																																																					Var w11.3788
																																																																					Float:0.000000
																																																																				Let Ti1047.3790
																																																																					Int:2
																																																																					Let Td1048.3795
																																																																						Float:255.000000
																																																																						Let Td1049.3792
																																																																							FMul Td1048.3795 w12.3789
																																																																							Let Td1050.3793
																																																																								Float:0.300000
																																																																								Let Td1051.3794
																																																																									FReciprocal Td1050.3793
																																																																									Let Td1052.3791
																																																																										FMul Td1049.3792 Td1051.3794
																																																																										Put texture_color.2457 Ti1047.3790 Td1052.3791
																		Unit
name : add_light.2819 args : bright.2820 hilight.2821 hilight_scale.2822  formal_fv : rgb.2459 texture_color.2457  
Let Tb905.3770
	AppDir fispos.2475 bright.2820 )
	Let Ti906.3771
		Int:0
		Let Tu137.3750
			IfEq Tb905.3770 Ti906.3771
				Unit
				AppDir vecaccum.2530 rgb.2459 bright.2820 texture_color.2457 )
			Let Tb907.3751
				AppDir fispos.2475 hilight.2821 )
				Let Ti908.3752
					Int:0
					IfEq Tb907.3751 Ti908.3752
						Unit
						Let Td909.3769
							AppDir fsqr.2483 hilight.2821 )
							Let Td910.3768
								AppDir fsqr.2483 Td909.3769 )
								Let ihl.3753
									FMul Td910.3768 hilight_scale.2822
									Let Ti911.3764
										Int:0
										Let Ti912.3767
											Int:0
											Let Td913.3766
												Get rgb.2459 Ti912.3767
												Let Td914.3765
													FAdd Td913.3766 ihl.3753
													Let Tu136.3754
														Put rgb.2459 Ti911.3764 Td914.3765
														Let Ti915.3760
															Int:1
															Let Ti916.3763
																Int:1
																Let Td917.3762
																	Get rgb.2459 Ti916.3763
																	Let Td918.3761
																		FAdd Td917.3762 ihl.3753
																		Let Tu135.3755
																			Put rgb.2459 Ti915.3760 Td918.3761
																			Let Ti919.3756
																				Int:2
																				Let Ti920.3759
																					Int:2
																					Let Td921.3758
																						Get rgb.2459 Ti920.3759
																						Let Td922.3757
																							FAdd Td921.3758 ihl.3753
																							Put rgb.2459 Ti919.3756 Td922.3757
name : trace_reflections.2823 args : index.2824 diffuse.2825 hilight_scale.2826 dirvec.2827  formal_fv : add_light.2819 intersected_object_id.2455 intsec_rectside.2452 judge_intersection_fast.2805 nvector.2456 or_net.2450 reflections.2471 shadow_check_one_or_matrix.2776  
Let Ti885.3722
	Int:0
	IfLE Ti885.3722 index.2824
		Let rinfo.3723
			Get reflections.2471 index.2824
			Let dvec.3724
				AppDir r_dvec.2614 rinfo.3723 )
				Let Tb886.3728
					AppCls judge_intersection_fast.2805 dvec.3724 )
					Let Ti887.3729
						Int:0
						Let Tu138.3725
							IfEq Tb886.3728 Ti887.3729
								Unit
								Let Ti888.3749
									Int:0
									Let Ti889.3748
										Get intersected_object_id.2455 Ti888.3749
										Let Ti890.3745
											ShiftL2 Ti889.3748
											Let Ti891.3747
												Int:0
												Let Ti892.3746
													Get intsec_rectside.2452 Ti891.3747
													Let surface_id.3730
														Add Ti890.3745 Ti892.3746
														Let Ti893.3731
															AppDir r_surface_id.2612 rinfo.3723 )
															IfEq surface_id.3730 Ti893.3731
																Let Ti894.3742
																	Int:0
																	Let Ti895.3744
																		Int:0
																		Let Ta896.3743
																			Get or_net.2450 Ti895.3744
																			Let Tb897.3732
																				AppCls shadow_check_one_or_matrix.2776 Ti894.3742 Ta896.3743 )
																				Let Ti898.3733
																					Int:0
																					IfEq Tb897.3732 Ti898.3733
																						Let Ta899.3741
																							AppDir d_vec.2608 dvec.3724 )
																							Let p.3734
																								AppDir veciprod.2522 nvector.2456 Ta899.3741 )
																								Let scale.3735
																									AppDir r_bright.2616 rinfo.3723 )
																									Let Td900.3740
																										FMul scale.3735 diffuse.2825
																										Let bright.3736
																											FMul Td900.3740 p.3734
																											Let Ta901.3739
																												AppDir d_vec.2608 dvec.3724 )
																												Let Td902.3738
																													AppDir veciprod.2522 dirvec.2827 Ta901.3739 )
																													Let hilight.3737
																														FMul scale.3735 Td902.3738
																														AppCls add_light.2819 bright.3736 hilight.3737 hilight_scale.2826 )
																						Unit
																Unit
							Let Ti903.3727
								Int:1
								Let Ti904.3726
									Sub index.2824 Ti903.3727
									AppCls trace_reflections.2823 Ti904.3726 diffuse.2825 hilight_scale.2826 dirvec.2827 )
		Unit
name : trace_ray.2828 args : nref.2829 energy.2830 dirvec.2831 pixel.2832 dist.2833  formal_fv : add_light.2819 beam.2448 get_nvector.2813 intersected_object_id.2455 intersection_point.2454 intsec_rectside.2452 judge_intersection.2791 light.2447 n_reflections.2472 nvector.2456 objects.2444 or_net.2450 rgb.2459 setup_startp.2742 shadow_check_one_or_matrix.2776 startp.2463 texture_color.2457 tmin.2453 trace_reflections.2823 utexture.2816  
Let Ti806.3610
	Int:4
	IfLE nref.2829 Ti806.3610
		Let surface_ids.3611
			AppDir p_surface_ids.2593 pixel.2832 )
			Let Tb807.3612
				AppCls judge_intersection.2791 dirvec.2831 )
				Let Ti808.3613
					Int:0
					IfEq Tb807.3612 Ti808.3613
						Let Ti810.3720
							Int:-1
							Let Tu155.3694
								Put surface_ids.3611 nref.2829 Ti810.3720
								Let Ti811.3695
									Int:0
									IfEq nref.2829 Ti811.3695
										Unit
										Let Td812.3719
											AppDir veciprod.2522 dirvec.2831 light.2447 )
											Let hl.3696
												AppDir fneg.2473 Td812.3719 )
												Let Tb813.3697
													AppDir fispos.2475 hl.3696 )
													Let Ti814.3698
														Int:0
														IfEq Tb813.3697 Ti814.3698
															Unit
															Let Td815.3718
																AppDir fsqr.2483 hl.3696 )
																Let Td816.3717
																	FMul Td815.3718 hl.3696
																	Let Td817.3714
																		FMul Td816.3717 energy.2830
																		Let Ti818.3716
																			Int:0
																			Let Td819.3715
																				Get beam.2448 Ti818.3716
																				Let ihl.3699
																					FMul Td817.3714 Td819.3715
																					Let Ti820.3710
																						Int:0
																						Let Ti821.3713
																							Int:0
																							Let Td822.3712
																								Get rgb.2459 Ti821.3713
																								Let Td823.3711
																									FAdd Td822.3712 ihl.3699
																									Let Tu154.3700
																										Put rgb.2459 Ti820.3710 Td823.3711
																										Let Ti824.3706
																											Int:1
																											Let Ti825.3709
																												Int:1
																												Let Td826.3708
																													Get rgb.2459 Ti825.3709
																													Let Td827.3707
																														FAdd Td826.3708 ihl.3699
																														Let Tu153.3701
																															Put rgb.2459 Ti824.3706 Td827.3707
																															Let Ti828.3702
																																Int:2
																																Let Ti829.3705
																																	Int:2
																																	Let Td830.3704
																																		Get rgb.2459 Ti829.3705
																																		Let Td831.3703
																																			FAdd Td830.3704 ihl.3699
																																			Put rgb.2459 Ti828.3702 Td831.3703
						Let Ti832.3693
							Int:0
							Let obj_id.3614
								Get intersected_object_id.2455 Ti832.3693
								Let obj.3615
									Get objects.2444 obj_id.3614
									Let m_surface.3616
										AppDir o_reflectiontype.2551 obj.3615 )
										Let Td833.3692
											AppDir o_diffuse.2571 obj.3615 )
											Let diffuse.3617
												FMul Td833.3692 energy.2830
												Let Tu152.3618
													AppCls get_nvector.2813 obj.3615 dirvec.2831 )
													Let Tu151.3619
														AppDir veccpy.2511 startp.2463 intersection_point.2454 )
														Let Tu150.3620
															AppCls utexture.2816 obj.3615 intersection_point.2454 )
															Let Ti834.3689
																ShiftL2 obj_id.3614
																Let Ti835.3691
																	Int:0
																	Let Ti836.3690
																		Get intsec_rectside.2452 Ti835.3691
																		Let Ti837.3688
																			Add Ti834.3689 Ti836.3690
																			Let Tu149.3621
																				Put surface_ids.3611 nref.2829 Ti837.3688
																				Let intersection_points.3622
																					AppDir p_intersection_points.2591 pixel.2832 )
																					Let Ta838.3687
																						Get intersection_points.3622 nref.2829
																						Let Tu148.3623
																							AppDir veccpy.2511 Ta838.3687 intersection_point.2454 )
																							Let calc_diffuse.3624
																								AppDir p_calc_diffuse.2595 pixel.2832 )
																								Let Td839.3685
																									AppDir o_diffuse.2571 obj.3615 )
																									Let Td840.3686
																										Float:0.500000
																										Let Tb841.3668
																											AppDir fless.2487 Td839.3685 Td840.3686 )
																											Let Ti842.3669
																												Int:0
																												Let Tu147.3625
																													IfEq Tb841.3668 Ti842.3669
																														Let Ti843.3684
																															Int:1
																															Let Tu141.3671
																																Put calc_diffuse.3624 nref.2829 Ti843.3684
																																Let energya.3672
																																	AppDir p_energy.2597 pixel.2832 )
																																	Let Ta844.3683
																																		Get energya.3672 nref.2829
																																		Let Tu140.3673
																																			AppDir veccpy.2511 Ta844.3683 texture_color.2457 )
																																			Let Ta845.3677
																																				Get energya.3672 nref.2829
																																				Let Td846.3680
																																					Float:1.000000
																																					Let Td847.3681
																																						Float:256.000000
																																						Let Td848.3682
																																							FReciprocal Td847.3681
																																							Let Td849.3679
																																								FMul Td846.3680 Td848.3682
																																								Let Td850.3678
																																									FMul Td849.3679 diffuse.3617
																																									Let Tu139.3674
																																										AppDir vecscale.2540 Ta845.3677 Td850.3678 )
																																										Let nvectors.3675
																																											AppDir p_nvectors.2606 pixel.2832 )
																																											Let Ta851.3676
																																												Get nvectors.3675 nref.2829
																																												AppDir veccpy.2511 Ta851.3676 nvector.2456 )
																														Let Ti852.3670
																															Int:0
																															Put calc_diffuse.3624 nref.2829 Ti852.3670
																													Let Td853.3666
																														Float:-2.000000
																														Let Td854.3667
																															AppDir veciprod.2522 dirvec.2831 nvector.2456 )
																															Let w.3626
																																FMul Td853.3666 Td854.3667
																																Let Tu146.3627
																																	AppDir vecaccum.2530 dirvec.2831 w.3626 nvector.2456 )
																																	Let Td855.3665
																																		AppDir o_hilight.2573 obj.3615 )
																																		Let hilight_scale.3628
																																			FMul energy.2830 Td855.3665
																																			Let Ti856.3662
																																				Int:0
																																				Let Ti857.3664
																																					Int:0
																																					Let Ta858.3663
																																						Get or_net.2450 Ti857.3664
																																						Let Tb859.3655
																																							AppCls shadow_check_one_or_matrix.2776 Ti856.3662 Ta858.3663 )
																																							Let Ti860.3656
																																								Int:0
																																								Let Tu145.3629
																																									IfEq Tb859.3655 Ti860.3656
																																										Let Td861.3661
																																											AppDir veciprod.2522 nvector.2456 light.2447 )
																																											Let Td862.3660
																																												AppDir fneg.2473 Td861.3661 )
																																												Let bright.3657
																																													FMul Td862.3660 diffuse.3617
																																													Let Td863.3659
																																														AppDir veciprod.2522 dirvec.2831 light.2447 )
																																														Let hilight.3658
																																															AppDir fneg.2473 Td863.3659 )
																																															AppCls add_light.2819 bright.3657 hilight.3658 hilight_scale.3628 )
																																										Unit
																																									Let Tu144.3630
																																										AppCls setup_startp.2742 intersection_point.2454 )
																																										Let Ti864.3654
																																											Int:0
																																											Let Ti865.3652
																																												Get n_reflections.2472 Ti864.3654
																																												Let Ti866.3653
																																													Int:1
																																													Let Ti867.3651
																																														Sub Ti865.3652 Ti866.3653
																																														Let Tu143.3631
																																															AppCls trace_reflections.2823 Ti867.3651 diffuse.3617 hilight_scale.3628 dirvec.2831 )
																																															Let Td868.3650
																																																Float:0.100000
																																																Let Tb869.3632
																																																	AppDir fless.2487 Td868.3650 energy.2830 )
																																																	Let Ti870.3633
																																																		Int:0
																																																		IfEq Tb869.3632 Ti870.3633
																																																			Unit
																																																			Let Ti871.3645
																																																				Int:4
																																																				Let Tu142.3634
																																																					IfLE Ti871.3645 nref.2829
																																																						Unit
																																																						Let Ti872.3649
																																																							Int:1
																																																							Let Ti873.3646
																																																								Add nref.2829 Ti872.3649
																																																								Let Ti875.3647
																																																									Int:-1
																																																									Put surface_ids.3611 Ti873.3646 Ti875.3647
																																																					Let Ti876.3635
																																																						Int:2
																																																						IfEq m_surface.3616 Ti876.3635
																																																							Let Td877.3643
																																																								Float:1.000000
																																																								Let Td878.3644
																																																									AppDir o_diffuse.2571 obj.3615 )
																																																									Let Td879.3642
																																																										FSub Td877.3643 Td878.3644
																																																										Let energy2.3636
																																																											FMul energy.2830 Td879.3642
																																																											Let Ti880.3641
																																																												Int:1
																																																												Let Ti881.3637
																																																													Add nref.2829 Ti880.3641
																																																													Let Ti882.3640
																																																														Int:0
																																																														Let Td883.3639
																																																															Get tmin.2453 Ti882.3640
																																																															Let Td884.3638
																																																																FAdd dist.2833 Td883.3639
																																																																AppCls trace_ray.2828 Ti881.3637 energy2.3636 dirvec.2831 pixel.2832 Td884.3638 )
																																																							Unit
		Unit
name : trace_diffuse_ray.2834 args : dirvec.2835 energy.2836  formal_fv : diffuse_ray.2458 get_nvector.2813 intersected_object_id.2455 intersection_point.2454 judge_intersection_fast.2805 light.2447 nvector.2456 objects.2444 or_net.2450 shadow_check_one_or_matrix.2776 texture_color.2457 utexture.2816  
Let Tb790.3589
	AppCls judge_intersection_fast.2805 dirvec.2835 )
	Let Ti791.3590
		Int:0
		IfEq Tb790.3589 Ti791.3590
			Unit
			Let Ti792.3609
				Int:0
				Let Ti793.3608
					Get intersected_object_id.2455 Ti792.3609
					Let obj.3591
						Get objects.2444 Ti793.3608
						Let Ta794.3607
							AppDir d_vec.2608 dirvec.2835 )
							Let Tu157.3592
								AppCls get_nvector.2813 obj.3591 Ta794.3607 )
								Let Tu156.3593
									AppCls utexture.2816 obj.3591 intersection_point.2454 )
									Let Ti795.3604
										Int:0
										Let Ti796.3606
											Int:0
											Let Ta797.3605
												Get or_net.2450 Ti796.3606
												Let Tb798.3594
													AppCls shadow_check_one_or_matrix.2776 Ti795.3604 Ta797.3605 )
													Let Ti799.3595
														Int:0
														IfEq Tb798.3594 Ti799.3595
															Let Td800.3603
																AppDir veciprod.2522 nvector.2456 light.2447 )
																Let br.3596
																	AppDir fneg.2473 Td800.3603 )
																	Let Tb801.3601
																		AppDir fispos.2475 br.3596 )
																		Let Ti802.3602
																			Int:0
																			Let bright.3597
																				IfEq Tb801.3601 Ti802.3602
																					Float:0.000000
																					Var br.3596
																				Let Td803.3599
																					FMul energy.2836 bright.3597
																					Let Td804.3600
																						AppDir o_diffuse.2571 obj.3591 )
																						Let Td805.3598
																							FMul Td803.3599 Td804.3600
																							AppDir vecaccum.2530 diffuse_ray.2458 Td805.3598 texture_color.2457 )
															Unit
name : iter_trace_diffuse_rays.2837 args : dirvec_group.2838 nvector.2839 org.2840 index.2841  formal_fv : trace_diffuse_ray.2834  
Let Ti773.3570
	Int:0
	IfLE Ti773.3570 index.2841
		Let Tt774.3588
			Get dirvec_group.2838 index.2841
			Let Ta775.3587
				AppDir d_vec.2608 Tt774.3588 )
				Let p.3571
					AppDir veciprod.2522 Ta775.3587 nvector.2839 )
					Let Tb776.3575
						AppDir fisneg.2477 p.3571 )
						Let Ti777.3576
							Int:0
							Let Tu158.3572
								IfEq Tb776.3575 Ti777.3576
									Let Tt778.3583
										Get dirvec_group.2838 index.2841
										Let Td779.3585
											Float:150.000000
											Let Td780.3586
												FReciprocal Td779.3585
												Let Td781.3584
													FMul p.3571 Td780.3586
													AppCls trace_diffuse_ray.2834 Tt778.3583 Td781.3584 )
									Let Ti782.3582
										Int:1
										Let Ti783.3581
											Add index.2841 Ti782.3582
											Let Tt784.3577
												Get dirvec_group.2838 Ti783.3581
												Let Td785.3579
													Float:-150.000000
													Let Td786.3580
														FReciprocal Td785.3579
														Let Td787.3578
															FMul p.3571 Td786.3580
															AppCls trace_diffuse_ray.2834 Tt784.3577 Td787.3578 )
								Let Ti788.3574
									Int:2
									Let Ti789.3573
										Sub index.2841 Ti788.3574
										AppCls iter_trace_diffuse_rays.2837 dirvec_group.2838 nvector.2839 org.2840 Ti789.3573 )
		Unit
name : trace_diffuse_rays.2842 args : dirvec_group.2843 nvector.2844 org.2845  formal_fv : iter_trace_diffuse_rays.2837 setup_startp.2742  
Let Tu159.3568
	AppCls setup_startp.2742 org.2845 )
	Let Ti772.3569
		Int:118
		AppCls iter_trace_diffuse_rays.2837 dirvec_group.2843 nvector.2844 org.2845 Ti772.3569 )
name : trace_diffuse_ray_80percent.2846 args : group_id.2847 nvector.2848 org.2849  formal_fv : dirvecs.2469 trace_diffuse_rays.2842  
Let Ti757.3565
	Int:0
	Let Tu163.3549
		IfEq group_id.2847 Ti757.3565
			Unit
			Let Ti758.3567
				Int:0
				Let Ta759.3566
					Get dirvecs.2469 Ti758.3567
					AppCls trace_diffuse_rays.2842 Ta759.3566 nvector.2848 org.2849 )
		Let Ti760.3562
			Int:1
			Let Tu162.3550
				IfEq group_id.2847 Ti760.3562
					Unit
					Let Ti761.3564
						Int:1
						Let Ta762.3563
							Get dirvecs.2469 Ti761.3564
							AppCls trace_diffuse_rays.2842 Ta762.3563 nvector.2848 org.2849 )
				Let Ti763.3559
					Int:2
					Let Tu161.3551
						IfEq group_id.2847 Ti763.3559
							Unit
							Let Ti764.3561
								Int:2
								Let Ta765.3560
									Get dirvecs.2469 Ti764.3561
									AppCls trace_diffuse_rays.2842 Ta765.3560 nvector.2848 org.2849 )
						Let Ti766.3556
							Int:3
							Let Tu160.3552
								IfEq group_id.2847 Ti766.3556
									Unit
									Let Ti767.3558
										Int:3
										Let Ta768.3557
											Get dirvecs.2469 Ti767.3558
											AppCls trace_diffuse_rays.2842 Ta768.3557 nvector.2848 org.2849 )
								Let Ti769.3553
									Int:4
									IfEq group_id.2847 Ti769.3553
										Unit
										Let Ti770.3555
											Int:4
											Let Ta771.3554
												Get dirvecs.2469 Ti770.3555
												AppCls trace_diffuse_rays.2842 Ta771.3554 nvector.2848 org.2849 )
name : calc_diffuse_using_1point.2850 args : pixel.2851 nref.2852  formal_fv : diffuse_ray.2458 rgb.2459 trace_diffuse_ray_80percent.2846  
Let ray20p.3538
	AppDir p_received_ray_20percent.2599 pixel.2851 )
	Let nvectors.3539
		AppDir p_nvectors.2606 pixel.2851 )
		Let intersection_points.3540
			AppDir p_intersection_points.2591 pixel.2851 )
			Let energya.3541
				AppDir p_energy.2597 pixel.2851 )
				Let Ta752.3548
					Get ray20p.3538 nref.2852
					Let Tu165.3542
						AppDir veccpy.2511 diffuse_ray.2458 Ta752.3548 )
						Let Ti753.3545
							AppDir p_group_id.2601 pixel.2851 )
							Let Ta754.3546
								Get nvectors.3539 nref.2852
								Let Ta755.3547
									Get intersection_points.3540 nref.2852
									Let Tu164.3543
										AppCls trace_diffuse_ray_80percent.2846 Ti753.3545 Ta754.3546 Ta755.3547 )
										Let Ta756.3544
											Get energya.3541 nref.2852
											AppDir vecaccumv.2543 rgb.2459 Ta756.3544 diffuse_ray.2458 )
name : calc_diffuse_using_5points.2853 args : x.2854 prev.2855 cur.2856 next.2857 nref.2858  formal_fv : diffuse_ray.2458 rgb.2459  
Let Tt736.3537
	Get prev.2855 x.2854
	Let r_up.3511
		AppDir p_received_ray_20percent.2599 Tt736.3537 )
		Let Ti737.3536
			Int:1
			Let Ti738.3535
				Sub x.2854 Ti737.3536
				Let Tt739.3534
					Get cur.2856 Ti738.3535
					Let r_left.3512
						AppDir p_received_ray_20percent.2599 Tt739.3534 )
						Let Tt740.3533
							Get cur.2856 x.2854
							Let r_center.3513
								AppDir p_received_ray_20percent.2599 Tt740.3533 )
								Let Ti741.3532
									Int:1
									Let Ti742.3531
										Add x.2854 Ti741.3532
										Let Tt743.3530
											Get cur.2856 Ti742.3531
											Let r_right.3514
												AppDir p_received_ray_20percent.2599 Tt743.3530 )
												Let Tt744.3529
													Get next.2857 x.2854
													Let r_down.3515
														AppDir p_received_ray_20percent.2599 Tt744.3529 )
														Let Ta745.3528
															Get r_up.3511 nref.2858
															Let Tu170.3516
																AppDir veccpy.2511 diffuse_ray.2458 Ta745.3528 )
																Let Ta746.3527
																	Get r_left.3512 nref.2858
																	Let Tu169.3517
																		AppDir vecadd.2534 diffuse_ray.2458 Ta746.3527 )
																		Let Ta747.3526
																			Get r_center.3513 nref.2858
																			Let Tu168.3518
																				AppDir vecadd.2534 diffuse_ray.2458 Ta747.3526 )
																				Let Ta748.3525
																					Get r_right.3514 nref.2858
																					Let Tu167.3519
																						AppDir vecadd.2534 diffuse_ray.2458 Ta748.3525 )
																						Let Ta749.3524
																							Get r_down.3515 nref.2858
																							Let Tu166.3520
																								AppDir vecadd.2534 diffuse_ray.2458 Ta749.3524 )
																								Let Tt750.3523
																									Get cur.2856 x.2854
																									Let energya.3521
																										AppDir p_energy.2597 Tt750.3523 )
																										Let Ta751.3522
																											Get energya.3521 nref.2858
																											AppDir vecaccumv.2543 rgb.2459 Ta751.3522 diffuse_ray.2458 )
name : do_without_neighbors.2859 args : pixel.2860 nref.2861  formal_fv : calc_diffuse_using_1point.2850  
Let Ti729.3501
	Int:4
	IfLE nref.2861 Ti729.3501
		Let surface_ids.3502
			AppDir p_surface_ids.2593 pixel.2860 )
			Let Ti730.3503
				Int:0
				Let Ti731.3504
					Get surface_ids.3502 nref.2861
					IfLE Ti730.3503 Ti731.3504
						Let calc_diffuse.3505
							AppDir p_calc_diffuse.2595 pixel.2860 )
							Let Tb732.3509
								Get calc_diffuse.3505 nref.2861
								Let Ti733.3510
									Int:0
									Let Tu171.3506
										IfEq Tb732.3509 Ti733.3510
											Unit
											AppCls calc_diffuse_using_1point.2850 pixel.2860 nref.2861 )
										Let Ti734.3508
											Int:1
											Let Ti735.3507
												Add nref.2861 Ti734.3508
												AppCls do_without_neighbors.2859 pixel.2860 Ti735.3507 )
						Unit
		Unit
name : neighbors_exist.2862 args : x.2863 y.2864 next.2865  formal_fv : image_size.2460  
Let Ti719.3500
	Int:1
	Let Ti720.3491
		Get image_size.2460 Ti719.3500
		Let Ti721.3499
			Int:1
			Let Ti722.3492
				Add y.2864 Ti721.3499
				IfLE Ti720.3491 Ti722.3492
					Int:0
					Let Ti723.3493
						Int:0
						IfLE y.2864 Ti723.3493
							Int:0
							Let Ti724.3498
								Int:0
								Let Ti725.3494
									Get image_size.2460 Ti724.3498
									Let Ti726.3497
										Int:1
										Let Ti727.3495
											Add x.2863 Ti726.3497
											IfLE Ti725.3494 Ti727.3495
												Int:0
												Let Ti728.3496
													Int:0
													IfLE x.2863 Ti728.3496
														Int:0
														Int:1
name : get_surface_id.2866 args : pixel.2867 index.2868  formal_fv :  
Let surface_ids.3490
	AppDir p_surface_ids.2593 pixel.2867 )
	Get surface_ids.3490 index.2868
name : neighbors_are_available.2869 args : x.2870 prev.2871 cur.2872 next.2873 nref.2874  formal_fv :  
Let Tt706.3489
	Get cur.2872 x.2870
	Let sid_center.3476
		AppDir get_surface_id.2866 Tt706.3489 nref.2874 )
		Let Tt707.3488
			Get prev.2871 x.2870
			Let Ti708.3477
				AppDir get_surface_id.2866 Tt707.3488 nref.2874 )
				IfEq Ti708.3477 sid_center.3476
					Let Tt709.3487
						Get next.2873 x.2870
						Let Ti710.3478
							AppDir get_surface_id.2866 Tt709.3487 nref.2874 )
							IfEq Ti710.3478 sid_center.3476
								Let Ti711.3486
									Int:1
									Let Ti712.3485
										Sub x.2870 Ti711.3486
										Let Tt713.3484
											Get cur.2872 Ti712.3485
											Let Ti714.3479
												AppDir get_surface_id.2866 Tt713.3484 nref.2874 )
												IfEq Ti714.3479 sid_center.3476
													Let Ti715.3483
														Int:1
														Let Ti716.3482
															Add x.2870 Ti715.3483
															Let Tt717.3481
																Get cur.2872 Ti716.3482
																Let Ti718.3480
																	AppDir get_surface_id.2866 Tt717.3481 nref.2874 )
																	IfEq Ti718.3480 sid_center.3476
																		Int:1
																		Int:0
													Int:0
								Int:0
					Int:0
name : try_exploit_neighbors.2875 args : x.2876 y.2877 prev.2878 cur.2879 next.2880 nref.2881  formal_fv : calc_diffuse_using_5points.2853 do_without_neighbors.2859  
Let pixel.3463
	Get cur.2879 x.2876
	Let Ti696.3464
		Int:4
		IfLE nref.2881 Ti696.3464
			Let Ti697.3465
				Int:0
				Let Ti698.3466
					AppDir get_surface_id.2866 pixel.3463 nref.2881 )
					IfLE Ti697.3465 Ti698.3466
						Let Tb699.3467
							AppDir neighbors_are_available.2869 x.2876 prev.2878 cur.2879 next.2880 nref.2881 )
							Let Ti700.3468
								Int:0
								IfEq Tb699.3467 Ti700.3468
									Let Tt701.3475
										Get cur.2879 x.2876
										AppCls do_without_neighbors.2859 Tt701.3475 nref.2881 )
									Let calc_diffuse.3469
										AppDir p_calc_diffuse.2595 pixel.3463 )
										Let Tb702.3473
											Get calc_diffuse.3469 nref.2881
											Let Ti703.3474
												Int:0
												Let Tu172.3470
													IfEq Tb702.3473 Ti703.3474
														Unit
														AppCls calc_diffuse_using_5points.2853 x.2876 prev.2878 cur.2879 next.2880 nref.2881 )
													Let Ti704.3472
														Int:1
														Let Ti705.3471
															Add nref.2881 Ti704.3472
															AppCls try_exploit_neighbors.2875 x.2876 y.2877 prev.2878 cur.2879 next.2880 Ti705.3471 )
						Unit
			Unit
name : write_ppm_header.2882 args : Tu173.2883  formal_fv : image_size.2460  
Let Ti691.3462
	Int:0
	Let Ti692.3461
		Get image_size.2460 Ti691.3462
		Let Tu175.3456
			AppDir min_caml_print_int Ti692.3461 )
			Let Ti693.3460
				Int:1
				Let Ti694.3459
					Get image_size.2460 Ti693.3460
					Let Tu174.3457
						AppDir min_caml_print_int Ti694.3459 )
						Let Ti695.3458
							Int:255
							AppDir min_caml_print_int Ti695.3458 )
name : write_rgb_element.2884 args : x.2885  formal_fv :  
Let ix.3452
	AppDir min_caml_int_of_float x.2885 )
	Let Ti689.3454
		Int:255
		Let elem.3453
			IfLE ix.3452 Ti689.3454
				Let Ti690.3455
					Int:0
					IfLE Ti690.3455 ix.3452
						Var ix.3452
						Int:0
				Int:255
			AppDir min_caml_print_int elem.3453 )
name : write_rgb.2886 args : Tu176.2887  formal_fv : rgb.2459  
Let Ti683.3451
	Int:0
	Let Td684.3450
		Get rgb.2459 Ti683.3451
		Let Tu178.3444
			AppDir write_rgb_element.2884 Td684.3450 )
			Let Ti685.3449
				Int:1
				Let Td686.3448
					Get rgb.2459 Ti685.3449
					Let Tu177.3445
						AppDir write_rgb_element.2884 Td686.3448 )
						Let Ti687.3447
							Int:2
							Let Td688.3446
								Get rgb.2459 Ti687.3447
								AppDir write_rgb_element.2884 Td688.3446 )
name : pretrace_diffuse_rays.2888 args : pixel.2889 nref.2890  formal_fv : diffuse_ray.2458 dirvecs.2469 trace_diffuse_rays.2842  
Let Ti673.3425
	Int:4
	IfLE nref.2890 Ti673.3425
		Let sid.3426
			AppDir get_surface_id.2866 pixel.2889 nref.2890 )
			Let Ti674.3427
				Int:0
				IfLE Ti674.3427 sid.3426
					Let calc_diffuse.3428
						AppDir p_calc_diffuse.2595 pixel.2889 )
						Let Tb675.3432
							Get calc_diffuse.3428 nref.2890
							Let Ti676.3433
								Int:0
								Let Tu181.3429
									IfEq Tb675.3432 Ti676.3433
										Unit
										Let group_id.3434
											AppDir p_group_id.2601 pixel.2889 )
											Let Tu180.3435
												AppDir vecbzero.2509 diffuse_ray.2458 )
												Let nvectors.3436
													AppDir p_nvectors.2606 pixel.2889 )
													Let intersection_points.3437
														AppDir p_intersection_points.2591 pixel.2889 )
														Let Ta677.3441
															Get dirvecs.2469 group_id.3434
															Let Ta678.3442
																Get nvectors.3436 nref.2890
																Let Ta679.3443
																	Get intersection_points.3437 nref.2890
																	Let Tu179.3438
																		AppCls trace_diffuse_rays.2842 Ta677.3441 Ta678.3442 Ta679.3443 )
																		Let ray20p.3439
																			AppDir p_received_ray_20percent.2599 pixel.2889 )
																			Let Ta680.3440
																				Get ray20p.3439 nref.2890
																				AppDir veccpy.2511 Ta680.3440 diffuse_ray.2458 )
									Let Ti681.3431
										Int:1
										Let Ti682.3430
											Add nref.2890 Ti681.3431
											AppCls pretrace_diffuse_rays.2888 pixel.2889 Ti682.3430 )
					Unit
		Unit
name : pretrace_pixels.2891 args : line.2892 x.2893 group_id.2894 lc0.2895 lc1.2896 lc2.2897  formal_fv : image_center.2461 pretrace_diffuse_rays.2888 ptrace_dirvec.2468 rgb.2459 scan_pitch.2462 screenx_dir.2465 startp.2463 trace_ray.2828 viewpoint.2446  
Let Ti637.3378
	Int:0
	IfLE Ti637.3378 x.2893
		Let Ti638.3424
			Int:0
			Let Td639.3419
				Get scan_pitch.2462 Ti638.3424
				Let Ti640.3423
					Int:0
					Let Ti641.3422
						Get image_center.2461 Ti640.3423
						Let Ti642.3421
							Sub x.2893 Ti641.3422
							Let Td643.3420
								AppDir min_caml_float_of_int Ti642.3421 )
								Let xdisp.3379
									FMul Td639.3419 Td643.3420
									Let Ti644.3414
										Int:0
										Let Ti645.3418
											Int:0
											Let Td646.3417
												Get screenx_dir.2465 Ti645.3418
												Let Td647.3416
													FMul xdisp.3379 Td646.3417
													Let Td648.3415
														FAdd Td647.3416 lc0.2895
														Let Tu191.3380
															Put ptrace_dirvec.2468 Ti644.3414 Td648.3415
															Let Ti649.3409
																Int:1
																Let Ti650.3413
																	Int:1
																	Let Td651.3412
																		Get screenx_dir.2465 Ti650.3413
																		Let Td652.3411
																			FMul xdisp.3379 Td651.3412
																			Let Td653.3410
																				FAdd Td652.3411 lc1.2896
																				Let Tu190.3381
																					Put ptrace_dirvec.2468 Ti649.3409 Td653.3410
																					Let Ti654.3404
																						Int:2
																						Let Ti655.3408
																							Int:2
																							Let Td656.3407
																								Get screenx_dir.2465 Ti655.3408
																								Let Td657.3406
																									FMul xdisp.3379 Td656.3407
																									Let Td658.3405
																										FAdd Td657.3406 lc2.2897
																										Let Tu189.3382
																											Put ptrace_dirvec.2468 Ti654.3404 Td658.3405
																											Let Ti659.3403
																												Int:0
																												Let Tu188.3383
																													AppDir vecunit_sgn.2519 ptrace_dirvec.2468 Ti659.3403 )
																													Let Tu187.3384
																														AppDir vecbzero.2509 rgb.2459 )
																														Let Tu186.3385
																															AppDir veccpy.2511 startp.2463 viewpoint.2446 )
																															Let Ti660.3399
																																Int:0
																																Let Td661.3400
																																	Float:1.000000
																																	Let Tt662.3401
																																		Get line.2892 x.2893
																																		Let Td663.3402
																																			Float:0.000000
																																			Let Tu185.3386
																																				AppCls trace_ray.2828 Ti660.3399 Td661.3400 ptrace_dirvec.2468 Tt662.3401 Td663.3402 )
																																				Let Tt664.3398
																																					Get line.2892 x.2893
																																					Let Ta665.3397
																																						AppDir p_rgb.2589 Tt664.3398 )
																																						Let Tu184.3387
																																							AppDir veccpy.2511 Ta665.3397 rgb.2459 )
																																							Let Tt666.3396
																																								Get line.2892 x.2893
																																								Let Tu183.3388
																																									AppDir p_set_group_id.2603 Tt666.3396 group_id.2894 )
																																									Let Tt667.3394
																																										Get line.2892 x.2893
																																										Let Ti668.3395
																																											Int:0
																																											Let Tu182.3389
																																												AppCls pretrace_diffuse_rays.2888 Tt667.3394 Ti668.3395 )
																																												Let Ti669.3393
																																													Int:1
																																													Let Ti670.3390
																																														Sub x.2893 Ti669.3393
																																														Let Ti671.3392
																																															Int:1
																																															Let Ti672.3391
																																																AppDir add_mod5.2498 group_id.2894 Ti671.3392 )
																																																AppCls pretrace_pixels.2891 line.2892 Ti670.3390 Ti672.3391 lc0.2895 lc1.2896 lc2.2897 )
		Unit
name : pretrace_line.2898 args : line.2899 y.2900 group_id.2901  formal_fv : image_center.2461 image_size.2460 pretrace_pixels.2891 scan_pitch.2462 screeny_dir.2466 screenz_dir.2467  
Let Ti612.3377
	Int:0
	Let Td613.3372
		Get scan_pitch.2462 Ti612.3377
		Let Ti614.3376
			Int:1
			Let Ti615.3375
				Get image_center.2461 Ti614.3376
				Let Ti616.3374
					Sub y.2900 Ti615.3375
					Let Td617.3373
						AppDir min_caml_float_of_int Ti616.3374 )
						Let ydisp.3349
							FMul Td613.3372 Td617.3373
							Let Ti618.3371
								Int:0
								Let Td619.3370
									Get screeny_dir.2466 Ti618.3371
									Let Td620.3367
										FMul ydisp.3349 Td619.3370
										Let Ti621.3369
											Int:0
											Let Td622.3368
												Get screenz_dir.2467 Ti621.3369
												Let lc0.3350
													FAdd Td620.3367 Td622.3368
													Let Ti623.3366
														Int:1
														Let Td624.3365
															Get screeny_dir.2466 Ti623.3366
															Let Td625.3362
																FMul ydisp.3349 Td624.3365
																Let Ti626.3364
																	Int:1
																	Let Td627.3363
																		Get screenz_dir.2467 Ti626.3364
																		Let lc1.3351
																			FAdd Td625.3362 Td627.3363
																			Let Ti628.3361
																				Int:2
																				Let Td629.3360
																					Get screeny_dir.2466 Ti628.3361
																					Let Td630.3357
																						FMul ydisp.3349 Td629.3360
																						Let Ti631.3359
																							Int:2
																							Let Td632.3358
																								Get screenz_dir.2467 Ti631.3359
																								Let lc2.3352
																									FAdd Td630.3357 Td632.3358
																									Let Ti633.3356
																										Int:0
																										Let Ti634.3354
																											Get image_size.2460 Ti633.3356
																											Let Ti635.3355
																												Int:1
																												Let Ti636.3353
																													Sub Ti634.3354 Ti635.3355
																													AppCls pretrace_pixels.2891 line.2899 Ti636.3353 group_id.2901 lc0.3350 lc1.3351 lc2.3352 )
name : scan_pixel.2902 args : x.2903 y.2904 prev.2905 cur.2906 next.2907  formal_fv : do_without_neighbors.2859 image_size.2460 neighbors_exist.2862 rgb.2459 try_exploit_neighbors.2875 write_rgb.2886  
Let Ti600.3348
	Int:0
	Let Ti601.3334
		Get image_size.2460 Ti600.3348
		IfLE Ti601.3334 x.2903
			Unit
			Let Tt602.3347
				Get cur.2906 x.2903
				Let Ta603.3346
					AppDir p_rgb.2589 Tt602.3347 )
					Let Tu194.3335
						AppDir veccpy.2511 rgb.2459 Ta603.3346 )
						Let Tb604.3341
							AppCls neighbors_exist.2862 x.2903 y.2904 next.2907 )
							Let Ti605.3342
								Int:0
								Let Tu193.3336
									IfEq Tb604.3341 Ti605.3342
										Let Tt606.3344
											Get cur.2906 x.2903
											Let Ti607.3345
												Int:0
												AppCls do_without_neighbors.2859 Tt606.3344 Ti607.3345 )
										Let Ti608.3343
											Int:0
											AppCls try_exploit_neighbors.2875 x.2903 y.2904 prev.2905 cur.2906 next.2907 Ti608.3343 )
									Let Tu609.3340
										Unit
										Let Tu192.3337
											AppCls write_rgb.2886 Tu609.3340 )
											Let Ti610.3339
												Int:1
												Let Ti611.3338
													Add x.2903 Ti610.3339
													AppCls scan_pixel.2902 Ti611.3338 y.2904 prev.2905 cur.2906 next.2907 )
name : scan_line.2908 args : y.2909 prev.2910 cur.2911 next.2912 group_id.2913  formal_fv : image_size.2460 pretrace_line.2898 scan_pixel.2902  
Let Ti587.3333
	Int:1
	Let Ti588.3319
		Get image_size.2460 Ti587.3333
		IfLE Ti588.3319 y.2909
			Unit
			Let Ti589.3332
				Int:1
				Let Ti590.3330
					Get image_size.2460 Ti589.3332
					Let Ti591.3331
						Int:1
						Let Ti592.3327
							Sub Ti590.3330 Ti591.3331
							Let Tu196.3320
								IfLE Ti592.3327 y.2909
									Unit
									Let Ti593.3329
										Int:1
										Let Ti594.3328
											Add y.2909 Ti593.3329
											AppCls pretrace_line.2898 next.2912 Ti594.3328 group_id.2913 )
								Let Ti595.3326
									Int:0
									Let Tu195.3321
										AppCls scan_pixel.2902 Ti595.3326 y.2909 prev.2910 cur.2911 next.2912 )
										Let Ti596.3325
											Int:1
											Let Ti597.3322
												Add y.2909 Ti596.3325
												Let Ti598.3324
													Int:2
													Let Ti599.3323
														AppDir add_mod5.2498 group_id.2913 Ti598.3324 )
														AppCls scan_line.2908 Ti597.3322 cur.2911 next.2912 prev.2910 Ti599.3323 )
name : create_float5x3array.2914 args : Tu197.2915  formal_fv :  
Let Ti568.3317
	Int:3
	Let Td569.3318
		Float:0.000000
		Let vec.3294
			AppDir min_caml_create_float_array Ti568.3317 Td569.3318 )
			Let Ti570.3316
				Int:5
				Let array.3295
					AppDir min_caml_create_array Ti570.3316 vec.3294 )
					Let Ti571.3312
						Int:1
						Let Ti572.3314
							Int:3
							Let Td573.3315
								Float:0.000000
								Let Ta574.3313
									AppDir min_caml_create_float_array Ti572.3314 Td573.3315 )
									Let Tu201.3296
										Put array.3295 Ti571.3312 Ta574.3313
										Let Ti575.3308
											Int:2
											Let Ti576.3310
												Int:3
												Let Td577.3311
													Float:0.000000
													Let Ta578.3309
														AppDir min_caml_create_float_array Ti576.3310 Td577.3311 )
														Let Tu200.3297
															Put array.3295 Ti575.3308 Ta578.3309
															Let Ti579.3304
																Int:3
																Let Ti580.3306
																	Int:3
																	Let Td581.3307
																		Float:0.000000
																		Let Ta582.3305
																			AppDir min_caml_create_float_array Ti580.3306 Td581.3307 )
																			Let Tu199.3298
																				Put array.3295 Ti579.3304 Ta582.3305
																				Let Ti583.3300
																					Int:4
																					Let Ti584.3302
																						Int:3
																						Let Td585.3303
																							Float:0.000000
																							Let Ta586.3301
																								AppDir min_caml_create_float_array Ti584.3302 Td585.3303 )
																								Let Tu198.3299
																									Put array.3295 Ti583.3300 Ta586.3301
																									Var array.3295
name : create_pixel.2916 args : Tu202.2917  formal_fv :  
Let Ti556.3292
	Int:3
	Let Td557.3293
		Float:0.000000
		Let m_rgb.3274
			AppDir min_caml_create_float_array Ti556.3292 Td557.3293 )
			Let Tu558.3291
				Unit
				Let m_isect_ps.3275
					AppDir create_float5x3array.2914 Tu558.3291 )
					Let Ti559.3289
						Int:5
						Let Ti560.3290
							Int:0
							Let m_sids.3276
								AppDir min_caml_create_array Ti559.3289 Ti560.3290 )
								Let Ti561.3287
									Int:5
									Let Ti562.3288
										Int:0
										Let m_cdif.3277
											AppDir min_caml_create_array Ti561.3287 Ti562.3288 )
											Let Tu563.3286
												Unit
												Let m_engy.3278
													AppDir create_float5x3array.2914 Tu563.3286 )
													Let Tu564.3285
														Unit
														Let m_r20p.3279
															AppDir create_float5x3array.2914 Tu564.3285 )
															Let Ti565.3283
																Int:1
																Let Ti566.3284
																	Int:0
																	Let m_gid.3280
																		AppDir min_caml_create_array Ti565.3283 Ti566.3284 )
																		Let Tu567.3282
																			Unit
																			Let m_nvectors.3281
																				AppDir create_float5x3array.2914 Tu567.3282 )
																				Tuple (m_rgb.3274,m_isect_ps.3275,m_sids.3276,m_cdif.3277,m_engy.3278,m_r20p.3279,m_gid.3280,m_nvectors.3281,)
name : init_line_elements.2918 args : line.2919 n.2920  formal_fv :  
Let Ti551.3268
	Int:0
	IfLE Ti551.3268 n.2920
		Let Tu552.3273
			Unit
			Let Tt553.3272
				AppDir create_pixel.2916 Tu552.3273 )
				Let Tu203.3269
					Put line.2919 n.2920 Tt553.3272
					Let Ti554.3271
						Int:1
						Let Ti555.3270
							Sub n.2920 Ti554.3271
							AppDir init_line_elements.2918 line.2919 Ti555.3270 )
		Var line.2919
name : create_pixelline.2921 args : Tu204.2922  formal_fv : image_size.2460  
Let Ti543.3267
	Int:0
	Let Ti544.3264
		Get image_size.2460 Ti543.3267
		Let Tu545.3266
			Unit
			Let Tt546.3265
				AppDir create_pixel.2916 Tu545.3266 )
				Let line.3259
					AppDir min_caml_create_array Ti544.3264 Tt546.3265 )
					Let Ti547.3263
						Int:0
						Let Ti548.3261
							Get image_size.2460 Ti547.3263
							Let Ti549.3262
								Int:2
								Let Ti550.3260
									Sub Ti548.3261 Ti549.3262
									AppDir init_line_elements.2918 line.3259 Ti550.3260 )
name : tan.2923 args : x.2924  formal_fv :  
Let Td540.3256
	AppDir min_caml_sin x.2924 )
	Let Td541.3257
		AppDir min_caml_cos x.2924 )
		Let Td542.3258
			FReciprocal Td541.3257
			FMul Td540.3256 Td542.3258
name : adjust_position.2925 args : h.2926 ratio.2927  formal_fv :  
Let Td534.3254
	FMul h.2926 h.2926
	Let Td535.3255
		Float:0.100000
		Let Td536.3253
			FAdd Td534.3254 Td535.3255
			Let l.3246
				AppDir min_caml_sqrt Td536.3253 )
				Let Td537.3251
					Float:1.000000
					Let Td538.3252
						FReciprocal l.3246
						Let tan_h.3247
							FMul Td537.3251 Td538.3252
							Let theta_h.3248
								AppDir min_caml_atan tan_h.3247 )
								Let Td539.3250
									FMul theta_h.3248 ratio.2927
									Let tan_m.3249
										AppDir tan.2923 Td539.3250 )
										FMul tan_m.3249 l.3246
name : calc_dirvec.2928 args : icount.2929 x.2930 y.2931 rx.2932 ry.2933 group_id.2934 index.2935  formal_fv : dirvecs.2469  
Let Ti490.3191
	Int:5
	IfLE Ti490.3191 icount.2929
		Let Td491.3244
			AppDir fsqr.2483 x.2930 )
			Let Td492.3245
				AppDir fsqr.2483 y.2931 )
				Let Td493.3242
					FAdd Td491.3244 Td492.3245
					Let Td494.3243
						Float:1.000000
						Let Td495.3241
							FAdd Td493.3242 Td494.3243
							Let l.3196
								AppDir min_caml_sqrt Td495.3241 )
								Let Td496.3240
									FReciprocal l.3196
									Let vx.3197
										FMul x.2930 Td496.3240
										Let Td497.3239
											FReciprocal l.3196
											Let vy.3198
												FMul y.2931 Td497.3239
												Let Td498.3237
													Float:1.000000
													Let Td499.3238
														FReciprocal l.3196
														Let vz.3199
															FMul Td498.3237 Td499.3238
															Let dgroup.3200
																Get dirvecs.2469 group_id.2934
																Let Tt500.3236
																	Get dgroup.3200 index.2935
																	Let Ta501.3235
																		AppDir d_vec.2608 Tt500.3236 )
																		Let Tu209.3201
																			AppDir vecset.2501 Ta501.3235 vx.3197 vy.3198 vz.3199 )
																			Let Ti502.3234
																				Int:40
																				Let Ti503.3233
																					Add index.2935 Ti502.3234
																					Let Tt504.3232
																						Get dgroup.3200 Ti503.3233
																						Let Ta505.3230
																							AppDir d_vec.2608 Tt504.3232 )
																							Let Td506.3231
																								AppDir fneg.2473 vy.3198 )
																								Let Tu208.3202
																									AppDir vecset.2501 Ta505.3230 vx.3197 vz.3199 Td506.3231 )
																									Let Ti507.3229
																										Int:80
																										Let Ti508.3228
																											Add index.2935 Ti507.3229
																											Let Tt509.3227
																												Get dgroup.3200 Ti508.3228
																												Let Ta510.3224
																													AppDir d_vec.2608 Tt509.3227 )
																													Let Td511.3225
																														AppDir fneg.2473 vx.3197 )
																														Let Td512.3226
																															AppDir fneg.2473 vy.3198 )
																															Let Tu207.3203
																																AppDir vecset.2501 Ta510.3224 vz.3199 Td511.3225 Td512.3226 )
																																Let Ti513.3223
																																	Int:1
																																	Let Ti514.3222
																																		Add index.2935 Ti513.3223
																																		Let Tt515.3221
																																			Get dgroup.3200 Ti514.3222
																																			Let Ta516.3217
																																				AppDir d_vec.2608 Tt515.3221 )
																																				Let Td517.3218
																																					AppDir fneg.2473 vx.3197 )
																																					Let Td518.3219
																																						AppDir fneg.2473 vy.3198 )
																																						Let Td519.3220
																																							AppDir fneg.2473 vz.3199 )
																																							Let Tu206.3204
																																								AppDir vecset.2501 Ta516.3217 Td517.3218 Td518.3219 Td519.3220 )
																																								Let Ti520.3216
																																									Int:41
																																									Let Ti521.3215
																																										Add index.2935 Ti520.3216
																																										Let Tt522.3214
																																											Get dgroup.3200 Ti521.3215
																																											Let Ta523.3211
																																												AppDir d_vec.2608 Tt522.3214 )
																																												Let Td524.3212
																																													AppDir fneg.2473 vx.3197 )
																																													Let Td525.3213
																																														AppDir fneg.2473 vz.3199 )
																																														Let Tu205.3205
																																															AppDir vecset.2501 Ta523.3211 Td524.3212 Td525.3213 vy.3198 )
																																															Let Ti526.3210
																																																Int:81
																																																Let Ti527.3209
																																																	Add index.2935 Ti526.3210
																																																	Let Tt528.3208
																																																		Get dgroup.3200 Ti527.3209
																																																		Let Ta529.3206
																																																			AppDir d_vec.2608 Tt528.3208 )
																																																			Let Td530.3207
																																																				AppDir fneg.2473 vz.3199 )
																																																				AppDir vecset.2501 Ta529.3206 Td530.3207 vx.3197 vy.3198 )
		Let x2.3192
			AppDir adjust_position.2925 y.2931 rx.2932 )
			Let Ti531.3195
				Int:1
				Let Ti532.3193
					Add icount.2929 Ti531.3195
					Let Td533.3194
						AppDir adjust_position.2925 x2.3192 ry.2933 )
						AppCls calc_dirvec.2928 Ti532.3193 x2.3192 Td533.3194 rx.2932 ry.2933 group_id.2934 index.2935 )
name : calc_dirvecs.2936 args : col.2937 ry.2938 group_id.2939 index.2940  formal_fv : calc_dirvec.2928  
Let Ti469.3166
	Int:0
	IfLE Ti469.3166 col.2937
		Let Td470.3189
			AppDir min_caml_float_of_int col.2937 )
			Let Td471.3190
				Float:0.200000
				Let Td472.3187
					FMul Td470.3189 Td471.3190
					Let Td473.3188
						Float:0.900000
						Let rx.3167
							FSub Td472.3187 Td473.3188
							Let Ti474.3184
								Int:0
								Let Td475.3185
									Float:0.000000
									Let Td476.3186
										Float:0.000000
										Let Tu211.3168
											AppCls calc_dirvec.2928 Ti474.3184 Td475.3185 Td476.3186 rx.3167 ry.2938 group_id.2939 index.2940 )
											Let Td477.3182
												AppDir min_caml_float_of_int col.2937 )
												Let Td478.3183
													Float:0.200000
													Let Td479.3180
														FMul Td477.3182 Td478.3183
														Let Td480.3181
															Float:0.100000
															Let rx2.3169
																FAdd Td479.3180 Td480.3181
																Let Ti481.3175
																	Int:0
																	Let Td482.3176
																		Float:0.000000
																		Let Td483.3177
																			Float:0.000000
																			Let Ti484.3179
																				Int:2
																				Let Ti485.3178
																					Add index.2940 Ti484.3179
																					Let Tu210.3170
																						AppCls calc_dirvec.2928 Ti481.3175 Td482.3176 Td483.3177 rx2.3169 ry.2938 group_id.2939 Ti485.3178 )
																						Let Ti486.3174
																							Int:1
																							Let Ti487.3171
																								Sub col.2937 Ti486.3174
																								Let Ti488.3173
																									Int:1
																									Let Ti489.3172
																										AppDir add_mod5.2498 group_id.2939 Ti488.3173 )
																										AppCls calc_dirvecs.2936 Ti487.3171 ry.2938 Ti489.3172 index.2940 )
		Unit
name : calc_dirvec_rows.2941 args : row.2942 group_id.2943 index.2944  formal_fv : calc_dirvecs.2936  
Let Ti457.3152
	Int:0
	IfLE Ti457.3152 row.2942
		Let Td458.3164
			AppDir min_caml_float_of_int row.2942 )
			Let Td459.3165
				Float:0.200000
				Let Td460.3162
					FMul Td458.3164 Td459.3165
					Let Td461.3163
						Float:0.900000
						Let ry.3153
							FSub Td460.3162 Td461.3163
							Let Ti462.3161
								Int:4
								Let Tu212.3154
									AppCls calc_dirvecs.2936 Ti462.3161 ry.3153 group_id.2943 index.2944 )
									Let Ti463.3160
										Int:1
										Let Ti464.3155
											Sub row.2942 Ti463.3160
											Let Ti465.3159
												Int:2
												Let Ti466.3156
													AppDir add_mod5.2498 group_id.2943 Ti465.3159 )
													Let Ti467.3158
														Int:4
														Let Ti468.3157
															Add index.2944 Ti467.3158
															AppCls calc_dirvec_rows.2941 Ti464.3155 Ti466.3156 Ti468.3157 )
		Unit
name : create_dirvec.2945 args : Tu213.2946  formal_fv : n_objects.2443  
Let Ti453.3150
	Int:3
	Let Td454.3151
		Float:0.000000
		Let v3.3146
			AppDir min_caml_create_float_array Ti453.3150 Td454.3151 )
			Let Ti455.3149
				Int:0
				Let Ti456.3148
					Get n_objects.2443 Ti455.3149
					Let consts.3147
						AppDir min_caml_create_array Ti456.3148 v3.3146 )
						Tuple (v3.3146,consts.3147,)
name : create_dirvec_elements.2947 args : d.2948 index.2949  formal_fv : create_dirvec.2945  
Let Ti448.3140
	Int:0
	IfLE Ti448.3140 index.2949
		Let Tu449.3145
			Unit
			Let Tt450.3144
				AppCls create_dirvec.2945 Tu449.3145 )
				Let Tu214.3141
					Put d.2948 index.2949 Tt450.3144
					Let Ti451.3143
						Int:1
						Let Ti452.3142
							Sub index.2949 Ti451.3143
							AppCls create_dirvec_elements.2947 d.2948 Ti452.3142 )
		Unit
name : create_dirvecs.2950 args : index.2951  formal_fv : create_dirvec.2945 create_dirvec_elements.2947 dirvecs.2469  
Let Ti439.3129
	Int:0
	IfLE Ti439.3129 index.2951
		Let Ti440.3137
			Int:120
			Let Tu441.3139
				Unit
				Let Tt442.3138
					AppCls create_dirvec.2945 Tu441.3139 )
					Let Ta443.3136
						AppDir min_caml_create_array Ti440.3137 Tt442.3138 )
						Let Tu216.3130
							Put dirvecs.2469 index.2951 Ta443.3136
							Let Ta444.3134
								Get dirvecs.2469 index.2951
								Let Ti445.3135
									Int:118
									Let Tu215.3131
										AppCls create_dirvec_elements.2947 Ta444.3134 Ti445.3135 )
										Let Ti446.3133
											Int:1
											Let Ti447.3132
												Sub index.2951 Ti446.3133
												AppCls create_dirvecs.2950 Ti447.3132 )
		Unit
name : init_dirvec_constants.2952 args : vecset.2953 index.2954  formal_fv : setup_dirvec_constants.2737  
Let Ti435.3124
	Int:0
	IfLE Ti435.3124 index.2954
		Let Tt436.3128
			Get vecset.2953 index.2954
			Let Tu217.3125
				AppCls setup_dirvec_constants.2737 Tt436.3128 )
				Let Ti437.3127
					Int:1
					Let Ti438.3126
						Sub index.2954 Ti437.3127
						AppCls init_dirvec_constants.2952 vecset.2953 Ti438.3126 )
		Unit
name : init_vecset_constants.2955 args : index.2956  formal_fv : dirvecs.2469 init_dirvec_constants.2952  
Let Ti430.3118
	Int:0
	IfLE Ti430.3118 index.2956
		Let Ta431.3122
			Get dirvecs.2469 index.2956
			Let Ti432.3123
				Int:119
				Let Tu218.3119
					AppCls init_dirvec_constants.2952 Ta431.3122 Ti432.3123 )
					Let Ti433.3121
						Int:1
						Let Ti434.3120
							Sub index.2956 Ti433.3121
							AppCls init_vecset_constants.2955 Ti434.3120 )
		Unit
name : init_dirvecs.2957 args : Tu219.2958  formal_fv : calc_dirvec_rows.2941 create_dirvecs.2950 init_vecset_constants.2955  
Let Ti425.3117
	Int:4
	Let Tu221.3111
		AppCls create_dirvecs.2950 Ti425.3117 )
		Let Ti426.3114
			Int:9
			Let Ti427.3115
				Int:0
				Let Ti428.3116
					Int:0
					Let Tu220.3112
						AppCls calc_dirvec_rows.2941 Ti426.3114 Ti427.3115 Ti428.3116 )
						Let Ti429.3113
							Int:4
							AppCls init_vecset_constants.2955 Ti429.3113 )
name : add_reflection.2959 args : index.2960 surface_id.2961 bright.2962 v0.2963 v1.2964 v2.2965  formal_fv : create_dirvec.2945 reflections.2471 setup_dirvec_constants.2737  
Let Tu422.3110
	Unit
	Let dvec.3105
		AppCls create_dirvec.2945 Tu422.3110 )
		Let Ta423.3109
			AppDir d_vec.2608 dvec.3105 )
			Let Tu223.3106
				AppDir vecset.2501 Ta423.3109 v0.2963 v1.2964 v2.2965 )
				Let Tu222.3107
					AppCls setup_dirvec_constants.2737 dvec.3105 )
					Let Tt424.3108
						Tuple (surface_id.2961,dvec.3105,bright.2962,)
						Put reflections.2471 index.2960 Tt424.3108
name : setup_rect_reflection.2966 args : obj_id.2967 obj.2968  formal_fv : add_reflection.2959 light.2447 n_reflections.2472  
Let sid.3068
	ShiftL2 obj_id.2967
	Let Ti394.3104
		Int:0
		Let nr.3069
			Get n_reflections.2472 Ti394.3104
			Let Td395.3102
				Float:1.000000
				Let Td396.3103
					AppDir o_diffuse.2571 obj.2968 )
					Let br.3070
						FSub Td395.3102 Td396.3103
						Let Ti397.3101
							Int:0
							Let Td398.3100
								Get light.2447 Ti397.3101
								Let n0.3071
									AppDir fneg.2473 Td398.3100 )
									Let Ti399.3099
										Int:1
										Let Td400.3098
											Get light.2447 Ti399.3099
											Let n1.3072
												AppDir fneg.2473 Td400.3098 )
												Let Ti401.3097
													Int:2
													Let Td402.3096
														Get light.2447 Ti401.3097
														Let n2.3073
															AppDir fneg.2473 Td402.3096 )
															Let Ti403.3095
																Int:1
																Let Ti404.3092
																	Add sid.3068 Ti403.3095
																	Let Ti405.3094
																		Int:0
																		Let Td406.3093
																			Get light.2447 Ti405.3094
																			Let Tu226.3074
																				AppCls add_reflection.2959 nr.3069 Ti404.3092 br.3070 Td406.3093 n1.3072 n2.3073 )
																				Let Ti407.3091
																					Int:1
																					Let Ti408.3086
																						Add nr.3069 Ti407.3091
																						Let Ti409.3090
																							Int:2
																							Let Ti410.3087
																								Add sid.3068 Ti409.3090
																								Let Ti411.3089
																									Int:1
																									Let Td412.3088
																										Get light.2447 Ti411.3089
																										Let Tu225.3075
																											AppCls add_reflection.2959 Ti408.3086 Ti410.3087 br.3070 n0.3071 Td412.3088 n2.3073 )
																											Let Ti413.3085
																												Int:2
																												Let Ti414.3080
																													Add nr.3069 Ti413.3085
																													Let Ti415.3084
																														Int:3
																														Let Ti416.3081
																															Add sid.3068 Ti415.3084
																															Let Ti417.3083
																																Int:2
																																Let Td418.3082
																																	Get light.2447 Ti417.3083
																																	Let Tu224.3076
																																		AppCls add_reflection.2959 Ti414.3080 Ti416.3081 br.3070 n0.3071 n1.3072 Td418.3082 )
																																		Let Ti419.3077
																																			Int:0
																																			Let Ti420.3079
																																				Int:3
																																				Let Ti421.3078
																																					Add nr.3069 Ti420.3079
																																					Put n_reflections.2472 Ti419.3077 Ti421.3078
name : setup_surface_reflection.2969 args : obj_id.2970 obj.2971  formal_fv : add_reflection.2959 light.2447 n_reflections.2472  
Let Ti364.3066
	ShiftL2 obj_id.2970
	Let Ti365.3067
		Int:1
		Let sid.3033
			Add Ti364.3066 Ti365.3067
			Let Ti366.3065
				Int:0
				Let nr.3034
					Get n_reflections.2472 Ti366.3065
					Let Td367.3063
						Float:1.000000
						Let Td368.3064
							AppDir o_diffuse.2571 obj.2971 )
							Let br.3035
								FSub Td367.3063 Td368.3064
								Let Ta369.3062
									AppDir o_param_abc.2563 obj.2971 )
									Let p.3036
										AppDir veciprod.2522 light.2447 Ta369.3062 )
										Let Td370.3060
											Float:2.000000
											Let Td371.3061
												AppDir o_param_a.2557 obj.2971 )
												Let Td372.3059
													FMul Td370.3060 Td371.3061
													Let Td373.3056
														FMul Td372.3059 p.3036
														Let Ti374.3058
															Int:0
															Let Td375.3057
																Get light.2447 Ti374.3058
																Let Td376.3041
																	FSub Td373.3056 Td375.3057
																	Let Td377.3054
																		Float:2.000000
																		Let Td378.3055
																			AppDir o_param_b.2559 obj.2971 )
																			Let Td379.3053
																				FMul Td377.3054 Td378.3055
																				Let Td380.3050
																					FMul Td379.3053 p.3036
																					Let Ti381.3052
																						Int:1
																						Let Td382.3051
																							Get light.2447 Ti381.3052
																							Let Td383.3042
																								FSub Td380.3050 Td382.3051
																								Let Td384.3048
																									Float:2.000000
																									Let Td385.3049
																										AppDir o_param_c.2561 obj.2971 )
																										Let Td386.3047
																											FMul Td384.3048 Td385.3049
																											Let Td387.3044
																												FMul Td386.3047 p.3036
																												Let Ti388.3046
																													Int:2
																													Let Td389.3045
																														Get light.2447 Ti388.3046
																														Let Td390.3043
																															FSub Td387.3044 Td389.3045
																															Let Tu227.3037
																																AppCls add_reflection.2959 nr.3034 sid.3033 br.3035 Td376.3041 Td383.3042 Td390.3043 )
																																Let Ti391.3038
																																	Int:0
																																	Let Ti392.3040
																																		Int:1
																																		Let Ti393.3039
																																			Add nr.3034 Ti392.3040
																																			Put n_reflections.2472 Ti391.3038 Ti393.3039
name : setup_reflections.2972 args : obj_id.2973  formal_fv : objects.2444 setup_rect_reflection.2966 setup_surface_reflection.2969  
Let Ti355.3022
	Int:0
	IfLE Ti355.3022 obj_id.2973
		Let obj.3023
			Get objects.2444 obj_id.2973
			Let Ti356.3024
				AppDir o_reflectiontype.2551 obj.3023 )
				Let Ti357.3025
					Int:2
					IfEq Ti356.3024 Ti357.3025
						Let Td358.3031
							AppDir o_diffuse.2571 obj.3023 )
							Let Td359.3032
								Float:1.000000
								Let Tb360.3026
									AppDir fless.2487 Td358.3031 Td359.3032 )
									Let Ti361.3027
										Int:0
										IfEq Tb360.3026 Ti361.3027
											Unit
											Let m_shape.3028
												AppDir o_form.2549 obj.3023 )
												Let Ti362.3029
													Int:1
													IfEq m_shape.3028 Ti362.3029
														AppCls setup_rect_reflection.2966 obj_id.2973 obj.3023 )
														Let Ti363.3030
															Int:2
															IfEq m_shape.3028 Ti363.3030
																AppCls setup_surface_reflection.2969 obj_id.2973 obj.3023 )
																Unit
						Unit
		Unit
name : rt.2974 args : size_x.2975 size_y.2976  formal_fv : create_pixelline.2921 image_center.2461 image_size.2460 init_dirvecs.2957 light.2447 light_dirvec.2470 n_objects.2443 pretrace_line.2898 read_parameter.2639 scan_line.2908 scan_pitch.2462 setup_dirvec_constants.2737 setup_reflections.2972 write_ppm_header.2882  
Let Ti329.3021
	Int:0
	Let Tu239.2981
		Put image_size.2460 Ti329.3021 size_x.2975
		Let Ti330.3020
			Int:1
			Let Tu238.2982
				Put image_size.2460 Ti330.3020 size_y.2976
				Let Ti331.3018
					Int:0
					Let Ti332.3019
						ShiftR1 size_x.2975
						Let Tu237.2983
							Put image_center.2461 Ti331.3018 Ti332.3019
							Let Ti333.3016
								Int:1
								Let Ti334.3017
									ShiftR1 size_y.2976
									Let Tu236.2984
										Put image_center.2461 Ti333.3016 Ti334.3017
										Let Ti335.3011
											Int:0
											Let Td336.3013
												Float:128.000000
												Let Td337.3014
													AppDir min_caml_float_of_int size_x.2975 )
													Let Td338.3015
														FReciprocal Td337.3014
														Let Td339.3012
															FMul Td336.3013 Td338.3015
															Let Tu235.2985
																Put scan_pitch.2462 Ti335.3011 Td339.3012
																Let Tu340.3010
																	Unit
																	Let prev.2986
																		AppCls create_pixelline.2921 Tu340.3010 )
																		Let Tu341.3009
																			Unit
																			Let cur.2987
																				AppCls create_pixelline.2921 Tu341.3009 )
																				Let Tu342.3008
																					Unit
																					Let next.2988
																						AppCls create_pixelline.2921 Tu342.3008 )
																						Let Tu343.3007
																							Unit
																							Let Tu234.2989
																								AppCls read_parameter.2639 Tu343.3007 )
																								Let Tu344.3006
																									Unit
																									Let Tu233.2990
																										AppCls write_ppm_header.2882 Tu344.3006 )
																										Let Tu345.3005
																											Unit
																											Let Tu232.2991
																												AppCls init_dirvecs.2957 Tu345.3005 )
																												Let Ta346.3004
																													AppDir d_vec.2608 light_dirvec.2470 )
																													Let Tu231.2992
																														AppDir veccpy.2511 Ta346.3004 light.2447 )
																														Let Tu230.2993
																															AppCls setup_dirvec_constants.2737 light_dirvec.2470 )
																															Let Ti347.3003
																																Int:0
																																Let Ti348.3001
																																	Get n_objects.2443 Ti347.3003
																																	Let Ti349.3002
																																		Int:1
																																		Let Ti350.3000
																																			Sub Ti348.3001 Ti349.3002
																																			Let Tu229.2994
																																				AppCls setup_reflections.2972 Ti350.3000 )
																																				Let Ti351.2998
																																					Int:0
																																					Let Ti352.2999
																																						Int:0
																																						Let Tu228.2995
																																							AppCls pretrace_line.2898 cur.2987 Ti351.2998 Ti352.2999 )
																																							Let Ti353.2996
																																								Int:0
																																								Let Ti354.2997
																																									Int:2
																																									AppCls scan_line.2908 Ti353.2996 prev.2986 cur.2987 next.2988 Ti354.2997 )

Let Ti241.6033
	Int:1
	Let Ti242.6034
		Int:0
		Let n_objects.2443
			AppDir min_caml_create_array Ti241.6033 Ti242.6034 )
			Let Ti243.6031
				Int:0
				Let Td244.6032
					Float:0.000000
					Let dummy.6023
						AppDir min_caml_create_float_array Ti243.6031 Td244.6032 )
						Let Ti245.6024
							Int:60
							Let Ti246.6026
								Int:0
								Let Ti247.6027
									Int:0
									Let Ti248.6028
										Int:0
										Let Ti249.6029
											Int:0
											Let Ti250.6030
												Int:0
												Let Tt251.6025
													Tuple (Ti246.6026,Ti247.6027,Ti248.6028,Ti249.6029,dummy.6023,dummy.6023,Ti250.6030,dummy.6023,dummy.6023,dummy.6023,dummy.6023,)
													Let objects.2444
														AppDir min_caml_create_array Ti245.6024 Tt251.6025 )
														Let Ti252.6021
															Int:3
															Let Td253.6022
																Float:0.000000
																Let screen.2445
																	AppDir min_caml_create_float_array Ti252.6021 Td253.6022 )
																	Let Ti254.6019
																		Int:3
																		Let Td255.6020
																			Float:0.000000
																			Let viewpoint.2446
																				AppDir min_caml_create_float_array Ti254.6019 Td255.6020 )
																				Let Ti256.6017
																					Int:3
																					Let Td257.6018
																						Float:0.000000
																						Let light.2447
																							AppDir min_caml_create_float_array Ti256.6017 Td257.6018 )
																							Let Ti258.6015
																								Int:1
																								Let Td259.6016
																									Float:255.000000
																									Let beam.2448
																										AppDir min_caml_create_float_array Ti258.6015 Td259.6016 )
																										Let Ti260.6010
																											Int:50
																											Let Ti261.6012
																												Int:1
																												Let Ti263.6013
																													Int:-1
																													Let Ta264.6011
																														AppDir min_caml_create_array Ti261.6012 Ti263.6013 )
																														Let and_net.2449
																															AppDir min_caml_create_array Ti260.6010 Ta264.6011 )
																															Let Ti265.6005
																																Int:1
																																Let Ti266.6007
																																	Int:1
																																	Let Ti267.6009
																																		Int:0
																																		Let Ta268.6008
																																			Get and_net.2449 Ti267.6009
																																			Let Ta269.6006
																																				AppDir min_caml_create_array Ti266.6007 Ta268.6008 )
																																				Let or_net.2450
																																					AppDir min_caml_create_array Ti265.6005 Ta269.6006 )
																																					Let Ti270.6003
																																						Int:1
																																						Let Td271.6004
																																							Float:0.000000
																																							Let solver_dist.2451
																																								AppDir min_caml_create_float_array Ti270.6003 Td271.6004 )
																																								Let Ti272.6001
																																									Int:1
																																									Let Ti273.6002
																																										Int:0
																																										Let intsec_rectside.2452
																																											AppDir min_caml_create_array Ti272.6001 Ti273.6002 )
																																											Let Ti274.5999
																																												Int:1
																																												Let Td275.6000
																																													Float:1000000000.000000
																																													Let tmin.2453
																																														AppDir min_caml_create_float_array Ti274.5999 Td275.6000 )
																																														Let Ti276.5997
																																															Int:3
																																															Let Td277.5998
																																																Float:0.000000
																																																Let intersection_point.2454
																																																	AppDir min_caml_create_float_array Ti276.5997 Td277.5998 )
																																																	Let Ti278.5995
																																																		Int:1
																																																		Let Ti279.5996
																																																			Int:0
																																																			Let intersected_object_id.2455
																																																				AppDir min_caml_create_array Ti278.5995 Ti279.5996 )
																																																				Let Ti280.5993
																																																					Int:3
																																																					Let Td281.5994
																																																						Float:0.000000
																																																						Let nvector.2456
																																																							AppDir min_caml_create_float_array Ti280.5993 Td281.5994 )
																																																							Let Ti282.5991
																																																								Int:3
																																																								Let Td283.5992
																																																									Float:0.000000
																																																									Let texture_color.2457
																																																										AppDir min_caml_create_float_array Ti282.5991 Td283.5992 )
																																																										Let Ti284.5989
																																																											Int:3
																																																											Let Td285.5990
																																																												Float:0.000000
																																																												Let diffuse_ray.2458
																																																													AppDir min_caml_create_float_array Ti284.5989 Td285.5990 )
																																																													Let Ti286.5987
																																																														Int:3
																																																														Let Td287.5988
																																																															Float:0.000000
																																																															Let rgb.2459
																																																																AppDir min_caml_create_float_array Ti286.5987 Td287.5988 )
																																																																Let Ti288.5985
																																																																	Int:2
																																																																	Let Ti289.5986
																																																																		Int:0
																																																																		Let image_size.2460
																																																																			AppDir min_caml_create_array Ti288.5985 Ti289.5986 )
																																																																			Let Ti290.5983
																																																																				Int:2
																																																																				Let Ti291.5984
																																																																					Int:0
																																																																					Let image_center.2461
																																																																						AppDir min_caml_create_array Ti290.5983 Ti291.5984 )
																																																																						Let Ti292.5981
																																																																							Int:1
																																																																							Let Td293.5982
																																																																								Float:0.000000
																																																																								Let scan_pitch.2462
																																																																									AppDir min_caml_create_float_array Ti292.5981 Td293.5982 )
																																																																									Let Ti294.5979
																																																																										Int:3
																																																																										Let Td295.5980
																																																																											Float:0.000000
																																																																											Let startp.2463
																																																																												AppDir min_caml_create_float_array Ti294.5979 Td295.5980 )
																																																																												Let Ti296.5977
																																																																													Int:3
																																																																													Let Td297.5978
																																																																														Float:0.000000
																																																																														Let startp_fast.2464
																																																																															AppDir min_caml_create_float_array Ti296.5977 Td297.5978 )
																																																																															Let Ti298.5975
																																																																																Int:3
																																																																																Let Td299.5976
																																																																																	Float:0.000000
																																																																																	Let screenx_dir.2465
																																																																																		AppDir min_caml_create_float_array Ti298.5975 Td299.5976 )
																																																																																		Let Ti300.5973
																																																																																			Int:3
																																																																																			Let Td301.5974
																																																																																				Float:0.000000
																																																																																				Let screeny_dir.2466
																																																																																					AppDir min_caml_create_float_array Ti300.5973 Td301.5974 )
																																																																																					Let Ti302.5971
																																																																																						Int:3
																																																																																						Let Td303.5972
																																																																																							Float:0.000000
																																																																																							Let screenz_dir.2467
																																																																																								AppDir min_caml_create_float_array Ti302.5971 Td303.5972 )
																																																																																								Let Ti304.5969
																																																																																									Int:3
																																																																																									Let Td305.5970
																																																																																										Float:0.000000
																																																																																										Let ptrace_dirvec.2468
																																																																																											AppDir min_caml_create_float_array Ti304.5969 Td305.5970 )
																																																																																											Let Ti306.5967
																																																																																												Int:0
																																																																																												Let Td307.5968
																																																																																													Float:0.000000
																																																																																													Let dummyf.5960
																																																																																														AppDir min_caml_create_float_array Ti306.5967 Td307.5968 )
																																																																																														Let Ti308.5966
																																																																																															Int:0
																																																																																															Let dummyff.5961
																																																																																																AppDir min_caml_create_array Ti308.5966 dummyf.5960 )
																																																																																																Let Ti309.5964
																																																																																																	Int:0
																																																																																																	Let Tt310.5965
																																																																																																		Tuple (dummyf.5960,dummyff.5961,)
																																																																																																		Let dummy_vs.5962
																																																																																																			AppDir min_caml_create_array Ti309.5964 Tt310.5965 )
																																																																																																			Let Ti311.5963
																																																																																																				Int:5
																																																																																																				Let dirvecs.2469
																																																																																																					AppDir min_caml_create_array Ti311.5963 dummy_vs.5962 )
																																																																																																					Let Ti312.5958
																																																																																																						Int:0
																																																																																																						Let Td313.5959
																																																																																																							Float:0.000000
																																																																																																							Let dummyf2.5952
																																																																																																								AppDir min_caml_create_float_array Ti312.5958 Td313.5959 )
																																																																																																								Let Ti314.5956
																																																																																																									Int:3
																																																																																																									Let Td315.5957
																																																																																																										Float:0.000000
																																																																																																										Let v3.5953
																																																																																																											AppDir min_caml_create_float_array Ti314.5956 Td315.5957 )
																																																																																																											Let Ti316.5955
																																																																																																												Int:60
																																																																																																												Let consts.5954
																																																																																																													AppDir min_caml_create_array Ti316.5955 dummyf2.5952 )
																																																																																																													Let light_dirvec.2470
																																																																																																														Tuple (v3.5953,consts.5954,)
																																																																																																														Let Ti317.5950
																																																																																																															Int:0
																																																																																																															Let Td318.5951
																																																																																																																Float:0.000000
																																																																																																																Let dummyf3.5942
																																																																																																																	AppDir min_caml_create_float_array Ti317.5950 Td318.5951 )
																																																																																																																	Let Ti319.5949
																																																																																																																		Int:0
																																																																																																																		Let dummyff3.5943
																																																																																																																			AppDir min_caml_create_array Ti319.5949 dummyf3.5942 )
																																																																																																																			Let dummydv.5944
																																																																																																																				Tuple (dummyf3.5942,dummyff3.5943,)
																																																																																																																				Let Ti320.5945
																																																																																																																					Int:180
																																																																																																																					Let Ti321.5947
																																																																																																																						Int:0
																																																																																																																						Let Td322.5948
																																																																																																																							Float:0.000000
																																																																																																																							Let Tt323.5946
																																																																																																																								Tuple (Ti321.5947,dummydv.5944,Td322.5948,)
																																																																																																																								Let reflections.2471
																																																																																																																									AppDir min_caml_create_array Ti320.5945 Tt323.5946 )
																																																																																																																									Let Ti324.5940
																																																																																																																										Int:1
																																																																																																																										Let Ti325.5941
																																																																																																																											Int:0
																																																																																																																											Let n_reflections.2472
																																																																																																																												AppDir min_caml_create_array Ti324.5940 Ti325.5941 )
																																																																																																																												MakeCls read_screen_settings.2620 (entry = read_screen_settings.2620, actual_fc = screen.2445 screenx_dir.2465 screeny_dir.2466 screenz_dir.2467 viewpoint.2446 )
																																																																																																																													MakeCls read_light.2622 (entry = read_light.2622, actual_fc = beam.2448 light.2447 )
																																																																																																																														MakeCls read_nth_object.2627 (entry = read_nth_object.2627, actual_fc = objects.2444 )
																																																																																																																															MakeCls read_object.2629 (entry = read_object.2629, actual_fc = n_objects.2443 read_nth_object.2627 )
																																																																																																																																MakeCls read_all_object.2631 (entry = read_all_object.2631, actual_fc = read_object.2629 )
																																																																																																																																	MakeCls read_and_network.2637 (entry = read_and_network.2637, actual_fc = and_net.2449 )
																																																																																																																																		MakeCls read_parameter.2639 (entry = read_parameter.2639, actual_fc = or_net.2450 read_all_object.2631 read_and_network.2637 read_light.2622 read_screen_settings.2620 )
																																																																																																																																			MakeCls solver_rect_surface.2641 (entry = solver_rect_surface.2641, actual_fc = solver_dist.2451 )
																																																																																																																																				MakeCls solver_rect.2650 (entry = solver_rect.2650, actual_fc = solver_rect_surface.2641 )
																																																																																																																																					MakeCls solver_surface.2656 (entry = solver_surface.2656, actual_fc = solver_dist.2451 )
																																																																																																																																						MakeCls solver_second.2675 (entry = solver_second.2675, actual_fc = solver_dist.2451 )
																																																																																																																																							MakeCls solver.2681 (entry = solver.2681, actual_fc = objects.2444 solver_rect.2650 solver_second.2675 solver_surface.2656 )
																																																																																																																																								MakeCls solver_rect_fast.2685 (entry = solver_rect_fast.2685, actual_fc = solver_dist.2451 )
																																																																																																																																									MakeCls solver_surface_fast.2692 (entry = solver_surface_fast.2692, actual_fc = solver_dist.2451 )
																																																																																																																																										MakeCls solver_second_fast.2698 (entry = solver_second_fast.2698, actual_fc = solver_dist.2451 )
																																																																																																																																											MakeCls solver_fast.2704 (entry = solver_fast.2704, actual_fc = objects.2444 solver_rect_fast.2685 solver_second_fast.2698 solver_surface_fast.2692 )
																																																																																																																																												MakeCls solver_surface_fast2.2708 (entry = solver_surface_fast2.2708, actual_fc = solver_dist.2451 )
																																																																																																																																													MakeCls solver_second_fast2.2715 (entry = solver_second_fast2.2715, actual_fc = solver_dist.2451 )
																																																																																																																																														MakeCls solver_fast2.2722 (entry = solver_fast2.2722, actual_fc = objects.2444 solver_rect_fast.2685 solver_second_fast2.2715 solver_surface_fast2.2708 )
																																																																																																																																															MakeCls iter_setup_dirvec_constants.2734 (entry = iter_setup_dirvec_constants.2734, actual_fc = objects.2444 )
																																																																																																																																																MakeCls setup_dirvec_constants.2737 (entry = setup_dirvec_constants.2737, actual_fc = iter_setup_dirvec_constants.2734 n_objects.2443 )
																																																																																																																																																	MakeCls setup_startp_constants.2739 (entry = setup_startp_constants.2739, actual_fc = objects.2444 )
																																																																																																																																																		MakeCls setup_startp.2742 (entry = setup_startp.2742, actual_fc = n_objects.2443 setup_startp_constants.2739 startp_fast.2464 )
																																																																																																																																																			MakeCls check_all_inside.2764 (entry = check_all_inside.2764, actual_fc = objects.2444 )
																																																																																																																																																				MakeCls shadow_check_and_group.2770 (entry = shadow_check_and_group.2770, actual_fc = check_all_inside.2764 intersection_point.2454 light.2447 light_dirvec.2470 objects.2444 solver_dist.2451 solver_fast.2704 )
																																																																																																																																																					MakeCls shadow_check_one_or_group.2773 (entry = shadow_check_one_or_group.2773, actual_fc = and_net.2449 shadow_check_and_group.2770 )
																																																																																																																																																						MakeCls shadow_check_one_or_matrix.2776 (entry = shadow_check_one_or_matrix.2776, actual_fc = intersection_point.2454 light_dirvec.2470 shadow_check_one_or_group.2773 solver_dist.2451 solver_fast.2704 )
																																																																																																																																																							MakeCls solve_each_element.2779 (entry = solve_each_element.2779, actual_fc = check_all_inside.2764 intersected_object_id.2455 intersection_point.2454 intsec_rectside.2452 objects.2444 solver.2681 solver_dist.2451 startp.2463 tmin.2453 )
																																																																																																																																																								MakeCls solve_one_or_network.2783 (entry = solve_one_or_network.2783, actual_fc = and_net.2449 solve_each_element.2779 )
																																																																																																																																																									MakeCls trace_or_matrix.2787 (entry = trace_or_matrix.2787, actual_fc = solve_one_or_network.2783 solver.2681 solver_dist.2451 startp.2463 tmin.2453 )
																																																																																																																																																										MakeCls judge_intersection.2791 (entry = judge_intersection.2791, actual_fc = or_net.2450 tmin.2453 trace_or_matrix.2787 )
																																																																																																																																																											MakeCls solve_each_element_fast.2793 (entry = solve_each_element_fast.2793, actual_fc = check_all_inside.2764 intersected_object_id.2455 intersection_point.2454 intsec_rectside.2452 objects.2444 solver_dist.2451 solver_fast2.2722 startp_fast.2464 tmin.2453 )
																																																																																																																																																												MakeCls solve_one_or_network_fast.2797 (entry = solve_one_or_network_fast.2797, actual_fc = and_net.2449 solve_each_element_fast.2793 )
																																																																																																																																																													MakeCls trace_or_matrix_fast.2801 (entry = trace_or_matrix_fast.2801, actual_fc = solve_one_or_network_fast.2797 solver_dist.2451 solver_fast2.2722 tmin.2453 )
																																																																																																																																																														MakeCls judge_intersection_fast.2805 (entry = judge_intersection_fast.2805, actual_fc = or_net.2450 tmin.2453 trace_or_matrix_fast.2801 )
																																																																																																																																																															MakeCls get_nvector_rect.2807 (entry = get_nvector_rect.2807, actual_fc = intsec_rectside.2452 nvector.2456 )
																																																																																																																																																																MakeCls get_nvector_plane.2809 (entry = get_nvector_plane.2809, actual_fc = nvector.2456 )
																																																																																																																																																																	MakeCls get_nvector_second.2811 (entry = get_nvector_second.2811, actual_fc = intersection_point.2454 nvector.2456 )
																																																																																																																																																																		MakeCls get_nvector.2813 (entry = get_nvector.2813, actual_fc = get_nvector_plane.2809 get_nvector_rect.2807 get_nvector_second.2811 )
																																																																																																																																																																			MakeCls utexture.2816 (entry = utexture.2816, actual_fc = texture_color.2457 )
																																																																																																																																																																				MakeCls add_light.2819 (entry = add_light.2819, actual_fc = rgb.2459 texture_color.2457 )
																																																																																																																																																																					MakeCls trace_reflections.2823 (entry = trace_reflections.2823, actual_fc = add_light.2819 intersected_object_id.2455 intsec_rectside.2452 judge_intersection_fast.2805 nvector.2456 or_net.2450 reflections.2471 shadow_check_one_or_matrix.2776 )
																																																																																																																																																																						MakeCls trace_ray.2828 (entry = trace_ray.2828, actual_fc = add_light.2819 beam.2448 get_nvector.2813 intersected_object_id.2455 intersection_point.2454 intsec_rectside.2452 judge_intersection.2791 light.2447 n_reflections.2472 nvector.2456 objects.2444 or_net.2450 rgb.2459 setup_startp.2742 shadow_check_one_or_matrix.2776 startp.2463 texture_color.2457 tmin.2453 trace_reflections.2823 utexture.2816 )
																																																																																																																																																																							MakeCls trace_diffuse_ray.2834 (entry = trace_diffuse_ray.2834, actual_fc = diffuse_ray.2458 get_nvector.2813 intersected_object_id.2455 intersection_point.2454 judge_intersection_fast.2805 light.2447 nvector.2456 objects.2444 or_net.2450 shadow_check_one_or_matrix.2776 texture_color.2457 utexture.2816 )
																																																																																																																																																																								MakeCls iter_trace_diffuse_rays.2837 (entry = iter_trace_diffuse_rays.2837, actual_fc = trace_diffuse_ray.2834 )
																																																																																																																																																																									MakeCls trace_diffuse_rays.2842 (entry = trace_diffuse_rays.2842, actual_fc = iter_trace_diffuse_rays.2837 setup_startp.2742 )
																																																																																																																																																																										MakeCls trace_diffuse_ray_80percent.2846 (entry = trace_diffuse_ray_80percent.2846, actual_fc = dirvecs.2469 trace_diffuse_rays.2842 )
																																																																																																																																																																											MakeCls calc_diffuse_using_1point.2850 (entry = calc_diffuse_using_1point.2850, actual_fc = diffuse_ray.2458 rgb.2459 trace_diffuse_ray_80percent.2846 )
																																																																																																																																																																												MakeCls calc_diffuse_using_5points.2853 (entry = calc_diffuse_using_5points.2853, actual_fc = diffuse_ray.2458 rgb.2459 )
																																																																																																																																																																													MakeCls do_without_neighbors.2859 (entry = do_without_neighbors.2859, actual_fc = calc_diffuse_using_1point.2850 )
																																																																																																																																																																														MakeCls neighbors_exist.2862 (entry = neighbors_exist.2862, actual_fc = image_size.2460 )
																																																																																																																																																																															MakeCls try_exploit_neighbors.2875 (entry = try_exploit_neighbors.2875, actual_fc = calc_diffuse_using_5points.2853 do_without_neighbors.2859 )
																																																																																																																																																																																MakeCls write_ppm_header.2882 (entry = write_ppm_header.2882, actual_fc = image_size.2460 )
																																																																																																																																																																																	MakeCls write_rgb.2886 (entry = write_rgb.2886, actual_fc = rgb.2459 )
																																																																																																																																																																																		MakeCls pretrace_diffuse_rays.2888 (entry = pretrace_diffuse_rays.2888, actual_fc = diffuse_ray.2458 dirvecs.2469 trace_diffuse_rays.2842 )
																																																																																																																																																																																			MakeCls pretrace_pixels.2891 (entry = pretrace_pixels.2891, actual_fc = image_center.2461 pretrace_diffuse_rays.2888 ptrace_dirvec.2468 rgb.2459 scan_pitch.2462 screenx_dir.2465 startp.2463 trace_ray.2828 viewpoint.2446 )
																																																																																																																																																																																				MakeCls pretrace_line.2898 (entry = pretrace_line.2898, actual_fc = image_center.2461 image_size.2460 pretrace_pixels.2891 scan_pitch.2462 screeny_dir.2466 screenz_dir.2467 )
																																																																																																																																																																																					MakeCls scan_pixel.2902 (entry = scan_pixel.2902, actual_fc = do_without_neighbors.2859 image_size.2460 neighbors_exist.2862 rgb.2459 try_exploit_neighbors.2875 write_rgb.2886 )
																																																																																																																																																																																						MakeCls scan_line.2908 (entry = scan_line.2908, actual_fc = image_size.2460 pretrace_line.2898 scan_pixel.2902 )
																																																																																																																																																																																							MakeCls create_pixelline.2921 (entry = create_pixelline.2921, actual_fc = image_size.2460 )
																																																																																																																																																																																								MakeCls calc_dirvec.2928 (entry = calc_dirvec.2928, actual_fc = dirvecs.2469 )
																																																																																																																																																																																									MakeCls calc_dirvecs.2936 (entry = calc_dirvecs.2936, actual_fc = calc_dirvec.2928 )
																																																																																																																																																																																										MakeCls calc_dirvec_rows.2941 (entry = calc_dirvec_rows.2941, actual_fc = calc_dirvecs.2936 )
																																																																																																																																																																																											MakeCls create_dirvec.2945 (entry = create_dirvec.2945, actual_fc = n_objects.2443 )
																																																																																																																																																																																												MakeCls create_dirvec_elements.2947 (entry = create_dirvec_elements.2947, actual_fc = create_dirvec.2945 )
																																																																																																																																																																																													MakeCls create_dirvecs.2950 (entry = create_dirvecs.2950, actual_fc = create_dirvec.2945 create_dirvec_elements.2947 dirvecs.2469 )
																																																																																																																																																																																														MakeCls init_dirvec_constants.2952 (entry = init_dirvec_constants.2952, actual_fc = setup_dirvec_constants.2737 )
																																																																																																																																																																																															MakeCls init_vecset_constants.2955 (entry = init_vecset_constants.2955, actual_fc = dirvecs.2469 init_dirvec_constants.2952 )
																																																																																																																																																																																																MakeCls init_dirvecs.2957 (entry = init_dirvecs.2957, actual_fc = calc_dirvec_rows.2941 create_dirvecs.2950 init_vecset_constants.2955 )
																																																																																																																																																																																																	MakeCls add_reflection.2959 (entry = add_reflection.2959, actual_fc = create_dirvec.2945 reflections.2471 setup_dirvec_constants.2737 )
																																																																																																																																																																																																		MakeCls setup_rect_reflection.2966 (entry = setup_rect_reflection.2966, actual_fc = add_reflection.2959 light.2447 n_reflections.2472 )
																																																																																																																																																																																																			MakeCls setup_surface_reflection.2969 (entry = setup_surface_reflection.2969, actual_fc = add_reflection.2959 light.2447 n_reflections.2472 )
																																																																																																																																																																																																				MakeCls setup_reflections.2972 (entry = setup_reflections.2972, actual_fc = objects.2444 setup_rect_reflection.2966 setup_surface_reflection.2969 )
																																																																																																																																																																																																					MakeCls rt.2974 (entry = rt.2974, actual_fc = create_pixelline.2921 image_center.2461 image_size.2460 init_dirvecs.2957 light.2447 light_dirvec.2470 n_objects.2443 pretrace_line.2898 read_parameter.2639 scan_line.2908 scan_pitch.2462 setup_dirvec_constants.2737 setup_reflections.2972 write_ppm_header.2882 )
																																																																																																																																																																																																						Let Ti326.2979
																																																																																																																																																																																																							Int:128
																																																																																																																																																																																																							Let Ti327.2980
																																																																																																																																																																																																								Int:128
																																																																																																																																																																																																								Let Tu240.2977
																																																																																																																																																																																																									AppCls rt.2974 Ti326.2979 Ti327.2980 )
																																																																																																																																																																																																									Let Ti328.2978
																																																																																																																																																																																																										Int:0
																																																																																																																																																																																																										AppDir min_caml_print_int Ti328.2978 )
